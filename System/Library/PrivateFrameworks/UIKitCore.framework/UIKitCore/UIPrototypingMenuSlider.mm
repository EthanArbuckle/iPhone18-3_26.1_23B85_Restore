@interface UIPrototypingMenuSlider
@end

@implementation UIPrototypingMenuSlider

uint64_t __63___UIPrototypingMenuSlider_thumbRectForBounds_trackRect_value___block_invoke(uint64_t a1)
{
  v9.size.width = *(a1 + 48);
  v9.size.height = *(a1 + 56);
  v9.origin.x = round(*(a1 + 64) + (*(a1 + 80) - v9.size.width) * 0.5);
  v9.origin.y = round(*(a1 + 72) + (*(a1 + 88) - v9.size.height) * 0.5);
  v10 = CGRectOffset(v9, 0.0, -3.0);
  [*(a1 + 32) setFrame:{v10.origin.x, v10.origin.y, v10.size.width, v10.size.height}];
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  v6 = *(a1 + 40);

  return [v6 setBounds:{v2, v3, v4, v5}];
}

uint64_t __59___UIPrototypingMenuSlider__setKnobViewProminent_animated___block_invoke(uint64_t a1)
{
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  *&v6.a = *MEMORY[0x1E695EFD0];
  *&v6.c = v2;
  *&v6.tx = *(MEMORY[0x1E695EFD0] + 32);
  if (*(a1 + 40) == 1)
  {
    memset(&v5, 0, sizeof(v5));
    CGAffineTransformMakeScale(&v5, 1.25, 1.25);
    v4 = v5;
    CGAffineTransformTranslate(&v6, &v4, 0.0, -35.0);
  }

  v5 = v6;
  return [*(a1 + 32) setTransform:&v5];
}

uint64_t __59___UIPrototypingMenuSlider__setKnobViewProminent_animated___block_invoke_2(uint64_t result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v2 = result;
    v3 = [*(result + 32) knobPortal];
    [v3 removeFromSuperview];

    v4 = *(v2 + 32);

    return [v4 setKnobPortal:0];
  }

  return result;
}

@end