@interface _UIScrollPocketInteraction
- (CGRect)_rect;
- (NSValue)_cornerRadii;
- (UIEdgeInsets)_insets;
- (UIScrollView)_scrollView;
- (UIView)view;
- (_UIScrollPocketCollectorInteraction)_collectorInteraction;
- (_UIScrollPocketInteraction)init;
- (_UIScrollPocketInteraction)initWithScrollView:(id)view edge:(unint64_t)edge style:(int64_t)style;
- (_UIScrollPocketInteraction)initWithStyle:(int64_t)style;
- (void)_setCornerRadii:(id)radii;
- (void)_setEdge:(unint64_t)edge;
- (void)_setInsets:(UIEdgeInsets)insets;
- (void)_setRect:(CGRect)rect;
- (void)_setRequiresPocket:(BOOL)pocket;
- (void)_setStyle:(int64_t)style;
- (void)_updateProperties;
- (void)_viewVisibilityDidChange;
- (void)appendDescriptionToStream:(id)stream;
- (void)didMoveToView:(id)view;
@end

@implementation _UIScrollPocketInteraction

- (void)_setEdge:(unint64_t)edge
{
  selfCopy = self;
  sub_188AD6DD4(edge);
}

- (UIView)view
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)didMoveToView:(id)view
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  viewCopy = view;
  selfCopy = self;
  sub_188AD6F40(Strong);
}

- (_UIScrollPocketInteraction)initWithStyle:(int64_t)style
{
  v5 = objc_allocWithZone(type metadata accessor for Implementation());
  *(&self->super.isa + OBJC_IVAR____UIScrollPocketInteraction_implementation) = sub_1890EA148(0, 0, style);
  v7.receiver = self;
  v7.super_class = _UIScrollPocketInteraction;
  return [(_UIScrollPocketInteraction *)&v7 init];
}

- (void)_setRequiresPocket:(BOOL)pocket
{
  pocketCopy = pocket;
  selfCopy = self;
  sub_188ADBDA4(pocketCopy);
}

- (void)_updateProperties
{
  selfCopy = self;
  sub_188B01C08();
}

- (void)_setRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  sub_188B07100(x, y, width, height);
}

- (void)_setInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  selfCopy = self;
  v7.f64[0] = top;
  v8.f64[0] = bottom;
  sub_188B8D46C(v7, left, v8, right);
}

- (_UIScrollPocketInteraction)initWithScrollView:(id)view edge:(unint64_t)edge style:(int64_t)style
{
  objc_allocWithZone(type metadata accessor for Implementation());
  viewCopy = view;
  *(&self->super.isa + OBJC_IVAR____UIScrollPocketInteraction_implementation) = sub_1890EA148(view, edge, style);
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

- (void)_setStyle:(int64_t)style
{
  selfCopy = self;
  sub_1890E82FC(style);
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
    _valueWithUIRectCornerRadii_ = 0;
  }

  else
  {
    _valueWithUIRectCornerRadii_ = [objc_opt_self() _valueWithUIRectCornerRadii_];
  }

  return _valueWithUIRectCornerRadii_;
}

- (void)_setCornerRadii:(id)radii
{
  radiiCopy = radii;
  selfCopy = self;
  sub_1890E8530(radii);
}

- (void)_viewVisibilityDidChange
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    selfCopy = self;
    [v5 setNeedsUpdateProperties];
  }
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  selfCopy = self;
  sub_1890E873C(streamCopy);
}

- (_UIScrollPocketInteraction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end