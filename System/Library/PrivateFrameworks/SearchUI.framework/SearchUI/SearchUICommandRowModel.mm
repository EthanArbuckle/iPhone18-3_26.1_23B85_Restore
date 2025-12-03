@interface SearchUICommandRowModel
- (SearchUICommandRowModel)initWithResult:(id)result cardSection:(id)section isInline:(BOOL)inline queryId:(unint64_t)id itemIdentifier:(id)identifier;
- (TLKRichText)title;
- (void)checkIfCommandIsValidWithCompletionHandler:(id)handler;
- (void)getSubscriptionStatus:(id)status;
- (void)safelyUpdateView:(id)view;
- (void)toggleStateWithDetailedSectionView:(id)view;
- (void)updateStateWithCommandCardSectionView:(id)view;
@end

@implementation SearchUICommandRowModel

- (SearchUICommandRowModel)initWithResult:(id)result cardSection:(id)section isInline:(BOOL)inline queryId:(unint64_t)id itemIdentifier:(id)identifier
{
  sectionCopy = section;
  v27.receiver = self;
  v27.super_class = SearchUICommandRowModel;
  v12 = [(SearchUICardSectionRowModel *)&v27 initWithResult:result cardSection:sectionCopy isInline:1 queryId:id itemIdentifier:identifier];
  if (v12)
  {
    title = [sectionCopy title];
    v14 = [SearchUITLKMultilineTextConverter richTextForSearchUIText:title];
    title = v12->_title;
    v12->_title = v14;

    toggledTitle = [sectionCopy toggledTitle];
    v17 = [SearchUITLKMultilineTextConverter richTextForSearchUIText:toggledTitle];
    toggledTitle = v12->_toggledTitle;
    v12->_toggledTitle = v17;

    subtitle = [sectionCopy subtitle];
    v20 = [SearchUITLKMultilineTextConverter richTextForSearchUIText:subtitle];
    subtitle = v12->_subtitle;
    v12->_subtitle = v20;

    command = [sectionCopy command];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      domainSubscriptionRequestItem = [command domainSubscriptionRequestItem];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        canonicalIdentifier = [domainSubscriptionRequestItem canonicalIdentifier];
        sportsCanonicalID = v12->_sportsCanonicalID;
        v12->_sportsCanonicalID = canonicalIdentifier;
      }
    }
  }

  return v12;
}

- (void)checkIfCommandIsValidWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(SearchUICommandRowModel *)self subscriptionType]== 1)
  {
    if ([(SearchUICommandRowModel *)self commandSupported])
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __70__SearchUICommandRowModel_checkIfCommandIsValidWithCompletionHandler___block_invoke;
      v5[3] = &unk_1E85B2F88;
      v6 = handlerCopy;
      [_TtC8SearchUI26SearchUISportsKitUtilities liveActivitiesEnabledWithCompletionBlock:v5];
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, [(SearchUICommandRowModel *)self commandSupported]);
  }
}

- (void)getSubscriptionStatus:(id)status
{
  sportsCanonicalID = self->_sportsCanonicalID;
  if (sportsCanonicalID)
  {
    [_TtC8SearchUI26SearchUISportsKitUtilities checkForSessionWithCanonicalId:sportsCanonicalID completionBlock:status];
  }

  else
  {
    statusCopy = status;
    v6 = SearchUIGeneralLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SearchUICommandRowModel getSubscriptionStatus:v6];
    }

    statusCopy[2](statusCopy, 0);
  }
}

- (TLKRichText)title
{
  if (self->_toggled)
  {
    v2 = &OBJC_IVAR___SearchUICommandRowModel__toggledTitle;
  }

  else
  {
    v2 = &OBJC_IVAR___SearchUICommandRowModel__title;
  }

  return *(&self->super.super.super.isa + *v2);
}

