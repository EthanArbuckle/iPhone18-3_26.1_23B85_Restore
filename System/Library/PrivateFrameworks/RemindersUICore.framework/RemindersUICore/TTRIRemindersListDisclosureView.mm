@interface TTRIRemindersListDisclosureView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (UIColor)tintColor;
- (_TtC15RemindersUICore31TTRIRemindersListDisclosureView)initWithArrangedSubviews:(id)subviews;
- (_TtC15RemindersUICore31TTRIRemindersListDisclosureView)initWithFrame:(CGRect)frame;
- (void)buttonShapesSettingDidChange;
- (void)dealloc;
- (void)setTintColor:(id)color;
- (void)subtaskDisclosureButtonAction:(id)action;
@end

@implementation TTRIRemindersListDisclosureView

- (UIColor)tintColor
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  tintColor = [(TTRIRemindersListDisclosureView *)&v4 tintColor];

  return tintColor;
}

- (void)setTintColor:(id)color
{
  ObjectType = swift_getObjectType();
  v14.receiver = self;
  v14.super_class = ObjectType;
  colorCopy = color;
  selfCopy = self;
  [(TTRIRemindersListDisclosureView *)&v14 setTintColor:colorCopy];
  v8 = *(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_collapsed);
  v13.receiver = selfCopy;
  v13.super_class = ObjectType;
  tintColor = [(TTRIRemindersListDisclosureView *)&v13 tintColor];
  [v8 setTintColor_];

  v10 = *(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_expanded);
  v12.receiver = selfCopy;
  v12.super_class = ObjectType;
  tintColor2 = [(TTRIRemindersListDisclosureView *)&v12 tintColor];
  [v10 setTintColor_];
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter removeObserver:selfCopy name:*MEMORY[0x277D76450] object:0];

  v7.receiver = selfCopy;
  v7.super_class = ObjectType;
  [(NUIContainerBoxView *)&v7 dealloc];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  eventCopy = event;
  y = inside.y;
  x = inside.x;
  eventCopy2 = event;
  selfCopy = self;
  v11.value.super.isa = eventCopy;
  LOBYTE(eventCopy) = NUIContainerView.ttr_pointIncludingExpandedHitTestInsets(inside:with:)(__PAIR128__(*&y, *&x), v11);

  return eventCopy & 1;
}

- (void)subtaskDisclosureButtonAction:(id)action
{
  if (action)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    selfCopy2 = self;
  }

  v6 = self + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_actionDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 1);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(self, ObjectType, v7);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_21D1A8418(v9);
}

- (void)buttonShapesSettingDidChange
{
  selfCopy = self;
  sub_21D55DB60();
}

- (_TtC15RemindersUICore31TTRIRemindersListDisclosureView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15RemindersUICore31TTRIRemindersListDisclosureView)initWithArrangedSubviews:(id)subviews
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end