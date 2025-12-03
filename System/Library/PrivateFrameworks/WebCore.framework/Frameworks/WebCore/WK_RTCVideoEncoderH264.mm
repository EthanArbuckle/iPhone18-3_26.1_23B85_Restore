@interface WK_RTCVideoEncoderH264
- (BOOL)resetCompressionSessionIfNeededWithFrame:(id)frame;
- (WK_RTCVideoEncoderH264)initWithCodecInfo:(id)info;
- (id).cxx_construct;
- (id)scalingSettings;
- (int)resetCompressionSessionWithPixelFormat:(unsigned int)format;
- (int)setBitrate:(unsigned int)bitrate framerate:(unsigned int)framerate;
- (int64_t)encode:(id)encode codecSpecificInfo:(id)info frameTypes:(id)types;
- (int64_t)releaseEncoder;
- (int64_t)startEncodeWithSettings:(id)settings numberOfCores:(int)cores;
- (unsigned)pixelFormatOfFrame:(id)frame;
- (void)configureCompressionSession;
- (void)dealloc;
- (void)destroyCompressionSession;
- (void)flush;
- (void)frameWasEncoded:(int)encoded flags:(unsigned int)flags sampleBuffer:(opaqueCMSampleBuffer *)buffer codecSpecificInfo:(id)info width:(int)width height:(int)height renderTimeMs:(int64_t)ms timestamp:(int64_t)self0 duration:(unint64_t)self1 rotation:(int64_t)self2 isKeyFrameRequired:(BOOL)self3;
- (void)setBitrateBps:(unsigned int)bps frameRate:(unsigned int)rate;
- (void)setCallback:(id)callback;
- (void)setDescriptionCallback:(id)callback;
- (void)setEncoderBitrateBps:(unsigned int)bps frameRate:(unsigned int)rate;
- (void)setErrorCallback:(id)callback;
- (void)updateBitRateAccordingActualFrameRate;
@end

@implementation WK_RTCVideoEncoderH264

- (WK_RTCVideoEncoderH264)initWithCodecInfo:(id)info
{
  v10 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v9.receiver = self;
  v9.super_class = WK_RTCVideoEncoderH264;
  v6 = [(WK_RTCVideoEncoderH264 *)&v9 init];
  if (v6)
  {
    objc_storeStrong(&v6->_codecInfo, info);
    operator new();
  }

  MEMORY[0xF9] = 256;
  MEMORY[0x100] = 0;
  MEMORY[0x108] = 0;
  MEMORY[0x110] = 257;
  MEMORY[0x68] = 0;
  v7 = 0;

  return v7;
}

- (void)dealloc
{
  [(WK_RTCVideoEncoderH264 *)self destroyCompressionSession];
  v3.receiver = self;
  v3.super_class = WK_RTCVideoEncoderH264;
  [(WK_RTCVideoEncoderH264 *)&v3 dealloc];
}

