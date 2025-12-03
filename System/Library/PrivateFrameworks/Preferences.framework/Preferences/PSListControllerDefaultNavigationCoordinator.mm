@interface PSListControllerDefaultNavigationCoordinator
- (BOOL)listControllerIsOnTopOfNavigationStack:(id)stack searchTopMostViewControllerChildren:(BOOL)children;
- (BOOL)listControllerShouldDeselectAfterFormSheetDisappearance:(id)disappearance givenRootController:(id)controller;
- (BOOL)listControllerShouldNotDeselectAfterAppearing:(id)appearing;
- (void)listController:(id)controller pushViewController:(id)viewController givenRootController:(id)rootController withModalStylePopupStateApplicator:(id)applicator animated:(BOOL)animated;
@end

@implementation PSListControllerDefaultNavigationCoordinator

- (BOOL)listControllerIsOnTopOfNavigationStack:(id)stack searchTopMostViewControllerChildren:(BOOL)children
{
  childrenCopy = children;
  stackCopy = stack;
  navigationController = [stackCopy navigationController];
  topViewController = [navigationController topViewController];

  v8 = topViewController == stackCopy;
  if (topViewController != stackCopy && childrenCopy)
  {
    navigationController2 = [stackCopy navigationController];
    topViewController2 = [navigationController2 topViewController];
    childViewControllers = [topViewController2 childViewControllers];
    v8 = [childViewControllers containsObject:stackCopy];
  }

  return v8;
}

- (BOOL)listControllerShouldNotDeselectAfterAppearing:(id)appearing
{
  appearingCopy = appearing;
  navigationController = [appearingCopy navigationController];
  splitViewController = [appearingCopy splitViewController];
  viewControllers = [splitViewController viewControllers];
  firstObject = [viewControllers firstObject];
  v8 = navigationController == firstObject;

  splitViewController2 = [appearingCopy splitViewController];

  LOBYTE(appearingCopy) = [splitViewController2 isCollapsed];
  return v8 & ~appearingCopy;
}

- (BOOL)listControllerShouldDeselectAfterFormSheetDisappearance:(id)disappearance givenRootController:(id)controller
{
  controllerCopy = controller;
  navigationController = [disappearance navigationController];

  return navigationController == controllerCopy;
}

- (void)listController:(id)controller pushViewController:(id)viewController givenRootController:(id)rootController withModalStylePopupStateApplicator:(id)applicator animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  rootControllerCopy = rootController;
  applicatorCopy = applicator;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    presentedViewController = [rootControllerCopy presentedViewController];

    if (presentedViewController)
    {
      [rootControllerCopy dismissViewControllerAnimated:0 completion:0];
    }

    navigationController = viewControllerCopy;
    [navigationController setupController];
    if ([navigationController usePopupStyle])
    {
      applicatorCopy[2](applicatorCopy, [navigationController popupStyleIsModal]);
      [navigationController setModalPresentationStyle:7];
      popoverPresentationController = [navigationController popoverPresentationController];
      [popoverPresentationController setDelegate:controllerCopy];
      [popoverPresentationController setPermittedArrowDirections:0];
      [popoverPresentationController setSourceView:0];
      [popoverPresentationController _setCentersPopoverIfSourceViewNotSet:1];
      [controllerCopy presentViewController:navigationController animated:1 completion:0];
      table = [controllerCopy table];
      indexPathForSelectedRow = [table indexPathForSelectedRow];
      [table deselectRowAtIndexPath:indexPathForSelectedRow animated:1];
    }

    else
    {
      splitViewController = [controllerCopy splitViewController];
      isCollapsed = [splitViewController isCollapsed];

      if ((isCollapsed & 1) == 0)
      {
        table2 = [controllerCopy table];
        indexPathForSelectedRow2 = [table2 indexPathForSelectedRow];
        [table2 deselectRowAtIndexPath:indexPathForSelectedRow2 animated:1];
      }

      if (PSIsRunningInAssistant())
      {
        view = [navigationController view];
        [view layoutIfNeeded];
      }

      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      sf_isiPhone = [currentDevice sf_isiPhone];

      if (sf_isiPhone)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          viewControllers = [navigationController viewControllers];
          firstObject = [viewControllers firstObject];

          if (objc_opt_respondsToSelector())
          {
            [firstObject setEdgeToEdgeCells:1];
          }
        }
      }

      [controllerCopy presentViewController:navigationController animated:animatedCopy completion:0];
    }
  }

  else
  {
    if (animatedCopy)
    {
      [controllerCopy showViewController:viewControllerCopy sender:controllerCopy];
      goto LABEL_20;
    }

    navigationController = [controllerCopy navigationController];
    [navigationController pushViewController:viewControllerCopy animated:0];
  }

LABEL_20:
}

@end