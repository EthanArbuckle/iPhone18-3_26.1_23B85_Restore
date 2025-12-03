@interface VUIMPMediaEntityImageLoadOperation
- (VUIMPMediaEntityImageLoadOperation)initWithParams:(id)params scaleToSize:(CGSize)size;
- (VUIMPMediaEntityImageLoadOperation)initWithParams:(id)params scaleToSize:(CGSize)size cropToFit:(BOOL)fit;
- (void)_finishWithImage:(id)image;
- (void)executionDidBegin;
@end

@implementation VUIMPMediaEntityImageLoadOperation

- (VUIMPMediaEntityImageLoadOperation)initWithParams:(id)params scaleToSize:(CGSize)size cropToFit:(BOOL)fit
{
  v6 = MEMORY[0x1E695DF30];
  v7 = *MEMORY[0x1E695D940];
  v8 = NSStringFromSelector(a2);
  [v6 raise:v7 format:{@"The %@ initializer is not available.", v8}];

  return 0;
}

- (VUIMPMediaEntityImageLoadOperation)initWithParams:(id)params scaleToSize:(CGSize)size
{
  v5.receiver = self;
  v5.super_class = VUIMPMediaEntityImageLoadOperation;
  return [(VUIImageLoadParamsOperation *)&v5 initWithParams:params scaleToSize:0 cropToFit:size.width, size.height];
}

- (void)executionDidBegin
{
  _MPMediaEntityImageLoadParams = [(VUIMPMediaEntityImageLoadOperation *)self _MPMediaEntityImageLoadParams];
  artworkCatalog = [_MPMediaEntityImageLoadParams artworkCatalog];
  v5 = artworkCatalog;
  if (artworkCatalog)
  {
    if ([artworkCatalog hasImageOnDisk])
    {
      bestImageFromDisk = [v5 bestImageFromDisk];
      [(VUIMPMediaEntityImageLoadOperation *)self _finishWithImage:bestImageFromDisk];
    }

    else
    {
      [v5 setFittingSize:{*MEMORY[0x1E696F8B0], *(MEMORY[0x1E696F8B0] + 8)}];
      objc_initWeak(&location, self);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __55__VUIMPMediaEntityImageLoadOperation_executionDidBegin__block_invoke;
      v7[3] = &unk_1E872F780;
      objc_copyWeak(&v8, &location);
      [v5 requestImageWithCompletion:v7];
      objc_destroyWeak(&v8);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    [(VUIMPMediaEntityImageLoadOperation *)self _finishWithImage:0];
  }
}

void __55__VUIMPMediaEntityImageLoadOperation_executionDidBegin__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _finishWithImage:v3];
}

- (void)_finishWithImage:(id)image
{
  if (image)
  {
    v4 = [MEMORY[0x1E69D5940] imageWithCGImageRef:objc_msgSend(image preserveAlpha:{"CGImage"), 1}];
    [(VUIImageLoadParamsOperation *)self setImage:v4];
  }

  [(VUIImageLoadParamsOperation *)self setScalingResult:0];

  [(VUIAsynchronousOperation *)self finishExecutionIfPossible];
}

@end