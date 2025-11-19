@interface TTRIQuickReminderViewController
- (BOOL)accessibilityPerformEscape;
- (_TtC15RemindersUICore31TTRIQuickReminderViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation TTRIQuickReminderViewController

- (void)loadView
{
  type metadata accessor for TTRIQuickReminderView();
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = self;
  v4 = [v3 init];
  [(TTRIQuickReminderViewController *)v5 setView:v4];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_21D83F118();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_21D842B20(a3);
}

- (void)viewIsAppearing:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(TTRIQuickReminderViewController *)&v5 viewIsAppearing:v3];
  sub_21D842D74();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = self;
  sub_21D844818();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_21D842F48(a3);
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
  v2 = self;
  sub_21D8430B8();

  return 1;
}

- (_TtC15RemindersUICore31TTRIQuickReminderViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end