- (int64_t)startEncodeWithSettings:(id)settings numberOfCores:(int)cores
{
  settingsCopy = settings;
  self->_width = [settingsCopy width];
  self->_height = [settingsCopy height];
  result = [settingsCopy mode];
  self->_mode = result;
  if (!self->_profile_level_id.__engaged_)
  {
    goto LABEL_46;
  }

  level = self->_profile_level_id.var0.__val_.level;
  v8 = 10368000;
  if (level > 30)
  {
    if (level == 52)
    {
      v9 = 530841600;
    }

    else
    {
      v9 = 10368000;
    }

    if (level == 51)
    {
      v10 = 251658240;
    }

    else
    {
      v10 = v9;
    }

    if (level == 50)
    {
      v11 = 150994944;
    }

    else
    {
      v11 = 10368000;
    }

    if (level == 42)
    {
      v12 = 133693440;
    }

    else
    {
      v12 = v11;
    }

    if (level <= 50)
    {
      v10 = v12;
    }

    if (level == 32)
    {
      v8 = 55296000;
    }

    else
    {
      v8 = 10368000;
    }

    if (level == 31)
    {
      v8 = 27648000;
    }

    if ((level - 40) < 2)
    {
      v8 = 62914560;
    }

    if (level > 41)
    {
      v8 = v10;
    }
  }

  else if ((level - 10) < 4 || (level - 20) < 3 || !level)
  {
    v8 = 0;
  }

  self->_maxAllowedFrameRate = v8 / (((self->_height + 15) & 0xFFFFFFF0) * ((self->_width + 15) & 0xFFFFFFF0));
  result = [settingsCopy startBitrate];
  if (self->_profile_level_id.__engaged_)
  {
    self->_targetBitrateBps = v14;
    ptr = self->_bitrateAdjuster.__ptr_;
    pthread_mutex_lock((ptr + 8));
    v16 = *(ptr + 20);
    if (!v16 || (vabds_f32(v14, v16) / v16) >= 0.1 || (v17 = *(ptr + 22)) == 0 || (vabds_f32(v14, v17) / v17) >= 0.1)
    {
      *(ptr + 21) = v14;
      *(ptr + 22) = v14;
    }

    *(ptr + 20) = v14;
    pthread_mutex_unlock((ptr + 8));
    maxFramerate = [settingsCopy maxFramerate];
    maxAllowedFrameRate = self->_maxAllowedFrameRate;
    if (maxFramerate)
    {
      v20 = maxFramerate;
    }

    else
    {
      v20 = 30;
    }

    if (v20 < maxAllowedFrameRate)
    {
      maxAllowedFrameRate = v20;
    }

    self->_encoderFrameRate = maxAllowedFrameRate;
    maxFramerate2 = [settingsCopy maxFramerate];
    v22 = self->_maxAllowedFrameRate;
    if (maxFramerate2 > v22 && v22 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      [settingsCopy maxFramerate];
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v23, v24, v25, v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoEncoderH264.mm");
    }

    v30 = [(WK_RTCVideoEncoderH264 *)self resetCompressionSessionWithPixelFormat:875704422];

    return v30;
  }

  else
  {
LABEL_46:
    __break(1u);
  }

  return result;
}

- (void)setDescriptionCallback:(id)callback
{
  self->_descriptionCallback = MEMORY[0x2743DACF0](callback, a2);

  MEMORY[0x2821F96F8]();
}

- (void)setErrorCallback:(id)callback
{
  self->_errorCallback = MEMORY[0x2743DACF0](callback, a2);

  MEMORY[0x2821F96F8]();
}

