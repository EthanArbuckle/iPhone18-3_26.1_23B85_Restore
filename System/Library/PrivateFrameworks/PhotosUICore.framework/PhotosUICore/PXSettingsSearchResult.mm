@interface PXSettingsSearchResult
- (NSString)subtitle;
- (NSString)title;
- (PXSettingsSearchResult)init;
- (id)_initWithEntry:(id)entry;
- (void)revealInSettingsController:(id)controller withCompletionHandler:(id)handler;
@end

@implementation PXSettingsSearchResult

- (void)revealInSettingsController:(id)controller withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  controllerCopy = controller;
  entry = [(PXSettingsSearchResult *)self entry];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__PXSettingsSearchResult_revealInSettingsController_withCompletionHandler___block_invoke;
  v10[3] = &unk_1E77464C0;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [entry revealInSettingsController:controllerCopy withCompletionHandler:v10];
}

uint64_t __75__PXSettingsSearchResult_revealInSettingsController_withCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (NSString)subtitle
{
  entry = [(PXSettingsSearchResult *)self entry];
  subtitle = [entry subtitle];

  return subtitle;
}

- (NSString)title
{
  entry = [(PXSettingsSearchResult *)self entry];
  title = [entry title];

  return title;
}

- (id)_initWithEntry:(id)entry
{
  entryCopy = entry;
  v9.receiver = self;
  v9.super_class = PXSettingsSearchResult;
  v6 = [(PXSettingsSearchResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_entry, entry);
  }

  return v7;
}

- (PXSettingsSearchResult)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSettingsIndex.m" lineNumber:231 description:{@"%s is not available as initializer", "-[PXSettingsSearchResult init]"}];

  abort();
}

@end