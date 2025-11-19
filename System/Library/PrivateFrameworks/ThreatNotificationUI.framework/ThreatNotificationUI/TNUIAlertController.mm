@interface TNUIAlertController
- (_TtC20ThreatNotificationUI19TNUIAlertController)initWithCoder:(id)a3;
- (_TtC20ThreatNotificationUI19TNUIAlertController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation TNUIAlertController

- (_TtC20ThreatNotificationUI19TNUIAlertController)initWithNibName:(id)a3 bundle:(id)a4
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC20ThreatNotificationUI19TNUIAlertController_buttons) = MEMORY[0x277D84F90];
    v10 = a4;
    a3 = MEMORY[0x223D615B0](v7, v9);
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC20ThreatNotificationUI19TNUIAlertController_buttons) = MEMORY[0x277D84F90];
    v11 = a4;
  }

  v14.receiver = self;
  v14.super_class = type metadata accessor for TNUIAlertController();
  v12 = [(TNUIAlertController *)&v14 initWithNibName:a3 bundle:a4];

  return v12;
}

- (_TtC20ThreatNotificationUI19TNUIAlertController)initWithCoder:(id)a3
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
  v5 = a3;
  v6 = [(TNUIAlertController *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end