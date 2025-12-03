@interface SIBaseScaler
- (BOOL)_imageConformsToOutput:(__CVBuffer *)output;
- (BOOL)scaleImage:(__CVBuffer *)image outputBuffer:(__CVBuffer *)buffer;
- (BOOL)surfaceConformsToOutput:(id)output;
- (CGSize)outputResolution;
- (__CVBuffer)createScaledImage:(__CVBuffer *)image;
- (id)initForOutputResolution:(CGSize)resolution outputPixelFormat:(unsigned int)format mode:(unint64_t)mode bytePerRowAlignment:(unint64_t)alignment algorithmKey:(id)key;
@end

@implementation SIBaseScaler

- (id)initForOutputResolution:(CGSize)resolution outputPixelFormat:(unsigned int)format mode:(unint64_t)mode bytePerRowAlignment:(unint64_t)alignment algorithmKey:(id)key
{
  height = resolution.height;
  width = resolution.width;
  v30 = *MEMORY[0x277D85DE8];
  keyCopy = key;
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
  v13->_outputPixelFormat = format;
  v13->_outputBufferBytePerRowAlignment = alignment;
  *buf = 0;
  v15 = keyCopy;
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

- (BOOL)scaleImage:(__CVBuffer *)image outputBuffer:(__CVBuffer *)buffer
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

- (__CVBuffer)createScaledImage:(__CVBuffer *)image
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

- (BOOL)_imageConformsToOutput:(__CVBuffer *)output
{
  IOSurface = CVPixelBufferGetIOSurface(output);
  if (IOSurface)
  {
    width = self->_outputResolution.width;
    if (width == CVPixelBufferGetWidth(output) && (height = self->_outputResolution.height, height == CVPixelBufferGetHeight(output)) && (outputPixelFormat = self->_outputPixelFormat, outputPixelFormat == CVPixelBufferGetPixelFormatType(output)))
    {
      outputBufferBytePerRowAlignment = self->_outputBufferBytePerRowAlignment;
      if (outputBufferBytePerRowAlignment)
      {
        LOBYTE(IOSurface) = outputBufferBytePerRowAlignment == CVPixelBufferGetBytesPerRowOfPlane(output, 0);
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

- (BOOL)surfaceConformsToOutput:(id)output
{
  outputCopy = output;
  width = self->_outputResolution.width;
  if (width == [outputCopy width] && (height = self->_outputResolution.height, height == objc_msgSend(outputCopy, "height")) && (outputPixelFormat = self->_outputPixelFormat, outputPixelFormat == objc_msgSend(outputCopy, "pixelFormat")))
  {
    outputBufferBytePerRowAlignment = self->_outputBufferBytePerRowAlignment;
    if (outputBufferBytePerRowAlignment)
    {
      v9 = outputBufferBytePerRowAlignment == [outputCopy bytesPerRow];
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