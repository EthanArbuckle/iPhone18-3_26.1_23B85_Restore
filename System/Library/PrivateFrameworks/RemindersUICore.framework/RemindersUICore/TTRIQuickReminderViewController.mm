@interface TTRIQuickReminderViewController
- (BOOL)accessibilityPerformEscape;
- (_TtC15RemindersUICore31TTRIQuickReminderViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation TTRIQuickReminderViewController

- (void)loadView
{
  type metadata accessor for TTRIQuickReminderView();
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  selfCopy = self;
  v4 = [v3 init];
  [(TTRIQuickReminderViewController *)selfCopy setView:v4];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_21D83F118();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_21D842B20(appear);
}

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(TTRIQuickReminderViewController *)&v5 viewIsAppearing:appearingCopy];
  sub_21D842D74();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_21D844818();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_21D842F48(disappear);
}

- (void)viewLayoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(TTRIQuickReminderViewController *)&v3 viewLayoutMarginsDidChange];
  sub_21D842D74();
}

- (BOOL)accessibilityPerformEscape
{
  selfCopy = self;
  sub_21D8430B8();

  return 1;
}

- (_TtC15RemindersUICore31TTRIQuickReminderViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end