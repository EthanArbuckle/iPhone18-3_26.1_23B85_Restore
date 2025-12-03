@interface VKCaptureTextAnalysisRequest
- (BOOL)saveAssetsToFeedbackAttachmentsFolder:(id)folder error:(id *)error;
- (CGRect)focusRect;
- (VKCaptureTextAnalysisRequest)initWithImage:(id)image delegate:(id)delegate;
- (VKCaptureTextAnalysisRequest)initWithImage:(id)image focusQuad:(id)quad delegate:(id)delegate;
- (VKCaptureTextAnalysisRequest)initWithImage:(id)image focusRect:(CGRect)rect delegate:(id)delegate;
- (VKCaptureTextAnalysisRequestDelegate)delegate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)requestHandler;
@end

@implementation VKCaptureTextAnalysisRequest

- (VKCaptureTextAnalysisRequest)initWithImage:(id)image delegate:(id)delegate
{
  delegateCopy = delegate;
  imageCopy = image;
  [imageCopy size];
  v8 = [(VKCaptureTextAnalysisRequest *)self initWithImage:imageCopy focusRect:delegateCopy delegate:VKMRectWithSize()];

  return v8;
}

- (VKCaptureTextAnalysisRequest)initWithImage:(id)image focusRect:(CGRect)rect delegate:(id)delegate
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  delegateCopy = delegate;
  imageCopy = image;
  height = [VKQuad quadFromCGRect:x, y, width, height];
  v14 = [(VKCaptureTextAnalysisRequest *)self initWithImage:imageCopy focusQuad:height delegate:delegateCopy];

  return v14;
}

- (VKCaptureTextAnalysisRequest)initWithImage:(id)image focusQuad:(id)quad delegate:(id)delegate
{
  imageCopy = image;
  quadCopy = quad;
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = VKCaptureTextAnalysisRequest;
  v12 = [(VKCaptureTextAnalysisRequest *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_image, image);
    if (quadCopy)
    {
      v14 = quadCopy;
    }

    else
    {
      [imageCopy size];
      v14 = [VKQuad quadFromCGRect:VKMRectWithSize()];
    }

    focusQuad = v13->_focusQuad;
    v13->_focusQuad = v14;

    objc_storeWeak(&v13->_delegate, delegateCopy);
  }

  return v13;
}

- (CGRect)focusRect
{
  focusQuad = [(VKCaptureTextAnalysisRequest *)self focusQuad];
  [focusQuad boundingBox];
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
  image = [(VKCaptureTextAnalysisRequest *)self image];
  cGImage = [image CGImage];
  ioSurface = [image ioSurface];
  v5 = vk_cgImagePropertyOrientationFromVKOrientation([image imageOrientation]);
  if (cGImage)
  {
    v6 = objc_alloc(MEMORY[0x1E69845B8]);
    v7 = [v6 initWithCGImage:cGImage orientation:v5 options:MEMORY[0x1E695E0F8]];
  }

  else if (ioSurface)
  {
    pixelBufferOut = 0;
    v7 = 0;
    if (!CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], ioSurface, 0, &pixelBufferOut))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [VKCaptureTextAnalysisRequest alloc];
  image = [(VKCaptureTextAnalysisRequest *)self image];
  [(VKCaptureTextAnalysisRequest *)self focusRect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  delegate = [(VKCaptureTextAnalysisRequest *)self delegate];
  v15 = [(VKCaptureTextAnalysisRequest *)v4 initWithImage:image focusRect:delegate delegate:v7, v9, v11, v13];

  return v15;
}

- (BOOL)saveAssetsToFeedbackAttachmentsFolder:(id)folder error:(id *)error
{
  folderCopy = folder;
  image = [(VKCaptureTextAnalysisRequest *)self image];
  vk_PNGData = [image vk_PNGData];

  v9 = [folderCopy URLByAppendingPathComponent:@"RequestAsset.png"];

  LOBYTE(error) = [vk_PNGData writeToURL:v9 options:2 error:error];
  return error;
}

- (VKCaptureTextAnalysisRequestDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end