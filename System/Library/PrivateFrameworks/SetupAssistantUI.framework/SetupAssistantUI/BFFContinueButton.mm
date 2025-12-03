@interface BFFContinueButton
+ (id)buttonWithType:(int64_t)type;
- (void)_setButtonBackgroundColor:(id)color;
- (void)tintColorDidChange;
@end

@implementation BFFContinueButton

+ (id)buttonWithType:(int64_t)type
{
  v12.receiver = self;
  v12.super_class = &OBJC_METACLASS___BFFContinueButton;
  v3 = objc_msgSendSuper2(&v12, sel_buttonWithType_, type);
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  [v3 _setButtonBackgroundColor:systemBlueColor];

  titleLabel = [v3 titleLabel];
  v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  [titleLabel setFont:v6];

  titleLabel2 = [v3 titleLabel];
  [titleLabel2 setAdjustsFontSizeToFitWidth:1];

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [v3 setTitleColor:whiteColor forState:0];

  whiteColor2 = [MEMORY[0x277D75348] whiteColor];
  v10 = [whiteColor2 colorWithAlphaComponent:0.25];
  [v3 setTitleColor:v10 forState:1];

  [v3 setClipsToBounds:1];
  [v3 _setCornerRadius:14.0];

  return v3;
}

- (void)_setButtonBackgroundColor:(id)color
{
  tintColor = [(BFFContinueButton *)self tintColor];
  v5 = BFFPointImageOfColor(tintColor);
  [(BFFContinueButton *)self setBackgroundImage:v5 forState:0];

  tintColor2 = [(BFFContinueButton *)self tintColor];
  v6 = [tintColor2 colorWithAlphaComponent:0.5];
  v7 = BFFPointImageOfColor(v6);
  [(BFFContinueButton *)self setBackgroundImage:v7 forState:1];
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = BFFContinueButton;
  [(BFFContinueButton *)&v4 tintColorDidChange];
  tintColor = [(BFFContinueButton *)self tintColor];
  [(BFFContinueButton *)self _setButtonBackgroundColor:tintColor];
}

@end