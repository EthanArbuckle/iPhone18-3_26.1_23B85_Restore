@interface PXSettingsSearchResult
- (NSString)subtitle;
- (NSString)title;
- (PXSettingsSearchResult)init;
- (id)_initWithEntry:(id)a3;
- (void)revealInSettingsController:(id)a3 withCompletionHandler:(id)a4;
@end

@implementation PXSettingsSearchResult

- (void)revealInSettingsController:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PXSettingsSearchResult *)self entry];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__PXSettingsSearchResult_revealInSettingsController_withCompletionHandler___block_invoke;
  v10[3] = &unk_1E77464C0;
  v11 = v6;
  v9 = v6;
  [v8 revealInSettingsController:v7 withCompletionHandler:v10];
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
  v2 = [(PXSettingsSearchResult *)self entry];
  v3 = [v2 subtitle];

  return v3;
}

- (NSString)title
{
  v2 = [(PXSettingsSearchResult *)self entry];
  v3 = [v2 title];

  return v3;
}

- (id)_initWithEntry:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXSettingsSearchResult;
  v6 = [(PXSettingsSearchResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_entry, a3);
  }

  return v7;
}

- (PXSettingsSearchResult)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXSettingsIndex.m" lineNumber:231 description:{@"%s is not available as initializer", "-[PXSettingsSearchResult init]"}];

  abort();
}

@end