@interface SearchUIRequestUserReportHandler
+ (id)fallbackCommandForRowModel:(id)a3 environment:(id)a4;
+ (void)didSelectFeedbackPunchout:(id)a3 rowModel:(id)a4 feedbackDelegate:(id)a5;
- (id)contextMenu;
- (id)createViewControllerForCommand:(id)a3 environment:(id)a4;
@end

@implementation SearchUIRequestUserReportHandler

+ (id)fallbackCommandForRowModel:(id)a3 environment:(id)a4
{
  v4 = a3;
  v5 = [v4 cardSection];
  v6 = [v5 userReportRequest];

  if (v6 && ([v4 supportsCustomUserReportRequestAfforance] & 1) == 0)
  {
    v7 = objc_opt_new();
    [v7 setUserReportRequest:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)contextMenu
{
  v31 = *MEMORY[0x1E69E9840];
  v20 = [(SearchUICommandHandler *)self rowModel];
  v3 = [v20 cardSection];
  v19 = [v3 userReportRequest];

  v4 = objc_alloc(MEMORY[0x1E695DF70]);
  v5 = [v19 userReportOptions];
  v21 = [v4 initWithCapacity:{objc_msgSend(v5, "count")}];

  v6 = [(SearchUICommandHandler *)self environment];
  val = [v6 feedbackDelegate];

  objc_initWeak(&location, val);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [v19 userReportOptions];
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v8)
  {
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = MEMORY[0x1E69DC628];
        v13 = [v11 name];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __47__SearchUIRequestUserReportHandler_contextMenu__block_invoke;
        v22[3] = &unk_1E85B2810;
        objc_copyWeak(&v24, &location);
        v22[4] = self;
        v22[5] = v11;
        v23 = v20;
        v14 = [v12 actionWithTitle:v13 image:0 identifier:0 handler:v22];

        [v21 addObject:v14];
        objc_destroyWeak(&v24);
      }

      v8 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v8);
  }

  if ([v21 count])
  {
    v15 = [v19 title];
    v16 = [MEMORY[0x1E69DCC60] menuWithTitle:v15 children:v21];
  }

  else
  {
    v16 = 0;
  }

  objc_destroyWeak(&location);

  return v16;
}

void __47__SearchUIRequestUserReportHandler_contextMenu__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [objc_opt_class() didSelectFeedbackPunchout:*(a1 + 40) rowModel:*(a1 + 48) feedbackDelegate:WeakRetained];
}

- (id)createViewControllerForCommand:(id)a3 environment:(id)a4
{
  v6 = a4;
  v7 = [a3 userReportRequest];
  v8 = [(SearchUICommandHandler *)self rowModel];
  v9 = [SearchUIRequestUserReportUtility createUserReportViewControllerWith:v7 rowModel:v8 environment:v6];

  return v9;
}

+ (void)didSelectFeedbackPunchout:(id)a3 rowModel:(id)a4 feedbackDelegate:(id)a5
{
  v14 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v14 preferredOpenableURL];

  if (v9)
  {
    [SearchUIUtilities openPunchout:v14];
  }

  if (objc_opt_respondsToSelector())
  {
    v10 = objc_alloc(MEMORY[0x1E69CA568]);
    v11 = [v7 identifyingResult];
    v12 = [v7 cardSection];
    v13 = [v10 initWithSelection:v14 result:v11 cardSection:v12];

    [v8 didReportUserResponseFeedback:v13];
  }
}

@end