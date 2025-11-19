@interface PXStoryScrubberClipView
@end

@implementation PXStoryScrubberClipView

uint64_t __42___PXStoryScrubberClipView_layoutSubviews__block_invoke(uint64_t a1)
{
  v2 = 0.0;
  v3 = 0.0;
  if (*(a1 + 48) == 1)
  {
    LOBYTE(v3) = *(a1 + 49);
    v3 = *&v3;
  }

  [*(a1 + 32) setAlpha:v3];
  if ((*(a1 + 48) & 1) == 0)
  {
    LOBYTE(v4) = *(a1 + 49);
    v2 = v4;
  }

  v5 = *(a1 + 40);

  return [v5 setAlpha:v2];
}

@end