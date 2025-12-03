@interface WK_RTCVideoDecoderH265
- (WK_RTCVideoDecoderH265)init;
- (id).cxx_construct;
- (int)resetDecompressionSession;
- (int64_t)decode:(id)decode missingFrames:(BOOL)frames codecSpecificInfo:(id)info renderTimeMs:(int64_t)ms;
- (int64_t)decodeData:(const char *)data size:(unint64_t)size timeStamp:(int64_t)stamp;
- (int64_t)releaseDecoder;
- (int64_t)setHVCCFormat:(const char *)format size:(unint64_t)size width:(unsigned __int16)width height:(unsigned __int16)height;
- (void)dealloc;
- (void)destroyDecompressionSession;
- (void)flush;
- (void)processFrame:(id)frame reorderSize:(unint64_t)size;
- (void)setCallback:(id)callback;
- (void)setVideoFormat:(opaqueCMFormatDescription *)format;
@end

@implementation WK_RTCVideoDecoderH265

- (WK_RTCVideoDecoderH265)init
{
  v3.receiver = self;
  v3.super_class = WK_RTCVideoDecoderH265;
  result = [(WK_RTCVideoDecoderH265 *)&v3 init];
  if (result)
  {
    result->_useHEVC = 0;
  }

  return result;
}

- (void)dealloc
{
  [(WK_RTCVideoDecoderH265 *)self destroyDecompressionSession];
  [(WK_RTCVideoDecoderH265 *)self setVideoFormat:0];
  v3.receiver = self;
  v3.super_class = WK_RTCVideoDecoderH265;
  [(WK_RTCVideoDecoderH265 *)&v3 dealloc];
}

- (int64_t)decode:(id)decode missingFrames:(BOOL)frames codecSpecificInfo:(id)info renderTimeMs:(int64_t)ms
{
  decodeCopy = decode;
  buffer = [decodeCopy buffer];
  bytes = [buffer bytes];
  buffer2 = [decodeCopy buffer];
  v11 = -[WK_RTCVideoDecoderH265 decodeData:size:timeStamp:](self, "decodeData:size:timeStamp:", bytes, [buffer2 length], objc_msgSend(decodeCopy, "timeStamp"));

  return v11;
}

- (int64_t)decodeData:(const char *)data size:(unint64_t)size timeStamp:(int64_t)stamp
{
  if (self->_error)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoDecoderH265.mm");
    }

    self->_error = 0;
    return -1;
  }

  if (!data || !size)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      return -1;
    }

    goto LABEL_46;
  }

  if (self->_useHEVC || (v15 = stamp, v16 = size, H265VideoFormatDescription = webrtc::CreateH265VideoFormatDescription(data, size), size = v16, stamp = v15, !H265VideoFormatDescription))
  {
LABEL_40:
    videoFormat = self->_videoFormat;
    if (videoFormat)
    {
      sampleBuffer = 0;
      if (self->_useHEVC)
      {
        destinationBuffer = 0;
        v52 = *MEMORY[0x277CBECE8];
        sizeCopy = size;
        if (CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x277CBECE8], 0, size, *MEMORY[0x277CBECE8], 0, 0, size, 1u, &destinationBuffer))
        {
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
          {
            webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v54, v55, v56, v57, v58, v59, v60, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoDecoderH265.mm");
          }

          return -1;
        }

        v63 = destinationBuffer;
        if (CMBlockBufferReplaceDataBytes(data, destinationBuffer, 0, sizeCopy))
        {
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
          {
            webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v64, v65, v66, v67, v68, v69, v70, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoDecoderH265.mm");
          }

          v71 = 0;
        }

        else
        {
          v85 = 0;
          v72 = CMSampleBufferCreate(v52, v63, 1u, 0, 0, videoFormat, 1, 0, 0, 0, 0, &v85);
          if (v72 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
          {
            webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v73, v74, v75, v76, v77, v78, v79, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoDecoderH265.mm");
          }

          if (v72)
          {
            v71 = 0;
          }

          else
          {
            v71 = v85;
          }
        }

        if (v63)
        {
          CFRelease(v63);
        }

        sampleBuffer = v71;
        if (!v71)
        {
          return -1;
        }

LABEL_64:
        operator new();
      }

      if (webrtc::H265AnnexBBufferToCMSampleBuffer(data, size, videoFormat, &sampleBuffer, stamp))
      {
        goto LABEL_64;
      }

      return -1;
    }

    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      return -1;
    }

