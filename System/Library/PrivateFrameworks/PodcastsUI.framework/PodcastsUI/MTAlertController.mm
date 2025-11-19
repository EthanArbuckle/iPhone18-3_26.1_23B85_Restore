@interface MTAlertController
- (MTAlertController)init;
- (id)alertIdentifier;
- (void)presentAnimated:(BOOL)a3 completion:(id)a4;
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

- (void)presentAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277D75D28] mt_rootViewController];
  v8 = [v7 mt_topViewController];

  if ([(MTAlertController *)self replacesExistingAlert]&& (objc_opt_class(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = v8;
    v10 = [v9 alertIdentifier];
    v11 = [(MTAlertController *)self alertIdentifier];
    v12 = [v10 isEqualToString:v11];

    if (v12)
    {
      if (v6)
      {
        v6[2](v6);
      }
    }

    else
    {
      v13 = [v9 presentingViewController];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __48__MTAlertController_presentAnimated_completion___block_invoke;
      v15[3] = &unk_2782BEB30;
      v16 = v13;
      v17 = self;
      v19 = v4;
      v18 = v6;
      v14 = v13;
      [v14 dismissViewControllerAnimated:v4 completion:v15];
    }
  }

  else
  {
    [v8 presentViewController:self animated:v4 completion:v6];
  }
}

- (id)alertIdentifier
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB68];
  v4 = [(MTAlertController *)self title];
  v5 = [(MTAlertController *)self message];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(MTAlertController *)self actions];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        [v6 appendString:@" "];
        v13 = [v12 title];
        [v6 appendString:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return v6;
}

@end