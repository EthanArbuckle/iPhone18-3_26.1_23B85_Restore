@interface VUISidebandMediaEntityImageLoadOperation
- (void)_finishWithImage:(id)a3;
- (void)executionDidBegin;
@end

@implementation VUISidebandMediaEntityImageLoadOperation

- (void)executionDidBegin
{
  v3 = [(VUIImageLoadParamsOperation *)self params];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(VUIImageLoadParamsOperation *)self params];
    v6 = [v5 imageInfo];
    if (v6)
    {
      objc_initWeak(&location, self);
      v7 = [v6 managedObjectContext];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __61__VUISidebandMediaEntityImageLoadOperation_executionDidBegin__block_invoke;
      v8[3] = &unk_1E872F038;
      objc_copyWeak(&v10, &location);
      v9 = v6;
      [v7 performBlock:v8];

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }

    else
    {
      [(VUISidebandMediaEntityImageLoadOperation *)self _finishWithImage:0];
    }
  }

  else
  {

    [(VUISidebandMediaEntityImageLoadOperation *)self _finishWithImage:0];
  }
}

void __61__VUISidebandMediaEntityImageLoadOperation_executionDidBegin__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [*(a1 + 32) imageData];
  v4 = [v3 data];
  v5 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__VUISidebandMediaEntityImageLoadOperation_executionDidBegin__block_invoke_2;
  block[3] = &unk_1E872E008;
  v9 = v4;
  v10 = v3;
  v11 = WeakRetained;
  v6 = v3;
  v7 = v4;
  dispatch_async(v5, block);
}

void __61__VUISidebandMediaEntityImageLoadOperation_executionDidBegin__block_invoke_2(id *a1)
{
  if ([a1[4] length])
  {
    v2 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithData:a1[4]];
    v3 = a1[5];
    if (v3)
    {
      v4 = [v3 managedObjectContext];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __61__VUISidebandMediaEntityImageLoadOperation_executionDidBegin__block_invoke_3;
      v6[3] = &unk_1E872D768;
      v7 = a1[5];
      [v4 performBlock:v6];
    }

    [a1[6] _finishWithImage:v2];
  }

  else
  {
    v5 = a1[6];

    [v5 _finishWithImage:0];
  }
}

void __61__VUISidebandMediaEntityImageLoadOperation_executionDidBegin__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  [v2 refreshObject:*(a1 + 32) mergeChanges:0];
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