- (void)safelyUpdateView:(id)view
{
  viewCopy = view;
  v5 = MEMORY[0x1E69D9240];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__SearchUICommandRowModel_safelyUpdateView___block_invoke;
  v7[3] = &unk_1E85B2540;
  v8 = viewCopy;
  selfCopy = self;
  v6 = viewCopy;
  [v5 dispatchMainIfNecessary:v7];
}

void __44__SearchUICommandRowModel_safelyUpdateView___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) rowModel];
  v3 = *(a1 + 40);

  if (v2 == v3)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    [v4 updateWithRowModel:v5];
  }
}

- (void)updateStateWithCommandCardSectionView:(id)view
{
  viewCopy = view;
  if ([(SearchUICommandRowModel *)self commandSupported])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __65__SearchUICommandRowModel_updateStateWithCommandCardSectionView___block_invoke;
    v5[3] = &unk_1E85B2518;
    v5[4] = self;
    v6 = viewCopy;
    [(SearchUICommandRowModel *)self getSubscriptionStatus:v5];
  }
}

- (void)toggleStateWithDetailedSectionView:(id)view
{
  viewCopy = view;
  if ([(SearchUICommandRowModel *)self commandSupported])
  {
    v5 = self->_sportsCanonicalID;
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __62__SearchUICommandRowModel_toggleStateWithDetailedSectionView___block_invoke;
    v7[3] = &unk_1E85B4098;
    v6 = v5;
    v8 = v6;
    objc_copyWeak(&v10, &location);
    v9 = viewCopy;
    [(SearchUICommandRowModel *)self getSubscriptionStatus:v7];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __62__SearchUICommandRowModel_toggleStateWithDetailedSectionView___block_invoke(id *a1, int a2)
{
  if (a1[4])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __62__SearchUICommandRowModel_toggleStateWithDetailedSectionView___block_invoke_2;
    aBlock[3] = &unk_1E85B4070;
    v13 = a2;
    objc_copyWeak(&v12, a1 + 6);
    v11 = a1[5];
    v4 = _Block_copy(aBlock);
    v5 = MEMORY[0x1E69D9240];
    if (a2)
    {
      v6 = v9;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __62__SearchUICommandRowModel_toggleStateWithDetailedSectionView___block_invoke_20;
      v9[3] = &unk_1E85B2720;
      v9[4] = a1[4];
      v9[5] = v4;
      [v5 dispatchAsyncIfNecessary:v9];
    }

    else
    {
      v6 = v8;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __62__SearchUICommandRowModel_toggleStateWithDetailedSectionView___block_invoke_2_21;
      v8[3] = &unk_1E85B2720;
      v8[4] = a1[4];
      v8[5] = v4;
      [v5 dispatchAsyncIfNecessary:v8];
    }

    objc_destroyWeak(&v12);
  }

  else
  {
    v7 = SearchUIGeneralLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __62__SearchUICommandRowModel_toggleStateWithDetailedSectionView___block_invoke_cold_1(a2, v7);
    }
  }
}

void __62__SearchUICommandRowModel_toggleStateWithDetailedSectionView___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = SearchUIGeneralLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __62__SearchUICommandRowModel_toggleStateWithDetailedSectionView___block_invoke_2_cold_1(a1, v3, v4);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained updateStateWithCommandCardSectionView:*(a1 + 32)];
}

void __62__SearchUICommandRowModel_toggleStateWithDetailedSectionView___block_invoke_cold_1(char a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = @"subscribe";
  if (a1)
  {
    v2 = @"unsubscribe";
  }

  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1DA169000, a2, OS_LOG_TYPE_ERROR, "SearchUICommandRowModel: Unknown %@ command type", &v3, 0xCu);
}

void __62__SearchUICommandRowModel_toggleStateWithDetailedSectionView___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = @"subscribe";
  if (*(a1 + 48))
  {
    v3 = @"unsubscribe";
  }

  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1DA169000, log, OS_LOG_TYPE_ERROR, "SearchUICommandRowModel: SportsKit %@ command error : %@", &v4, 0x16u);
}

@end