- (int64_t)encode:(id)encode codecSpecificInfo:(id)info frameTypes:(id)types
{
  v101 = *MEMORY[0x277D85DE8];
  encodeCopy = encode;
  infoCopy = info;
  typesCopy = types;
  if (self->_callback && [(WK_RTCVideoEncoderH264 *)self hasCompressionSession])
  {
    isKeyFrameRequired = self->_isKeyFrameRequired;
    self->_isKeyFrameRequired = 0;
    v12 = [(WK_RTCVideoEncoderH264 *)self resetCompressionSessionIfNeededWithFrame:encodeCopy];
    if (self->_disableEncoding)
    {
      errorCallback = self->_errorCallback;
      if (errorCallback)
      {
        goto LABEL_91;
      }

      goto LABEL_92;
    }

    v16 = v12;
    if (self->_isUsingSoftwareEncoder)
    {
      [(WK_RTCVideoEncoderH264 *)self updateBitRateAccordingActualFrameRate];
    }

    buffer = [encodeCopy buffer];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      buffer2 = [encodeCopy buffer];
      if ([buffer2 requiresCropping])
      {
        v23 = v22;
        if (!v22)
        {
          v52 = self->_errorCallback;
          if (v52)
          {
            goto LABEL_59;
          }

          goto LABEL_60;
        }

        Width = CVPixelBufferGetWidth(v22);
        Height = CVPixelBufferGetHeight(v23);
        if ([buffer2 requiresScalingToWidth:Width height:Height])
        {
          std::vector<unsigned char>::resize(&self->_frameScaleBuffer.__begin_, [buffer2 bufferSizeForCroppingAndScalingToWidth:Width height:Height]);
          begin = self->_frameScaleBuffer.__begin_;
          end = self->_frameScaleBuffer.__end_;
        }

        else
        {
          end = self->_frameScaleBuffer.__begin_;
          self->_frameScaleBuffer.__end_ = end;
          begin = end;
        }

        v53 = (self->_frameScaleBuffer.__cap_ - begin);
        if (v53 <= end - begin)
        {
          v54 = begin;
        }

        else
        {
          if (end != begin)
          {
            operator new();
          }

          if (end - begin >= v53)
          {
            v54 = begin;
            begin = 0;
          }

          else
          {
            pixelBuffera = v23;
            v55 = (end - begin);
            v56 = self->_frameScaleBuffer.__end_;
            v57 = (end - v56);
            memcpy((end - v56), begin, v56 - begin);
            v54 = v57;
            self->_frameScaleBuffer.__begin_ = v57;
            self->_frameScaleBuffer.__end_ = v55;
            self->_frameScaleBuffer.__cap_ = v55;
            v23 = pixelBuffera;
          }

          if (begin)
          {
            operator delete(begin);
            v54 = self->_frameScaleBuffer.__begin_;
          }
        }

        if (([buffer2 cropAndScaleTo:v23 withTempBuffer:v54] & 1) == 0)
        {
          CVBufferRelease(v23);
          v52 = self->_errorCallback;
          if (v52)
          {
LABEL_59:
            v52[2](v52, 0xFFFFFFFFLL);
          }

LABEL_60:

          goto LABEL_92;
        }

        goto LABEL_67;
      }

      pixelBuffer = [buffer2 pixelBuffer];
      CVBufferRetain(pixelBuffer);

      if (pixelBuffer)
      {
LABEL_68:
        LOBYTE(v62) = v16 || isKeyFrameRequired;
        if ((typesCopy == 0) | v62 & 1)
        {
          goto LABEL_82;
        }

        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v63 = typesCopy;
        v62 = [v63 countByEnumeratingWithState:&v94 objects:v100 count:16];
        if (!v62)
        {
          goto LABEL_81;
        }

        v64 = *v95;
        while (1)
        {
          for (i = 0; i != v62; ++i)
          {
            if (*v95 != v64)
            {
              objc_enumerationMutation(v63);
            }

            if ([*(*(&v94 + 1) + 8 * i) intValue] == 3)
            {
              if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
              {
                webrtc::webrtc_logging_impl::Log("\r\t", v66, v67, v68, v69, v70, v71, v72, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoEncoderH264.mm");
              }

              LOBYTE(v62) = 1;
LABEL_81:

LABEL_82:
              memset(&v93, 0, sizeof(v93));
              CMTimeMake(&v93, [encodeCopy timeStampNs] / 1000000, 1000);
              if (v62)
              {
                keys[0] = *MEMORY[0x277CE27C0];
                values[0] = *MEMORY[0x277CBED28];
                CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              }

              operator new();
            }
          }

          v62 = [v63 countByEnumeratingWithState:&v94 objects:v100 count:16];
          if (!v62)
          {
            goto LABEL_81;
          }
        }
      }
    }

    if (!v29)
    {
LABEL_90:
      errorCallback = self->_errorCallback;
      if (errorCallback)
      {
LABEL_91:
        errorCallback[2](errorCallback, 0xFFFFFFFFLL);
      }

LABEL_92:
      v15 = -1;
      goto LABEL_93;
    }

    buffer2 = [encodeCopy buffer];
    toI420 = [buffer2 toI420];
    if (CVPixelBufferLockBaseAddress(v29, 0))
    {
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
      {
LABEL_87:

        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log("\r\t", v73, v74, v75, v76, v77, v78, v79, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoEncoderH264.mm");
        }

        CVBufferRelease(v29);
        goto LABEL_90;
      }
    }

    else
    {
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v29, 0);
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v29, 0);
      v88 = CVPixelBufferGetBaseAddressOfPlane(v29, 1uLL);
      v86 = BaseAddressOfPlane;
      pixelBuffer = v29;
      v82 = CVPixelBufferGetBytesPerRowOfPlane(v29, 1uLL);
      dataY = [toI420 dataY];
      strideY = [toI420 strideY];
      dataU = [toI420 dataU];
      strideU = [toI420 strideU];
      frameProperties = [toI420 dataV];
      strideV = [toI420 strideV];
      width = [toI420 width];
      height = [toI420 height];
      v42 = dataY;
      if (v86)
      {
        v43 = dataY == 0;
      }

      else
      {
        v43 = 0;
      }

      v48 = v43 || dataU == 0 || frameProperties == 0 || v88 == 0 || width <= 0 || height == 0;
      v49 = !v48;
      if (!v48)
      {
        v50 = (width + 1) / 2;
        if (height < 0)
        {
          v58 = 1 - height;
          v59 = ~height;
          height = -height;
          v51 = v58 >> 1;
          v42 += strideY * v59;
          dataU += ((v58 >> 1) - 1) * strideU;
          frameProperties = (frameProperties + ((v58 >> 1) - 1) * strideV);
          strideU = -strideU;
          strideY = -strideY;
          strideV = -strideV;
        }

        else
        {
          v51 = (height + 1) / 2;
        }

        v60 = v86;
        if (v86)
        {
          v87 = v49;
          v61 = v51;
          CopyPlane(v42, strideY, v60, BytesPerRowOfPlane, width, height);
          v51 = v61;
          v49 = v87;
          v50 = (width + 1) / 2;
        }

        MergeUVPlane(dataU, strideU, frameProperties, strideV, v88, v82, v50, v51);
      }

      CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
      if (v49)
      {

LABEL_67:
        goto LABEL_68;
      }

      v29 = pixelBuffer;
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
      {
        goto LABEL_87;
      }
    }

    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v31, v32, v33, v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoEncoderH264.mm");
    goto LABEL_87;
  }

  v14 = self->_errorCallback;
  if (v14)
  {
    v14[2](v14, 0xFFFFFFFFLL);
  }

  v15 = -7;
