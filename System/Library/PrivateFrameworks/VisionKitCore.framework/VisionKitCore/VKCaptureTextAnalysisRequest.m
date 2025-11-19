@interface VKCaptureTextAnalysisRequest
- (BOOL)saveAssetsToFeedbackAttachmentsFolder:(id)a3 error:(id *)a4;
- (CGRect)focusRect;
- (VKCaptureTextAnalysisRequest)initWithImage:(id)a3 delegate:(id)a4;
- (VKCaptureTextAnalysisRequest)initWithImage:(id)a3 focusQuad:(id)a4 delegate:(id)a5;
- (VKCaptureTextAnalysisRequest)initWithImage:(id)a3 focusRect:(CGRect)a4 delegate:(id)a5;
- (VKCaptureTextAnalysisRequestDelegate)delegate;
- (id)copyWithZone:(_NSZone *)a3;
- (id)requestHandler;
@end

@implementation VKCaptureTextAnalysisRequest

- (VKCaptureTextAnalysisRequest)initWithImage:(id)a3 delegate:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 size];
  v8 = [(VKCaptureTextAnalysisRequest *)self initWithImage:v7 focusRect:v6 delegate:VKMRectWithSize()];

  return v8;
}

- (VKCaptureTextAnalysisRequest)initWithImage:(id)a3 focusRect:(CGRect)a4 delegate:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a5;
  v12 = a3;
  v13 = [VKQuad quadFromCGRect:x, y, width, height];
  v14 = [(VKCaptureTextAnalysisRequest *)self initWithImage:v12 focusQuad:v13 delegate:v11];

  return v14;
}

- (VKCaptureTextAnalysisRequest)initWithImage:(id)a3 focusQuad:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = VKCaptureTextAnalysisRequest;
  v12 = [(VKCaptureTextAnalysisRequest *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_image, a3);
    if (v10)
    {
      v14 = v10;
    }

    else
    {
      [v9 size];
      v14 = [VKQuad quadFromCGRect:VKMRectWithSize()];
    }

    focusQuad = v13->_focusQuad;
    v13->_focusQuad = v14;

    objc_storeWeak(&v13->_delegate, v11);
  }

  return v13;
}

- (CGRect)focusRect
{
  v2 = [(VKCaptureTextAnalysisRequest *)self focusQuad];
  [v2 boundingBox];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (id)requestHandler
{
  v2 = [(VKCaptureTextAnalysisRequest *)self image];
  v3 = [v2 CGImage];
  v4 = [v2 ioSurface];
  v5 = vk_cgImagePropertyOrientationFromVKOrientation([v2 imageOrientation]);
  if (v3)
  {
    v6 = objc_alloc(MEMORY[0x1E69845B8]);
    v7 = [v6 initWithCGImage:v3 orientation:v5 options:MEMORY[0x1E695E0F8]];
  }

  else if (v4)
  {
    pixelBufferOut = 0;
    v7 = 0;
    if (!CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], v4, 0, &pixelBufferOut))
    {
      v8 = objc_alloc(MEMORY[0x1E69845B8]);
      v7 = [v8 initWithCVPixelBuffer:pixelBufferOut orientation:v5 options:MEMORY[0x1E695E0F8]];
    }

    CVBufferRelease(pixelBufferOut);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [VKCaptureTextAnalysisRequest alloc];
  v5 = [(VKCaptureTextAnalysisRequest *)self image];
  [(VKCaptureTextAnalysisRequest *)self focusRect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(VKCaptureTextAnalysisRequest *)self delegate];
  v15 = [(VKCaptureTextAnalysisRequest *)v4 initWithImage:v5 focusRect:v14 delegate:v7, v9, v11, v13];

  return v15;
}

- (BOOL)saveAssetsToFeedbackAttachmentsFolder:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(VKCaptureTextAnalysisRequest *)self image];
  v8 = [v7 vk_PNGData];

  v9 = [v6 URLByAppendingPathComponent:@"RequestAsset.png"];

  LOBYTE(a4) = [v8 writeToURL:v9 options:2 error:a4];
  return a4;
}

- (VKCaptureTextAnalysisRequestDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end