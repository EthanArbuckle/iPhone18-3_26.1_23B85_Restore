@interface WK_RTCCVPixelBuffer
- (BOOL)cropAndScaleTo:(__CVBuffer *)a3 withTempBuffer:(char *)a4;
- (WK_RTCCVPixelBuffer)initWithPixelBuffer:(__CVBuffer *)a3;
- (WK_RTCCVPixelBuffer)initWithPixelBuffer:(__CVBuffer *)a3 adaptedWidth:(int)a4 adaptedHeight:(int)a5 cropWidth:(int)a6 cropHeight:(int)a7 cropX:(int)a8 cropY:(int)a9;
- (id)toI420;
- (int)bufferSizeForCroppingAndScalingToWidth:(int)a3 height:(int)a4;
- (void)cropAndScaleARGBTo:(__CVBuffer *)a3;
- (void)cropAndScaleNV12To:(__CVBuffer *)a3 withTempBuffer:(char *)a4;
- (void)dealloc;
@end

@implementation WK_RTCCVPixelBuffer

- (WK_RTCCVPixelBuffer)initWithPixelBuffer:(__CVBuffer *)a3
{
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  v7 = CVPixelBufferGetWidth(a3);
  LODWORD(v9) = 0;
  return [(WK_RTCCVPixelBuffer *)self initWithPixelBuffer:a3 adaptedWidth:Width adaptedHeight:Height cropWidth:v7 cropHeight:CVPixelBufferGetHeight(a3) cropX:0 cropY:v9];
}

- (WK_RTCCVPixelBuffer)initWithPixelBuffer:(__CVBuffer *)a3 adaptedWidth:(int)a4 adaptedHeight:(int)a5 cropWidth:(int)a6 cropHeight:(int)a7 cropX:(int)a8 cropY:(int)a9
{
  v18.receiver = self;
  v18.super_class = WK_RTCCVPixelBuffer;
  v15 = [(WK_RTCCVPixelBuffer *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_width = a4;
    v15->_height = a5;
    v15->_pixelBuffer = a3;
    v15->_bufferWidth = CVPixelBufferGetWidth(a3);
    v16->_bufferHeight = CVPixelBufferGetHeight(v16->_pixelBuffer);
    v16->_cropWidth = a6;
    v16->_cropHeight = a7;
    v16->_cropX = a8 & 0xFFFFFFFE;
    v16->_cropY = a9 & 0xFFFFFFFE;
    CVBufferRetain(v16->_pixelBuffer);
  }

  return v16;
}

- (void)dealloc
{
  CVBufferRelease(self->_pixelBuffer);
  v3.receiver = self;
  v3.super_class = WK_RTCCVPixelBuffer;
  [(WK_RTCCVPixelBuffer *)&v3 dealloc];
}

- (int)bufferSizeForCroppingAndScalingToWidth:(int)a3 height:(int)a4
{
  if ((CVPixelBufferGetPixelFormatType(self->_pixelBuffer) | 0x10) == 0x34323076)
  {
    return 2 * (((a4 + 1 + ((a4 + 1) >> 31)) >> 1) * ((a3 + 1 + ((a3 + 1) >> 31)) >> 1) + ((self->_cropHeight + 1 + ((self->_cropHeight + 1) >> 31)) >> 1) * ((self->_cropWidth + 1 + ((self->_cropWidth + 1) >> 31)) >> 1));
  }

  else
  {
    return 0;
  }
}

- (BOOL)cropAndScaleTo:(__CVBuffer *)a3 withTempBuffer:(char *)a4
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(self->_pixelBuffer);
  CVPixelBufferGetPixelFormatType(a3);
  if (PixelFormatType <= 875704437)
  {
    if (PixelFormatType != 32)
    {
      if (PixelFormatType != 875704422)
      {
        return 1;
      }

      goto LABEL_7;
    }

LABEL_10:
    [(WK_RTCCVPixelBuffer *)self cropAndScaleARGBTo:a3];
    return 1;
  }

  if (PixelFormatType == 1111970369)
  {
    goto LABEL_10;
  }

  if (PixelFormatType != 875704438)
  {
    return 1;
  }

LABEL_7:
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  if (!Width || !Height)
  {
    return 1;
  }

  [(WK_RTCCVPixelBuffer *)self requiresScalingToWidth:Width height:Height];
  [(WK_RTCCVPixelBuffer *)self cropAndScaleNV12To:a3 withTempBuffer:a4];
  return 1;
}

