@interface UIPresentationController(FocusedSheet)
+ (SMUFocusedSheetPresentationController)sheetPresentationControllerForPresentedController:()FocusedSheet presentingController:;
@end

@implementation UIPresentationController(FocusedSheet)

+ (SMUFocusedSheetPresentationController)sheetPresentationControllerForPresentedController:()FocusedSheet presentingController:
{
  v5 = a4;
  v6 = a3;
  v7 = [[SMUFocusedSheetPresentationController alloc] initWithPresentedViewController:v6 presentingViewController:v5];

  return v7;
}

@end