@interface UIActionSlider
@end

@implementation UIActionSlider

uint64_t __37___UIActionSlider_openTrackAnimated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setTrackWidthProportion:*(a1 + 40)];
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

uint64_t __37___UIActionSlider_openTrackAnimated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setTrackWidthProportion:1.0];
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

uint64_t __37___UIActionSlider_openTrackAnimated___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setAnimating:0];
  [*(a1 + 32) setCachedTrackMaskWidth:0.0];
  v2 = *(a1 + 32);

  return [v2 setNeedsLayout];
}

uint64_t __38___UIActionSlider_closeTrackAnimated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setTrackWidthProportion:0.0];
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

uint64_t __38___UIActionSlider_closeTrackAnimated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAnimating:0];
  [*(a1 + 32) setCachedTrackMaskWidth:0.0];
  v2 = *(a1 + 32);

  return [v2 setNeedsLayout];
}

void __35___UIActionSlider__slideCompleted___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  [*(a1 + 32) setKnobPosition:v2];
  [*(a1 + 32) layoutIfNeeded];
  v3 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 actionSlider:*(a1 + 32) didUpdateSlideWithValue:v2];
  }
}

uint64_t __35___UIActionSlider__slideCompleted___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAnimating:0];
  [*(a1 + 32) setCachedTrackMaskWidth:0.0];
  v2 = *(a1 + 32);

  return [v2 setNeedsLayout];
}

@end