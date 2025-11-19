@interface UITextLightLoupeView
@end

@implementation UITextLightLoupeView

void __52___UITextLightLoupeView__backgroundColorIfNecessary__block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  v7 = a1 + 5;
  if (*(*(a1[5] + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL && a1[4] == v5 && (v10 = v5, isKindOfClass = objc_opt_isKindOfClass(), v6 = v10, (isKindOfClass & 1) != 0) || (v7 = a1 + 6, *(*(a1[6] + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL) && (v11 = v6, v9 = objc_opt_isKindOfClass(), v6 = v11, (v9 & 1) != 0))
  {
    *(*(*v7 + 8) + 24) = a3;
  }
}

uint64_t __56___UITextLightLoupeView_setVisible_animated_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 480) & 1) == 0 && *(a1 + 48) == 1)
  {
    [*(v2 + 464) setPaused:1];
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t __56___UITextLightLoupeView_setVisible_animated_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:*(a1 + 40)];
  CGAffineTransformMakeTranslation(&v5, *(a1 + 48), *(a1 + 56));
  v2 = *(a1 + 32);
  v4 = v5;
  return [v2 setTransform:&v4];
}

@end