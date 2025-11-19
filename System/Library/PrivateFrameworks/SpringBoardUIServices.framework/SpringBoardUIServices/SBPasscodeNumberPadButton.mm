@interface SBPasscodeNumberPadButton
+ (BOOL)_isPortrait;
+ (CGSize)defaultSize;
+ (UIEdgeInsets)paddingOutsideRing;
+ (double)_numberPadButtonOuterCircleDiameter;
+ (double)highlightedCircleViewAlpha;
+ (double)outerCircleDiameter;
+ (double)unhighlightedCircleViewAlpha;
+ (id)_stringCharacterForCharacter:(int64_t)a3;
+ (int)_characterTypeForCharacter:(int64_t)a3;
- (id)initForCharacter:(int64_t)a3;
- (id)stringCharacter;
- (int)characterType;
- (void)setReduceTransparencyButtonColor:(id)a3;
@end

@implementation SBPasscodeNumberPadButton

+ (CGSize)defaultSize
{
  v2 = [a1 _isPortrait];
  [MEMORY[0x1E69D3FE8] pinNumberPadButtonOuterCircleDiameter:v2];
  v4 = v3;
  [MEMORY[0x1E69D3FE8] pinNumberPadButtonPaddingHeight:v2];
  v6 = v5;
  [MEMORY[0x1E69D3FE8] pinNumberPadButtonPaddingWidth];
  v8 = v4 + v7 * 2.0;
  v9 = v4 + v6 * 2.0;
  result.height = v9;
  result.width = v8;
  return result;
}

+ (BOOL)_isPortrait
{
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v13.origin.x = v4;
  v13.origin.y = v6;
  v13.size.width = v8;
  v13.size.height = v10;
  Height = CGRectGetHeight(v13);
  v14.origin.x = v4;
  v14.origin.y = v6;
  v14.size.width = v8;
  v14.size.height = v10;
  return Height >= CGRectGetWidth(v14);
}

+ (double)outerCircleDiameter
{
  v2 = [a1 _isPortrait];
  v3 = MEMORY[0x1E69D3FE8];

  [v3 pinNumberPadButtonOuterCircleDiameter:v2];
  return result;
}

+ (double)_numberPadButtonOuterCircleDiameter
{
  v2 = [a1 _isPortrait];
  v3 = MEMORY[0x1E69D3FE8];

  [v3 pinNumberPadButtonOuterCircleDiameter:v2];
  return result;
}

+ (UIEdgeInsets)paddingOutsideRing
{
  v2 = [a1 _isPortrait];
  [MEMORY[0x1E69D3FE8] pinNumberPadButtonPaddingHeight:v2];
  v4 = v3;
  [MEMORY[0x1E69D3FE8] pinNumberPadButtonPaddingWidth];
  v6 = v5;
  v7 = v4;
  v8 = v4;
  v9 = v6;
  result.right = v9;
  result.bottom = v8;
  result.left = v6;
  result.top = v7;
  return result;
}

- (id)initForCharacter:(int64_t)a3
{
  v14.receiver = self;
  v14.super_class = SBPasscodeNumberPadButton;
  v3 = [(TPNumberPadButton *)&v14 initForCharacter:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 revealingRingView];
    v6 = [MEMORY[0x1E69DC888] blackColor];
    [v5 setColorInsideRing:v6];

    v7 = [v4 revealingRingView];
    v8 = [MEMORY[0x1E69DC888] blackColor];
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

+ (int)_characterTypeForCharacter:(int64_t)a3
{
  if (a3 > 0xC)
  {
    return 0;
  }

  else
  {
    return dword_1A9B2AB10[a3];
  }
}

- (int)characterType
{
  v3 = objc_opt_class();
  v4 = [(TPNumberPadButton *)self character];

  return [v3 _characterTypeForCharacter:v4];
}

+ (id)_stringCharacterForCharacter:(int64_t)a3
{
  if (_stringCharacterForCharacter____onceToken != -1)
  {
    +[SBPasscodeNumberPadButton _stringCharacterForCharacter:];
  }

  v4 = _stringCharacterForCharacter____map;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [v4 objectForKey:v5];

  return v6;
}

void __58__SBPasscodeNumberPadButton__stringCharacterForCharacter___block_invoke()
{
  v13[10] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:0];
  v13[0] = @"1";
  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{1, v0}];
  v12[1] = v1;
  v13[1] = @"2";
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:2];
  v12[2] = v2;
  v13[2] = @"3";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:3];
  v12[3] = v3;
  v13[3] = @"4";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:4];
  v12[4] = v4;
  v13[4] = @"5";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:5];
  v12[5] = v5;
  v13[5] = @"6";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:6];
  v12[6] = v6;
  v13[6] = @"7";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:7];
  v12[7] = v7;
  v13[7] = @"8";
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:8];
  v12[8] = v8;
  v13[8] = @"9";
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:10];
  v12[9] = v9;
  v13[9] = @"0";
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:10];
  v11 = _stringCharacterForCharacter____map;
  _stringCharacterForCharacter____map = v10;
}

- (id)stringCharacter
{
  v3 = objc_opt_class();
  v4 = [(TPNumberPadButton *)self character];

  return [v3 _stringCharacterForCharacter:v4];
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
  result = 0.15;
  if (v2)
  {
    return 0.47;
  }

  return result;
}

+ (double)highlightedCircleViewAlpha
{
  v2 = [a1 _shouldUseAlternativeCirlceViewAlphas];
  result = 0.65;
  if (v2)
  {
    return 0.9;
  }

  return result;
}

@end