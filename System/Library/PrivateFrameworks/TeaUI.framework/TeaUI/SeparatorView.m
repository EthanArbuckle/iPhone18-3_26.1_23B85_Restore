@interface SeparatorView
- (BOOL)isHidden;
- (UIColor)backgroundColor;
- (void)setBackgroundColor:(id)a3;
- (void)setHidden:(BOOL)a3;
@end

@implementation SeparatorView

- (BOOL)isHidden
{
  v2 = self;
  v3 = SeparatorView.isHidden.getter();

  return v3 & 1;
}

- (void)setHidden:(BOOL)a3
{
  v4 = self;
  SeparatorView.isHidden.setter(a3);
}

- (UIColor)backgroundColor
{
  v2 = self;
  v3 = SeparatorView.backgroundColor.getter();

  return v3;
}

- (void)setBackgroundColor:(id)a3
{
  v5 = a3;
  v6 = self;
  SeparatorView.backgroundColor.setter(a3);
}

@end