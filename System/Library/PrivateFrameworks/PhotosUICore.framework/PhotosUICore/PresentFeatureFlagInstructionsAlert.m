@interface PresentFeatureFlagInstructionsAlert
@end

@implementation PresentFeatureFlagInstructionsAlert

uint64_t ___PresentFeatureFlagInstructionsAlert_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x1E69DC650];
  v4 = a3;
  v5 = [v3 alertControllerWithTitle:@"Enable the Shared Collections feature flag" message:@"Use the Livability app to enable Shared Collections in Photos preferredStyle:{or in Terminal:\n\nffctl SharedCollections=on --domain=Photos\n\nThen reboot.", 1}];
  v6 = [MEMORY[0x1E69DC648] actionWithTitle:@"OK" style:0 handler:&__block_literal_global_68];
  [v5 addAction:v6];

  v7 = [v4 navigationController];

  [v7 presentViewController:v5 animated:1 completion:0];
  return 1;
}

@end