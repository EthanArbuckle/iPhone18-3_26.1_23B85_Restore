@interface WK_RTCVideoEncoderH265
- (WK_RTCVideoEncoderH265)initWithCodecInfo:(id)a3;
- (id).cxx_construct;
- (id)scalingSettings;
- (int)resetCompressionSession;
- (int)setBitrate:(unsigned int)a3 framerate:(unsigned int)a4;
- (int64_t)encode:(id)a3 codecSpecificInfo:(id)a4 frameTypes:(id)a5;
- (int64_t)releaseEncoder;
- (int64_t)startEncodeWithSettings:(id)a3 numberOfCores:(int)a4;
- (void)configureCompressionSession;
- (void)dealloc;
- (void)destroyCompressionSession;
- (void)flush;
- (void)frameWasEncoded:(int)a3 flags:(unsigned int)a4 sampleBuffer:(opaqueCMSampleBuffer *)a5 width:(int)a6 height:(int)a7 renderTimeMs:(int64_t)a8 timestamp:(unsigned int)a9 rotation:(int64_t)a10;
- (void)setBitrateBps:(unsigned int)a3;
- (void)setCallback:(id)a3;
- (void)setDescriptionCallback:(id)a3;
- (void)setEncoderBitrateBps:(unsigned int)a3;
- (void)setErrorCallback:(id)a3;
@end

@implementation WK_RTCVideoEncoderH265

- (WK_RTCVideoEncoderH265)initWithCodecInfo:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v8.receiver = self;
  v8.super_class = WK_RTCVideoEncoderH265;
  v6 = [(WK_RTCVideoEncoderH265 *)&v8 init];
  if (v6)
  {
    objc_storeStrong(&v6->_codecInfo, a3);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  [(WK_RTCVideoEncoderH265 *)self destroyCompressionSession];
  v3.receiver = self;
  v3.super_class = WK_RTCVideoEncoderH265;
  [(WK_RTCVideoEncoderH265 *)&v3 dealloc];
}

- (int64_t)startEncodeWithSettings:(id)a3 numberOfCores:(int)a4
{
  v5 = a3;
  self->_width = [v5 width];
  self->_height = [v5 height];
  self->_mode = [v5 mode];
  v6 = [v5 startBitrate];
  self->_targetBitrateBps = v6;
  ptr = self->_bitrateAdjuster.__ptr_;
  pthread_mutex_lock((ptr + 8));
  v8 = *(ptr + 20);
  if (!v8 || (vabds_f32(v6, v8) / v8) >= 0.1 || (v9 = *(ptr + 22)) == 0 || (vabds_f32(v6, v9) / v9) >= 0.1)
  {
    *(ptr + 21) = v6;
    *(ptr + 22) = v6;
  }

  *(ptr + 20) = v6;
  pthread_mutex_unlock((ptr + 8));
  v10 = [(WK_RTCVideoEncoderH265 *)self resetCompressionSession];

  return v10;
}

- (void)setDescriptionCallback:(id)a3
{
  self->_descriptionCallback = MEMORY[0x2743DACF0](a3, a2);

  MEMORY[0x2821F96F8]();
}

- (void)setErrorCallback:(id)a3
{
  self->_errorCallback = MEMORY[0x2743DACF0](a3, a2);

  MEMORY[0x2821F96F8]();
}

