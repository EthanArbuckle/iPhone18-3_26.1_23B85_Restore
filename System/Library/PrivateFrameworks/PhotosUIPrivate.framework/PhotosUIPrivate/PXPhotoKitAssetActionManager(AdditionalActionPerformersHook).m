@interface PXPhotoKitAssetActionManager(AdditionalActionPerformersHook)
- (uint64_t)px_registerAdditionalPerformerClasses;
@end

@implementation PXPhotoKitAssetActionManager(AdditionalActionPerformersHook)

- (uint64_t)px_registerAdditionalPerformerClasses
{
  v3.receiver = a1;
  v3.super_class = &off_1F2CBD840;
  objc_msgSendSuper2(&v3, sel_px_registerAdditionalPerformerClasses);
  [a1 registerPerformerClass:objc_opt_class() forType:*MEMORY[0x1E69C47C0]];
  [a1 registerPerformerClass:objc_opt_class() forType:*MEMORY[0x1E69C47E0]];
  [a1 registerPerformerClass:objc_opt_class() forType:*MEMORY[0x1E69C47B0]];
  [a1 registerPerformerClass:objc_opt_class() forType:*MEMORY[0x1E69C4670]];
  [a1 registerPerformerClass:objc_opt_class() forType:*MEMORY[0x1E69C4678]];
  [a1 registerPerformerClass:objc_opt_class() forType:*MEMORY[0x1E69C4768]];
  [a1 registerPerformerClass:objc_opt_class() forType:*MEMORY[0x1E69C46B0]];
  [a1 registerPerformerClass:objc_opt_class() forType:*MEMORY[0x1E69C46A8]];
  [a1 registerPerformerClass:objc_opt_class() forType:*MEMORY[0x1E69C46D0]];
  [a1 registerPerformerClass:objc_opt_class() forType:*MEMORY[0x1E69C46C8]];
  [a1 registerPerformerClass:objc_opt_class() forType:*MEMORY[0x1E69C47A8]];
  [a1 registerPerformerClass:objc_opt_class() forType:*MEMORY[0x1E69C46C0]];
  [a1 registerPerformerClass:objc_opt_class() forType:*MEMORY[0x1E69C4698]];
  [a1 registerPerformerClass:objc_opt_class() forType:*MEMORY[0x1E69C4620]];
  [a1 registerPerformerClass:objc_opt_class() forType:*MEMORY[0x1E69C4628]];
  [a1 registerPerformerClass:objc_opt_class() forType:*MEMORY[0x1E69C4638]];
  [a1 registerPerformerClass:objc_opt_class() forType:*MEMORY[0x1E69C4640]];
  [a1 registerPerformerClass:objc_opt_class() forType:*MEMORY[0x1E69C4660]];
  [a1 registerPerformerClass:objc_opt_class() forType:*MEMORY[0x1E69C46F0]];
  return [a1 registerPerformerClass:objc_opt_class() forType:*MEMORY[0x1E69C4738]];
}

@end