LABEL_93:

  return v15;
}

- (void)setCallback:(id)callback
{
  self->_callback = MEMORY[0x2743DACF0](callback, a2);

  MEMORY[0x2821F96F8]();
}

- (int)setBitrate:(unsigned int)bitrate framerate:(unsigned int)framerate
{
  if (self->_profile_level_id.__engaged_)
  {
    selfCopy = self;
    selfCopy->_targetBitrateBps = v6;
    ptr = selfCopy->_bitrateAdjuster.__ptr_;
    pthread_mutex_lock((ptr + 8));
    v8 = *(ptr + 20);
    if (!v8 || (vabds_f32(v6, v8) / v8) >= 0.1 || (v9 = *(ptr + 22)) == 0 || (vabds_f32(v6, v9) / v9) >= 0.1)
    {
      *(ptr + 21) = v6;
      *(ptr + 22) = v6;
    }

    *(ptr + 20) = v6;
    pthread_mutex_unlock((ptr + 8));
    maxAllowedFrameRate = selfCopy->_maxAllowedFrameRate;
    if (maxAllowedFrameRate < framerate && maxAllowedFrameRate)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v11, v12, v13, v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoEncoderH264.mm");
      }

      maxAllowedFrameRate = selfCopy->_maxAllowedFrameRate;
    }

    if (framerate)
    {
      framerateCopy = framerate;
    }

    else
    {
      framerateCopy = 30;
    }

    if (framerateCopy >= maxAllowedFrameRate)
    {
      v19 = maxAllowedFrameRate;
    }

    else
    {
      v19 = framerateCopy;
    }

    v20 = selfCopy->_bitrateAdjuster.__ptr_;
    pthread_mutex_lock((v20 + 8));
    v21 = *(v20 + 21);
    pthread_mutex_unlock((v20 + 8));
    [(WK_RTCVideoEncoderH264 *)selfCopy setBitrateBps:v21 frameRate:v19];
    LODWORD(self) = 0;
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (int64_t)releaseEncoder
{
  [(WK_RTCVideoEncoderH264 *)self destroyCompressionSession];
  callback = self->_callback;
  self->_callback = 0;

  return 0;
}

