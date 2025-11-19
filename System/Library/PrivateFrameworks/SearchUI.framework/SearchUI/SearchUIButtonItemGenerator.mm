@interface SearchUIButtonItemGenerator
- (SearchUIButtonItemGeneratorViewDelegate)delegate;
- (SearchUIFeedbackDelegate)feedbackDelegate;
- (void)generateSearchUIButtonItemsWithSFButtonItem:(id)a3 completion:(id)a4;
@end

@implementation SearchUIButtonItemGenerator

- (void)generateSearchUIButtonItemsWithSFButtonItem:(id)a3 completion:(id)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 command];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 applicationBundleIdentifier];
    v10 = [SearchUIUtilities isAppInstalledWithBundleId:v9];

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
      v11 = [v8 applicationBundleIdentifier];
      v12 = [SearchUIUtilities isAppInstalledWithBundleId:v11];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else if (v8)
    {
      v13 = [(SearchUIButtonItemGenerator *)self feedbackDelegate];
      v14 = [SearchUIUtilities environmentForDelegate:v13];
      v15 = [SearchUICommandHandler hasValidHandlerForCommand:v8 rowModel:0 environment:v14];

      if (!v15)
      {
        goto LABEL_10;
      }
    }
  }

  v16 = [[SearchUIButtonItem alloc] initWithSFButtonItem:v6];
  v18[0] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];

LABEL_11:
  v7[2](v7, v17, 1);
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