- (int64_t)encode:(id)a3 codecSpecificInfo:(id)a4 frameTypes:(id)a5
{
  v104 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_callback)
  {
    compressionSession = self->_compressionSession;
    if (compressionSession)
    {
      PixelBufferPool = VTCompressionSessionGetPixelBufferPool(compressionSession);
      v13 = PixelBufferPool == 0;
      v14 = PixelBufferPool;
      if (!PixelBufferPool)
      {
        [(WK_RTCVideoEncoderH265 *)self resetCompressionSession];
        v14 = VTCompressionSessionGetPixelBufferPool(self->_compressionSession);
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log("\r\t", v15, v16, v17, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoEncoderH265.mm");
        }
      }

      v22 = [v8 buffer];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v24 = [v8 buffer];
        if ([v24 requiresCropping])
        {
          if (!v14)
          {
            if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
            {
              webrtc::webrtc_logging_impl::Log("\r\t", v62, v63, v64, v65, v66, v67, v68, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoEncoderH265.mm");
            }

LABEL_43:
            errorCallback = self->_errorCallback;
            if (!errorCallback)
            {
LABEL_45:

LABEL_60:
              v33 = -1;
              goto LABEL_61;
            }

LABEL_44:
            errorCallback[2](errorCallback, 0xFFFFFFFFLL);
            goto LABEL_45;
          }

          pixelBufferOut.value = 0;
          if (CVPixelBufferPoolCreatePixelBuffer(0, v14, &pixelBufferOut))
          {
            if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
            {
              webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v25, v26, v27, v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoEncoderH265.mm");
            }

            goto LABEL_43;
          }

          value = pixelBufferOut.value;
          if (!pixelBufferOut.value)
          {
            goto LABEL_43;
          }

          Width = CVPixelBufferGetWidth(pixelBufferOut.value);
          Height = CVPixelBufferGetHeight(value);
          if ([v24 requiresScalingToWidth:Width height:Height])
          {
            v72 = [v24 bufferSizeForCroppingAndScalingToWidth:Width height:Height];
            begin = self->_nv12ScaleBuffer.__begin_;
            end = self->_nv12ScaleBuffer.__end_;
            if (v72 <= end - begin)
            {
              if (v72 < end - begin)
              {
                end = &begin[v72];
                self->_nv12ScaleBuffer.__end_ = &begin[v72];
              }
            }

            else
            {
              std::vector<unsigned char>::__append(&self->_nv12ScaleBuffer, v72 - (end - begin));
              begin = self->_nv12ScaleBuffer.__begin_;
              end = self->_nv12ScaleBuffer.__end_;
            }
          }

          else
          {
            end = self->_nv12ScaleBuffer.__begin_;
            self->_nv12ScaleBuffer.__end_ = end;
            begin = end;
          }

          v86 = (self->_nv12ScaleBuffer.__cap_ - begin);
          v87 = end - begin;
          if (v86 <= end - begin)
          {
            v88 = begin;
          }

          else
          {
            if (end != begin)
            {
              operator new();
            }

            if (v87 >= v86)
            {
              v88 = begin;
              begin = 0;
            }

            else
            {
              imageBuffera = value;
              v89 = (end - begin);
              v90 = self->_nv12ScaleBuffer.__end_;
              v91 = (v87 + begin - v90);
              memcpy(v91, begin, v90 - begin);
              v88 = v91;
              self->_nv12ScaleBuffer.__begin_ = v91;
              self->_nv12ScaleBuffer.__end_ = v89;
              self->_nv12ScaleBuffer.__cap_ = v89;
              value = imageBuffera;
            }

            if (begin)
            {
              operator delete(begin);
              v88 = self->_nv12ScaleBuffer.__begin_;
            }
          }

          if (([v24 cropAndScaleTo:value withTempBuffer:v88] & 1) == 0)
          {
            errorCallback = self->_errorCallback;
            if (!errorCallback)
            {
              goto LABEL_45;
            }

            goto LABEL_44;
          }

          goto LABEL_76;
        }

        v34 = [v24 pixelBuffer];
        CVBufferRetain(v34);

        if (v34)
        {
LABEL_16:
          if (v10 && PixelBufferPool)
          {
            v99 = 0u;
            v100 = 0u;
            v97 = 0u;
            v98 = 0u;
            v35 = v10;
            v36 = [v35 countByEnumeratingWithState:&v97 objects:v103 count:16];
            if (v36)
            {
              v37 = *v98;
              while (1)
              {
                for (i = 0; i != v36; ++i)
                {
                  if (*v98 != v37)
                  {
                    objc_enumerationMutation(v35);
                  }

                  if ([*(*(&v97 + 1) + 8 * i) intValue] == 3)
                  {
                    v13 = 1;
                    goto LABEL_48;
                  }
                }

                v36 = [v35 countByEnumeratingWithState:&v97 objects:v103 count:16];
                if (!v36)
                {
                  v13 = 0;
                  goto LABEL_48;
                }
              }
            }

            v13 = 0;
LABEL_48:
          }

          memset(&pixelBufferOut, 0, sizeof(pixelBufferOut));
          CMTimeMake(&pixelBufferOut, [v8 timeStampNs] / 1000000, 1000);
          if (v13)
          {
            keys[0] = *MEMORY[0x277CE27C0];
            values[0] = *MEMORY[0x277CBED28];
            CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          }

          operator new();
        }
      }

      if (!v14)
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log("\r\t", v46, v47, v48, v49, v50, v51, v52, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoEncoderH265.mm");
        }

        goto LABEL_58;
      }

      pixelBufferOut.value = 0;
      if (CVPixelBufferPoolCreatePixelBuffer(0, v14, &pixelBufferOut))
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v39, v40, v41, v42, v43, v44, v45, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoEncoderH265.mm");
        }

        goto LABEL_58;
      }

      v53 = pixelBufferOut.value;
      if (!pixelBufferOut.value)
      {
LABEL_58:
        v84 = self->_errorCallback;
        if (v84)
        {
          v84[2](v84, 0xFFFFFFFFLL);
        }

        goto LABEL_60;
      }

      v24 = [v8 buffer];
      v54 = [v24 toI420];
      if (CVPixelBufferLockBaseAddress(v53, 0))
      {
        if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
        {
LABEL_55:

          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
          {
            webrtc::webrtc_logging_impl::Log("\r\t", v77, v78, v79, v80, v81, v82, v83, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoEncoderH265.mm");
          }

          CVBufferRelease(v53);
          goto LABEL_58;
        }
      }

      else
      {
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v53, 0);
        imageBuffer = CVPixelBufferGetBytesPerRowOfPlane(v53, 0);
        v93 = CVPixelBufferGetBaseAddressOfPlane(v53, 1uLL);
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v53, 1uLL);
        LODWORD(BaseAddressOfPlane) = I420ToNV12([v54 dataY], objc_msgSend(v54, "strideY"), objc_msgSend(v54, "dataU"), objc_msgSend(v54, "strideU"), objc_msgSend(v54, "dataV"), objc_msgSend(v54, "strideV"), BaseAddressOfPlane, imageBuffer, v93, BytesPerRowOfPlane, objc_msgSend(v54, "width"), objc_msgSend(v54, "height"));
        CVPixelBufferUnlockBaseAddress(v53, 0);
        if (!BaseAddressOfPlane)
        {

LABEL_76:
          goto LABEL_16;
        }

        if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
        {
          goto LABEL_55;
        }
      }

      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v55, v56, v57, v58, v59, v60, v61, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoEncoderH265.mm");
      goto LABEL_55;
    }
  }

  v32 = self->_errorCallback;
  if (v32)
  {
    v32[2](v32, 0xFFFFFFFFLL);
  }

  v33 = -7;
