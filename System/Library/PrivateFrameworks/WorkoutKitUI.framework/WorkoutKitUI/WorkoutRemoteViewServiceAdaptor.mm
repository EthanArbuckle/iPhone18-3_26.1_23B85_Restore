@interface WorkoutRemoteViewServiceAdaptor
- (_TtC12WorkoutKitUI31WorkoutRemoteViewServiceAdaptor)init;
- (void)closeButtonTapped;
- (void)dismissRemoteViewControllerOn:(id)on;
- (void)presentRemoteViewControllerOn:(id)on with:(id)with dismissCompletion:(id)completion completion:(id)a6;
@end

@implementation WorkoutRemoteViewServiceAdaptor

- (void)presentRemoteViewControllerOn:(id)on with:(id)with dismissCompletion:(id)completion completion:(id)a6
{
  v10 = _Block_copy(completion);
  v11 = _Block_copy(a6);
  onCopy = on;
  withCopy = with;
  selfCopy = self;
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = swift_allocObject();
  *(v17 + 16) = v10;
  v18 = swift_allocObject();
  *(v18 + 16) = v11;
  WorkoutRemoteViewServiceAdaptor.presentRemoteViewController(on:with:dismissCompletion:completion:)(onCopy, v14, v16, partial apply for thunk for @escaping @callee_unowned @convention(block) () -> (), v17, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> (), v18);

  outlined consume of Data._Representation(v14, v16);
}

- (void)dismissRemoteViewControllerOn:(id)on
{
  onCopy = on;
  selfCopy = self;
  WorkoutRemoteViewServiceAdaptor.dismissRemoteViewController(on:)(onCopy);
}

- (void)closeButtonTapped
{
  selfCopy = self;
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