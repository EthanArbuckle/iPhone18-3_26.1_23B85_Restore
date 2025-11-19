@interface PSListControllerDefaultNavigationCoordinator
- (BOOL)listControllerIsOnTopOfNavigationStack:(id)a3 searchTopMostViewControllerChildren:(BOOL)a4;
- (BOOL)listControllerShouldDeselectAfterFormSheetDisappearance:(id)a3 givenRootController:(id)a4;
- (BOOL)listControllerShouldNotDeselectAfterAppearing:(id)a3;
- (void)listController:(id)a3 pushViewController:(id)a4 givenRootController:(id)a5 withModalStylePopupStateApplicator:(id)a6 animated:(BOOL)a7;
@end

@implementation PSListControllerDefaultNavigationCoordinator

- (BOOL)listControllerIsOnTopOfNavigationStack:(id)a3 searchTopMostViewControllerChildren:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [v5 navigationController];
  v7 = [v6 topViewController];

  v8 = v7 == v5;
  if (v7 != v5 && v4)
  {
    v9 = [v5 navigationController];
    v10 = [v9 topViewController];
    v11 = [v10 childViewControllers];
    v8 = [v11 containsObject:v5];
  }

  return v8;
}

- (BOOL)listControllerShouldNotDeselectAfterAppearing:(id)a3
{
  v3 = a3;
  v4 = [v3 navigationController];
  v5 = [v3 splitViewController];
  v6 = [v5 viewControllers];
  v7 = [v6 firstObject];
  v8 = v4 == v7;

  v9 = [v3 splitViewController];

  LOBYTE(v3) = [v9 isCollapsed];
  return v8 & ~v3;
}

- (BOOL)listControllerShouldDeselectAfterFormSheetDisappearance:(id)a3 givenRootController:(id)a4
{
  v5 = a4;
  v6 = [a3 navigationController];

  return v6 == v5;
}

- (void)listController:(id)a3 pushViewController:(id)a4 givenRootController:(id)a5 withModalStylePopupStateApplicator:(id)a6 animated:(BOOL)a7
{
  v7 = a7;
  v28 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [v12 presentedViewController];

    if (v14)
    {
      [v12 dismissViewControllerAnimated:0 completion:0];
    }

    v15 = v11;
    [v15 setupController];
    if ([v15 usePopupStyle])
    {
      v13[2](v13, [v15 popupStyleIsModal]);
      [v15 setModalPresentationStyle:7];
      v16 = [v15 popoverPresentationController];
      [v16 setDelegate:v28];
      [v16 setPermittedArrowDirections:0];
      [v16 setSourceView:0];
      [v16 _setCentersPopoverIfSourceViewNotSet:1];
      [v28 presentViewController:v15 animated:1 completion:0];
      v17 = [v28 table];
      v18 = [v17 indexPathForSelectedRow];
      [v17 deselectRowAtIndexPath:v18 animated:1];
    }

    else
    {
      v19 = [v28 splitViewController];
      v20 = [v19 isCollapsed];

      if ((v20 & 1) == 0)
      {
        v21 = [v28 table];
        v22 = [v21 indexPathForSelectedRow];
        [v21 deselectRowAtIndexPath:v22 animated:1];
      }

      if (PSIsRunningInAssistant())
      {
        v23 = [v15 view];
        [v23 layoutIfNeeded];
      }

      v24 = [MEMORY[0x1E69DC938] currentDevice];
      v25 = [v24 sf_isiPhone];

      if (v25)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = [v15 viewControllers];
          v27 = [v26 firstObject];

          if (objc_opt_respondsToSelector())
          {
            [v27 setEdgeToEdgeCells:1];
          }
        }
      }

      [v28 presentViewController:v15 animated:v7 completion:0];
    }
  }

  else
  {
    if (v7)
    {
      [v28 showViewController:v11 sender:v28];
      goto LABEL_20;
    }

    v15 = [v28 navigationController];
    [v15 pushViewController:v11 animated:0];
  }

LABEL_20:
}

@end