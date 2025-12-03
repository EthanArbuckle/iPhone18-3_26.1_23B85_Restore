@interface RUISetupAssitantLayout
+ (CGSize)_preferredContentSizeInBuddy;
- (BOOL)_isViewControllerInBuddyiPad:(id)pad;
- (BOOL)_isViewControllerInFormSheet:(id)sheet;
- (CGSize)preferredContentSizeForViewController:(id)controller;
- (NSDirectionalEdgeInsets)_insetsForViewController:(id)controller;
@end

@implementation RUISetupAssitantLayout

- (NSDirectionalEdgeInsets)_insetsForViewController:(id)controller
{
  controllerCopy = controller;
  view = [controllerCopy view];
  [view directionalLayoutMargins];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom])
  {
  }

  else
  {
    traitCollection = [controllerCopy traitCollection];
    horizontalSizeClass = [traitCollection horizontalSizeClass];

    if (horizontalSizeClass == 2)
    {
      v11 = 5.0;
      goto LABEL_7;
    }
  }

  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice2 userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    v11 = 5.0;
    if (![(RUISetupAssitantLayout *)self _isViewControllerInFormSheet:controllerCopy])
    {
      view2 = [controllerCopy view];
      [view2 bounds];
      v13 = (v20 + -624.0) * 0.5;

      *&v7 = 0.0;
      goto LABEL_9;
    }

LABEL_7:
    *&v7 = 56.0;
    v13 = 88.0;
LABEL_9:
    v9 = v13;
  }

  v21 = *&v7;
  v22 = v9;
  v23 = v11;
  v24 = v13;
  result.trailing = v24;
  result.bottom = v23;
  result.leading = v22;
  result.top = v21;
  return result;
}

- (BOOL)_isViewControllerInFormSheet:(id)sheet
{
  sheetCopy = sheet;
  navigationController = [sheetCopy navigationController];

  if (navigationController)
  {
    navigationController2 = [sheetCopy navigationController];

    sheetCopy = navigationController2;
  }

  modalPresentationStyle = [sheetCopy modalPresentationStyle];

  return modalPresentationStyle == 2;
}

- (BOOL)_isViewControllerInBuddyiPad:(id)pad
{
  if (![pad conformsToProtocol:&unk_282DBDD28])
  {
    return 0;
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v4 = [currentDevice userInterfaceIdiom] == 1;

  return v4;
}

+ (CGSize)_preferredContentSizeInBuddy
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v6 = v5;

    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen2 bounds];
    v9 = v8;

    if (v6 >= v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = v6;
    }

    v11 = fmin(v10 + -88.0, 820.0);
    v12 = 624.0;
  }

  else
  {
    v12 = *MEMORY[0x277CBF3A8];
    v11 = *(MEMORY[0x277CBF3A8] + 8);
  }

  result.height = v11;
  result.width = v12;
  return result;
}

- (CGSize)preferredContentSizeForViewController:(id)controller
{
  controllerCopy = controller;
  [objc_opt_class() _preferredContentSizeInBuddy];
  v5 = v4;
  v7 = v6;
  navigationController = [controllerCopy navigationController];

  if (navigationController)
  {
    navigationController2 = [controllerCopy navigationController];
    navigationBar = [navigationController2 navigationBar];
    [navigationBar frame];
    v7 = v7 - CGRectGetHeight(v14);
  }

  v11 = v5;
  v12 = v7;
  result.height = v12;
  result.width = v11;
  return result;
}

@end