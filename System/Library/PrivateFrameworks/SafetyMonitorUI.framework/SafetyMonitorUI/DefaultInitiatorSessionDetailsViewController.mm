@interface DefaultInitiatorSessionDetailsViewController
- (_TtC15SafetyMonitorUI44DefaultInitiatorSessionDetailsViewController)initWithCoder:(id)coder;
- (_TtC15SafetyMonitorUI44DefaultInitiatorSessionDetailsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation DefaultInitiatorSessionDetailsViewController

- (_TtC15SafetyMonitorUI44DefaultInitiatorSessionDetailsViewController)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI44DefaultInitiatorSessionDetailsViewController_sessionViewModel;
  if (qword_27FF74FC0 != -1)
  {
    swift_once();
  }

  *(&self->super.super.super.isa + v4) = off_27FF75B20;
  v5 = OBJC_IVAR____TtC15SafetyMonitorUI44DefaultInitiatorSessionDetailsViewController_handlerManager;
  type metadata accessor for HandlerManager();
  swift_allocObject();
  HandlerManager.init()();
  *(&self->super.super.super.isa + v5) = v6;
  result = sub_264785D94();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_264682754();
}

- (_TtC15SafetyMonitorUI44DefaultInitiatorSessionDetailsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end