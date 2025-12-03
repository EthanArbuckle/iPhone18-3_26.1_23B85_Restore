@interface SearchUIShowStoreSheetHandler
+ (id)fallbackCommandForRowModel:(id)model environment:(id)environment;
- (id)createViewControllerForCommand:(id)command environment:(id)environment;
@end

@implementation SearchUIShowStoreSheetHandler

+ (id)fallbackCommandForRowModel:(id)model environment:(id)environment
{
  identifyingResult = [model identifyingResult];
  storeIdentifier = [identifyingResult storeIdentifier];
  action = [identifyingResult action];
  v7 = action;
  if (storeIdentifier && (!action || [action requiresLocalMedia]) && objc_msgSend(identifyingResult, "type") == 1)
  {
    v8 = objc_opt_new();
    [v8 setStoreIdentifier:storeIdentifier];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)createViewControllerForCommand:(id)command environment:(id)environment
{
  environmentCopy = environment;
  commandCopy = command;
  v8 = [SearchUIStoreViewController alloc];
  storeIdentifier = [commandCopy storeIdentifier];

  feedbackDelegate = [environmentCopy feedbackDelegate];

  rowModel = [(SearchUICommandHandler *)self rowModel];
  v12 = -[SearchUIStoreViewController initWithIdentifier:feedbackListener:queryId:](v8, "initWithIdentifier:feedbackListener:queryId:", storeIdentifier, feedbackDelegate, [rowModel queryId]);

  return v12;
}

@end