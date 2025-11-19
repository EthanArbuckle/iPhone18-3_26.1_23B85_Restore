@interface WK_RTCVideoDecoderH264
- (WK_RTCVideoDecoderH264)init;
- (id).cxx_construct;
- (int)resetDecompressionSession;
- (int64_t)decode:(id)a3 missingFrames:(BOOL)a4 codecSpecificInfo:(id)a5 renderTimeMs:(int64_t)a6;
- (int64_t)decodeData:(const char *)a3 size:(unint64_t)a4 timeStamp:(int64_t)a5;
- (int64_t)releaseDecoder;
- (int64_t)setAVCFormat:(const char *)a3 size:(unint64_t)a4 width:(unsigned __int16)a5 height:(unsigned __int16)a6;
- (void)dealloc;
- (void)destroyDecompressionSession;
- (void)flush;
- (void)processFrame:(id)a3 reorderSize:(unint64_t)a4;
- (void)setCallback:(id)a3;
- (void)setVideoFormat:(opaqueCMFormatDescription *)a3;
@end

@implementation WK_RTCVideoDecoderH264

- (WK_RTCVideoDecoderH264)init
{
  v5.receiver = self;
  v5.super_class = WK_RTCVideoDecoderH264;
  result = [(WK_RTCVideoDecoderH264 *)&v5 init];
  if (result)
  {
    v3 = result;
    v4 = CMMemoryPoolCreate(0);
    result = v3;
    v3->_memoryPool = v4;
    v3->_useAVC = 0;
  }

  return result;
}

- (void)dealloc
{
  CMMemoryPoolInvalidate(self->_memoryPool);
  CFRelease(self->_memoryPool);
  [(WK_RTCVideoDecoderH264 *)self destroyDecompressionSession];
  [(WK_RTCVideoDecoderH264 *)self setVideoFormat:0];
  v3.receiver = self;
  v3.super_class = WK_RTCVideoDecoderH264;
  [(WK_RTCVideoDecoderH264 *)&v3 dealloc];
}

- (int64_t)decode:(id)a3 missingFrames:(BOOL)a4 codecSpecificInfo:(id)a5 renderTimeMs:(int64_t)a6
{
  v7 = a3;
  v8 = [v7 buffer];
  v9 = [v8 bytes];
  v10 = [v7 buffer];
  v11 = -[WK_RTCVideoDecoderH264 decodeData:size:timeStamp:](self, "decodeData:size:timeStamp:", v9, [v10 length], objc_msgSend(v7, "timeStamp"));

  return v11;
}

- (int64_t)decodeData:(const char *)a3 size:(unint64_t)a4 timeStamp:(int64_t)a5
{
  if (self->_error)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v7, v8, v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoDecoderH264.mm");
    }

    self->_error = 0;
    return -1;
  }

  if (!a3 || !a4)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      goto LABEL_40;
    }

    return -1;
  }

  if (self->_useAVC || (v15 = a4, v16 = a3, VideoFormatDescription = webrtc::CreateVideoFormatDescription(a3, a4), a3 = v16, a4 = v15, !VideoFormatDescription))
  {
LABEL_12:
    videoFormat = self->_videoFormat;
    if (!videoFormat)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        goto LABEL_40;
      }

      return -1;
    }

    sampleBuffer = 0;
    if (self->_useAVC)
    {
      v21 = a3;
      destinationBuffer = 0;
      v22 = *MEMORY[0x277CBECE8];
      v23 = a4;
      if (CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x277CBECE8], 0, a4, *MEMORY[0x277CBECE8], 0, 0, a4, 1u, &destinationBuffer))
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v24, v25, v26, v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoDecoderH264.mm");
        }

        goto LABEL_39;
      }

      v40 = destinationBuffer;
      if (CMBlockBufferReplaceDataBytes(v21, destinationBuffer, 0, v23))
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v41, v42, v43, v44, v45, v46, v47, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoDecoderH264.mm");
        }

        v48 = 0;
      }

      else
      {
        v58 = 0;
        v49 = CMSampleBufferCreate(v22, v40, 1u, 0, 0, videoFormat, 1, 0, 0, 0, 0, &v58);
        if (v49 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v50, v51, v52, v53, v54, v55, v56, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoDecoderH264.mm");
        }

        if (v49)
        {
          v48 = 0;
        }

        else
        {
          v48 = v58;
        }
      }

      if (v40)
      {
        CFRelease(v40);
      }

      sampleBuffer = v48;
      if (!v48)
      {
LABEL_39:
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
        {
LABEL_40:
          webrtc::webrtc_logging_impl::Log("\r\t", v31, v32, v33, v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoDecoderH264.mm");
        }

        return -1;
      }
    }

    else if (!webrtc::H264AnnexBBufferToCMSampleBuffer(a3, a4, videoFormat, &sampleBuffer, self->_memoryPool, v5))
    {
      return -1;
    }

    operator new();
  }

  v18 = VideoFormatDescription;
  v19 = webrtc::ComputeH264ReorderSizeFromAnnexB(v16, v15);
  pthread_mutex_lock(&self->_reorderQueue._reorderQueueLock.impl_.mutex_);
  self->_reorderQueue._reorderSize = v19;
  pthread_mutex_unlock(&self->_reorderQueue._reorderQueueLock.impl_.mutex_);
  if (CMFormatDescriptionEqual(v18, self->_videoFormat) || ([(WK_RTCVideoDecoderH264 *)self setVideoFormat:v18], (v38 = [(WK_RTCVideoDecoderH264 *)self resetDecompressionSession]) == 0))
  {
    CFRelease(v18);
    a4 = v15;
    a3 = v16;
    goto LABEL_12;
  }

  v39 = v38;
  CFRelease(v18);
  return v39;
}

