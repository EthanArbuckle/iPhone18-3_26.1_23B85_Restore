@interface WFIconHostingView
+ (id)renderIcon:(id)a3 size:(CGSize)a4;
- (CGSize)iconSize;
- (WFIcon)icon;
- (void)setIcon:(id)a3;
- (void)setIconSize:(CGSize)a3;
- (void)setUseAccentColor:(BOOL)a3;
@end

@implementation WFIconHostingView

- (WFIcon)icon
{
  v2 = sub_274B6E36C();

  return v2;
}

- (void)setIcon:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_274B6E40C(a3);
}

- (CGSize)iconSize
{
  v2 = sub_274B6E668();
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setIconSize:(CGSize)a3
{
  v3 = self;
  sub_274B6E708();
}

- (void)setUseAccentColor:(BOOL)a3
{
  v4 = self;
  sub_274B6E954(a3);
}

+ (id)renderIcon:(id)a3 size:(CGSize)a4
{
  v4 = a3;
  v5 = static IconHostingView.render(icon:with:)();

  return v5;
}

@end