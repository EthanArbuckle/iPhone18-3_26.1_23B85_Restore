@interface UIImageCGImageContent
@end

@implementation UIImageCGImageContent

void __56___UIImageCGImageContent__provideCGImageWithSize_scale___block_invoke(void *a1, void *a2)
{
  v3 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  v5 = a1[5];
  v6 = a1[6];
  v7 = [a2 CGContext];
  v8 = atomic_load((a1[4] + 40));
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;

  CGContextDrawImage(v7, *&v9, v8);
}

void __72___UIImageCGImageContent_prepareContentForDisplayWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [(_UIImageCGImageContent *)*(a1 + 32) _contentWithCARenderRef];
  objc_opt_self();
  v3 = _UIImageDecompressionCompletionQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72___UIImageCGImageContent_prepareContentForDisplayWithCompletionHandler___block_invoke_3;
  block[3] = &unk_1E70FCE28;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v2;
  v9 = v4;
  v10 = v5;
  v6 = v2;
  dispatch_async(v3, block);
}

uint64_t __72___UIImageCGImageContent_prepareContentForDisplayWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  [_UIImageContent _cachePreparedContent:*(a1 + 40) forDisplayOfContent:?];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void __72___UIImageCGImageContent_prepareContentForDisplayWithCompletionHandler___block_invoke_4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) contentWithCGImage:a2];
    v4 = [(_UIImageCGImageContent *)v3 _contentWithCARenderRef];

    [_UIImageContent _cachePreparedContent:v4 forDisplayOfContent:*(a1 + 32)];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v4 = AsyncFallbackPreparationQueue();
    dispatch_async(v4, *(a1 + 48));
  }

  v5 = *(a1 + 32);

  objc_setAssociatedObject(v5, @"com.apple.UIKit.active-decompressor", 0, 0x301);
}

void __72___UIImageCGImageContent_optimizeContentForImageSize_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) contentOptimizedForImageSize:{*(a1 + 48), *(a1 + 56)}];
  (*(v1 + 16))(v1, v2);
}

@end