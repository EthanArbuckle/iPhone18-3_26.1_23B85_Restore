@interface TTRIQuickBarQuickPickItemView
- (BOOL)accessibilityActivate;
- (UIImage)largeContentImage;
- (_TtC15RemindersUICore29TTRIQuickBarQuickPickItemView)initWithFrame:(CGRect)a3;
- (unint64_t)accessibilityTraits;
@end

@implementation TTRIQuickBarQuickPickItemView

- (_TtC15RemindersUICore29TTRIQuickBarQuickPickItemView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = self + OBJC_IVAR____TtC15RemindersUICore29TTRIQuickBarQuickPickItemView_itemID;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore29TTRIQuickBarQuickPickItemView_button) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore29TTRIQuickBarQuickPickItemView_label) = 0;
  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(TTRIQuickBarQuickPickItemView *)&v12 initWithFrame:x, y, width, height];
  sub_21D499074();

  return v10;
}

- (unint64_t)accessibilityTraits
{
  v2 = self;
  v3 = sub_21D4997FC();

  return v3;
}

- (UIImage)largeContentImage
{
  result = *(&self->super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore29TTRIQuickBarQuickPickItemView_button);
  if (result)
  {
    v3 = [(UIImage *)result imageForState:0];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (BOOL)accessibilityActivate
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore29TTRIQuickBarQuickPickItemView_button);
  if (v2)
  {
    [v2 sendActionsForControlEvents_];
    LOBYTE(v2) = 1;
  }

  else
  {
    __break(1u);
  }

  return v2;
}

@end