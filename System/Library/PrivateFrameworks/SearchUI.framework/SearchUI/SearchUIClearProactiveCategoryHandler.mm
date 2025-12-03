@interface SearchUIClearProactiveCategoryHandler
- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment;
@end

@implementation SearchUIClearProactiveCategoryHandler

- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment
{
  v21 = *MEMORY[0x1E69E9840];
  commandCopy = command;
  environmentCopy = environment;
  if (![commandCopy shouldClearWholeSection] || objc_msgSend(commandCopy, "category") == 2)
  {
    feedbackDelegate = [environmentCopy feedbackDelegate];
    v10 = objc_opt_respondsToSelector();

    if ((v10 & 1) == 0)
    {
      goto LABEL_7;
    }

    feedbackDelegate2 = [environmentCopy feedbackDelegate];
    rowModel = [(SearchUICommandHandler *)self rowModel];
    [feedbackDelegate2 removeRowModel:rowModel completion:0];
    goto LABEL_5;
  }

  feedbackDelegate2 = [environmentCopy feedbackDelegate];
  feedbackDelegate3 = [environmentCopy feedbackDelegate];
  if (objc_opt_respondsToSelector())
  {
    rowModel2 = [(SearchUICommandHandler *)self rowModel];

    if (rowModel2)
    {
      rowModel = [(SearchUICommandHandler *)self rowModel];
      [feedbackDelegate2 removeSectionContainingRowModel:rowModel completion:0];
      goto LABEL_5;
    }
  }

  else
  {
  }

  rowModel = [environmentCopy feedbackDelegate];
  if (objc_opt_respondsToSelector())
  {
    sectionModel = [(SearchUICommandHandler *)self sectionModel];

    if (!sectionModel)
    {
      goto LABEL_6;
    }

    rowModel = [(SearchUICommandHandler *)self sectionModel];
    [feedbackDelegate2 removeSectionModel:rowModel completion:0];
  }

LABEL_5:

LABEL_6:
LABEL_7:
  rowModel3 = [(SearchUICommandHandler *)self rowModel];
  identifyingResult = [rowModel3 identifyingResult];

  if ([commandCopy category] == 1)
  {
    if ([commandCopy shouldClearWholeSection])
    {
      [MEMORY[0x1E69D3E98] deleteAllRecents];
    }

    else
    {
      [MEMORY[0x1E69D3E98] deleteResult:identifyingResult];
    }
  }

  else
  {
    v15 = SearchUIGeneralLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = identifyingResult;
      _os_log_impl(&dword_1DA169000, v15, OS_LOG_TYPE_DEFAULT, "Proactive to handle result through feedback, result: %@", &v19, 0xCu);
    }
  }
}

@end