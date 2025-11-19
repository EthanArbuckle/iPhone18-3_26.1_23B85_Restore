@interface UIDragPreviewBlockProvider
@end

@implementation UIDragPreviewBlockProvider

void __52___UIDragPreviewBlockProvider__createImageComponent__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  v5 = (*(a3 + 16))(a3);
  v6 = [v5 _vibrancy];

  if (v6)
  {
    v7 = v8[2]();
    [v7 _setNSIntegerValue:0 forTraitToken:0x1EFE325A8];
  }
}

void __52___UIDragPreviewBlockProvider__createImageComponent__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  CGContextTranslateCTM([v3 CGContext], -*(a1 + 40), -*(a1 + 48));
  v5 = [*(a1 + 32) layer];
  v4 = [v3 CGContext];

  [v5 renderInContext:v4];
}

@end