@interface SearchUIButtonItemGenerator
- (SearchUIButtonItemGeneratorViewDelegate)delegate;
- (SearchUIFeedbackDelegate)feedbackDelegate;
- (void)generateSearchUIButtonItemsWithSFButtonItem:(id)item completion:(id)completion;
@end

@implementation SearchUIButtonItemGenerator

- (void)generateSearchUIButtonItemsWithSFButtonItem:(id)item completion:(id)completion
{
  v18[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  completionCopy = completion;
  command = [itemCopy command];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    applicationBundleIdentifier = [command applicationBundleIdentifier];
    v10 = [SearchUIUtilities isAppInstalledWithBundleId:applicationBundleIdentifier];

    if (!v10)
    {
LABEL_10:
      v17 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      applicationBundleIdentifier2 = [command applicationBundleIdentifier];
      v12 = [SearchUIUtilities isAppInstalledWithBundleId:applicationBundleIdentifier2];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else if (command)
    {
      feedbackDelegate = [(SearchUIButtonItemGenerator *)self feedbackDelegate];
      v14 = [SearchUIUtilities environmentForDelegate:feedbackDelegate];
      v15 = [SearchUICommandHandler hasValidHandlerForCommand:command rowModel:0 environment:v14];

      if (!v15)
      {
        goto LABEL_10;
      }
    }
  }

  v16 = [[SearchUIButtonItem alloc] initWithSFButtonItem:itemCopy];
  v18[0] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];

LABEL_11:
  completionCopy[2](completionCopy, v17, 1);
}

- (SearchUIButtonItemGeneratorViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SearchUIFeedbackDelegate)feedbackDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_feedbackDelegate);

  return WeakRetained;
}

@end