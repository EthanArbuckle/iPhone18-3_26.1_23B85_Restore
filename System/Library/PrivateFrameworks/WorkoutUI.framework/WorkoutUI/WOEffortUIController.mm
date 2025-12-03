@interface WOEffortUIController
+ (id)makeHostingControllerWithShouldEmbedInNavStack:(BOOL)stack startingEffort:(id)effort workoutActivityType:(id)type shouldShowWorkoutGlyph:(BOOL)glyph showCurrentWorkloadButton:(BOOL)button animated:(BOOL)animated cancel:(id)cancel completion:(id)self0;
- (WOEffortUIController)init;
@end

@implementation WOEffortUIController

+ (id)makeHostingControllerWithShouldEmbedInNavStack:(BOOL)stack startingEffort:(id)effort workoutActivityType:(id)type shouldShowWorkoutGlyph:(BOOL)glyph showCurrentWorkloadButton:(BOOL)button animated:(BOOL)animated cancel:(id)cancel completion:(id)self0
{
  animatedCopy = animated;
  buttonCopy = button;
  v15 = _Block_copy(cancel);
  v16 = _Block_copy(completion);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  effortCopy = effort;
  typeCopy = type;
  v21 = specialized static EffortUIController.makeHostingController(shouldEmbedInNavStack:startingEffort:workoutActivityType:shouldShowWorkoutGlyph:showCurrentWorkloadButton:animated:cancel:completion:)(stack, effort, buttonCopy, animatedCopy, _sIeyB_Ieg_TRTA_1, v17, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned HKQuantity) -> (), v18);

  return v21;
}

- (WOEffortUIController)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for EffortUIController();
  return [(WOEffortUIController *)&v3 init];
}

@end