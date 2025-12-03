@interface UIKeyboardCandidateSceneHostingController
- (BOOL)isExpanded;
- (UIKeyboardCandidateSceneHostingController)init;
- (UIKeyboardCandidateSceneHostingController)initWithDelegate:(id)delegate;
- (void)setHostIsTextVertical:(BOOL)vertical;
- (void)setupSceneHosting;
@end

@implementation UIKeyboardCandidateSceneHostingController

- (UIKeyboardCandidateSceneHostingController)initWithDelegate:(id)delegate
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
  selfCopy = self;
  UIKeyboardCandidateSceneHostingController.setupSceneHosting()();
}

- (BOOL)isExpanded
{
  selfCopy = self;
  v3 = UIKeyboardCandidateSceneHostingController.isExpanded()();

  return v3;
}

- (void)setHostIsTextVertical:(BOOL)vertical
{
  selfCopy = self;
  UIKeyboardCandidateSceneHostingController.setHostIsTextVertical(_:)(vertical);
}

- (UIKeyboardCandidateSceneHostingController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end