@interface PXPhotoKitAssetActionManager(AdditionalActionPerformersHook)
- (uint64_t)px_registerAdditionalPerformerClasses;
@end

@implementation PXPhotoKitAssetActionManager(AdditionalActionPerformersHook)

- (uint64_t)px_registerAdditionalPerformerClasses
{
  v3.receiver = self;
  v3.super_class = &off_1F2CBD840;
  objc_msgSendSuper2(&v3, sel_px_registerAdditionalPerformerClasses);
  [self registerPerformerClass:objc_opt_class() forType:*MEMORY[0x1E69C47C0]];
  [self registerPerformerClass:objc_opt_class() forType:*MEMORY[0x1E69C47E0]];
  [self registerPerformerClass:objc_opt_class() forType:*MEMORY[0x1E69C47B0]];
  [self registerPerformerClass:objc_opt_class() forType:*MEMORY[0x1E69C4670]];
  [self registerPerformerClass:objc_opt_class() forType:*MEMORY[0x1E69C4678]];
  [self registerPerformerClass:objc_opt_class() forType:*MEMORY[0x1E69C4768]];
  [self registerPerformerClass:objc_opt_class() forType:*MEMORY[0x1E69C46B0]];
  [self registerPerformerClass:objc_opt_class() forType:*MEMORY[0x1E69C46A8]];
  [self registerPerformerClass:objc_opt_class() forType:*MEMORY[0x1E69C46D0]];
  [self registerPerformerClass:objc_opt_class() forType:*MEMORY[0x1E69C46C8]];
  [self registerPerformerClass:objc_opt_class() forType:*MEMORY[0x1E69C47A8]];
  [self registerPerformerClass:objc_opt_class() forType:*MEMORY[0x1E69C46C0]];
  [self registerPerformerClass:objc_opt_class() forType:*MEMORY[0x1E69C4698]];
  [self registerPerformerClass:objc_opt_class() forType:*MEMORY[0x1E69C4620]];
  [self registerPerformerClass:objc_opt_class() forType:*MEMORY[0x1E69C4628]];
  [self registerPerformerClass:objc_opt_class() forType:*MEMORY[0x1E69C4638]];
  [self registerPerformerClass:objc_opt_class() forType:*MEMORY[0x1E69C4640]];
  [self registerPerformerClass:objc_opt_class() forType:*MEMORY[0x1E69C4660]];
  [self registerPerformerClass:objc_opt_class() forType:*MEMORY[0x1E69C46F0]];
  return [self registerPerformerClass:objc_opt_class() forType:*MEMORY[0x1E69C4738]];
}

@end