LABEL_46:
    webrtc::webrtc_logging_impl::Log("\r\t", v37, v38, v39, v40, v41, v42, v43, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoDecoderH265.mm");
    return -1;
  }

  v18 = H265VideoFormatDescription;
  webrtc::H264::FindNaluIndices(data, v16, &destinationBuffer);
  v19 = destinationBuffer;
  if (destinationBuffer == v83[0])
  {
LABEL_33:
    v22 = 0;
  }

  else
  {
    v20 = destinationBuffer;
    while (1)
    {
      v21 = *(v20 + 2);
      if (v21)
      {
        if ((data[*(v20 + 1)] & 0x7E) == 0x40)
        {
          break;
        }
      }

      v20 = (v20 + 24);
      if (v20 == v83[0])
      {
        goto LABEL_33;
      }
    }

    v22 = 0;
    if (v20 != v83[0] && v21 >= 3)
    {
      v23 = destinationBuffer;
      webrtc::H264::ParseRbsp(v21 - 2, &v85);
      if (v86 == v85)
      {
        v28 = 0;
      }

      else
      {
        v28 = v85;
      }

      webrtc::H265VpsParser::ParseInternal(v28, v86 - v85, v24, v25, v26, v27, &destinationBuffer);
      if (v85)
      {
        v86 = v85;
        operator delete(v85);
      }

      if (v84 == 1)
      {
        v29 = v83;
        if (HIDWORD(destinationBuffer))
        {
          v30 = 4 * HIDWORD(destinationBuffer);
          v31 = v83 + 1;
          v32 = v83[0];
          v33 = v83 + 1;
          v19 = v23;
          do
          {
            v35 = *v33++;
            v34 = v35;
            v36 = v32 >= v35;
            if (v32 <= v35)
            {
              v32 = v34;
            }

            if (!v36)
            {
              v29 = v31;
            }

            v31 = v33;
            v30 -= 4;
          }

          while (v30);
        }

        else
        {
          v19 = v23;
        }

        v80 = *v29;
        if (v80 >= 0x10)
        {
          v22 = 16;
        }

        else
        {
          v22 = v80;
        }
      }

      else
      {
        v22 = 0;
        v19 = v23;
      }
    }
  }

  if (v19)
  {
    operator delete(v19);
  }

  pthread_mutex_lock(&self->_reorderQueue._reorderQueueLock.impl_.mutex_);
  self->_reorderQueue._reorderSize = v22;
  pthread_mutex_unlock(&self->_reorderQueue._reorderQueueLock.impl_.mutex_);
  CMVideoFormatDescriptionGetDimensions(v18);
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v44, v45, v46, v47, v48, v49, v50, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoDecoderH265.mm");
  }

  if (CMFormatDescriptionEqual(v18, self->_videoFormat) || ([(WK_RTCVideoDecoderH265 *)self setVideoFormat:v18], (v61 = [(WK_RTCVideoDecoderH265 *)self resetDecompressionSession]) == 0))
  {
    CFRelease(v18);
    stamp = v15;
    size = v16;
    goto LABEL_40;
  }

  v62 = v61;
  CFRelease(v18);
  return v62;
}

