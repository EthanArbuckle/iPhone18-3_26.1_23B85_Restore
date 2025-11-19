@interface PUDefaultTileTransitionCoordinator
- (CGAffineTransform)_adjustDefaultDisappearanceTransform:(SEL)a3;
- (id)_layoutInfoWithDefaultDisappearance:(id)a3;
- (id)optionsForAnimatingTileController:(id)a3 toLayoutInfo:(id)a4 withAnimationType:(int64_t)a5;
- (void)configureOptions:(id)a3 forSpringAnimationsZoomingIn:(BOOL)a4;
@end

@implementation PUDefaultTileTransitionCoordinator

- (CGAffineTransform)_adjustDefaultDisappearanceTransform:(SEL)a3
{
  v5 = *&a4->c;
  *&retstr->a = *&a4->a;
  *&retstr->c = v5;
  *&retstr->tx = *&a4->tx;
  v6 = +[PUTilingViewSettings sharedInstance];
  v7 = [v6 rotateDisappearingTiles];

  if (v7)
  {
    v9 = *&retstr->c;
    *&v13.a = *&retstr->a;
    *&v13.c = v9;
    *&v13.tx = *&retstr->tx;
    CGAffineTransformScale(retstr, &v13, 0.800000012, 0.800000012);
    v10 = *&retstr->c;
    *&v12.a = *&retstr->a;
    *&v12.c = v10;
    *&v12.tx = *&retstr->tx;
    result = CGAffineTransformRotate(&v13, &v12, 0.5);
    v11 = *&v13.c;
    *&retstr->a = *&v13.a;
    *&retstr->c = v11;
    *&retstr->tx = *&v13.tx;
  }

  return result;
}

- (id)_layoutInfoWithDefaultDisappearance:(id)a3
{
  v4 = a3;
  v5 = v4;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  if (v4)
  {
    [v4 transform];
  }

  v19[0] = v23;
  v19[1] = v24;
  v19[2] = v25;
  [(PUDefaultTileTransitionCoordinator *)self _adjustDefaultDisappearanceTransform:v19];
  v23 = v20;
  v24 = v21;
  v25 = v22;
  [v5 center];
  v7 = v6;
  v9 = v8;
  [v5 size];
  v11 = v10;
  v13 = v12;
  [v5 zPosition];
  v15 = v14;
  v16 = [v5 coordinateSystem];
  v20 = v23;
  v21 = v24;
  v22 = v25;
  v17 = [v5 layoutInfoWithCenter:&v20 size:v16 alpha:v7 transform:v9 zPosition:v11 coordinateSystem:{v13, 0.0, v15}];

  return v17;
}

- (void)configureOptions:(id)a3 forSpringAnimationsZoomingIn:(BOOL)a4
{
  v4 = a4;
  v21 = a3;
  v6 = +[PUTilingViewSettings sharedInstance];
  if ([v6 useSpringAnimations])
  {
    if ([MEMORY[0x1E69C3640] isOneUpRefreshEnabled])
    {
      v7 = [v6 lemonadeUseOvershootingSpringAnimations];
      v8 = [v6 lemonadeUseSystemSpringAnimations];
    }

    else
    {
      v7 = [v6 useOvershootingSpringAnimations];
      v8 = [v6 useSystemSpringAnimations];
    }

    if (v4 && v7)
    {
      [v21 setKind:1002];
      [v6 animationDragCoefficient];
      v10 = v9;
      [v6 animationDragCoefficient];
      [v21 setSpringMass:v10 * v11];
      [v21 setSpringStiffness:350.0];
      [v21 setSpringDampingRatio:0.670000017];
      [v21 setSpringNumberOfOscillations:1];
      goto LABEL_17;
    }

    if (v8)
    {
      [v6 animationDragCoefficient];
      if (v12 == 1.0)
      {
        [v21 setKind:1001];
        goto LABEL_17;
      }

      [v21 setKind:1000];
      [v6 animationDragCoefficient];
      v18 = v17 * 0.5058;
    }

    else
    {
      v13 = [(PUDefaultTileTransitionCoordinator *)self animationDuration];
      if (v13)
      {
        v14 = [(PUDefaultTileTransitionCoordinator *)self animationDuration];
        [v14 doubleValue];
        v16 = v15;
      }

      else
      {
        [v6 springAnimationDuration];
        v16 = v19;
      }

      [v21 setKind:1000];
      [v6 animationDragCoefficient];
      v18 = v16 * v20;
    }

    [v21 setDuration:v18];
    [v21 setSpringDampingRatio:1.0];
  }

LABEL_17:
}

- (id)optionsForAnimatingTileController:(id)a3 toLayoutInfo:(id)a4 withAnimationType:(int64_t)a5
{
  v6 = a4;
  v7 = [(PUDefaultTileTransitionCoordinator *)self animationDuration];
  if (v7)
  {
    v8 = [(PUDefaultTileTransitionCoordinator *)self animationDuration];
    [v8 doubleValue];
  }

  else
  {
    v8 = +[PUTilingViewSettings sharedInstance];
    [v8 defaultAnimationDuration];
  }

  v10 = v9;

  v11 = [v6 tileKind];

  v12 = [v11 isEqualToString:PUTileKindBackground];
  if (v12)
  {
    v13 = +[PUTilingViewSettings sharedInstance];
    [v13 transitionDuration];
    v10 = v14;
  }

  v15 = +[PUTilingViewSettings sharedInstance];
  [v15 animationDragCoefficient];
  v17 = v10 * v16;

  v18 = [(PUTileTransitionCoordinator *)self newTileAnimationOptions];
  [v18 setKind:0];
  [v18 setDuration:v17];
  [v18 setSynchronizedWithTransition:v12];

  return v18;
}

@end