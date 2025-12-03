@interface WFIconHostingView
+ (id)renderIcon:(id)icon size:(CGSize)size;
- (CGSize)iconSize;
- (WFIcon)icon;
- (void)setIcon:(id)icon;
- (void)setIconSize:(CGSize)size;
- (void)setUseAccentColor:(BOOL)color;
@end

@implementation WFIconHostingView

- (WFIcon)icon
{
  v2 = sub_274B6E36C();

  return v2;
}

- (void)setIcon:(id)icon
{
  iconCopy = icon;
  selfCopy = self;
  sub_274B6E40C(icon);
}

- (CGSize)iconSize
{
  v2 = sub_274B6E668();
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setIconSize:(CGSize)size
{
  selfCopy = self;
  sub_274B6E708();
}

- (void)setUseAccentColor:(BOOL)color
{
  selfCopy = self;
  sub_274B6E954(color);
}

+ (id)renderIcon:(id)icon size:(CGSize)size
{
  iconCopy = icon;
  v5 = static IconHostingView.render(icon:with:)();

  return v5;
}

@end