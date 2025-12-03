@interface SBLightPasscodeNumberPadButton
+ (CGSize)defaultSize;
+ (UIEdgeInsets)paddingOutsideRing;
+ (double)highlightedCircleViewAlpha;
+ (double)unhighlightedCircleViewAlpha;
- (id)initForCharacter:(int64_t)character;
- (id)stringCharacter;
- (int)characterType;
- (void)setReduceTransparencyButtonColor:(id)color;
@end

@implementation SBLightPasscodeNumberPadButton

- (id)initForCharacter:(int64_t)character
{
  v14.receiver = self;
  v14.super_class = SBLightPasscodeNumberPadButton;
  v3 = [(TPNumberPadButton *)&v14 initForCharacter:character];
  v4 = v3;
  if (v3)
  {
    revealingRingView = [v3 revealingRingView];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [revealingRingView setColorInsideRing:clearColor];

    revealingRingView2 = [v4 revealingRingView];
    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    [revealingRingView2 setColorOutsideRing:clearColor2];

    revealingRingView3 = [v4 revealingRingView];
    [revealingRingView3 setRevealAnimationDuration:0.0];

    revealingRingView4 = [v4 revealingRingView];
    [revealingRingView4 setUnrevealAnimationDuration:0.392500013];

    layer = [v4 layer];
    LODWORD(clearColor2) = [layer disableUpdateMask];

    layer2 = [v4 layer];
    [layer2 setDisableUpdateMask:clearColor2 | 0x10];
  }

  return v4;
}

- (int)characterType
{
  character = [(TPNumberPadButton *)self character];

  return [SBPasscodeNumberPadButton _characterTypeForCharacter:character];
}

- (id)stringCharacter
{
  character = [(TPNumberPadButton *)self character];

  return [SBPasscodeNumberPadButton _stringCharacterForCharacter:character];
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

- (void)setReduceTransparencyButtonColor:(id)color
{
  colorCopy = color;
  if (self->_reduceTransparencyButtonColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_reduceTransparencyButtonColor, color);
    [(TPNumberPadButton *)self setColor:self->_reduceTransparencyButtonColor];
    colorCopy = v6;
  }
}

+ (double)unhighlightedCircleViewAlpha
{
  _shouldUseAlternativeCirlceViewAlphas = [self _shouldUseAlternativeCirlceViewAlphas];
  result = 0.1;
  if (_shouldUseAlternativeCirlceViewAlphas)
  {
    return 0.47;
  }

  return result;
}

+ (double)highlightedCircleViewAlpha
{
  _shouldUseAlternativeCirlceViewAlphas = [self _shouldUseAlternativeCirlceViewAlphas];
  result = 0.3;
  if (_shouldUseAlternativeCirlceViewAlphas)
  {
    return 0.9;
  }

  return result;
}

@end