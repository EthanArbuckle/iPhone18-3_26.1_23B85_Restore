@interface SearchUICopyItemHandler
- (id)itemProvider;
- (void)performCommand:(id)a3 triggerEvent:(unint64_t)a4 environment:(id)a5;
@end

@implementation SearchUICopyItemHandler

- (void)performCommand:(id)a3 triggerEvent:(unint64_t)a4 environment:(id)a5
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = [(SearchUICopyItemHandler *)self handlerForCopying:a3];
  v7 = [v6 itemProvider];

  if (v7)
  {
    v13[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v9 = [MEMORY[0x1E69DCD50] generalPasteboard];
    [v9 setItemProviders:v8];

LABEL_5:
    goto LABEL_6;
  }

  v10 = [(SearchUICommandHandler *)self command];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [(SearchUICommandHandler *)self command];
    v12 = [v8 copyableItem];
    [SearchUIItemProviderUtilities copy:v12];

    goto LABEL_5;
  }

LABEL_6:
}

- (id)itemProvider
{
  v3 = [(SearchUICommandHandler *)self command];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(SearchUICommandHandler *)self command];
    v6 = [v5 copyableItem];
    v7 = [SearchUIItemProviderUtilities itemProviderForItem:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end