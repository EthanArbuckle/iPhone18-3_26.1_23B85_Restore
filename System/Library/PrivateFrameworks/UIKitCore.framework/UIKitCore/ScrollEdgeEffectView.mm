@interface ScrollEdgeEffectView
- (NSString)description;
- (UIEdgeInsets)alignmentRectInsets;
- (_TtC5UIKit20ScrollEdgeEffectView)initWithFrame:(CGRect)frame;
- (id)focusItemsInRect:(CGRect)rect;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)updateDebugView;
@end

@implementation ScrollEdgeEffectView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v14.receiver = self;
  v14.super_class = swift_getObjectType();
  v7 = v14.receiver;
  eventCopy = event;
  v9 = [(UIView *)&v14 hitTest:eventCopy withEvent:x, y];
  if (!v9)
  {

LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  v10 = v9;

  v11 = v10;
  v12 = v10 == v7;
  v7 = v10;
  if (v12)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v11;
}

- (void)updateDebugView
{
  selfCopy = self;
  sub_189032D20();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_189032F64();
}

- (UIEdgeInsets)alignmentRectInsets
{
  selfCopy = self;
  sub_189034384();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(UIView *)&v3 didMoveToSuperview];
  sub_18902F744();
}

- (void)didMoveToWindow
{
  selfCopy = self;
  sub_189034634();
}

- (id)focusItemsInRect:(CGRect)rect
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_18A64B710;
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_touchBlocker);
  *(v4 + 32) = v5;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A738);
  v7 = sub_18A4A7518();

  return v7;
}

- (NSString)description
{
  selfCopy = self;
  sub_18903510C();

  v3 = sub_18A4A7258();

  return v3;
}

- (_TtC5UIKit20ScrollEdgeEffectView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end