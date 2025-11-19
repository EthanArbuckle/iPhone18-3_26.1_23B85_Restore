@interface WOEffortUIController
+ (id)makeHostingControllerWithShouldEmbedInNavStack:(BOOL)a3 startingEffort:(id)a4 workoutActivityType:(id)a5 shouldShowWorkoutGlyph:(BOOL)a6 showCurrentWorkloadButton:(BOOL)a7 animated:(BOOL)a8 cancel:(id)a9 completion:(id)a10;
- (WOEffortUIController)init;
@end

@implementation WOEffortUIController

+ (id)makeHostingControllerWithShouldEmbedInNavStack:(BOOL)a3 startingEffort:(id)a4 workoutActivityType:(id)a5 shouldShowWorkoutGlyph:(BOOL)a6 showCurrentWorkloadButton:(BOOL)a7 animated:(BOOL)a8 cancel:(id)a9 completion:(id)a10
{
  v10 = a8;
  v11 = a7;
  v15 = _Block_copy(a9);
  v16 = _Block_copy(a10);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  v19 = a4;
  v20 = a5;
  v21 = specialized static EffortUIController.makeHostingController(shouldEmbedInNavStack:startingEffort:workoutActivityType:shouldShowWorkoutGlyph:showCurrentWorkloadButton:animated:cancel:completion:)(a3, a4, v11, v10, _sIeyB_Ieg_TRTA_1, v17, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned HKQuantity) -> (), v18);

  return v21;
}

- (WOEffortUIController)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for EffortUIController();
  return [(WOEffortUIController *)&v3 init];
}

@end