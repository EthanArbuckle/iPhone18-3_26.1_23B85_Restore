@interface UITextFieldPasscodeCutoutBackground
@end

@implementation UITextFieldPasscodeCutoutBackground

uint64_t __51___UITextFieldPasscodeCutoutBackground__updatePath__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) animationForKey:@"path"];
  v3 = [v2 fromValue];
  [*(a1 + 32) setPath:v3];

  v4 = *(a1 + 32);

  return [v4 removeAnimationForKey:@"path"];
}

uint64_t __60___UITextFieldPasscodeCutoutBackground_setEnabled_animated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2[424] & 1) == 0)
  {
    v3 = [v2 _strokeColor:*(a1 + 40)];
    v4 = [v3 CGColor];
    v5 = [*(a1 + 32) _shapeLayer];
    [v5 setStrokeColor:v4];

    v2 = *(a1 + 32);
  }

  if ((v2[425] & 1) == 0)
  {
    v6 = [v2 _fillColor:*(a1 + 40)];
    v7 = [v6 CGColor];
    v8 = [*(a1 + 32) _shapeLayer];
    [v8 setFillColor:v7];

    v2 = *(a1 + 32);
  }

  return [v2 _updatePath];
}

@end