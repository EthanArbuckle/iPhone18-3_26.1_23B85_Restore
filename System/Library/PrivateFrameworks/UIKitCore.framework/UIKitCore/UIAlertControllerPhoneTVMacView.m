@interface UIAlertControllerPhoneTVMacView
@end

@implementation UIAlertControllerPhoneTVMacView

void __46___UIAlertControllerPhoneTVMacView_initialize__block_invoke(void *a1)
{
  v1 = a1;
  [v1 setPresentationContextPrefersCancelActionShown:0];
  [v1 setPresentedAsPopover:1];
  [v1 setHasDimmingView:0];
  [v1 setShouldHaveBackdropView:0];
  [v1 setAlignsToKeyboard:0];
}

void __46___UIAlertControllerPhoneTVMacView_initialize__block_invoke_2(void *a1)
{
  v1 = a1;
  [v1 setPresentationContextPrefersCancelActionShown:1];
  [v1 setShouldHaveBackdropView:1];
  [v1 setPresentedAsPopover:0];
}

void __67___UIAlertControllerPhoneTVMacView__prepareContentViewTopItemsView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateTextAlignmentAfterLayout];
}

uint64_t __83___UIAlertControllerPhoneTVMacView_interfaceAction_invokeActionHandler_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __96___UIAlertControllerPhoneTVMacView__unlocalizedOrderedPresentableAlertActionViewRepresentations__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 40) + 648) objectAtIndex:{objc_msgSend(*(a1 + 32), "indexOfObject:", a2)}];
  [*(a1 + 48) addObject:v3];
}

uint64_t __86___UIAlertControllerPhoneTVMacView__shouldAllowPassthroughToLayersBehindUsForTouches___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  [a2 locationInView:*(a1 + 32)];
  result = [*(a1 + 32) pointInside:0 withEvent:?];
  *a3 = result;
  return result;
}

void __62___UIAlertControllerPhoneTVMacView__updateConstraintConstants__block_invoke(uint64_t a1, void *a2, double a3)
{
  if (*(*(*(a1 + 40) + 8) + 24) == 0.0)
  {
    v6 = [a2 font];
    [v6 capHeight];
    UIRoundToViewScale(*(a1 + 32));
    *(*(*(a1 + 40) + 8) + 24) = a3 - v5;
  }
}

uint64_t __71___UIAlertControllerPhoneTVMacView__sizeOfContentViewControllerChanged__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) contentViewControllerContainerViewWidthConstraint];
  [v2 setConstant:*(a1 + 40)];

  v3 = [*(a1 + 32) contentViewControllerContainerViewHeightConstraint];
  [v3 setConstant:*(a1 + 48)];

  v4 = *(a1 + 32);

  return [v4 _actionLayoutDirectionChanged];
}

void __104___UIAlertControllerPhoneTVMacView__disableAllowGroupOpacitiyIfNecessaryAlongsideTransitionCoordinator___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = *(a1 + 41);
    v3 = [*(a1 + 32) layer];
    [v3 setAllowsGroupOpacity:v2];
  }
}

@end