@interface SIBaseScaler
- (BOOL)_imageConformsToOutput:(__CVBuffer *)a3;
- (BOOL)scaleImage:(__CVBuffer *)a3 outputBuffer:(__CVBuffer *)a4;
- (BOOL)surfaceConformsToOutput:(id)a3;
- (CGSize)outputResolution;
- (__CVBuffer)createScaledImage:(__CVBuffer *)a3;
- (id)initForOutputResolution:(CGSize)a3 outputPixelFormat:(unsigned int)a4 mode:(unint64_t)a5 bytePerRowAlignment:(unint64_t)a6 algorithmKey:(id)a7;
@end

@implementation SIBaseScaler

- (id)initForOutputResolution:(CGSize)a3 outputPixelFormat:(unsigned int)a4 mode:(unint64_t)a5 bytePerRowAlignment:(unint64_t)a6 algorithmKey:(id)a7
{
  height = a3.height;
  width = a3.width;
  v30 = *MEMORY[0x277D85DE8];
  v12 = a7;
  v22.receiver = self;
  v22.super_class = SIBaseScaler;
  v13 = [(SIBaseScaler *)&v22 init];
  v14 = v13;
  if (!v13)
  {
LABEL_10:
    v18 = 0;
    goto LABEL_11;
  }

  if (width == 0.0 || height == 0.0)
  {
    v19 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136381443;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Scaler/SIBaseScaler.m";
      v24 = 1025;
      v25 = 47;
      v26 = 2048;
      v27 = width;
      v28 = 2048;
      v29 = height;
      _os_log_impl(&dword_21DE0D000, v19, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to initialize the scale: Unsupported Resolution (%.2f, %.2f) ***", buf, 0x26u);
    }

    goto LABEL_10;
  }

  v13->_outputResolution.width = width;
  v13->_outputResolution.height = height;
  v13->_outputPixelFormat = a4;
  v13->_outputBufferBytePerRowAlignment = a6;
  *buf = 0;
  v15 = v12;
  v16 = [v15 getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(v15, "length"), 0}];

  v17 = *buf;
  if (!v16)
  {
    v17 = 0;
  }

  v14->_algorithmKey = v17;
  v18 = v14;
LABEL_11:

  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)scaleImage:(__CVBuffer *)a3 outputBuffer:(__CVBuffer *)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136380931;
    v8 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Scaler/SIBaseScaler.m";
    v9 = 1025;
    v10 = 108;
    _os_log_impl(&dword_21DE0D000, v4, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Not implemented in base class. ***", &v7, 0x12u);
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

- (__CVBuffer)createScaledImage:(__CVBuffer *)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v6 = 136380931;
    v7 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Scaler/SIBaseScaler.m";
    v8 = 1025;
    v9 = 114;
    _os_log_impl(&dword_21DE0D000, v3, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Not implemented in base class. ***", &v6, 0x12u);
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)_imageConformsToOutput:(__CVBuffer *)a3
{
  IOSurface = CVPixelBufferGetIOSurface(a3);
  if (IOSurface)
  {
    width = self->_outputResolution.width;
    if (width == CVPixelBufferGetWidth(a3) && (height = self->_outputResolution.height, height == CVPixelBufferGetHeight(a3)) && (outputPixelFormat = self->_outputPixelFormat, outputPixelFormat == CVPixelBufferGetPixelFormatType(a3)))
    {
      outputBufferBytePerRowAlignment = self->_outputBufferBytePerRowAlignment;
      if (outputBufferBytePerRowAlignment)
      {
        LOBYTE(IOSurface) = outputBufferBytePerRowAlignment == CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
      }

      else
      {
        LOBYTE(IOSurface) = 1;
      }
    }

    else
    {
      LOBYTE(IOSurface) = 0;
    }
  }

  return IOSurface;
}

- (BOOL)surfaceConformsToOutput:(id)a3
{
  v4 = a3;
  width = self->_outputResolution.width;
  if (width == [v4 width] && (height = self->_outputResolution.height, height == objc_msgSend(v4, "height")) && (outputPixelFormat = self->_outputPixelFormat, outputPixelFormat == objc_msgSend(v4, "pixelFormat")))
  {
    outputBufferBytePerRowAlignment = self->_outputBufferBytePerRowAlignment;
    if (outputBufferBytePerRowAlignment)
    {
      v9 = outputBufferBytePerRowAlignment == [v4 bytesPerRow];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (CGSize)outputResolution
{
  objc_copyStruct(v4, &self->_outputResolution, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end