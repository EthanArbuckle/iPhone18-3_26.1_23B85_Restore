@interface SearchUICommandRowModel
- (SearchUICommandRowModel)initWithResult:(id)a3 cardSection:(id)a4 isInline:(BOOL)a5 queryId:(unint64_t)a6 itemIdentifier:(id)a7;
- (TLKRichText)title;
- (void)checkIfCommandIsValidWithCompletionHandler:(id)a3;
- (void)getSubscriptionStatus:(id)a3;
- (void)safelyUpdateView:(id)a3;
- (void)toggleStateWithDetailedSectionView:(id)a3;
- (void)updateStateWithCommandCardSectionView:(id)a3;
@end

@implementation SearchUICommandRowModel

- (SearchUICommandRowModel)initWithResult:(id)a3 cardSection:(id)a4 isInline:(BOOL)a5 queryId:(unint64_t)a6 itemIdentifier:(id)a7
{
  v11 = a4;
  v27.receiver = self;
  v27.super_class = SearchUICommandRowModel;
  v12 = [(SearchUICardSectionRowModel *)&v27 initWithResult:a3 cardSection:v11 isInline:1 queryId:a6 itemIdentifier:a7];
  if (v12)
  {
    v13 = [v11 title];
    v14 = [SearchUITLKMultilineTextConverter richTextForSearchUIText:v13];
    title = v12->_title;
    v12->_title = v14;

    v16 = [v11 toggledTitle];
    v17 = [SearchUITLKMultilineTextConverter richTextForSearchUIText:v16];
    toggledTitle = v12->_toggledTitle;
    v12->_toggledTitle = v17;

    v19 = [v11 subtitle];
    v20 = [SearchUITLKMultilineTextConverter richTextForSearchUIText:v19];
    subtitle = v12->_subtitle;
    v12->_subtitle = v20;

    v22 = [v11 command];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [v22 domainSubscriptionRequestItem];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = [v23 canonicalIdentifier];
        sportsCanonicalID = v12->_sportsCanonicalID;
        v12->_sportsCanonicalID = v24;
      }
    }
  }

  return v12;
}

- (void)checkIfCommandIsValidWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(SearchUICommandRowModel *)self subscriptionType]== 1)
  {
    if ([(SearchUICommandRowModel *)self commandSupported])
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __70__SearchUICommandRowModel_checkIfCommandIsValidWithCompletionHandler___block_invoke;
      v5[3] = &unk_1E85B2F88;
      v6 = v4;
      [_TtC8SearchUI26SearchUISportsKitUtilities liveActivitiesEnabledWithCompletionBlock:v5];
    }

    else
    {
      (*(v4 + 2))(v4, 0);
    }
  }

  else
  {
    (*(v4 + 2))(v4, [(SearchUICommandRowModel *)self commandSupported]);
  }
}

- (void)getSubscriptionStatus:(id)a3
{
  sportsCanonicalID = self->_sportsCanonicalID;
  if (sportsCanonicalID)
  {
    [_TtC8SearchUI26SearchUISportsKitUtilities checkForSessionWithCanonicalId:sportsCanonicalID completionBlock:a3];
  }

  else
  {
    v5 = a3;
    v6 = SearchUIGeneralLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SearchUICommandRowModel getSubscriptionStatus:v6];
    }

    v5[2](v5, 0);
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

- (void)safelyUpdateView:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69D9240];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__SearchUICommandRowModel_safelyUpdateView___block_invoke;
  v7[3] = &unk_1E85B2540;
  v8 = v4;
  v9 = self;
  v6 = v4;
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

- (void)updateStateWithCommandCardSectionView:(id)a3
{
  v4 = a3;
  if ([(SearchUICommandRowModel *)self commandSupported])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __65__SearchUICommandRowModel_updateStateWithCommandCardSectionView___block_invoke;
    v5[3] = &unk_1E85B2518;
    v5[4] = self;
    v6 = v4;
    [(SearchUICommandRowModel *)self getSubscriptionStatus:v5];
  }
}

- (void)toggleStateWithDetailedSectionView:(id)a3
{
  v4 = a3;
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
    v9 = v4;
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