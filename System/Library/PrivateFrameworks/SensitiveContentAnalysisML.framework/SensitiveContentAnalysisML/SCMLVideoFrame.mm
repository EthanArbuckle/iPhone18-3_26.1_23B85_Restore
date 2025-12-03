@interface SCMLVideoFrame
- (BOOL)saveToPngWithUrl:(id)url;
- (SCMLVideoFrame)initWithFrameBuffer:(opaqueCMSampleBuffer *)buffer frameIndex:(int64_t)index;
- (double)_timestamp;
- (id)metaDataInfo;
- (void)dealloc;
@end

@implementation SCMLVideoFrame

- (SCMLVideoFrame)initWithFrameBuffer:(opaqueCMSampleBuffer *)buffer frameIndex:(int64_t)index
{
  v9.receiver = self;
  v9.super_class = SCMLVideoFrame;
  v6 = [(SCMLVideoFrame *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_frameBuffer = 0;
    if (buffer)
    {
      v6->_frameBuffer = CFRetain(buffer);
    }

    v7->_frameIndex = index;
  }

  return v7;
}

- (BOOL)saveToPngWithUrl:(id)url
{
  urlCopy = url;
  ImageBuffer = CMSampleBufferGetImageBuffer([(SCMLVideoFrame *)self frameBuffer]);
  if (ImageBuffer)
  {
    v6 = saveCVPixelBufferToPng(ImageBuffer, urlCopy);
  }

  else
  {
    v7 = +[SCMLLog imageAnalyzer];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(SCMLVideoFrame *)urlCopy saveToPngWithUrl:v7];
    }

    v6 = 0;
  }

  return v6;
}

- (double)_timestamp
{
  memset(&v3, 0, sizeof(v3));
  CMSampleBufferGetPresentationTimeStamp(&v3, [(SCMLVideoFrame *)self frameBuffer]);
  return v3.value / v3.timescale;
}

- (id)metaDataInfo
{
  v3 = MEMORY[0x1E696AEC0];
  frameIndex = [(SCMLVideoFrame *)self frameIndex];
  [(SCMLVideoFrame *)self _timestamp];
  return [v3 stringWithFormat:@"%03d-time%.6f", frameIndex, v5];
}

- (void)dealloc
{
  frameBuffer = self->_frameBuffer;
  if (frameBuffer)
  {
    CFRelease(frameBuffer);
  }

  v4.receiver = self;
  v4.super_class = SCMLVideoFrame;
  [(SCMLVideoFrame *)&v4 dealloc];
}

- (void)saveToPngWithUrl:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B8A3C000, a2, OS_LOG_TYPE_ERROR, "Failed to save image to %@: no pixel buffer", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end