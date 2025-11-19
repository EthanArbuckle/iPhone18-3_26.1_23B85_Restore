@interface RUISetupAssitantLayout
+ (CGSize)_preferredContentSizeInBuddy;
- (BOOL)_isViewControllerInBuddyiPad:(id)a3;
- (BOOL)_isViewControllerInFormSheet:(id)a3;
- (CGSize)preferredContentSizeForViewController:(id)a3;
- (NSDirectionalEdgeInsets)_insetsForViewController:(id)a3;
@end

@implementation RUISetupAssitantLayout

- (NSDirectionalEdgeInsets)_insetsForViewController:(id)a3
{
  v4 = a3;
  v5 = [v4 view];
  [v5 directionalLayoutMargins];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [MEMORY[0x277D75418] currentDevice];
  if ([v14 userInterfaceIdiom])
  {
  }

  else
  {
    v15 = [v4 traitCollection];
    v16 = [v15 horizontalSizeClass];

    if (v16 == 2)
    {
      v11 = 5.0;
      goto LABEL_7;
    }
  }

  v17 = [MEMORY[0x277D75418] currentDevice];
  v18 = [v17 userInterfaceIdiom];

  if (v18 == 1)
  {
    v11 = 5.0;
    if (![(RUISetupAssitantLayout *)self _isViewControllerInFormSheet:v4])
    {
      v19 = [v4 view];
      [v19 bounds];
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

- (BOOL)_isViewControllerInFormSheet:(id)a3
{
  v3 = a3;
  v4 = [v3 navigationController];

  if (v4)
  {
    v5 = [v3 navigationController];

    v3 = v5;
  }

  v6 = [v3 modalPresentationStyle];

  return v6 == 2;
}

- (BOOL)_isViewControllerInBuddyiPad:(id)a3
{
  if (![a3 conformsToProtocol:&unk_282DBDD28])
  {
    return 0;
  }

  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom] == 1;

  return v4;
}

+ (CGSize)_preferredContentSizeInBuddy
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    v4 = [MEMORY[0x277D759A0] mainScreen];
    [v4 bounds];
    v6 = v5;

    v7 = [MEMORY[0x277D759A0] mainScreen];
    [v7 bounds];
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

- (CGSize)preferredContentSizeForViewController:(id)a3
{
  v3 = a3;
  [objc_opt_class() _preferredContentSizeInBuddy];
  v5 = v4;
  v7 = v6;
  v8 = [v3 navigationController];

  if (v8)
  {
    v9 = [v3 navigationController];
    v10 = [v9 navigationBar];
    [v10 frame];
    v7 = v7 - CGRectGetHeight(v14);
  }

  v11 = v5;
  v12 = v7;
  result.height = v12;
  result.width = v11;
  return result;
}

@end