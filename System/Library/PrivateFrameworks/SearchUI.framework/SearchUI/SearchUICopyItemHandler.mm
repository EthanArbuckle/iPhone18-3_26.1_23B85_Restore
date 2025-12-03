@interface SearchUICopyItemHandler
- (id)itemProvider;
- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment;
@end

@implementation SearchUICopyItemHandler

- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = [(SearchUICopyItemHandler *)self handlerForCopying:command];
  itemProvider = [v6 itemProvider];

  if (itemProvider)
  {
    v13[0] = itemProvider;
    command2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
    [generalPasteboard setItemProviders:command2];

LABEL_5:
    goto LABEL_6;
  }

  command = [(SearchUICommandHandler *)self command];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    command2 = [(SearchUICommandHandler *)self command];
    copyableItem = [command2 copyableItem];
    [SearchUIItemProviderUtilities copy:copyableItem];

    goto LABEL_5;
  }

LABEL_6:
}

- (id)itemProvider
{
  command = [(SearchUICommandHandler *)self command];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    command2 = [(SearchUICommandHandler *)self command];
    copyableItem = [command2 copyableItem];
    v7 = [SearchUIItemProviderUtilities itemProviderForItem:copyableItem];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end