@interface UIKeyboardCandidateSceneHostingController.UIKeyboardCandidateSceneSpecification
- (_TtCE5UIKitCSo41UIKeyboardCandidateSceneHostingController37UIKeyboardCandidateSceneSpecification)init;
- (id)userActivity;
@end

@implementation UIKeyboardCandidateSceneHostingController.UIKeyboardCandidateSceneSpecification

- (id)userActivity
{
  v2 = objc_allocWithZone(MEMORY[0x1E696B090]);
  v3 = sub_18A4A7258();
  initWithActivityType_ = [v2 initWithActivityType_];

  return initWithActivityType_;
}

- (_TtCE5UIKitCSo41UIKeyboardCandidateSceneHostingController37UIKeyboardCandidateSceneSpecification)init
{
  v3.receiver = self;
  v3.super_class = _s37UIKeyboardCandidateSceneSpecificationCMa();
  return [(UIKeyboardCandidateSceneHostingController.UIKeyboardCandidateSceneSpecification *)&v3 init];
}

@end