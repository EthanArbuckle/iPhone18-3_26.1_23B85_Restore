@interface WK_RTCVideoDecoderVTBVP9
- (WK_RTCVideoDecoderVTBVP9)init;
- (int)resetDecompressionSession;
- (int64_t)decode:(id)a3 missingFrames:(BOOL)a4 codecSpecificInfo:(id)a5 renderTimeMs:(int64_t)a6;
- (int64_t)decodeData:(const char *)a3 size:(unint64_t)a4 timeStamp:(int64_t)a5;
- (int64_t)releaseDecoder;
- (void)dealloc;
- (void)destroyDecompressionSession;
- (void)flush;
- (void)setCallback:(id)a3;
- (void)setVideoFormat:(opaqueCMFormatDescription *)a3;
- (void)setWidth:(unsigned __int16)a3 height:(unsigned __int16)a4;
@end

@implementation WK_RTCVideoDecoderVTBVP9

- (WK_RTCVideoDecoderVTBVP9)init
{
  v5.receiver = self;
  v5.super_class = WK_RTCVideoDecoderVTBVP9;
  result = [(WK_RTCVideoDecoderVTBVP9 *)&v5 init];
  if (result)
  {
    result->_shouldCheckFormat = 1;
    result->_isVideoFullRange = 1;
    v3 = result;
    v4 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
    result = v3;
    v3->_colorSpace = v4;
  }

  return result;
}

- (void)dealloc
{
  [(WK_RTCVideoDecoderVTBVP9 *)self destroyDecompressionSession];
  [(WK_RTCVideoDecoderVTBVP9 *)self setVideoFormat:0];
  CFRelease(self->_colorSpace);
  v3.receiver = self;
  v3.super_class = WK_RTCVideoDecoderVTBVP9;
  [(WK_RTCVideoDecoderVTBVP9 *)&v3 dealloc];
}

- (int64_t)decode:(id)a3 missingFrames:(BOOL)a4 codecSpecificInfo:(id)a5 renderTimeMs:(int64_t)a6
{
  v7 = a3;
  if ([v7 frameType] == 3)
  {
    -[WK_RTCVideoDecoderVTBVP9 setWidth:height:](self, "setWidth:height:", [v7 encodedWidth], objc_msgSend(v7, "encodedHeight"));
  }

  v8 = [v7 buffer];
  v9 = [v8 bytes];
  v10 = [v7 buffer];
  v11 = -[WK_RTCVideoDecoderVTBVP9 decodeData:size:timeStamp:](self, "decodeData:size:timeStamp:", v9, [v10 length], objc_msgSend(v7, "timeStamp"));

  return v11;
}

- (void)setWidth:(unsigned __int16)a3 height:(unsigned __int16)a4
{
  self->_width = a3;
  self->_height = a4;
  self->_shouldCheckFormat = 1;
}

- (int64_t)decodeData:(const char *)a3 size:(unint64_t)a4 timeStamp:(int64_t)a5
{
  v79 = *MEMORY[0x277D85DE8];
  if (self->_error)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoDecoderVTBVP9.mm");
    }

    self->_error = 0;
    return -1;
  }

  if (self->_shouldCheckFormat || !self->_videoFormat)
  {
    width = self->_width;
    height = self->_height;
    v21 = a4 ? a3 : 0;
    webrtc::ParseUncompressedVp9Header(v21, a4, a5, v5, v6, v7, &destinationBuffer);
    if (v73)
    {
      if (v70 <= 3)
      {
        v22 = 0x2040206u >> (8 * v70);
      }

      else
      {
        v22 = 6;
      }

      if ((v70 & 0x100000000) != 0)
      {
        v23 = v22;
      }

      else
      {
        v23 = 2;
      }

      if (v68 == 1)
      {
        v24 = v69;
      }

      else
      {
        v24 = 0;
      }

      v64 = v24;
      *&bytes[1] = 0x2000A00000000;
      *&bytes[8] = 514;
      bytes[0] = 1;
      bytes[4] = destinationBuffer;
      bytes[6] = v23 | (16 * v67) | v24;
      v25 = *MEMORY[0x277CBECE8];
      v26 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, 12);
      v76 = @"vpcC";
      v77 = v26;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
      v74 = *MEMORY[0x277CC03B0];
      v75 = v27;
      result = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
      v28 = result;
      formatDescriptionOut = 0;
      if (width)
      {
        if (height)
        {
          goto LABEL_28;
        }
      }

      else
      {
        if ((v73 & 1) == 0)
        {
          goto LABEL_61;
        }

        width = v71;
        if (height)
        {
          goto LABEL_28;
        }
      }

      if (v73)
      {
        height = v72;
LABEL_28:
        if (CMVideoFormatDescriptionCreate(v25, 0x76703039u, width, height, result, &formatDescriptionOut))
        {
          v64 = 0;
          v29 = 0;
        }

        else
        {
          v29 = formatDescriptionOut;
          if (formatDescriptionOut)
          {
            CFRetain(formatDescriptionOut);
            CFRelease(v29);
          }
        }

        if (v26)
        {
          CFRelease(v26);
        }

        if (v29)
        {
          CFRetain(v29);
          self->_shouldCheckFormat = 0;
          if (!CMFormatDescriptionEqual(v29, self->_videoFormat) || v64 != self->_isVideoFullRange)
          {
            [(WK_RTCVideoDecoderVTBVP9 *)self setVideoFormat:v29];
            self->_isVideoFullRange = v64;
            v30 = [(WK_RTCVideoDecoderVTBVP9 *)self resetDecompressionSession];
            if (v30)
            {
              [(WK_RTCVideoDecoderVTBVP9 *)self setVideoFormat:0];
              CFRelease(v29);
              CFRelease(v29);
              return v30;
            }
          }

          CFRelease(v29);
          CFRelease(v29);
        }

        goto LABEL_40;
      }

LABEL_61:
      __break(1u);
      return result;
    }
  }