- (unsigned)pixelFormatOfFrame:(id)frame
{
  frameCopy = frame;
  buffer = [frameCopy buffer];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    buffer2 = [frameCopy buffer];
    PixelFormatType = CVPixelBufferGetPixelFormatType([buffer2 pixelBuffer]);

    return PixelFormatType;
  }

  else
  {

    return 875704422;
  }
}

- (BOOL)resetCompressionSessionIfNeededWithFrame:(id)frame
{
  v22[1] = *MEMORY[0x277D85DE8];
  frameCopy = frame;
  v5 = [(WK_RTCVideoEncoderH264 *)self pixelFormatOfFrame:frameCopy];
  if (![(WK_RTCVideoEncoderH264 *)self hasCompressionSession])
  {
    goto LABEL_15;
  }

  PixelBufferPool = VTCompressionSessionGetPixelBufferPool(self->_vtCompressionSession);
  if (PixelBufferPool)
  {
    v7 = CVPixelBufferPoolGetPixelBufferAttributes(PixelBufferPool);
    v8 = [v7 objectForKey:*MEMORY[0x277CC4E30]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v10 = 0;
        goto LABEL_9;
      }

      v22[0] = v8;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    }

    v10 = v9;
LABEL_9:
    v11 = [MEMORY[0x277CCABB0] numberWithLong:v5];
    v12 = [v10 containsObject:v11];

    if (v12)
    {

      goto LABEL_11;
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v14, v15, v16, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoEncoderH264.mm");
    }

LABEL_15:
    [(WK_RTCVideoEncoderH264 *)self resetCompressionSessionWithPixelFormat:v5];
    v13 = 1;
    goto LABEL_16;
  }

LABEL_11:
  v13 = 0;
LABEL_16:

  return v13;
}

- (int)resetCompressionSessionWithPixelFormat:(unsigned int)format
{
  keys[3] = *MEMORY[0x277D85DE8];
  [(WK_RTCVideoEncoderH264 *)self destroyCompressionSession];
  self->_disableEncoding = 0;
  v5 = *MEMORY[0x277CC4DE8];
  keys[0] = *MEMORY[0x277CC4E10];
  keys[1] = v5;
  keys[2] = *MEMORY[0x277CC4E30];
  v6 = *MEMORY[0x277CBECE8];
  v7 = MEMORY[0x277CBF138];
  v8 = MEMORY[0x277CBF150];
  v9 = CFDictionaryCreate(*MEMORY[0x277CBECE8], 0, 0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  valuePtr = format;
  v10 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
  v11 = *MEMORY[0x277CBED28];
  values[0] = *MEMORY[0x277CBED28];
  values[1] = v9;
  values[2] = v10;
  v12 = CFDictionaryCreate(v6, keys, values, 3, v7, v8);
  if (v9)
  {
    CFRelease(v9);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  Mutable = CFDictionaryCreateMutable(0, 5, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CE25F0], v11);
  if (self->_isH264LowLatencyEncoderEnabled && self->_useVCP)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277CE2BB8], v11);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v14)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v15, v16, v17, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoEncoderH264.mm");
    }

    return -1;
  }

  else
  {
    [(WK_RTCVideoEncoderH264 *)self configureCompressionSession];
    return 0;
  }
}

