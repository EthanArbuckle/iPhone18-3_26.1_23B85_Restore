@interface _UIMorphAnimationContainerView
- (_TtC5UIKit30_UIMorphAnimationContainerView)initWithCoder:(id)coder;
- (void)addSubview:(id)subview;
- (void)insertSubview:(id)subview atIndex:(int64_t)index;
@end

@implementation _UIMorphAnimationContainerView

- (_TtC5UIKit30_UIMorphAnimationContainerView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC5UIKit30_UIMorphAnimationContainerView_kickView;
  type metadata accessor for _UIMorphAnimationContainerView.TransformView();
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC5UIKit30_UIMorphAnimationContainerView_name);
  *v5 = 0;
  v5[1] = 0;
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (void)addSubview:(id)subview
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5UIKit30_UIMorphAnimationContainerView_kickView);
  if (v4 == subview)
  {
    v6.receiver = self;
    v6.super_class = type metadata accessor for _UIMorphAnimationContainerView();
    [(UIView *)&v6 addSubview:subview];
  }

  else
  {

    [v4 addSubview_];
  }
}

- (void)insertSubview:(id)subview atIndex:(int64_t)index
{
  v5 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5UIKit30_UIMorphAnimationContainerView_kickView);
  if (v5 == subview)
  {
    v8.receiver = self;
    v8.super_class = type metadata accessor for _UIMorphAnimationContainerView();
    [(UIView *)&v8 insertSubview:subview atIndex:index];
  }

  else
  {

    [v5 insertSubview_atIndex_];
  }
}

@end