LABEL_40:
  videoFormat = self->_videoFormat;
  if (videoFormat)
  {
    destinationBuffer = 0;
    v32 = *MEMORY[0x277CBECE8];
    if (CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x277CBECE8], 0, a4, *MEMORY[0x277CBECE8], 0, 0, a4, 1u, &destinationBuffer))
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v33, v34, v35, v36, v37, v38, v39, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoDecoderVTBVP9.mm");
      }
    }

    else
    {
      v47 = destinationBuffer;
      if (CMBlockBufferReplaceDataBytes(a3, destinationBuffer, 0, a4))
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v48, v49, v50, v51, v52, v53, v54, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoDecoderVTBVP9.mm");
        }

        v55 = 0;
      }

      else
      {
        *bytes = 0;
        v56 = CMSampleBufferCreate(v32, v47, 1u, 0, 0, videoFormat, 1, 0, 0, 0, 0, bytes);
        if (v56 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v57, v58, v59, v60, v61, v62, v63, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoDecoderVTBVP9.mm");
        }

        if (v56)
        {
          v55 = 0;
        }

        else
        {
          v55 = *bytes;
        }
      }

      if (v47)
      {
        CFRelease(v47);
      }

      if (v55)
      {
        destinationBuffer = 0;
        operator new();
      }
    }
  }

  else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v40, v41, v42, v43, v44, v45, v46, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoDecoderVTBVP9.mm");
  }

  return -1;
}

- (void)setCallback:(id)a3
{
  self->_callback = MEMORY[0x2743DACF0](a3, a2);

  MEMORY[0x2821F96F8]();
}

- (int64_t)releaseDecoder
{
  [(WK_RTCVideoDecoderVTBVP9 *)self destroyDecompressionSession];
  [(WK_RTCVideoDecoderVTBVP9 *)self setVideoFormat:0];
  callback = self->_callback;
  self->_callback = 0;

  return 0;
}

- (int)resetDecompressionSession
{
  keys[3] = *MEMORY[0x277D85DE8];
  [(WK_RTCVideoDecoderVTBVP9 *)self destroyDecompressionSession];
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
  if (self->_isVideoFullRange)
  {
    v8 = 875704422;
  }

  else
  {
    v8 = 875704438;
  }

  valuePtr = v8;
  v9 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
  values[0] = *MEMORY[0x277CBED28];
  values[1] = v7;
  values[2] = v9;
  v10 = CFDictionaryCreate(v4, keys, values, 3, v5, v6);
  if (v7)
  {
    CFRelease(v7);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  outputCallback.decompressionOutputCallback = vp9DecompressionOutputCallback;
  outputCallback.decompressionOutputRefCon = self;
  v11 = VTDecompressionSessionCreate(0, self->_videoFormat, 0, v10, &outputCallback, &self->_decompressionSession);
  CFRelease(v10);
  if (!v11)
  {
    [(WK_RTCVideoDecoderVTBVP9 *)self configureDecompressionSession];
    return 0;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v12, v13, v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoDecoderVTBVP9.mm");
  }

  [(WK_RTCVideoDecoderVTBVP9 *)self destroyDecompressionSession];
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

@end