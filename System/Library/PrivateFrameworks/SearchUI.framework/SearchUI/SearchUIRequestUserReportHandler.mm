@interface SearchUIRequestUserReportHandler
+ (id)fallbackCommandForRowModel:(id)model environment:(id)environment;
+ (void)didSelectFeedbackPunchout:(id)punchout rowModel:(id)model feedbackDelegate:(id)delegate;
- (id)contextMenu;
- (id)createViewControllerForCommand:(id)command environment:(id)environment;
@end

@implementation SearchUIRequestUserReportHandler

+ (id)fallbackCommandForRowModel:(id)model environment:(id)environment
{
  modelCopy = model;
  cardSection = [modelCopy cardSection];
  userReportRequest = [cardSection userReportRequest];

  if (userReportRequest && ([modelCopy supportsCustomUserReportRequestAfforance] & 1) == 0)
  {
    v7 = objc_opt_new();
    [v7 setUserReportRequest:userReportRequest];
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
  rowModel = [(SearchUICommandHandler *)self rowModel];
  cardSection = [rowModel cardSection];
  userReportRequest = [cardSection userReportRequest];

  v4 = objc_alloc(MEMORY[0x1E695DF70]);
  userReportOptions = [userReportRequest userReportOptions];
  v21 = [v4 initWithCapacity:{objc_msgSend(userReportOptions, "count")}];

  environment = [(SearchUICommandHandler *)self environment];
  val = [environment feedbackDelegate];

  objc_initWeak(&location, val);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  userReportOptions2 = [userReportRequest userReportOptions];
  v8 = [userReportOptions2 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v8)
  {
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(userReportOptions2);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = MEMORY[0x1E69DC628];
        name = [v11 name];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __47__SearchUIRequestUserReportHandler_contextMenu__block_invoke;
        v22[3] = &unk_1E85B2810;
        objc_copyWeak(&v24, &location);
        v22[4] = self;
        v22[5] = v11;
        v23 = rowModel;
        v14 = [v12 actionWithTitle:name image:0 identifier:0 handler:v22];

        [v21 addObject:v14];
        objc_destroyWeak(&v24);
      }

      v8 = [userReportOptions2 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v8);
  }

  if ([v21 count])
  {
    title = [userReportRequest title];
    v16 = [MEMORY[0x1E69DCC60] menuWithTitle:title children:v21];
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

- (id)createViewControllerForCommand:(id)command environment:(id)environment
{
  environmentCopy = environment;
  userReportRequest = [command userReportRequest];
  rowModel = [(SearchUICommandHandler *)self rowModel];
  v9 = [SearchUIRequestUserReportUtility createUserReportViewControllerWith:userReportRequest rowModel:rowModel environment:environmentCopy];

  return v9;
}

+ (void)didSelectFeedbackPunchout:(id)punchout rowModel:(id)model feedbackDelegate:(id)delegate
{
  punchoutCopy = punchout;
  modelCopy = model;
  delegateCopy = delegate;
  preferredOpenableURL = [punchoutCopy preferredOpenableURL];

  if (preferredOpenableURL)
  {
    [SearchUIUtilities openPunchout:punchoutCopy];
  }

  if (objc_opt_respondsToSelector())
  {
    v10 = objc_alloc(MEMORY[0x1E69CA568]);
    identifyingResult = [modelCopy identifyingResult];
    cardSection = [modelCopy cardSection];
    v13 = [v10 initWithSelection:punchoutCopy result:identifyingResult cardSection:cardSection];

    [delegateCopy didReportUserResponseFeedback:v13];
  }
}

@end