@interface CSProminentLayoutController
@end

@implementation CSProminentLayoutController

void __66__CSProminentLayoutController_PRUtilities__sharedLayoutController__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E6999638]);
  v3 = [MEMORY[0x1E69DCEB0] mainScreen];
  v1 = [v0 initWithTraitEnvironment:v3];
  v2 = sharedLayoutController_sharedLayoutController;
  sharedLayoutController_sharedLayoutController = v1;
}

@end