- (id)toI420
{
  p_pixelBuffer = &self->_pixelBuffer;
  PixelFormatType = CVPixelBufferGetPixelFormatType(self->_pixelBuffer);
  CVPixelBufferLockBaseAddress(*p_pixelBuffer, 1uLL);
  v5 = [(WK_RTCI420Buffer *)[WK_RTCMutableI420Buffer alloc] initWithWidth:[(WK_RTCCVPixelBuffer *)self width] height:[(WK_RTCCVPixelBuffer *)self height]];
  if (PixelFormatType <= 875704437)
  {
    if (PixelFormatType != 32)
    {
      if (PixelFormatType != 875704422)
      {
        goto LABEL_27;
      }

      goto LABEL_7;
    }

LABEL_16:
    __p = 0;
    if ([(WK_RTCCVPixelBuffer *)self requiresCropping]|| (v21 = [(WK_RTCCVPixelBuffer *)self requiresScalingToWidth:[(WK_RTCI420Buffer *)v5 width] height:[(WK_RTCI420Buffer *)v5 height]], p_p = p_pixelBuffer, v21))
    {
      CVPixelBufferCreate(0, [(WK_RTCI420Buffer *)v5 width], [(WK_RTCI420Buffer *)v5 height], PixelFormatType, 0, &__p);
      [(WK_RTCCVPixelBuffer *)self cropAndScaleTo:__p withTempBuffer:0];
      CVPixelBufferLockBaseAddress(__p, 1uLL);
      p_p = &__p;
    }

    v23 = *p_p;
    BaseAddress = CVPixelBufferGetBaseAddress(*p_p);
    BytesPerRow = CVPixelBufferGetBytesPerRow(v23);
    if (PixelFormatType == 32)
    {
      BGRAToI420(BaseAddress, BytesPerRow, [(WK_RTCMutableI420Buffer *)v5 mutableDataY], [(WK_RTCI420Buffer *)v5 strideY], [(WK_RTCMutableI420Buffer *)v5 mutableDataU], [(WK_RTCI420Buffer *)v5 strideU], [(WK_RTCMutableI420Buffer *)v5 mutableDataV], [(WK_RTCI420Buffer *)v5 strideV], [(WK_RTCI420Buffer *)v5 width], [(WK_RTCI420Buffer *)v5 height]);
    }

    else
    {
      ARGBToI420(BaseAddress, BytesPerRow, [(WK_RTCMutableI420Buffer *)v5 mutableDataY], [(WK_RTCI420Buffer *)v5 strideY], [(WK_RTCMutableI420Buffer *)v5 mutableDataU], [(WK_RTCI420Buffer *)v5 strideU], [(WK_RTCMutableI420Buffer *)v5 mutableDataV], [(WK_RTCI420Buffer *)v5 strideV], [(WK_RTCI420Buffer *)v5 width], [(WK_RTCI420Buffer *)v5 height]);
    }

    if (__p)
    {
      CVPixelBufferUnlockBaseAddress(__p, 1uLL);
      CVBufferRelease(__p);
    }

    goto LABEL_27;
  }

  if (PixelFormatType == 1111970369)
  {
    goto LABEL_16;
  }

  if (PixelFormatType != 875704438)
  {
LABEL_27:
    CVPixelBufferUnlockBaseAddress(*p_pixelBuffer, 1uLL);
    v33 = 0;
    goto LABEL_28;
  }

LABEL_7:
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(*p_pixelBuffer, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(*p_pixelBuffer, 0);
  v8 = CVPixelBufferGetBaseAddressOfPlane(*p_pixelBuffer, 1uLL);
  v9 = CVPixelBufferGetBytesPerRowOfPlane(*p_pixelBuffer, 1uLL);
  cropX = self->_cropX;
  cropY = self->_cropY;
  *v36 = CVPixelBufferGetWidthOfPlane(self->_pixelBuffer, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(*p_pixelBuffer, 0);
  v38 = cropX;
  v39 = v8;
  v40 = v9;
  v41 = BaseAddressOfPlane;
  v42 = BytesPerRowOfPlane;
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(*p_pixelBuffer, 1uLL);
  v13 = CVPixelBufferGetHeightOfPlane(*p_pixelBuffer, 1uLL);
  v14 = [(WK_RTCI420Buffer *)v5 width];
  v15 = [(WK_RTCI420Buffer *)v5 height];
  v16 = [(WK_RTCI420Buffer *)v5 chromaWidth];
  v17 = [(WK_RTCI420Buffer *)v5 chromaHeight];
  if ([(WK_RTCCVPixelBuffer *)self requiresCropping]|| WidthOfPlane && WidthOfPlane == v16 && v13 && v13 == v17 && *v36 == v14 && HeightOfPlane == v15)
  {
    __p = 0;
    v45 = 0;
    v46 = 0;
    cropWidth = self->_cropWidth;
    cropHeight = self->_cropHeight;
    v37 = cropWidth;
    v20 = [(WK_RTCMutableI420Buffer *)v5 mutableDataY];
    LODWORD(v35) = [(WK_RTCI420Buffer *)v5 strideY];
    webrtc::NV12ToI420Scaler::NV12ToI420Scale(&__p, &v41[v38 + cropY * v42], v42, &v39[v38 + cropY / 2 * v40], v40, v37, cropHeight, v20, v35, [(WK_RTCMutableI420Buffer *)v5 mutableDataU], [(WK_RTCI420Buffer *)v5 strideU], [(WK_RTCMutableI420Buffer *)v5 mutableDataV], [(WK_RTCI420Buffer *)v5 strideV], [(WK_RTCI420Buffer *)v5 width], [(WK_RTCI420Buffer *)v5 height]);
    if (__p)
    {
      v45 = __p;
      operator delete(__p);
    }

    goto LABEL_27;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long> const&)::t, v26, v27, v28, v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_frame_buffer/RTCCVPixelBuffer.mm");
  }

  CVPixelBufferUnlockBaseAddress(*p_pixelBuffer, 1uLL);
  v33 = v5;
  v5 = 0;
LABEL_28:

  return v5;
}

- (void)cropAndScaleNV12To:(__CVBuffer *)a3 withTempBuffer:(char *)a4
{
  v6 = CVPixelBufferLockBaseAddress(a3, 0);
  if (v6)
  {
    v7 = HIDWORD(v6);
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      v25 = v7;
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_frame_buffer/RTCCVPixelBuffer.mm");
    }
  }

  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
  v18 = CVPixelBufferGetBaseAddressOfPlane(a3, 1uLL);
  v19 = CVPixelBufferGetBytesPerRowOfPlane(a3, 1uLL);
  CVPixelBufferLockBaseAddress(self->_pixelBuffer, 1uLL);
  v20 = CVPixelBufferGetBaseAddressOfPlane(self->_pixelBuffer, 0);
  v21 = CVPixelBufferGetBytesPerRowOfPlane(self->_pixelBuffer, 0);
  v22 = CVPixelBufferGetBaseAddressOfPlane(self->_pixelBuffer, 1uLL);
  v23 = CVPixelBufferGetBytesPerRowOfPlane(self->_pixelBuffer, 1uLL);
  LODWORD(v24) = BytesPerRowOfPlane;
  webrtc::NV12Scale(a4, &v20[self->_cropX + self->_cropY * v21], v21, &v22[self->_cropX + self->_cropY / 2 * v23], v23, self->_cropWidth, self->_cropHeight, BaseAddressOfPlane, v24, v18, __PAIR64__(Width, v19), Height, v25, BaseAddressOfPlane);
  CVPixelBufferUnlockBaseAddress(self->_pixelBuffer, 1uLL);

  CVPixelBufferUnlockBaseAddress(a3, 0);
}

