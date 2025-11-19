@interface NSTextLayoutManager
@end

@implementation NSTextLayoutManager

BOOL __73__NSTextLayoutManager_UIKitAdditions__ui_contentSizeForLastContainerView__block_invoke(uint64_t a1, void *a2)
{
  [a2 layoutFragmentFrame];
  Width = CGRectGetWidth(v8);
  v4 = *(*(a1 + 32) + 8);
  if (*(v4 + 32) < Width)
  {
    *(v4 + 32) = Width;
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 24) + 1;
  *(v5 + 24) = v6;
  return v6 < 0x64;
}

uint64_t __73__NSTextLayoutManager_UIKitAdditions__ui_contentSizeForLastContainerView__block_invoke_2(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  if (a2 || *(a1 + 40) != 1)
  {
    MaxY = CGRectGetMaxY(*&a3);
    v8 = *(*(a1 + 32) + 8);
  }

  else
  {
    MaxY = CGRectGetMaxY(*&a3);
    v8 = *(*(a1 + 32) + 8);
    if (MaxY < *(v8 + 40))
    {
      MaxY = *(v8 + 40);
    }
  }

  *(v8 + 40) = MaxY;
  return 1;
}

@end