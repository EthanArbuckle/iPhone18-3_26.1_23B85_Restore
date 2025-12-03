@interface _UIFloatingBarContainerView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (_UIFloatingBarContainerView)initWithCoder:(id)coder;
- (double)toolbarOverlayInset;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setToolbarItems:(id)items avoidsKeyboard:(BOOL)keyboard animated:(BOOL)animated;
@end

@implementation _UIFloatingBarContainerView

- (void)setToolbarItems:(id)items avoidsKeyboard:(BOOL)keyboard animated:(BOOL)animated
{
  sub_188A34624(0, &qword_1ED48E8C0);
  v8 = sub_18A4A7548();
  selfCopy = self;
  sub_188B27DC8(v8, keyboard, animated);
}

- (void)didMoveToWindow
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v13.receiver = self;
  v13.super_class = ObjectType;
  selfCopy = self;
  [(UIView *)&v13 didMoveToWindow];
  v8 = sub_18A4A76C8();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  sub_18A4A76A8();
  v9 = selfCopy;
  v10 = sub_18A4A7698();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  sub_188F18724(0, 0, v6, &unk_18A6643D0, v11);
}

- (double)toolbarOverlayInset
{
  selfCopy = self;
  v3 = sub_1890AD30C();

  return v3;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_188BADC04();
}

- (_UIFloatingBarContainerView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____UIFloatingBarContainerView__edgesRequiringContentMargin) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____UIFloatingBarContainerView__adjacentBarEdges) = 0;
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  selfCopy = self;
  if (*(sub_188BAC8D4() + 16) && (sub_188C629E8(&v9), (v10 & 1) == 0))
  {
    v11.x = x;
    v11.y = y;
    v7 = CGRectContainsPoint(v9, v11);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end