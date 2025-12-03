@interface TNUIAlertController
- (_TtC20ThreatNotificationUI19TNUIAlertController)initWithCoder:(id)coder;
- (_TtC20ThreatNotificationUI19TNUIAlertController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation TNUIAlertController

- (_TtC20ThreatNotificationUI19TNUIAlertController)initWithNibName:(id)name bundle:(id)bundle
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (name)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC20ThreatNotificationUI19TNUIAlertController_buttons) = MEMORY[0x277D84F90];
    bundleCopy = bundle;
    name = MEMORY[0x223D615B0](v7, v9);
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC20ThreatNotificationUI19TNUIAlertController_buttons) = MEMORY[0x277D84F90];
    bundleCopy2 = bundle;
  }

  v14.receiver = self;
  v14.super_class = type metadata accessor for TNUIAlertController();
  v12 = [(TNUIAlertController *)&v14 initWithNibName:name bundle:bundle];

  return v12;
}

- (_TtC20ThreatNotificationUI19TNUIAlertController)initWithCoder:(id)coder
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC20ThreatNotificationUI19TNUIAlertController_buttons) = MEMORY[0x277D84F90];
  v8.receiver = self;
  v8.super_class = type metadata accessor for TNUIAlertController();
  coderCopy = coder;
  v6 = [(TNUIAlertController *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end