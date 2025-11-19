@interface UIRenderViewImageAfterCommit
@end

@implementation UIRenderViewImageAfterCommit

uint64_t ___UIRenderViewImageAfterCommit_block_invoke_77(uint64_t a1)
{
  v2 = _UIRenderView(*(a1 + 32), *(a1 + 40), &__block_literal_global_495);
  if (v2)
  {
    v3 = v2;
    CGImage = _UIRenderingBufferCreateCGImage(v2, *(a1 + 40));
    if (CGImage)
    {
      v5 = CGImage;
      v6 = [UIImage imageWithCGImage:CGImage scale:0 orientation:_UIRenderingBufferGetScale(v3)];
      v7 = *(*(a1 + 56) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      CGImageRelease(v5);
    }

    CFRelease(v3);
  }

  v9 = *(*(a1 + 48) + 16);

  return v9();
}

@end