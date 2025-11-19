@interface UIAlertView(KNAdditions)
- (uint64_t)showWithCompletionHandler:()KNAdditions;
- (void)initWithError:()KNAdditions;
@end

@implementation UIAlertView(KNAdditions)

- (void)initWithError:()KNAdditions
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [a3 localizedRecoverySuggestion];
  if (!v5)
  {
    v5 = [a3 localizedFailureReason];
  }

  v6 = [a1 initWithTitle:objc_msgSend(a3 message:"localizedDescription") delegate:v5 cancelButtonTitle:0 otherButtonTitles:{0, 0}];
  v7 = [a3 localizedRecoveryOptions];
  if (v7 && (v8 = v7, [v7 count]))
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [v6 addButtonWithTitle:*(*(&v14 + 1) + 8 * i)];
        }

        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }

  else
  {
    [v6 addButtonWithTitle:{objc_msgSend(TSKBundle(), "localizedStringForKey:value:table:", @"OK", &stru_287D36338, @"TSKit"}];
  }

  return v6;
}

- (uint64_t)showWithCompletionHandler:()KNAdditions
{
  v5 = objc_alloc_init(TSKUIAlertViewCompletionHandlerDelegate);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__UIAlertView_KNAdditions__showWithCompletionHandler___block_invoke;
  v7[3] = &unk_279D47BF0;
  v7[5] = v5;
  v7[6] = a3;
  v7[4] = a1;
  [(TSKUIAlertViewCompletionHandlerDelegate *)v5 setCompletionHandler:v7];
  [a1 setDelegate:v5];
  return [a1 show];
}

@end