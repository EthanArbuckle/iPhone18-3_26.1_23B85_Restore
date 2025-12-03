@interface PIHDRUtilities
+ (BOOL)_renderImage:(id)image toPixelBuffer:(__CVBuffer *)buffer;
+ (__CVBuffer)_newHLGPixelBufferOfSize:(CGSize)size;
+ (__CVBuffer)newHLGPixelBufferFromSDRImage:(CGImage *)image;
@end

@implementation PIHDRUtilities

+ (__CVBuffer)_newHLGPixelBufferOfSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v19[2] = *MEMORY[0x1E69E9840];
  pixelBufferOut = 0;
  v5 = *MEMORY[0x1E69660D8];
  v18[0] = *MEMORY[0x1E6966100];
  v18[1] = v5;
  v19[0] = MEMORY[0x1E695E118];
  v19[1] = MEMORY[0x1E695E0F8];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v7 = *MEMORY[0x1E6965DB0];
  v8 = *MEMORY[0x1E6965F30];
  v16[0] = *MEMORY[0x1E6965D88];
  v16[1] = v8;
  v9 = *MEMORY[0x1E6965F48];
  v17[0] = v7;
  v17[1] = v9;
  v16[2] = *MEMORY[0x1E6965F98];
  v17[2] = *MEMORY[0x1E6965FB0];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
  if (CVPixelBufferCreate(0, width, height, 0x78343230u, v6, &pixelBufferOut))
  {
    NSLog(&cfstr_FailedToAlloca_5.isa);
  }

  CVBufferSetAttachments(pixelBufferOut, v10, kCVAttachmentMode_ShouldPropagate);
  v15 = 0x4240133DA0E92F00;
  v11 = [MEMORY[0x1E695DEF0] dataWithBytes:&v15 length:8];
  CVBufferSetAttachment(pixelBufferOut, *MEMORY[0x1E695FFF0], v11, kCVAttachmentMode_ShouldPropagate);

  v12 = pixelBufferOut;
  return v12;
}

+ (BOOL)_renderImage:(id)image toPixelBuffer:(__CVBuffer *)buffer
{
  imageCopy = image;
  if (buffer)
  {
    v6 = [objc_alloc(MEMORY[0x1E695F678]) initWithPixelBuffer:buffer];
    context = [MEMORY[0x1E695F620] context];
    v16 = 0;
    v8 = [context startTaskToRender:imageCopy toDestination:v6 error:&v16];
    v9 = v16;

    v15 = v9;
    v10 = [v8 waitUntilCompletedAndReturnError:&v15];
    v11 = v15;

    if (v8)
    {
      v12 = v10 == 0;
    }

    else
    {
      v12 = 1;
    }

    v13 = !v12;
    if (v12)
    {
      NSLog(&cfstr_FailedToStartR.isa, imageCopy, v6, v11);
    }

    else
    {
      NSLog(&cfstr_SuccesfullyRen.isa, v10);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (__CVBuffer)newHLGPixelBufferFromSDRImage:(CGImage *)image
{
  v27 = *MEMORY[0x1E69E9840];
  if (!image)
  {
    v10 = NUAssertLogger_29300();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "image != nil"];
      *buf = 138543362;
      v24 = v11;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v12 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v14 = NUAssertLogger_29300();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v18 = dispatch_get_specific(*v12);
        v19 = MEMORY[0x1E696AF00];
        v20 = v18;
        callStackSymbols = [v19 callStackSymbols];
        v22 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v24 = v18;
        v25 = 2114;
        v26 = v22;
        _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v24 = v17;
      _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v4 = [MEMORY[0x1E695F658] imageWithCGImage:?];
  v5 = [v4 imageByApplyingFilter:@"PIHDRInverseHLGFilter"];
  [v5 extent];
  v8 = [self _newHLGPixelBufferOfSize:{v6, v7}];
  if (([self _renderImage:v5 toPixelBuffer:v8] & 1) == 0)
  {
    [self recycleHLGPixelBuffer:v8];
    v8 = 0;
  }

  return v8;
}

@end