- (int64_t)setAVCFormat:(const char *)a3 size:(unint64_t)a4 width:(unsigned __int16)a5 height:(unsigned __int16)a6
{
  LOWORD(v6) = a6;
  v11 = webrtc::ComputeH264InfoFromAVC(a3, a4);
  if ((v11 & 0x1000000000000) != 0)
  {
    v6 = v11 >> 16;
    v12 = HIDWORD(v11);
    v13 = v11;
    pthread_mutex_lock(&self->_reorderQueue._reorderQueueLock.impl_.mutex_);
    self->_reorderQueue._reorderSize = v12;
    pthread_mutex_unlock(&self->_reorderQueue._reorderQueueLock.impl_.mutex_);
    a5 = v13;
  }

  keys = @"avcC";
  values = CFDataCreate(*MEMORY[0x277CBECE8], a3, a4);
  v14 = MEMORY[0x277CBF138];
  v15 = MEMORY[0x277CBF150];
  cf = CFDictionaryCreate(0, &keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v16 = CFDictionaryCreate(0, MEMORY[0x277CC03B0], &cf, 1, v14, v15);
  formatDescriptionOut = 0;
  v17 = CMVideoFormatDescriptionCreate(0, 0x61766331u, a5, v6, v16, &formatDescriptionOut);
  CFRelease(values);
  CFRelease(cf);
  CFRelease(v16);
  if (v17)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v18, v19, v20, v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoDecoderH264.mm");
    }

    return v17;
  }

  else
  {
    v26 = formatDescriptionOut;
    if (formatDescriptionOut)
    {
      if (CMFormatDescriptionEqual(formatDescriptionOut, self->_videoFormat) || ([(WK_RTCVideoDecoderH264 *)self setVideoFormat:v26], (v28 = [(WK_RTCVideoDecoderH264 *)self resetDecompressionSession]) == 0))
      {
        v27 = 0;
        self->_useAVC = 1;
      }

      else
      {
        v27 = v28;
      }

      CFRelease(v26);
      return v27;
    }

    else
    {
      result = 0;
      self->_useAVC = 1;
    }
  }

  return result;
}

- (void)setCallback:(id)a3
{
  self->_callback = MEMORY[0x2743DACF0](a3, a2);

  MEMORY[0x2821F96F8]();
}

- (int64_t)releaseDecoder
{
  [(WK_RTCVideoDecoderH264 *)self destroyDecompressionSession];
  [(WK_RTCVideoDecoderH264 *)self setVideoFormat:0];
  callback = self->_callback;
  self->_callback = 0;

  return 0;
}

- (int)resetDecompressionSession
{
  keys[3] = *MEMORY[0x277D85DE8];
  [(WK_RTCVideoDecoderH264 *)self destroyDecompressionSession];
  if (!self->_videoFormat)
  {
    return 0;
  }

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

  outputCallback.decompressionOutputCallback = decompressionOutputCallback;
  outputCallback.decompressionOutputRefCon = self;
  v10 = VTDecompressionSessionCreate(0, self->_videoFormat, 0, v9, &outputCallback, &self->_decompressionSession);
  CFRelease(v9);
  if (!v10)
  {
    [(WK_RTCVideoDecoderH264 *)self configureDecompressionSession];
    return 0;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v11, v12, v13, v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoDecoderH264.mm");
  }

  [(WK_RTCVideoDecoderH264 *)self destroyDecompressionSession];
  return -1;
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

- (void)setVideoFormat:(opaqueCMFormatDescription *)a3
{
  videoFormat = self->_videoFormat;
  if (videoFormat != a3)
  {
    if (videoFormat)
    {
      CFRelease(videoFormat);
    }

    self->_videoFormat = a3;
    if (a3)
    {

      CFRetain(a3);
    }
  }
}

- (void)processFrame:(id)a3 reorderSize:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (self->_reorderQueue._reorderQueue.__size_ | a4)
  {
    webrtc::RTCVideoFrameReorderQueue::append(&self->_reorderQueue, v6);
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