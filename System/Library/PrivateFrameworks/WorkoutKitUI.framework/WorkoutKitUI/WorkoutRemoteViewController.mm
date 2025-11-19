@interface WorkoutRemoteViewController
- (_TtC12WorkoutKitUI27WorkoutRemoteViewController)initWithCoder:(id)a3;
- (_TtC12WorkoutKitUI27WorkoutRemoteViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dismiss;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation WorkoutRemoteViewController

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v4 = self;
  if (a3)
  {
    v5 = a3;
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7.receiver = v4;
  v7.super_class = type metadata accessor for WorkoutRemoteViewController();
  [(_UIRemoteViewController *)&v7 viewServiceDidTerminateWithError:v6];

  [(WorkoutRemoteViewController *)v4 dismiss];
}

- (_TtC12WorkoutKitUI27WorkoutRemoteViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    v9 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC12WorkoutKitUI27WorkoutRemoteViewController_dismissHandler);
    *v9 = 0;
    v9[1] = 0;
    v10 = a4;
    v11 = MEMORY[0x277C67900](v6, v8);
  }

  else
  {
    v12 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC12WorkoutKitUI27WorkoutRemoteViewController_dismissHandler);
    *v12 = 0;
    v12[1] = 0;
    v13 = a4;
    v11 = 0;
  }

  v16.receiver = self;
  v16.super_class = type metadata accessor for WorkoutRemoteViewController();
  v14 = [(WorkoutRemoteViewController *)&v16 initWithNibName:v11 bundle:a4];

  return v14;
}

- (_TtC12WorkoutKitUI27WorkoutRemoteViewController)initWithCoder:(id)a3
{
  v4 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC12WorkoutKitUI27WorkoutRemoteViewController_dismissHandler);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for WorkoutRemoteViewController();
  v5 = a3;
  v6 = [(WorkoutRemoteViewController *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

- (void)dismiss
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12WorkoutKitUI27WorkoutRemoteViewController_dismissHandler);
  if (v2)
  {
    v3 = *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC12WorkoutKitUI27WorkoutRemoteViewController_dismissHandler);
    v4 = self;
    v5 = outlined copy of (@escaping @callee_guaranteed () -> ())?(v2);
    v2(v5);

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v2);
  }
}

@end