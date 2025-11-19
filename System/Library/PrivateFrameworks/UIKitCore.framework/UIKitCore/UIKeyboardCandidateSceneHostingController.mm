@interface UIKeyboardCandidateSceneHostingController
- (BOOL)isExpanded;
- (UIKeyboardCandidateSceneHostingController)init;
- (UIKeyboardCandidateSceneHostingController)initWithDelegate:(id)a3;
- (void)setHostIsTextVertical:(BOOL)a3;
- (void)setupSceneHosting;
@end

@implementation UIKeyboardCandidateSceneHostingController

- (UIKeyboardCandidateSceneHostingController)initWithDelegate:(id)a3
{
  *(&self->super.isa + OBJC_IVAR___UIKeyboardCandidateSceneHostingController_sceneHostingController) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.isa + OBJC_IVAR___UIKeyboardCandidateSceneHostingController_sceneConfigurationObservables) = MEMORY[0x1E69E7CC0];
  v6.receiver = self;
  v6.super_class = UIKeyboardCandidateSceneHostingController;
  swift_unknownObjectRetain();
  v4 = [(UIKeyboardCandidateSceneHostingController *)&v6 init];
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v4;
}

- (void)setupSceneHosting
{
  v2 = self;
  UIKeyboardCandidateSceneHostingController.setupSceneHosting()();
}

- (BOOL)isExpanded
{
  v2 = self;
  v3 = UIKeyboardCandidateSceneHostingController.isExpanded()();

  return v3;
}

- (void)setHostIsTextVertical:(BOOL)a3
{
  v4 = self;
  UIKeyboardCandidateSceneHostingController.setHostIsTextVertical(_:)(a3);
}

- (UIKeyboardCandidateSceneHostingController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end