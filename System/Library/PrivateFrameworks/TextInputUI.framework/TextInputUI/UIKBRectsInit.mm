@interface UIKBRectsInit
@end

@implementation UIKBRectsInit

void __UIKBRectsInit_iPhone_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 secondaryDisplayStrings];
  v8 = [v7 count];

  if (v8)
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    *a4 = 1;
  }
}

@end