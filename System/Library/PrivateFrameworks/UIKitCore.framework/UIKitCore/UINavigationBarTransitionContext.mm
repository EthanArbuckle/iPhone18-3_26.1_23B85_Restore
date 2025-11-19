@interface UINavigationBarTransitionContext
@end

@implementation UINavigationBarTransitionContext

uint64_t __59___UINavigationBarTransitionContext__animateBackgroundView__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 160) & 0x800) != 0)
  {
    [*(v1 + 40) transitionBackgroundViews];
    v1 = *(a1 + 32);
  }

  v3 = *(v1 + 8);

  return [v3 _updatePaletteBackgroundIfNecessary];
}

void __51___UINavigationBarTransitionContext_fadeInFunction__block_invoke(double a1, double a2, double a3, double a4)
{
  LODWORD(a2) = 1036831949;
  LODWORD(a1) = 0.75;
  LODWORD(a3) = 0.75;
  LODWORD(a4) = 1036831949;
  v4 = [MEMORY[0x1E69793D0] functionWithControlPoints:a1 :a2 :a3 :a4];
  v5 = _MergedGlobals_67;
  _MergedGlobals_67 = v4;
}

void __52___UINavigationBarTransitionContext_fadeOutFunction__block_invoke(double a1, double a2, double a3, double a4)
{
  LODWORD(a2) = 1063675494;
  LODWORD(a1) = 0.25;
  LODWORD(a3) = 0.25;
  LODWORD(a4) = 1063675494;
  v4 = [MEMORY[0x1E69793D0] functionWithControlPoints:a1 :a2 :a3 :a4];
  v5 = qword_1ED498CD8;
  qword_1ED498CD8 = v4;
}

uint64_t __83___UINavigationBarTransitionContext__animateAsTwoPartsWithOverlap_partOne_partTwo___block_invoke(uint64_t result)
{
  v1 = result;
  if (*(result + 40))
  {
    result = [UIView addKeyframeWithRelativeStartTime:0.0 relativeDuration:*(*(result + 32) + 128) + *(result + 56) animations:?];
  }

  if (*(v1 + 48))
  {
    v2 = *(*(v1 + 32) + 128);
    v3 = *(v1 + 56);
    v4 = v2 - v3;
    v5 = v2 + v3;

    return [UIView addKeyframeWithRelativeStartTime:v4 relativeDuration:v5 animations:?];
  }

  return result;
}

void __103___UINavigationBarTransitionContext__animateInProcessAsTwoPartsWithKeyframeID_overlap_partOne_partTwo___block_invoke(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = [*(a1 + 32) stringByAppendingString:@"-1"];
    [UIView _animateKeyframeWithID:v2 relativeStartTime:*(a1 + 48) relativeDuration:0.0 animations:*(*(a1 + 40) + 128) + *(a1 + 64)];
  }

  if (*(a1 + 56))
  {
    v3 = [*(a1 + 32) stringByAppendingString:@"-2"];
    [UIView _animateKeyframeWithID:v3 relativeStartTime:*(a1 + 56) relativeDuration:*(*(a1 + 40) + 128) - *(a1 + 64) animations:*(*(a1 + 40) + 128) + *(a1 + 64)];
  }
}

@end