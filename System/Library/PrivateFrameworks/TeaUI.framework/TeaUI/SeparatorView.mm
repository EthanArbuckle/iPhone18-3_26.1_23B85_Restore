@interface SeparatorView
- (BOOL)isHidden;
- (UIColor)backgroundColor;
- (void)setBackgroundColor:(id)color;
- (void)setHidden:(BOOL)hidden;
@end

@implementation SeparatorView

- (BOOL)isHidden
{
  selfCopy = self;
  v3 = SeparatorView.isHidden.getter();

  return v3 & 1;
}

- (void)setHidden:(BOOL)hidden
{
  selfCopy = self;
  SeparatorView.isHidden.setter(hidden);
}

- (UIColor)backgroundColor
{
  selfCopy = self;
  v3 = SeparatorView.backgroundColor.getter();

  return v3;
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  SeparatorView.backgroundColor.setter(color);
}

@end