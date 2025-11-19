@interface _UIFloatingBarContainerView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (_UIFloatingBarContainerView)initWithCoder:(id)a3;
- (double)toolbarOverlayInset;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setToolbarItems:(id)a3 avoidsKeyboard:(BOOL)a4 animated:(BOOL)a5;
@end

@implementation _UIFloatingBarContainerView

- (void)setToolbarItems:(id)a3 avoidsKeyboard:(BOOL)a4 animated:(BOOL)a5
{
  sub_188A34624(0, &qword_1ED48E8C0);
  v8 = sub_18A4A7548();
  v9 = self;
  sub_188B27DC8(v8, a4, a5);
}

- (void)didMoveToWindow
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v13.receiver = self;
  v13.super_class = ObjectType;
  v7 = self;
  [(UIView *)&v13 didMoveToWindow];
  v8 = sub_18A4A76C8();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  sub_18A4A76A8();
  v9 = v7;
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
  v2 = self;
  v3 = sub_1890AD30C();

  return v3;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_188BADC04();
}

- (_UIFloatingBarContainerView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____UIFloatingBarContainerView__edgesRequiringContentMargin) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____UIFloatingBarContainerView__adjacentBarEdges) = 0;
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = self;
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