@interface MTAlertController
- (MTAlertController)init;
- (id)alertIdentifier;
- (void)presentAnimated:(BOOL)animated completion:(id)completion;
@end

@implementation MTAlertController

- (MTAlertController)init
{
  v5.receiver = self;
  v5.super_class = MTAlertController;
  v2 = [(MTAlertController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MTAlertController *)v2 setReplacesExistingAlert:1];
    [(MTAlertController *)v3 _setIgnoreAppSupportedOrientations:1];
  }

  return v3;
}

- (void)presentAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  mt_rootViewController = [MEMORY[0x277D75D28] mt_rootViewController];
  mt_topViewController = [mt_rootViewController mt_topViewController];

  if ([(MTAlertController *)self replacesExistingAlert]&& (objc_opt_class(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = mt_topViewController;
    alertIdentifier = [v9 alertIdentifier];
    alertIdentifier2 = [(MTAlertController *)self alertIdentifier];
    v12 = [alertIdentifier isEqualToString:alertIdentifier2];

    if (v12)
    {
      if (completionCopy)
      {
        completionCopy[2](completionCopy);
      }
    }

    else
    {
      presentingViewController = [v9 presentingViewController];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __48__MTAlertController_presentAnimated_completion___block_invoke;
      v15[3] = &unk_2782BEB30;
      v16 = presentingViewController;
      selfCopy = self;
      v19 = animatedCopy;
      v18 = completionCopy;
      v14 = presentingViewController;
      [v14 dismissViewControllerAnimated:animatedCopy completion:v15];
    }
  }

  else
  {
    [mt_topViewController presentViewController:self animated:animatedCopy completion:completionCopy];
  }
}

- (id)alertIdentifier
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB68];
  title = [(MTAlertController *)self title];
  message = [(MTAlertController *)self message];
  v6 = [v3 stringWithFormat:@"%@ %@", title, message];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  actions = [(MTAlertController *)self actions];
  v8 = [actions countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(actions);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        [v6 appendString:@" "];
        title2 = [v12 title];
        [v6 appendString:title2];
      }

      v9 = [actions countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return v6;
}

@end