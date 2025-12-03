@interface PUDefaultTileTransitionCoordinator
- (CGAffineTransform)_adjustDefaultDisappearanceTransform:(SEL)transform;
- (id)_layoutInfoWithDefaultDisappearance:(id)disappearance;
- (id)optionsForAnimatingTileController:(id)controller toLayoutInfo:(id)info withAnimationType:(int64_t)type;
- (void)configureOptions:(id)options forSpringAnimationsZoomingIn:(BOOL)in;
@end

@implementation PUDefaultTileTransitionCoordinator

- (CGAffineTransform)_adjustDefaultDisappearanceTransform:(SEL)transform
{
  v5 = *&a4->c;
  *&retstr->a = *&a4->a;
  *&retstr->c = v5;
  *&retstr->tx = *&a4->tx;
  v6 = +[PUTilingViewSettings sharedInstance];
  rotateDisappearingTiles = [v6 rotateDisappearingTiles];

  if (rotateDisappearingTiles)
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

- (id)_layoutInfoWithDefaultDisappearance:(id)disappearance
{
  disappearanceCopy = disappearance;
  v5 = disappearanceCopy;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  if (disappearanceCopy)
  {
    [disappearanceCopy transform];
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
  coordinateSystem = [v5 coordinateSystem];
  v20 = v23;
  v21 = v24;
  v22 = v25;
  v17 = [v5 layoutInfoWithCenter:&v20 size:coordinateSystem alpha:v7 transform:v9 zPosition:v11 coordinateSystem:{v13, 0.0, v15}];

  return v17;
}

- (void)configureOptions:(id)options forSpringAnimationsZoomingIn:(BOOL)in
{
  inCopy = in;
  optionsCopy = options;
  v6 = +[PUTilingViewSettings sharedInstance];
  if ([v6 useSpringAnimations])
  {
    if ([MEMORY[0x1E69C3640] isOneUpRefreshEnabled])
    {
      lemonadeUseOvershootingSpringAnimations = [v6 lemonadeUseOvershootingSpringAnimations];
      lemonadeUseSystemSpringAnimations = [v6 lemonadeUseSystemSpringAnimations];
    }

    else
    {
      lemonadeUseOvershootingSpringAnimations = [v6 useOvershootingSpringAnimations];
      lemonadeUseSystemSpringAnimations = [v6 useSystemSpringAnimations];
    }

    if (inCopy && lemonadeUseOvershootingSpringAnimations)
    {
      [optionsCopy setKind:1002];
      [v6 animationDragCoefficient];
      v10 = v9;
      [v6 animationDragCoefficient];
      [optionsCopy setSpringMass:v10 * v11];
      [optionsCopy setSpringStiffness:350.0];
      [optionsCopy setSpringDampingRatio:0.670000017];
      [optionsCopy setSpringNumberOfOscillations:1];
      goto LABEL_17;
    }

    if (lemonadeUseSystemSpringAnimations)
    {
      [v6 animationDragCoefficient];
      if (v12 == 1.0)
      {
        [optionsCopy setKind:1001];
        goto LABEL_17;
      }

      [optionsCopy setKind:1000];
      [v6 animationDragCoefficient];
      v18 = v17 * 0.5058;
    }

    else
    {
      animationDuration = [(PUDefaultTileTransitionCoordinator *)self animationDuration];
      if (animationDuration)
      {
        animationDuration2 = [(PUDefaultTileTransitionCoordinator *)self animationDuration];
        [animationDuration2 doubleValue];
        v16 = v15;
      }

      else
      {
        [v6 springAnimationDuration];
        v16 = v19;
      }

      [optionsCopy setKind:1000];
      [v6 animationDragCoefficient];
      v18 = v16 * v20;
    }

    [optionsCopy setDuration:v18];
    [optionsCopy setSpringDampingRatio:1.0];
  }

LABEL_17:
}

- (id)optionsForAnimatingTileController:(id)controller toLayoutInfo:(id)info withAnimationType:(int64_t)type
{
  infoCopy = info;
  animationDuration = [(PUDefaultTileTransitionCoordinator *)self animationDuration];
  if (animationDuration)
  {
    animationDuration2 = [(PUDefaultTileTransitionCoordinator *)self animationDuration];
    [animationDuration2 doubleValue];
  }

  else
  {
    animationDuration2 = +[PUTilingViewSettings sharedInstance];
    [animationDuration2 defaultAnimationDuration];
  }

  v10 = v9;

  tileKind = [infoCopy tileKind];

  v12 = [tileKind isEqualToString:PUTileKindBackground];
  if (v12)
  {
    v13 = +[PUTilingViewSettings sharedInstance];
    [v13 transitionDuration];
    v10 = v14;
  }

  v15 = +[PUTilingViewSettings sharedInstance];
  [v15 animationDragCoefficient];
  v17 = v10 * v16;

  newTileAnimationOptions = [(PUTileTransitionCoordinator *)self newTileAnimationOptions];
  [newTileAnimationOptions setKind:0];
  [newTileAnimationOptions setDuration:v17];
  [newTileAnimationOptions setSynchronizedWithTransition:v12];

  return newTileAnimationOptions;
}

@end