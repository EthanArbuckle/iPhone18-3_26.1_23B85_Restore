@interface TTRIQuickBarTabBar
- (_TtC15RemindersUICore18TTRIQuickBarTabBar)initWithFrame:(CGRect)frame;
- (void)buttonAction:(id)action;
- (void)buttonTouchDown:(id)down;
@end

@implementation TTRIQuickBarTabBar

- (_TtC15RemindersUICore18TTRIQuickBarTabBar)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC15RemindersUICore18TTRIQuickBarTabBar_delegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore18TTRIQuickBarTabBar_items) = 0;
  v9 = MEMORY[0x277D84FA0];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore18TTRIQuickBarTabBar_markedItemIDs) = MEMORY[0x277D84FA0];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore18TTRIQuickBarTabBar_enabledItemIDs) = v9;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore18TTRIQuickBarTabBar_stackView) = 0;
  v12.receiver = self;
  v12.super_class = ObjectType;
  height = [(TTRIQuickBarTabBar *)&v12 initWithFrame:x, y, width, height];
  sub_21D4AC7B4();

  return height;
}

- (void)buttonTouchDown:(id)down
{
  if (down)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_21D4ACE20(v6);

  sub_21D0CF7E0(v6, &qword_27CE5C690);
}

- (void)buttonAction:(id)action
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  sub_21D4ACFE8(v5);

  __swift_destroy_boxed_opaque_existential_0(v5);
}

@end