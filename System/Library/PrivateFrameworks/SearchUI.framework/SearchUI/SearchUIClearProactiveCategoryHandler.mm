@interface SearchUIClearProactiveCategoryHandler
- (void)performCommand:(id)a3 triggerEvent:(unint64_t)a4 environment:(id)a5;
@end

@implementation SearchUIClearProactiveCategoryHandler

- (void)performCommand:(id)a3 triggerEvent:(unint64_t)a4 environment:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  if (![v7 shouldClearWholeSection] || objc_msgSend(v7, "category") == 2)
  {
    v9 = [v8 feedbackDelegate];
    v10 = objc_opt_respondsToSelector();

    if ((v10 & 1) == 0)
    {
      goto LABEL_7;
    }

    v11 = [v8 feedbackDelegate];
    v12 = [(SearchUICommandHandler *)self rowModel];
    [v11 removeRowModel:v12 completion:0];
    goto LABEL_5;
  }

  v11 = [v8 feedbackDelegate];
  v16 = [v8 feedbackDelegate];
  if (objc_opt_respondsToSelector())
  {
    v17 = [(SearchUICommandHandler *)self rowModel];

    if (v17)
    {
      v12 = [(SearchUICommandHandler *)self rowModel];
      [v11 removeSectionContainingRowModel:v12 completion:0];
      goto LABEL_5;
    }
  }

  else
  {
  }

  v12 = [v8 feedbackDelegate];
  if (objc_opt_respondsToSelector())
  {
    v18 = [(SearchUICommandHandler *)self sectionModel];

    if (!v18)
    {
      goto LABEL_6;
    }

    v12 = [(SearchUICommandHandler *)self sectionModel];
    [v11 removeSectionModel:v12 completion:0];
  }

LABEL_5:

LABEL_6:
LABEL_7:
  v13 = [(SearchUICommandHandler *)self rowModel];
  v14 = [v13 identifyingResult];

  if ([v7 category] == 1)
  {
    if ([v7 shouldClearWholeSection])
    {
      [MEMORY[0x1E69D3E98] deleteAllRecents];
    }

    else
    {
      [MEMORY[0x1E69D3E98] deleteResult:v14];
    }
  }

  else
  {
    v15 = SearchUIGeneralLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v14;
      _os_log_impl(&dword_1DA169000, v15, OS_LOG_TYPE_DEFAULT, "Proactive to handle result through feedback, result: %@", &v19, 0xCu);
    }
  }
}

@end