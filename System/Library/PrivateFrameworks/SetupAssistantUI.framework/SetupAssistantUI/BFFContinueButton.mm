@interface BFFContinueButton
+ (id)buttonWithType:(int64_t)a3;
- (void)_setButtonBackgroundColor:(id)a3;
- (void)tintColorDidChange;
@end

@implementation BFFContinueButton

+ (id)buttonWithType:(int64_t)a3
{
  v12.receiver = a1;
  v12.super_class = &OBJC_METACLASS___BFFContinueButton;
  v3 = objc_msgSendSuper2(&v12, sel_buttonWithType_, a3);
  v4 = [MEMORY[0x277D75348] systemBlueColor];
  [v3 _setButtonBackgroundColor:v4];

  v5 = [v3 titleLabel];
  v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  [v5 setFont:v6];

  v7 = [v3 titleLabel];
  [v7 setAdjustsFontSizeToFitWidth:1];

  v8 = [MEMORY[0x277D75348] whiteColor];
  [v3 setTitleColor:v8 forState:0];

  v9 = [MEMORY[0x277D75348] whiteColor];
  v10 = [v9 colorWithAlphaComponent:0.25];
  [v3 setTitleColor:v10 forState:1];

  [v3 setClipsToBounds:1];
  [v3 _setCornerRadius:14.0];

  return v3;
}

- (void)_setButtonBackgroundColor:(id)a3
{
  v4 = [(BFFContinueButton *)self tintColor];
  v5 = BFFPointImageOfColor(v4);
  [(BFFContinueButton *)self setBackgroundImage:v5 forState:0];

  v8 = [(BFFContinueButton *)self tintColor];
  v6 = [v8 colorWithAlphaComponent:0.5];
  v7 = BFFPointImageOfColor(v6);
  [(BFFContinueButton *)self setBackgroundImage:v7 forState:1];
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = BFFContinueButton;
  [(BFFContinueButton *)&v4 tintColorDidChange];
  v3 = [(BFFContinueButton *)self tintColor];
  [(BFFContinueButton *)self _setButtonBackgroundColor:v3];
}

@end