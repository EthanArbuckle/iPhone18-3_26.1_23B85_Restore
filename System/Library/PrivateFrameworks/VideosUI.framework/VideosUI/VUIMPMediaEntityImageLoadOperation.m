@interface VUIMPMediaEntityImageLoadOperation
- (VUIMPMediaEntityImageLoadOperation)initWithParams:(id)a3 scaleToSize:(CGSize)a4;
- (VUIMPMediaEntityImageLoadOperation)initWithParams:(id)a3 scaleToSize:(CGSize)a4 cropToFit:(BOOL)a5;
- (void)_finishWithImage:(id)a3;
- (void)executionDidBegin;
@end

@implementation VUIMPMediaEntityImageLoadOperation

- (VUIMPMediaEntityImageLoadOperation)initWithParams:(id)a3 scaleToSize:(CGSize)a4 cropToFit:(BOOL)a5
{
  v6 = MEMORY[0x1E695DF30];
  v7 = *MEMORY[0x1E695D940];
  v8 = NSStringFromSelector(a2);
  [v6 raise:v7 format:{@"The %@ initializer is not available.", v8}];

  return 0;
}

- (VUIMPMediaEntityImageLoadOperation)initWithParams:(id)a3 scaleToSize:(CGSize)a4
{
  v5.receiver = self;
  v5.super_class = VUIMPMediaEntityImageLoadOperation;
  return [(VUIImageLoadParamsOperation *)&v5 initWithParams:a3 scaleToSize:0 cropToFit:a4.width, a4.height];
}

- (void)executionDidBegin
{
  v3 = [(VUIMPMediaEntityImageLoadOperation *)self _MPMediaEntityImageLoadParams];
  v4 = [v3 artworkCatalog];
  v5 = v4;
  if (v4)
  {
    if ([v4 hasImageOnDisk])
    {
      v6 = [v5 bestImageFromDisk];
      [(VUIMPMediaEntityImageLoadOperation *)self _finishWithImage:v6];
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

- (void)_finishWithImage:(id)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x1E69D5940] imageWithCGImageRef:objc_msgSend(a3 preserveAlpha:{"CGImage"), 1}];
    [(VUIImageLoadParamsOperation *)self setImage:v4];
  }

  [(VUIImageLoadParamsOperation *)self setScalingResult:0];

  [(VUIAsynchronousOperation *)self finishExecutionIfPossible];
}

@end