- (void)configureCompressionSession
{
  SetVTSessionProperty(self->_vtCompressionSession, *MEMORY[0x277CE25F0], self->_isH264LowLatencyEncoderEnabled);
  if (__PAIR64__(self->_useBaseline, self->_useVCP) == 0x100000001 && self->_isH264LowLatencyEncoderEnabled)
  {
    vtCompressionSession = self->_vtCompressionSession;
    v4 = *MEMORY[0x277CE25D8];
    Profile = *MEMORY[0x277CE2920];
  }

  else
  {
    if (!self->_profile_level_id.__engaged_)
    {
LABEL_14:
      __break(1u);
      return;
    }

    v6 = *MEMORY[0x277CE25D8];
    v7 = self->_vtCompressionSession;
    vtCompressionSession = v7;
    v4 = v6;
  }

  SetVTSessionProperty(vtCompressionSession, v4, Profile);
  if (!self->_profile_level_id.__engaged_)
  {
    goto LABEL_14;
  }

  if (self->_profile_level_id.var0.__val_.profile >= 2u)
  {
    SetVTSessionProperty(self->_vtCompressionSession, *MEMORY[0x277CE2500], 0);
  }

  if (self->_enableL1T2ScalabilityMode)
  {
    SetVTSessionProperty(self->_vtCompressionSession, *MEMORY[0x277CE2520], 0.5);
  }

  [(WK_RTCVideoEncoderH264 *)self setEncoderBitrateBps:self->_targetBitrateBps frameRate:self->_encoderFrameRate];
  SetVTSessionProperty(self->_vtCompressionSession, *MEMORY[0x277CE25A0], 7200);
  v8 = self->_vtCompressionSession;
  v9 = *MEMORY[0x277CE25A8];

  SetVTSessionProperty(v8, v9, 240);
}

- (void)destroyCompressionSession
{
  vtCompressionSession = self->_vtCompressionSession;
  if (vtCompressionSession)
  {
    VTCompressionSessionInvalidate(vtCompressionSession);
    CFRelease(self->_vtCompressionSession);
    self->_vtCompressionSession = 0;
  }
}

- (void)setBitrateBps:(unsigned int)bps frameRate:(unsigned int)rate
{
  if (self->_encoderBitrateBps != bps || self->_encoderFrameRate != rate)
  {
    [WK_RTCVideoEncoderH264 setEncoderBitrateBps:"setEncoderBitrateBps:frameRate:" frameRate:?];
  }
}

- (void)setEncoderBitrateBps:(unsigned int)bps frameRate:(unsigned int)rate
{
  if ([(WK_RTCVideoEncoderH264 *)self hasCompressionSession])
  {
    if (self->_isBelowExpectedFrameRate)
    {
      bpsCopy = bps / 3;
    }

    else
    {
      bpsCopy = bps;
    }

    if (bpsCopy)
    {
      SetVTSessionProperty(self->_vtCompressionSession, *MEMORY[0x277CE2518], bpsCopy);
    }

    if (self->_maxAllowedFrameRate)
    {
      SetVTSessionProperty(self->_vtCompressionSession, *MEMORY[0x277CE2548], rate);
    }

    self->_encoderBitrateBps = bps;
    self->_encoderFrameRate = rate;
  }
}

