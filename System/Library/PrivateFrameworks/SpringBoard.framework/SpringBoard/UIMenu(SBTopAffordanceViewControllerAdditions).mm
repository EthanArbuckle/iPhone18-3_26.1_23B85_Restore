@interface UIMenu(SBTopAffordanceViewControllerAdditions)
+ (uint64_t)_supportsSurfacingSelectionState;
- (uint64_t)_sb_setSurfacesSelectionState:()SBTopAffordanceViewControllerAdditions;
@end

@implementation UIMenu(SBTopAffordanceViewControllerAdditions)

- (uint64_t)_sb_setSurfacesSelectionState:()SBTopAffordanceViewControllerAdditions
{
  result = [objc_opt_class() _supportsSurfacingSelectionState];
  if (result)
  {

    return [a1 _setSurfacesSelectionState:a3];
  }

  return result;
}

+ (uint64_t)_supportsSurfacingSelectionState
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__UIMenu_SBTopAffordanceViewControllerAdditions___supportsSurfacingSelectionState__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_supportsSurfacingSelectionState_once != -1)
  {
    dispatch_once(&_supportsSurfacingSelectionState_once, block);
  }

  return _supportsSurfacingSelectionState_supportsSurfacingSelectionState;
}

@end