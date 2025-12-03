@interface SearchUIOpenCoreSpotlightItemHandler
- (id)createViewControllerForCommand:(id)command environment:(id)environment;
- (id)destinationApplicationBundleIdentifier;
- (id)itemProvider;
- (void)getUserActivityForCommand:(id)command environment:(id)environment completionHandler:(id)handler;
- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment;
@end

@implementation SearchUIOpenCoreSpotlightItemHandler

- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment
{
  commandCopy = command;
  environmentCopy = environment;
  rowModel = [(SearchUICommandHandler *)self rowModel];
  cardSection = [rowModel cardSection];
  appEntityAnnotation = [cardSection appEntityAnnotation];

  if (appEntityAnnotation)
  {
    rowModel2 = [(SearchUICommandHandler *)self rowModel];
    cardSection2 = [rowModel2 cardSection];
    appEntityAnnotation2 = [cardSection2 appEntityAnnotation];
    applicationBundleIdentifier = [commandCopy applicationBundleIdentifier];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __80__SearchUIOpenCoreSpotlightItemHandler_performCommand_triggerEvent_environment___block_invoke;
    v18[3] = &unk_1E85B39E0;
    v19 = commandCopy;
    eventCopy = event;
    v20 = environmentCopy;
    selfCopy = self;
    [SearchUIToolKitUtilities performOpenIntentForAnnotation:appEntityAnnotation2 bundleId:applicationBundleIdentifier completionHandler:v18];
  }

  else
  {
    v17.receiver = self;
    v17.super_class = SearchUIOpenCoreSpotlightItemHandler;
    [(SearchUIOpenUserActivityHandler *)&v17 performCommand:commandCopy triggerEvent:event environment:environmentCopy];
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

- (void)getUserActivityForCommand:(id)command environment:(id)environment completionHandler:(id)handler
{
  commandCopy = command;
  environmentCopy = environment;
  v9 = MEMORY[0x1E69636A8];
  handlerCopy = handler;
  v11 = [v9 alloc];
  v12 = [v11 initWithActivityType:*MEMORY[0x1E6963B90]];
  v13 = objc_opt_new();
  coreSpotlightIdentifier = [commandCopy coreSpotlightIdentifier];
  if (coreSpotlightIdentifier)
  {
    [v13 setObject:coreSpotlightIdentifier forKeyedSubscript:*MEMORY[0x1E6963B98]];
  }

  searchString = [environmentCopy searchString];
  if (searchString)
  {
    [v13 setObject:searchString forKeyedSubscript:*MEMORY[0x1E6963B88]];
    rowModel = [(SearchUICommandHandler *)self rowModel];
    [rowModel identifyingResult];
    v31 = searchString;
    v17 = handlerCopy;
    v18 = coreSpotlightIdentifier;
    v19 = v12;
    selfCopy = self;
    v22 = v21 = environmentCopy;
    applicationBundleIdentifier = [v22 applicationBundleIdentifier];
    v24 = [applicationBundleIdentifier isEqual:@"com.apple.email.SearchIndexer"];

    environmentCopy = v21;
    v25 = selfCopy;
    v12 = v19;
    coreSpotlightIdentifier = v18;
    handlerCopy = v17;
    searchString = v31;

    if (v24)
    {
      rowModel2 = [(SearchUICommandHandler *)v25 rowModel];
      identifyingResult = [rowModel2 identifyingResult];
      applicationBundleIdentifier2 = [identifyingResult applicationBundleIdentifier];
      [v13 setObject:applicationBundleIdentifier2 forKeyedSubscript:@"kCSItemBundle"];
    }
  }

  actionIdentifier = [commandCopy actionIdentifier];
  if (actionIdentifier)
  {
    [v13 setObject:actionIdentifier forKeyedSubscript:*MEMORY[0x1E6963938]];
  }

  [v12 setUserInfo:v13];
  applicationBundleIdentifier3 = [commandCopy applicationBundleIdentifier];
  handlerCopy[2](handlerCopy, v12, applicationBundleIdentifier3);
}

- (id)createViewControllerForCommand:(id)command environment:(id)environment
{
  v24[1] = *MEMORY[0x1E69E9840];
  environmentCopy = environment;
  commandCopy = command;
  rowModel = [(SearchUICommandHandler *)self rowModel];
  coreSpotlightIdentifier = [commandCopy coreSpotlightIdentifier];
  applicationBundleIdentifier = [commandCopy applicationBundleIdentifier];

  v11 = objc_alloc(MEMORY[0x1E697A0C0]);
  searchString = [environmentCopy searchString];

  displayTitle = [rowModel displayTitle];
  v14 = [v11 initWithSearchableItemUniqueIdentifier:coreSpotlightIdentifier queryString:searchString applicationBundleIdentifier:applicationBundleIdentifier previewTitle:displayTitle];

  if ([MEMORY[0x1E697A0C8] canPreviewItem:v14] && (objc_msgSend(rowModel, "identifyingResult"), v15 = objc_claimAutoreleasedReturnValue(), v16 = +[SearchUIUtilities resultIsSiriAction:](SearchUIUtilities, "resultIsSiriAction:", v15), v15, !v16))
  {
    v21 = objc_alloc(MEMORY[0x1E697A0C8]);
    v24[0] = v14;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    v20 = [v21 initWithPreviewItems:v22];
  }

  else
  {
    v17 = [SearchUIUtilities bundleIdentifierForApp:4];
    v18 = [applicationBundleIdentifier isEqualToString:v17];

    if (v18)
    {
      v19 = [SearchUICalendarStore eventControllerWithIdentifier:coreSpotlightIdentifier];
LABEL_8:
      v20 = v19;
      goto LABEL_11;
    }

    if (applicationBundleIdentifier)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = [[SearchUIFallbackPeekViewController alloc] initWithDetailedRowModel:rowModel];
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
  itemProvider = [(SearchUICommandHandler *)&v18 itemProvider];
  v4 = itemProvider;
  if (itemProvider)
  {
    v5 = itemProvider;
  }

  else
  {
    v6 = objc_opt_new();
    rowModel = [(SearchUICommandHandler *)self rowModel];
    identifyingResult = [rowModel identifyingResult];
    itemProviderFileTypes = [identifyingResult itemProviderFileTypes];
    [v6 setFileProviderTypeIdentifiers:itemProviderFileTypes];

    rowModel2 = [(SearchUICommandHandler *)self rowModel];
    identifyingResult2 = [rowModel2 identifyingResult];
    itemProviderDataTypes = [identifyingResult2 itemProviderDataTypes];
    [v6 setDataProviderTypeIdentifiers:itemProviderDataTypes];

    command = [(SearchUICommandHandler *)self command];
    applicationBundleIdentifier = [command applicationBundleIdentifier];
    [v6 setApplicationBundleIdentifier:applicationBundleIdentifier];

    command2 = [(SearchUICommandHandler *)self command];
    coreSpotlightIdentifier = [command2 coreSpotlightIdentifier];
    [v6 setCoreSpotlightIdentifier:coreSpotlightIdentifier];

    v5 = [SearchUIItemProviderUtilities itemProviderForItem:v6];
  }

  return v5;
}

- (id)destinationApplicationBundleIdentifier
{
  command = [(SearchUICommandHandler *)self command];
  applicationBundleIdentifier = [command applicationBundleIdentifier];

  return applicationBundleIdentifier;
}

@end