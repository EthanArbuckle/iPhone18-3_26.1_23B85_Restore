@interface _PIParallaxRenderBuffer
- ($0AC6E346AE4835514AAA8AC86D8F4844)size;
- (_PIParallaxRenderBuffer)initWithPixelBuffer:(id)buffer renderTask:(id)task;
- (__CVBuffer)CVPixelBuffer;
@end

@implementation _PIParallaxRenderBuffer

- (__CVBuffer)CVPixelBuffer
{
  v17 = *MEMORY[0x1E69E9840];
  renderTask = self->_renderTask;
  v12 = 0;
  v4 = [(CIRenderTask *)renderTask waitUntilCompletedAndReturnError:&v12];
  v5 = v12;
  renderInfo = self->_renderInfo;
  self->_renderInfo = v4;

  if (self->_renderInfo)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_642);
    }

    v8 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      v11 = self->_renderTask;
      *buf = 138543618;
      v14 = v11;
      v15 = 2114;
      v16 = v5;
      _os_log_error_impl(&dword_1C7694000, v8, OS_LOG_TYPE_ERROR, "Failed to render %{public}@, error: %{public}@", buf, 0x16u);
    }
  }

  cVPixelBuffer = [(NUImageBuffer *)self->_pixelBuffer CVPixelBuffer];

  return cVPixelBuffer;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)size
{
  v2 = [(NUImageBuffer *)self->_pixelBuffer size];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (_PIParallaxRenderBuffer)initWithPixelBuffer:(id)buffer renderTask:(id)task
{
  bufferCopy = buffer;
  taskCopy = task;
  v13.receiver = self;
  v13.super_class = _PIParallaxRenderBuffer;
  v8 = [(_PIParallaxRenderBuffer *)&v13 init];
  pixelBuffer = v8->_pixelBuffer;
  v8->_pixelBuffer = bufferCopy;
  v10 = bufferCopy;

  renderTask = v8->_renderTask;
  v8->_renderTask = taskCopy;

  return v8;
}

@end