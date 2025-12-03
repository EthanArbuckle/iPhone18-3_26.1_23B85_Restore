@interface WelcomeView.TitleGroup
- (CGRect)accessibilityFrame;
- (NSString)accessibilityLabel;
- (_TtCC8StocksUI11WelcomeView10TitleGroup)initWithCoder:(id)coder;
@end

@implementation WelcomeView.TitleGroup

- (_TtCC8StocksUI11WelcomeView10TitleGroup)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtCC8StocksUI11WelcomeView10TitleGroup_appIcon;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v5 = OBJC_IVAR____TtCC8StocksUI11WelcomeView10TitleGroup_welcomeLabel;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  result = sub_22089267C();
  __break(1u);
  return result;
}

- (CGRect)accessibilityFrame
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtCC8StocksUI11WelcomeView10TitleGroup_welcomeLabel) accessibilityFrame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (NSString)accessibilityLabel
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtCC8StocksUI11WelcomeView10TitleGroup_welcomeLabel);
  selfCopy = self;
  text = [v2 text];
  if (text)
  {
    v5 = text;
    sub_22089136C();

    v6 = sub_22089132C();
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

@end