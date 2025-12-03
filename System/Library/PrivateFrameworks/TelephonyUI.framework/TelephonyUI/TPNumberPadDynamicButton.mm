@interface TPNumberPadDynamicButton
+ (double)highlightedCircleViewAlpha;
+ (double)unhighlightedCircleViewAlpha;
- (id)buttonColor;
- (id)initForCharacter:(int64_t)character style:(int64_t)style;
- (void)traitCollectionDidChange:(id)change;
- (void)updateCurrentStyleIfNecessaryFromStyle:(int64_t)style;
@end

@implementation TPNumberPadDynamicButton

- (id)initForCharacter:(int64_t)character style:(int64_t)style
{
  currentStyle = style;
  v7.receiver = self;
  v7.super_class = TPNumberPadDynamicButton;
  v4 = [(TPNumberPadButton *)&v7 initForCharacter:character style:?];
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

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = TPNumberPadDynamicButton;
  changeCopy = change;
  [(TPNumberPadDynamicButton *)&v6 traitCollectionDidChange:changeCopy];
  userInterfaceStyle = [changeCopy userInterfaceStyle];

  [(TPNumberPadDynamicButton *)self updateCurrentStyleIfNecessaryFromStyle:userInterfaceStyle];
}

- (void)updateCurrentStyleIfNecessaryFromStyle:(int64_t)style
{
  traitCollection = [(TPNumberPadDynamicButton *)self traitCollection];
  if ([traitCollection userInterfaceStyle] == style)
  {
  }

  else
  {
    traitCollection2 = [(TPNumberPadDynamicButton *)self traitCollection];
    userInterfaceStyle = [traitCollection2 userInterfaceStyle];

    if (userInterfaceStyle)
    {
      traitCollection3 = [(TPNumberPadDynamicButton *)self traitCollection];
      currentStyle = [traitCollection3 userInterfaceStyle];

      buttonColor = [(TPNumberPadDynamicButton *)self buttonColor];
      [(TPNumberPadButton *)self setColor:buttonColor];

      [(TPNumberPadButton *)self reloadImagesForCurrentCharacter];
    }
  }
}

@end