- (void)cropAndScaleARGBTo:(__CVBuffer *)a3
{
  if (CVPixelBufferLockBaseAddress(a3, 0) && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_frame_buffer/RTCCVPixelBuffer.mm");
  }

  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  BaseAddress = CVPixelBufferGetBaseAddress(a3);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
  CVPixelBufferLockBaseAddress(self->_pixelBuffer, 1uLL);
  v16 = CVPixelBufferGetBaseAddress(self->_pixelBuffer);
  v17 = CVPixelBufferGetBytesPerRow(self->_pixelBuffer);
  v18.i64[0] = *&self->_cropWidth;
  v19.i64[0] = 0x800000008000;
  v19.i64[1] = v18.i64[0];
  v20.i32[0] = vmovn_s32(vcgtq_s32(v18, v19)).u32[0];
  v20.i32[1] = vmovn_s32(vceqq_s32(v18, v19)).i32[1];
  if ((vmaxv_u16(v20) & 1) == 0 && Width >= 1 && Height >= 1 && v16 && BaseAddress)
  {
    libyuv::ScaleARGB(v16 + 4 * self->_cropX + self->_cropY * v17, v17, v18.u32[0], v18.i32[1], BaseAddress, BytesPerRow, Width, Height, 0, 0, Width, Height, 3);
  }

  CVPixelBufferUnlockBaseAddress(self->_pixelBuffer, 1uLL);

  CVPixelBufferUnlockBaseAddress(a3, 0);
}

@end