- (void)updateBitRateAccordingActualFrameRate
{
  ++self->_frameCount;
  if (webrtc::g_clock)
  {
    v3 = (*(*webrtc::g_clock + 16))(webrtc::g_clock, a2);
  }

  else
  {
    if (!dword_28100D8E4)
    {
      mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
    }

    v3 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
  }

  v4 = v3 / 1000000;
  lastFrameRateEstimationTime = self->_lastFrameRateEstimationTime;
  if (lastFrameRateEstimationTime)
  {
    v6 = v4 - lastFrameRateEstimationTime;
    if (v6 >= 1000)
    {
      v7 = 1000 * self->_frameCount / v6;
      self->_lastFrameRateEstimationTime = v4;
      self->_frameCount = 0;
      v8 = self->_encoderFrameRate > 2 * v7;
      if (self->_isBelowExpectedFrameRate != v8)
      {
        self->_isBelowExpectedFrameRate = v8;
        encoderBitrateBps = self->_encoderBitrateBps;

        [(WK_RTCVideoEncoderH264 *)self setEncoderBitrateBps:encoderBitrateBps frameRate:?];
      }
    }
  }

  else
  {
    self->_lastFrameRateEstimationTime = v4;
  }
}

- (void)frameWasEncoded:(int)encoded flags:(unsigned int)flags sampleBuffer:(opaqueCMSampleBuffer *)buffer codecSpecificInfo:(id)info width:(int)width height:(int)height renderTimeMs:(int64_t)ms timestamp:(int64_t)self0 duration:(unint64_t)self1 rotation:(int64_t)self2 isKeyFrameRequired:(BOOL)self3
{
  flagsCopy = flags;
  v15 = *&encoded;
  infoCopy = info;
  if (v15)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v18, v19, v20, v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoEncoderH264.mm");
    }

    if (required)
    {
      self->_isKeyFrameRequired = 1;
    }

    errorCallback = self->_errorCallback;
    if (errorCallback)
    {
      errorCallback[2](errorCallback, v15);
    }

    goto LABEL_27;
  }

  if ((flagsCopy & 2) == 0)
  {
    self->_isKeyFrameRequired = 0;
    SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(buffer, 0);
    v27 = SampleAttachmentsArray;
    if (SampleAttachmentsArray && CFArrayGetCount(SampleAttachmentsArray))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v27, 0);
      v29 = CFDictionaryContainsKey(ValueAtIndex, *MEMORY[0x277CC06A0]);
      if (self->_enableL1T2ScalabilityMode && (Value = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x277CC0690])) != 0)
      {
        CFBooleanGetValue(Value);
        if (v29)
        {
          goto LABEL_26;
        }
      }

      else if (v29)
      {
        goto LABEL_26;
      }

      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v39, v40, v41, v42, v43, v44, v45, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoEncoderH264.mm");
      }
    }

LABEL_26:
    v46[0] = 0;
    v46[1] = v46;
    v46[2] = 0x3812000000;
    v46[3] = __Block_byref_object_copy_;
    v46[4] = __Block_byref_object_dispose_;
    v46[5] = &unk_273C9424A;
    operator new();
  }

  if (required)
  {
    self->_isKeyFrameRequired = 1;
  }

  v31 = self->_errorCallback;
  if (v31)
  {
    v31[2](v31, 0);
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v32, v33, v34, v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoEncoderH264.mm");
  }

LABEL_27:
}

- (id)scalingSettings
{
  v2 = [[WK_RTCVideoEncoderQpThresholds alloc] initWithThresholdsLow:28 high:39];

  return v2;
}

- (void)flush
{
  vtCompressionSession = self->_vtCompressionSession;
  if (vtCompressionSession)
  {
    v3 = **&MEMORY[0x277CC0898];
    VTCompressionSessionCompleteFrames(vtCompressionSession, &v3);
  }
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 48) = 0;
  *(self + 56) = 0;
  *(self + 14) = &unk_2882941B0;
  *(self + 120) = 0;
  *(self + 176) = 0;
  *(self + 180) = 0;
  *(self + 212) = 0;
  *(self + 216) = 0;
  *(self + 220) = 0;
  *(self + 29) = 0;
  *(self + 30) = 0;
  *(self + 28) = 0;
  return self;
}

@end