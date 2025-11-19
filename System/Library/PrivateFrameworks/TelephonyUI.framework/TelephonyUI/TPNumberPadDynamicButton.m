@interface TPNumberPadDynamicButton
+ (double)highlightedCircleViewAlpha;
+ (double)unhighlightedCircleViewAlpha;
- (id)buttonColor;
- (id)initForCharacter:(int64_t)a3 style:(int64_t)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateCurrentStyleIfNecessaryFromStyle:(int64_t)a3;
@end

@implementation TPNumberPadDynamicButton

- (id)initForCharacter:(int64_t)a3 style:(int64_t)a4
{
  currentStyle = a4;
  v7.receiver = self;
  v7.super_class = TPNumberPadDynamicButton;
  v4 = [(TPNumberPadButton *)&v7 initForCharacter:a3 style:?];
  v5 = v4;
  if (v4)
  {
    [v4 updateCurrentStyleIfNecessaryFromStyle:currentStyle];
  }

  return v5;
}

- (id)buttonColor
{
  if (currentStyle == 2)
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] blackColor];
  }
  v2 = ;

  return v2;
}

+ (double)unhighlightedCircleViewAlpha
{
  if (currentStyle == 2)
  {
    v2 = off_1E7C0B778;
  }

  else
  {
    v2 = off_1E7C0B788;
  }

  [(__objc2_class *)*v2 unhighlightedCircleViewAlpha];
  return result;
}

+ (double)highlightedCircleViewAlpha
{
  if (currentStyle == 2)
  {
    v2 = off_1E7C0B778;
  }

  else
  {
    v2 = off_1E7C0B788;
  }

  [(__objc2_class *)*v2 highlightedCircleViewAlpha];
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = TPNumberPadDynamicButton;
  v4 = a3;
  [(TPNumberPadDynamicButton *)&v6 traitCollectionDidChange:v4];
  v5 = [v4 userInterfaceStyle];

  [(TPNumberPadDynamicButton *)self updateCurrentStyleIfNecessaryFromStyle:v5];
}

- (void)updateCurrentStyleIfNecessaryFromStyle:(int64_t)a3
{
  v9 = [(TPNumberPadDynamicButton *)self traitCollection];
  if ([v9 userInterfaceStyle] == a3)
  {
  }

  else
  {
    v5 = [(TPNumberPadDynamicButton *)self traitCollection];
    v6 = [v5 userInterfaceStyle];

    if (v6)
    {
      v7 = [(TPNumberPadDynamicButton *)self traitCollection];
      currentStyle = [v7 userInterfaceStyle];

      v8 = [(TPNumberPadDynamicButton *)self buttonColor];
      [(TPNumberPadButton *)self setColor:v8];

      [(TPNumberPadButton *)self reloadImagesForCurrentCharacter];
    }
  }
}

@end