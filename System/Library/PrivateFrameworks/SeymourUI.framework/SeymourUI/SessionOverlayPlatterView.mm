@interface SessionOverlayPlatterView
- (_TtC9SeymourUI25SessionOverlayPlatterView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation SessionOverlayPlatterView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for SessionOverlayPlatterView();
  v2 = v5.receiver;
  [(SessionOverlayPlatterView *)&v5 layoutSubviews];
  layer = [v2 layer];
  [v2 bounds];
  [layer setCornerRadius_];
}

- (_TtC9SeymourUI25SessionOverlayPlatterView)initWithCoder:(id)coder
{
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

@end