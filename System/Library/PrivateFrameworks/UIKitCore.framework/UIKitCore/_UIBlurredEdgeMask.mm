@interface _UIBlurredEdgeMask
- (_TtC5UIKit18_UIBlurredEdgeMask)initWithCoder:(id)coder;
- (_TtC5UIKit18_UIBlurredEdgeMask)initWithFrame:(CGRect)frame;
- (void)_contentViewDidUpdate;
- (void)dealloc;
- (void)displayLayer:(id)layer;
@end

@implementation _UIBlurredEdgeMask

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver_];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for _UIBlurredEdgeMask();
  [(UIView *)&v6 dealloc];
}

- (void)_contentViewDidUpdate
{
  selfCopy = self;
  v2 = sub_188ECB4B4();
  [v2 removeAllObjects];

  layer = [(UIView *)selfCopy layer];
  [(CALayer *)layer setNeedsDisplay];
}

- (void)displayLayer:(id)layer
{
  layerCopy = layer;
  selfCopy = self;
  sub_188ECC8C8();
}

- (_TtC5UIKit18_UIBlurredEdgeMask)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5UIKit18_UIBlurredEdgeMask____lazy_storage___blurredPortal) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5UIKit18_UIBlurredEdgeMask____lazy_storage___punchPortal) = 0;
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (_TtC5UIKit18_UIBlurredEdgeMask)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end