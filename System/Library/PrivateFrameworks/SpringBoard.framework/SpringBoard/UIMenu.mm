@interface UIMenu
@end

@implementation UIMenu

Class __82__UIMenu_SBTopAffordanceViewControllerAdditions___supportsSurfacingSelectionState__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) instancesRespondToSelector:sel__setSurfacesSelectionState_];
  result = NSClassFromString(&cfstr_Xctestcase.isa);
  if (result)
  {
    v3 = 0;
  }

  else
  {
    v3 = v1;
  }

  _supportsSurfacingSelectionState_supportsSurfacingSelectionState = v3;
  return result;
}

@end