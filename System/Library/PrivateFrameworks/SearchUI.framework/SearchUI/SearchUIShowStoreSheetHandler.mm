@interface SearchUIShowStoreSheetHandler
+ (id)fallbackCommandForRowModel:(id)a3 environment:(id)a4;
- (id)createViewControllerForCommand:(id)a3 environment:(id)a4;
@end

@implementation SearchUIShowStoreSheetHandler

+ (id)fallbackCommandForRowModel:(id)a3 environment:(id)a4
{
  v4 = [a3 identifyingResult];
  v5 = [v4 storeIdentifier];
  v6 = [v4 action];
  v7 = v6;
  if (v5 && (!v6 || [v6 requiresLocalMedia]) && objc_msgSend(v4, "type") == 1)
  {
    v8 = objc_opt_new();
    [v8 setStoreIdentifier:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)createViewControllerForCommand:(id)a3 environment:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [SearchUIStoreViewController alloc];
  v9 = [v7 storeIdentifier];

  v10 = [v6 feedbackDelegate];

  v11 = [(SearchUICommandHandler *)self rowModel];
  v12 = -[SearchUIStoreViewController initWithIdentifier:feedbackListener:queryId:](v8, "initWithIdentifier:feedbackListener:queryId:", v9, v10, [v11 queryId]);

  return v12;
}

@end