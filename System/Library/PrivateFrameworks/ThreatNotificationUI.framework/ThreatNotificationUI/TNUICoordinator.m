@interface TNUICoordinator
- (void)dismissButtonTapped:(id)a3;
@end

@implementation TNUICoordinator

- (void)dismissButtonTapped:(id)a3
{
  v4 = type metadata accessor for TNCLogger.Category();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v5 + 104))(v8, *MEMORY[0x277D714A0], v4);
  swift_unknownObjectRetain();

  static TNCLogger.logFunctionCall(category:functionName:)();
  (*(v5 + 8))(v8, v4);
  v10 = 4;
  TNUICoordinator.handle(action:from:)(&v10, a3);

  swift_unknownObjectRelease();
}

@end