LABEL_61:

  return v33;
}

- (void)setCallback:(id)a3
{
  self->_callback = MEMORY[0x2743DACF0](a3, a2);

  MEMORY[0x2821F96F8]();
}

- (int)setBitrate:(unsigned int)a3 framerate:(unsigned int)a4
{
  v5 = 1000 * a3;
  self->_targetBitrateBps = 1000 * a3;
  ptr = self->_bitrateAdjuster.__ptr_;
  pthread_mutex_lock((ptr + 8));
  v7 = *(ptr + 20);
  if (!v7 || (vabds_f32(v5, v7) / v7) >= 0.1 || (v8 = *(ptr + 22)) == 0 || (vabds_f32(v5, v8) / v8) >= 0.1)
  {
    *(ptr + 21) = v5;
    *(ptr + 22) = v5;
  }

  *(ptr + 20) = v5;
  pthread_mutex_unlock((ptr + 8));
  v9 = self->_bitrateAdjuster.__ptr_;
  pthread_mutex_lock((v9 + 8));
  v10 = *(v9 + 21);
  pthread_mutex_unlock((v9 + 8));
  [(WK_RTCVideoEncoderH265 *)self setBitrateBps:v10];
  return 0;
}

- (int64_t)releaseEncoder
{
  [(WK_RTCVideoEncoderH265 *)self destroyCompressionSession];
  callback = self->_callback;
  self->_callback = 0;

  return 0;
}

