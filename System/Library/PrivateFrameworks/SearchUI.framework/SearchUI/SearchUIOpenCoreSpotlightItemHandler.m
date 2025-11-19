@interface SearchUIOpenCoreSpotlightItemHandler
- (id)createViewControllerForCommand:(id)a3 environment:(id)a4;
- (id)destinationApplicationBundleIdentifier;
- (id)itemProvider;
- (void)getUserActivityForCommand:(id)a3 environment:(id)a4 completionHandler:(id)a5;
- (void)performCommand:(id)a3 triggerEvent:(unint64_t)a4 environment:(id)a5;
@end

@implementation SearchUIOpenCoreSpotlightItemHandler

- (void)performCommand:(id)a3 triggerEvent:(unint64_t)a4 environment:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(SearchUICommandHandler *)self rowModel];
  v11 = [v10 cardSection];
  v12 = [v11 appEntityAnnotation];

  if (v12)
  {
    v13 = [(SearchUICommandHandler *)self rowModel];
    v14 = [v13 cardSection];
    v15 = [v14 appEntityAnnotation];
    v16 = [v8 applicationBundleIdentifier];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __80__SearchUIOpenCoreSpotlightItemHandler_performCommand_triggerEvent_environment___block_invoke;
    v18[3] = &unk_1E85B39E0;
    v19 = v8;
    v22 = a4;
    v20 = v9;
    v21 = self;
    [SearchUIToolKitUtilities performOpenIntentForAnnotation:v15 bundleId:v16 completionHandler:v18];
  }

  else
  {
    v17.receiver = self;
    v17.super_class = SearchUIOpenCoreSpotlightItemHandler;
    [(SearchUIOpenUserActivityHandler *)&v17 performCommand:v8 triggerEvent:a4 environment:v9];
  }
}

void __80__SearchUIOpenCoreSpotlightItemHandler_performCommand_triggerEvent_environment___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __80__SearchUIOpenCoreSpotlightItemHandler_performCommand_triggerEvent_environment___block_invoke_2;
    v7[3] = &unk_1E85B35B0;
    v3 = *(a1 + 32);
    v4 = *(a1 + 56);
    v8 = v3;
    v11 = v4;
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v9 = v5;
    v10 = v6;
    [SearchUIUtilities dispatchMainIfNecessary:v7];
  }
}

id __80__SearchUIOpenCoreSpotlightItemHandler_performCommand_triggerEvent_environment___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5.receiver = *(a1 + 48);
  v5.super_class = SearchUIOpenCoreSpotlightItemHandler;
  return objc_msgSendSuper2(&v5, sel_performCommand_triggerEvent_environment_, v2, v1, v3);
}

- (void)getUserActivityForCommand:(id)a3 environment:(id)a4 completionHandler:(id)a5
{
  v32 = a3;
  v8 = a4;
  v9 = MEMORY[0x1E69636A8];
  v10 = a5;
  v11 = [v9 alloc];
  v12 = [v11 initWithActivityType:*MEMORY[0x1E6963B90]];
  v13 = objc_opt_new();
  v14 = [v32 coreSpotlightIdentifier];
  if (v14)
  {
    [v13 setObject:v14 forKeyedSubscript:*MEMORY[0x1E6963B98]];
  }

  v15 = [v8 searchString];
  if (v15)
  {
    [v13 setObject:v15 forKeyedSubscript:*MEMORY[0x1E6963B88]];
    v16 = [(SearchUICommandHandler *)self rowModel];
    [v16 identifyingResult];
    v31 = v15;
    v17 = v10;
    v18 = v14;
    v19 = v12;
    v20 = self;
    v22 = v21 = v8;
    v23 = [v22 applicationBundleIdentifier];
    v24 = [v23 isEqual:@"com.apple.email.SearchIndexer"];

    v8 = v21;
    v25 = v20;
    v12 = v19;
    v14 = v18;
    v10 = v17;
    v15 = v31;

    if (v24)
    {
      v26 = [(SearchUICommandHandler *)v25 rowModel];
      v27 = [v26 identifyingResult];
      v28 = [v27 applicationBundleIdentifier];
      [v13 setObject:v28 forKeyedSubscript:@"kCSItemBundle"];
    }
  }

  v29 = [v32 actionIdentifier];
  if (v29)
  {
    [v13 setObject:v29 forKeyedSubscript:*MEMORY[0x1E6963938]];
  }

  [v12 setUserInfo:v13];
  v30 = [v32 applicationBundleIdentifier];
  v10[2](v10, v12, v30);
}

- (id)createViewControllerForCommand:(id)a3 environment:(id)a4
{
  v24[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [(SearchUICommandHandler *)self rowModel];
  v9 = [v7 coreSpotlightIdentifier];
  v10 = [v7 applicationBundleIdentifier];

  v11 = objc_alloc(MEMORY[0x1E697A0C0]);
  v12 = [v6 searchString];

  v13 = [v8 displayTitle];
  v14 = [v11 initWithSearchableItemUniqueIdentifier:v9 queryString:v12 applicationBundleIdentifier:v10 previewTitle:v13];

  if ([MEMORY[0x1E697A0C8] canPreviewItem:v14] && (objc_msgSend(v8, "identifyingResult"), v15 = objc_claimAutoreleasedReturnValue(), v16 = +[SearchUIUtilities resultIsSiriAction:](SearchUIUtilities, "resultIsSiriAction:", v15), v15, !v16))
  {
    v21 = objc_alloc(MEMORY[0x1E697A0C8]);
    v24[0] = v14;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    v20 = [v21 initWithPreviewItems:v22];
  }

  else
  {
    v17 = [SearchUIUtilities bundleIdentifierForApp:4];
    v18 = [v10 isEqualToString:v17];

    if (v18)
    {
      v19 = [SearchUICalendarStore eventControllerWithIdentifier:v9];
LABEL_8:
      v20 = v19;
      goto LABEL_11;
    }

    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = [[SearchUIFallbackPeekViewController alloc] initWithDetailedRowModel:v8];
        goto LABEL_8;
      }
    }

    v20 = 0;
  }

LABEL_11:

  return v20;
}

- (id)itemProvider
{
  v18.receiver = self;
  v18.super_class = SearchUIOpenCoreSpotlightItemHandler;
  v3 = [(SearchUICommandHandler *)&v18 itemProvider];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = objc_opt_new();
    v7 = [(SearchUICommandHandler *)self rowModel];
    v8 = [v7 identifyingResult];
    v9 = [v8 itemProviderFileTypes];
    [v6 setFileProviderTypeIdentifiers:v9];

    v10 = [(SearchUICommandHandler *)self rowModel];
    v11 = [v10 identifyingResult];
    v12 = [v11 itemProviderDataTypes];
    [v6 setDataProviderTypeIdentifiers:v12];

    v13 = [(SearchUICommandHandler *)self command];
    v14 = [v13 applicationBundleIdentifier];
    [v6 setApplicationBundleIdentifier:v14];

    v15 = [(SearchUICommandHandler *)self command];
    v16 = [v15 coreSpotlightIdentifier];
    [v6 setCoreSpotlightIdentifier:v16];

    v5 = [SearchUIItemProviderUtilities itemProviderForItem:v6];
  }

  return v5;
}

- (id)destinationApplicationBundleIdentifier
{
  v2 = [(SearchUICommandHandler *)self command];
  v3 = [v2 applicationBundleIdentifier];

  return v3;
}

@end