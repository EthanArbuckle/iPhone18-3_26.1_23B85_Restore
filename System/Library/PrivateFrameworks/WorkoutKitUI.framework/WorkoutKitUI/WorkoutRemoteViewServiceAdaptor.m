@interface WorkoutRemoteViewServiceAdaptor
- (_TtC12WorkoutKitUI31WorkoutRemoteViewServiceAdaptor)init;
- (void)closeButtonTapped;
- (void)dismissRemoteViewControllerOn:(id)a3;
- (void)presentRemoteViewControllerOn:(id)a3 with:(id)a4 dismissCompletion:(id)a5 completion:(id)a6;
@end

@implementation WorkoutRemoteViewServiceAdaptor

- (void)presentRemoteViewControllerOn:(id)a3 with:(id)a4 dismissCompletion:(id)a5 completion:(id)a6
{
  v10 = _Block_copy(a5);
  v11 = _Block_copy(a6);
  v12 = a3;
  v13 = a4;
  v19 = self;
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = swift_allocObject();
  *(v17 + 16) = v10;
  v18 = swift_allocObject();
  *(v18 + 16) = v11;
  WorkoutRemoteViewServiceAdaptor.presentRemoteViewController(on:with:dismissCompletion:completion:)(v12, v14, v16, partial apply for thunk for @escaping @callee_unowned @convention(block) () -> (), v17, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> (), v18);

  outlined consume of Data._Representation(v14, v16);
}

- (void)dismissRemoteViewControllerOn:(id)a3
{
  v4 = a3;
  v5 = self;
  WorkoutRemoteViewServiceAdaptor.dismissRemoteViewController(on:)(v4);
}

- (void)closeButtonTapped
{
  v2 = self;
  WorkoutRemoteViewServiceAdaptor.closeButtonTapped()();
}

- (_TtC12WorkoutKitUI31WorkoutRemoteViewServiceAdaptor)init
{
  swift_unknownObjectWeakInit();
  v3 = (&self->super.isa + OBJC_IVAR____TtC12WorkoutKitUI31WorkoutRemoteViewServiceAdaptor_dismissCompletion);
  v4 = type metadata accessor for WorkoutRemoteViewServiceAdaptor();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(WorkoutRemoteViewServiceAdaptor *)&v6 init];
}

@end