- (int64_t)setHVCCFormat:(const char *)format size:(unint64_t)size width:(unsigned __int16)width height:(unsigned __int16)height
{
  widthCopy = width;
  if (size)
  {
    if ((size & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  keys = @"hvcC";
  values = CFDataCreate(*MEMORY[0x277CBECE8], format, 0);
  v9 = MEMORY[0x277CBF138];
  v10 = MEMORY[0x277CBF150];
  v27 = CFDictionaryCreate(0, &keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v11 = CFDictionaryCreate(0, MEMORY[0x277CC03B0], &v27, 1, v9, v10);
  formatDescriptionOut = 0;
  v12 = CMVideoFormatDescriptionCreate(0, 0x68766331u, widthCopy, height, v11, &formatDescriptionOut);
  CFRelease(values);
  CFRelease(v27);
  CFRelease(v11);
  if (v12)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v13, v14, v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoDecoderH265.mm");
    }

    return v12;
  }

  else
  {
    v21 = formatDescriptionOut;
    if (formatDescriptionOut)
    {
      if (CMFormatDescriptionEqual(formatDescriptionOut, self->_videoFormat) || ([(WK_RTCVideoDecoderH265 *)self setVideoFormat:v21], (v23 = [(WK_RTCVideoDecoderH265 *)self resetDecompressionSession]) == 0))
      {
        v22 = 0;
        self->_useHEVC = 1;
      }

      else
      {
        v22 = v23;
      }

      CFRelease(v21);
      return v22;
    }

    else
    {
      result = 0;
      self->_useHEVC = 1;
    }
  }

  return result;
}

- (void)setCallback:(id)callback
{
  self->_callback = MEMORY[0x2743DACF0](callback, a2);

  MEMORY[0x2821F96F8]();
}

- (int64_t)releaseDecoder
{
  [(WK_RTCVideoDecoderH265 *)self destroyDecompressionSession];
  [(WK_RTCVideoDecoderH265 *)self setVideoFormat:0];
  callback = self->_callback;
  self->_callback = 0;

  return 0;
}

- (int)resetDecompressionSession
{
  keys[3] = *MEMORY[0x277D85DE8];
  [(WK_RTCVideoDecoderH265 *)self destroyDecompressionSession];
  if (self->_videoFormat)
  {
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

    v12.decompressionOutputCallback = h265DecompressionOutputCallback;
    v12.decompressionOutputRefCon = self;
    v10 = VTDecompressionSessionCreate(0, self->_videoFormat, 0, v9, &v12, &self->_decompressionSession);
    CFRelease(v9);
    if (v10)
    {
      [(WK_RTCVideoDecoderH265 *)self destroyDecompressionSession];
      return -1;
    }

    [(WK_RTCVideoDecoderH265 *)self configureDecompressionSession];
  }

  return 0;
}

- (void)destroyDecompressionSession
{
  decompressionSession = self->_decompressionSession;
  if (decompressionSession)
  {
    VTDecompressionSessionWaitForAsynchronousFrames(decompressionSession);
    VTDecompressionSessionInvalidate(self->_decompressionSession);
    CFRelease(self->_decompressionSession);
    self->_decompressionSession = 0;
  }
}

- (void)flush
{
  decompressionSession = self->_decompressionSession;
  if (decompressionSession)
  {
    VTDecompressionSessionWaitForAsynchronousFrames(decompressionSession);
  }

  v4 = webrtc::RTCVideoFrameReorderQueue::takeIfAny(&self->_reorderQueue);
  if (v4)
  {
    v5 = v4;
    do
    {
      (*(self->_callback + 2))();

      v5 = webrtc::RTCVideoFrameReorderQueue::takeIfAny(&self->_reorderQueue);
    }

    while (v5);
  }
}

- (void)setVideoFormat:(opaqueCMFormatDescription *)format
{
  videoFormat = self->_videoFormat;
  if (videoFormat != format)
  {
    if (videoFormat)
    {
      CFRelease(videoFormat);
    }

    self->_videoFormat = format;
    if (format)
    {

      CFRetain(format);
    }
  }
}

- (void)processFrame:(id)frame reorderSize:(unint64_t)size
{
  frameCopy = frame;
  v7 = frameCopy;
  if (self->_reorderQueue._reorderQueue.__size_ | size)
  {
    webrtc::RTCVideoFrameReorderQueue::append(&self->_reorderQueue, frameCopy);
  }

  (*(self->_callback + 2))();
}

- (id).cxx_construct
{
  v6 = *MEMORY[0x277D85DE8];
  *&self->_reorderQueue._reorderQueue.__map_.__first_ = 0u;
  p_reorderQueue = &self->_reorderQueue;
  self->_reorderQueue._reorderSize = 0;
  *&self->_reorderQueue._reorderQueue.__map_.__end_ = 0u;
  *&self->_reorderQueue._reorderQueue.__start_ = 0u;
  pthread_mutexattr_init(&v5);
  pthread_mutexattr_setpolicy_np(&v5, 3);
  pthread_mutex_init(&p_reorderQueue->_reorderQueueLock.impl_.mutex_, &v5);
  pthread_mutexattr_destroy(&v5);
  return self;
}

@end