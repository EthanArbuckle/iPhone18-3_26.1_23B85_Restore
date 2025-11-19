@interface SBLightPasscodeNumberPadButton
+ (CGSize)defaultSize;
+ (UIEdgeInsets)paddingOutsideRing;
+ (double)highlightedCircleViewAlpha;
+ (double)unhighlightedCircleViewAlpha;
- (id)initForCharacter:(int64_t)a3;
- (id)stringCharacter;
- (int)characterType;
- (void)setReduceTransparencyButtonColor:(id)a3;
@end

@implementation SBLightPasscodeNumberPadButton

- (id)initForCharacter:(int64_t)a3
{
  v14.receiver = self;
  v14.super_class = SBLightPasscodeNumberPadButton;
  v3 = [(TPNumberPadButton *)&v14 initForCharacter:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 revealingRingView];
    v6 = [MEMORY[0x1E69DC888] clearColor];
    [v5 setColorInsideRing:v6];

    v7 = [v4 revealingRingView];
    v8 = [MEMORY[0x1E69DC888] clearColor];
    [v7 setColorOutsideRing:v8];

    v9 = [v4 revealingRingView];
    [v9 setRevealAnimationDuration:0.0];

    v10 = [v4 revealingRingView];
    [v10 setUnrevealAnimationDuration:0.392500013];

    v11 = [v4 layer];
    LODWORD(v8) = [v11 disableUpdateMask];

    v12 = [v4 layer];
    [v12 setDisableUpdateMask:v8 | 0x10];
  }

  return v4;
}

- (int)characterType
{
  v2 = [(TPNumberPadButton *)self character];

  return [SBPasscodeNumberPadButton _characterTypeForCharacter:v2];
}

- (id)stringCharacter
{
  v2 = [(TPNumberPadButton *)self character];

  return [SBPasscodeNumberPadButton _stringCharacterForCharacter:v2];
}

+ (CGSize)defaultSize
{
  +[SBPasscodeNumberPadButton defaultSize];
  result.height = v3;
  result.width = v2;
  return result;
}

+ (UIEdgeInsets)paddingOutsideRing
{
  +[SBPasscodeNumberPadButton paddingOutsideRing];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)setReduceTransparencyButtonColor:(id)a3
{
  v5 = a3;
  if (self->_reduceTransparencyButtonColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_reduceTransparencyButtonColor, a3);
    [(TPNumberPadButton *)self setColor:self->_reduceTransparencyButtonColor];
    v5 = v6;
  }
}

+ (double)unhighlightedCircleViewAlpha
{
  v2 = [a1 _shouldUseAlternativeCirlceViewAlphas];
  result = 0.1;
  if (v2)
  {
    return 0.47;
  }

  return result;
}

+ (double)highlightedCircleViewAlpha
{
  v2 = [a1 _shouldUseAlternativeCirlceViewAlphas];
  result = 0.3;
  if (v2)
  {
    return 0.9;
  }

  return result;
}

@end