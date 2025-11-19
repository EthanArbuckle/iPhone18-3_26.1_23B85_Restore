@interface _UIBlurredEdgeMask
- (_TtC5UIKit18_UIBlurredEdgeMask)initWithCoder:(id)a3;
- (_TtC5UIKit18_UIBlurredEdgeMask)initWithFrame:(CGRect)a3;
- (void)_contentViewDidUpdate;
- (void)dealloc;
- (void)displayLayer:(id)a3;
@end

@implementation _UIBlurredEdgeMask

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver_];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for _UIBlurredEdgeMask();
  [(UIView *)&v6 dealloc];
}

- (void)_contentViewDidUpdate
{
  v4 = self;
  v2 = sub_188ECB4B4();
  [v2 removeAllObjects];

  v3 = [(UIView *)v4 layer];
  [(CALayer *)v3 setNeedsDisplay];
}

- (void)displayLayer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_188ECC8C8();
}

- (_TtC5UIKit18_UIBlurredEdgeMask)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5UIKit18_UIBlurredEdgeMask____lazy_storage___blurredPortal) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5UIKit18_UIBlurredEdgeMask____lazy_storage___punchPortal) = 0;
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (_TtC5UIKit18_UIBlurredEdgeMask)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end