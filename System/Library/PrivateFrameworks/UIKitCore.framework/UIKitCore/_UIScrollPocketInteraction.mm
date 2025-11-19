@interface _UIScrollPocketInteraction
- (CGRect)_rect;
- (NSValue)_cornerRadii;
- (UIEdgeInsets)_insets;
- (UIScrollView)_scrollView;
- (UIView)view;
- (_UIScrollPocketCollectorInteraction)_collectorInteraction;
- (_UIScrollPocketInteraction)init;
- (_UIScrollPocketInteraction)initWithScrollView:(id)a3 edge:(unint64_t)a4 style:(int64_t)a5;
- (_UIScrollPocketInteraction)initWithStyle:(int64_t)a3;
- (void)_setCornerRadii:(id)a3;
- (void)_setEdge:(unint64_t)a3;
- (void)_setInsets:(UIEdgeInsets)a3;
- (void)_setRect:(CGRect)a3;
- (void)_setRequiresPocket:(BOOL)a3;
- (void)_setStyle:(int64_t)a3;
- (void)_updateProperties;
- (void)_viewVisibilityDidChange;
- (void)appendDescriptionToStream:(id)a3;
- (void)didMoveToView:(id)a3;
@end

@implementation _UIScrollPocketInteraction

- (void)_setEdge:(unint64_t)a3
{
  v4 = self;
  sub_188AD6DD4(a3);
}

- (UIView)view
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)didMoveToView:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v7 = a3;
  v6 = self;
  sub_188AD6F40(Strong);
}

- (_UIScrollPocketInteraction)initWithStyle:(int64_t)a3
{
  v5 = objc_allocWithZone(type metadata accessor for Implementation());
  *(&self->super.isa + OBJC_IVAR____UIScrollPocketInteraction_implementation) = sub_1890EA148(0, 0, a3);
  v7.receiver = self;
  v7.super_class = _UIScrollPocketInteraction;
  return [(_UIScrollPocketInteraction *)&v7 init];
}

- (void)_setRequiresPocket:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_188ADBDA4(v3);
}

- (void)_updateProperties
{
  v2 = self;
  sub_188B01C08();
}

- (void)_setRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_188B07100(x, y, width, height);
}

- (void)_setInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v9 = self;
  v7.f64[0] = top;
  v8.f64[0] = bottom;
  sub_188B8D46C(v7, left, v8, right);
}

- (_UIScrollPocketInteraction)initWithScrollView:(id)a3 edge:(unint64_t)a4 style:(int64_t)a5
{
  objc_allocWithZone(type metadata accessor for Implementation());
  v9 = a3;
  *(&self->super.isa + OBJC_IVAR____UIScrollPocketInteraction_implementation) = sub_1890EA148(a3, a4, a5);
  v12.receiver = self;
  v12.super_class = _UIScrollPocketInteraction;
  v10 = [(_UIScrollPocketInteraction *)&v12 init];

  return v10;
}

- (UIScrollView)_scrollView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_UIScrollPocketCollectorInteraction)_collectorInteraction
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)_setStyle:(int64_t)a3
{
  v4 = self;
  sub_1890E82FC(a3);
}

- (CGRect)_rect
{
  v2 = (*(&self->super.isa + OBJC_IVAR____UIScrollPocketInteraction_implementation) + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_rect);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (UIEdgeInsets)_insets
{
  v2 = (*(&self->super.isa + OBJC_IVAR____UIScrollPocketInteraction_implementation) + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_insets);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (NSValue)_cornerRadii
{
  v3 = (*(&self->super.isa + OBJC_IVAR____UIScrollPocketInteraction_implementation) + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_cornerRadii);
  if (v3[4])
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_opt_self() _valueWithUIRectCornerRadii_];
  }

  return v4;
}

- (void)_setCornerRadii:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1890E8530(a3);
}

- (void)_viewVisibilityDidChange
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v4 = self;
    [v5 setNeedsUpdateProperties];
  }
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1890E873C(v4);
}

- (_UIScrollPocketInteraction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end