- (int)resetCompressionSession
{
  keys[3] = *MEMORY[0x277D85DE8];
  [(WK_RTCVideoEncoderH265 *)self destroyCompressionSession];
  v3 = *MEMORY[0x277CC4DE8];
  keys[0] = *MEMORY[0x277CC4E10];
  keys[1] = v3;
  keys[2] = *MEMORY[0x277CC4E30];
  v4 = *MEMORY[0x277CBECE8];
  v5 = MEMORY[0x277CBF138];
  v6 = MEMORY[0x277CBF150];
  v7 = CFDictionaryCreate(*MEMORY[0x277CBECE8], 0, 0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  valuePtr = 875704422;
  v8 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
  values[0] = *MEMORY[0x277CBED28];
  values[1] = v7;
  values[2] = v8;
  v9 = CFDictionaryCreate(v4, keys, values, 3, v5, v6);
  if (v7)
  {
    CFRelease(v7);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  Mutable = CFDictionaryCreateMutable(0, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  {
    if (Mutable)
    {
      CFDictionaryRemoveValue(Mutable, *MEMORY[0x277CE2BB8]);
    }

    if (v9)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
    if (v9)
    {
LABEL_9:
      CFRelease(v9);
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v11)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v12, v13, v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoEncoderH265.mm");
    }

    return -1;
  }

  else
  {
    [(WK_RTCVideoEncoderH265 *)self configureCompressionSession];
    return 0;
  }
}

- (void)configureCompressionSession
{
  SetVTSessionProperty(self->_compressionSession, *MEMORY[0x277CE25F0], self->_isLowLatencyEnabled);
  SetVTSessionProperty(self->_compressionSession, *MEMORY[0x277CE2500], 0);
  [(WK_RTCVideoEncoderH265 *)self setEncoderBitrateBps:self->_targetBitrateBps];
  SetVTSessionProperty(self->_compressionSession, *MEMORY[0x277CE25A0], 7200);
  SetVTSessionProperty(self->_compressionSession, *MEMORY[0x277CE25A8], 240);
  if (VTCompressionSessionPrepareToEncodeFrames(self->_compressionSession))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoEncoderH265.mm");
    }
  }
}

- (void)destroyCompressionSession
{
  compressionSession = self->_compressionSession;
  if (compressionSession)
  {
    VTCompressionSessionInvalidate(compressionSession);
    CFRelease(self->_compressionSession);
    self->_compressionSession = 0;
  }
}

- (void)setBitrateBps:(unsigned int)a3
{
  if (self->_encoderBitrateBps != a3)
  {
    [(WK_RTCVideoEncoderH265 *)self setEncoderBitrateBps:?];
  }
}

- (void)setEncoderBitrateBps:(unsigned int)a3
{
  compressionSession = self->_compressionSession;
  if (compressionSession)
  {
    SetVTSessionProperty(compressionSession, *MEMORY[0x277CE2518], a3);
    self->_encoderBitrateBps = a3;
  }
}

- (void)frameWasEncoded:(int)a3 flags:(unsigned int)a4 sampleBuffer:(opaqueCMSampleBuffer *)a5 width:(int)a6 height:(int)a7 renderTimeMs:(int64_t)a8 timestamp:(unsigned int)a9 rotation:(int64_t)a10
{
  if (a3)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v11, v12, v13, v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoEncoderH265.mm");
    }

    errorCallback = self->_errorCallback;
    if (errorCallback)
    {
      v19 = *(errorCallback + 2);
LABEL_15:

      v19();
    }
  }

  else
  {
    if ((a4 & 2) == 0)
    {
      SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a5, 0);
      if (SampleAttachmentsArray)
      {
        v21 = SampleAttachmentsArray;
        if (CFArrayGetCount(SampleAttachmentsArray))
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v21, 0);
          if (!CFDictionaryContainsKey(ValueAtIndex, *MEMORY[0x277CC06A0]) && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
          {
            webrtc::webrtc_logging_impl::Log("\r\t", v31, v32, v33, v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoEncoderH265.mm");
          }
        }
      }

      operator new();
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v23, v24, v25, v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoEncoderH265.mm");
    }

    v30 = self->_errorCallback;
    if (v30)
    {
      v19 = *(v30 + 2);
      goto LABEL_15;
    }
  }
}

- (id)scalingSettings
{
  v2 = [[WK_RTCVideoEncoderQpThresholds alloc] initWithThresholdsLow:28 high:39];

  return v2;
}

- (void)flush
{
  compressionSession = self->_compressionSession;
  if (compressionSession)
  {
    v3 = **&MEMORY[0x277CC0898];
    VTCompressionSessionCompleteFrames(compressionSession, &v3);
  }
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 11) = 0;
  *(self + 12) = 0;
  *(self + 10) = 0;
  *(self + 16) = &unk_2882941E0;
  *(self + 212) = 0;
  *(self + 216) = 0;
  *(self + 220) = 0;
  *(self + 136) = 0u;
  *(self + 152) = 0u;
  *(self + 168) = 0u;
  *(self + 184) = 0u;
  *(self + 193) = 0u;
  return self;
}

@end