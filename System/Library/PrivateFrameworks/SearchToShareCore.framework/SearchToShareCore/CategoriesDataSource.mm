@interface CategoriesDataSource
- (BOOL)isGroupRow:(int64_t)a3;
- (BOOL)rowHasClearButton:(int64_t)a3;
- (CategoriesDataSource)initWithSearchModel:(id)a3;
- (STSCategorySelectionDelegate)selectionDelegate;
- (STSSearchModelUpdateDelegate)updateDelegate;
- (id)_searchResultIdentifierForSuggestion:(id)a3 recent:(BOOL)a4;
- (id)headerTitleForRow:(int64_t)a3;
- (id)recentQueries;
- (id)stringValueForRowAtIndex:(int64_t)a3;
- (id)visibleResultsForIndexPaths:(id)a3;
- (void)_commitClearRecents;
- (void)addQueryToRecents:(id)a3;
- (void)didSelectItemAtIndex:(int64_t)a3;
- (void)sendRankSectionsFeedback;
- (void)updateModel;
- (void)updateRecents:(id)a3;
@end

@implementation CategoriesDataSource

- (CategoriesDataSource)initWithSearchModel:(id)a3
{
  v5 = a3;
  v21.receiver = self;
  v21.super_class = CategoriesDataSource;
  v6 = [(CategoriesDataSource *)&v21 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_searchModel, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    model = v7->_model;
    v7->_model = v8;

    categories = v7->_categories;
    v7->_categories = MEMORY[0x277CBEBF8];

    v11 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v12 = [v11 objectForKey:@"STSRecentQueries"];
    v13 = [v12 mutableCopy];
    recents = v7->_recents;
    v7->_recents = v13;

    if (!v7->_recents)
    {
      v15 = objc_opt_new();
      v16 = v7->_recents;
      v7->_recents = v15;
    }

    v17 = dispatch_get_global_queue(9, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__CategoriesDataSource_initWithSearchModel___block_invoke;
    block[3] = &unk_279B8A988;
    v20 = v7;
    dispatch_async(v17, block);
  }

  return v7;
}

- (void)updateModel
{
  [(NSMutableArray *)self->_model removeAllObjects];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(NSMutableArray *)self->_recents count])
  {
    v4 = objc_alloc_init(STSCategoryResult);
    [(STSCategoryResult *)v4 setType:2];
    v5 = STSLocalizedString(@"RECENT");
    [(STSCategoryResult *)v4 setTitle:v5];

    [(STSCategoryResult *)v4 setClearButtonHidden:0];
    [(NSMutableArray *)self->_model addObject:v4];
    recents = self->_recents;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __35__CategoriesDataSource_updateModel__block_invoke;
    v19[3] = &unk_279B8A9B0;
    v19[4] = self;
    v20 = v3;
    [(NSMutableArray *)recents enumerateObjectsUsingBlock:v19];
  }

  v7 = objc_alloc_init(STSCategoryResult);
  [(STSCategoryResult *)v7 setType:2];
  v8 = STSLocalizedString(@"CATEGORIES");
  [(STSCategoryResult *)v7 setTitle:v8];

  [(STSCategoryResult *)v7 setClearButtonHidden:1];
  [(NSMutableArray *)self->_model addObject:v7];
  v9 = [(STSSearchModel *)self->_searchModel categoryList];
  v10 = [v9 copy];

  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __35__CategoriesDataSource_updateModel__block_invoke_2;
  v16 = &unk_279B8A9D8;
  v17 = self;
  v18 = v3;
  v11 = v3;
  [v10 enumerateObjectsUsingBlock:&v13];
  WeakRetained = objc_loadWeakRetained(&self->_updateDelegate);
  [WeakRetained searchModelUpdated];
}

void __35__CategoriesDataSource_updateModel__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_alloc_init(STSCategoryResult);
  [(STSCategoryResult *)v8 setType:0];
  [(STSCategoryResult *)v8 setTitle:v3];
  v4 = [objc_alloc(MEMORY[0x277D4C5D8]) initWithSuggestion:v3 query:&stru_2876AE098 score:3 type:0.0];
  [(STSCategoryResult *)v8 setSuggestion:v4];

  v5 = objc_alloc_init(MEMORY[0x277D4C5D0]);
  v6 = [MEMORY[0x277D4C690] textWithString:v3];
  [v5 setTitle:v6];

  v7 = [*(a1 + 32) _searchResultIdentifierForSuggestion:v3 recent:1];

  [v5 setIdentifier:v7];
  [v5 setType:16];
  [v5 setResultBundleId:@"com.apple.hashtagimages.categorylist.recents.recent"];
  [v5 setSectionBundleIdentifier:@"com.apple.hashtagimages.categorylist.recents"];
  [(STSCategoryResult *)v8 setSearchResult:v5];
  [*(a1 + 40) addObject:v5];
  [*(*(a1 + 32) + 48) addObject:v8];
}

void __35__CategoriesDataSource_updateModel__block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v17 = objc_alloc_init(STSCategoryResult);
  [(STSCategoryResult *)v17 setType:1];
  v6 = [v5 suggestion];
  [(STSCategoryResult *)v17 setTitle:v6];

  [(STSCategoryResult *)v17 setSuggestion:v5];
  v7 = objc_alloc_init(MEMORY[0x277D4C5D0]);
  v8 = [v5 fbr];
  [v7 setFbr:v8];

  v9 = MEMORY[0x277D4C690];
  v10 = [v5 suggestion];
  v11 = [v9 textWithString:v10];
  [v7 setTitle:v11];

  v12 = *(a1 + 32);
  v13 = [v5 suggestion];
  v14 = [v12 _searchResultIdentifierForSuggestion:v13 recent:0];
  [v7 setIdentifier:v14];

  [v7 setResultBundleId:@"com.apple.hashtagimages.categorylist.categories.category"];
  [v7 setSectionBundleIdentifier:@"com.apple.hashtagimages.categorylist.categories"];
  v15 = [v5 prediction];

  if (v15)
  {
    v16 = 15;
  }

  else
  {
    v16 = 17;
  }

  [v7 setType:v16];
  [(STSCategoryResult *)v17 setSearchResult:v7];
  if (a3 <= 0xF)
  {
    [*(a1 + 40) addObject:v7];
    [*(*(a1 + 32) + 48) addObject:v17];
  }
}

- (void)_commitClearRecents
{
  v3 = [MEMORY[0x277CBEB18] array];
  recents = self->_recents;
  self->_recents = v3;

  [(CategoriesDataSource *)self updateModel];
  [(CategoriesDataSource *)self sendRankSectionsFeedback];
  WeakRetained = objc_loadWeakRetained(&self->_updateDelegate);
  [WeakRetained sendVisibleResultsFeedback];
}

- (id)_searchResultIdentifierForSuggestion:(id)a3 recent:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([v5 length])
  {
    if (v4)
    {
      v6 = @"msgscat-recent:%@";
    }

    else
    {
      v6 = @"msgscat-cat:%@";
    }

    v7 = [MEMORY[0x277CCACA8] stringWithFormat:v6, v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)recentQueries
{
  v2 = [(NSMutableArray *)self->_recents copy];

  return v2;
}

- (void)updateRecents:(id)a3
{
  v4 = a3;
  if ([v4 count] < 4)
  {
    v6 = [v4 mutableCopy];
  }

  else
  {
    v5 = [v4 subarrayWithRange:{0, 3}];
    v6 = [v5 mutableCopy];
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v7 = [v6 count];
  if (v7 == [(NSMutableArray *)self->_recents count])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __38__CategoriesDataSource_updateRecents___block_invoke;
    v8[3] = &unk_279B8AA00;
    v8[4] = self;
    v8[5] = &v9;
    [v6 enumerateObjectsUsingBlock:v8];
    if ((v10[3] & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    *(v10 + 24) = 1;
  }

  objc_storeStrong(&self->_recents, v6);
  [(CategoriesDataSource *)self updateModel];
LABEL_9:
  _Block_object_dispose(&v9, 8);
}

void __38__CategoriesDataSource_updateRecents___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(*(a1 + 32) + 40);
  v6 = a2;
  v7 = [v5 objectAtIndex:a3];
  LOBYTE(v5) = [v6 isEqualToString:v7];

  if ((v5 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (void)addQueryToRecents:(id)a3
{
  v4 = MEMORY[0x277CCA900];
  v5 = a3;
  v6 = [v4 whitespaceCharacterSet];
  v7 = [v5 stringByTrimmingCharactersInSet:v6];

  if ([v7 length])
  {
    recents = self->_recents;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __42__CategoriesDataSource_addQueryToRecents___block_invoke;
    v14[3] = &unk_279B8AA28;
    v9 = v7;
    v15 = v9;
    v10 = [(NSMutableArray *)recents indexOfObjectPassingTest:v14];
    v11 = self->_recents;
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)v11 insertObject:v9 atIndex:0];
      if ([(NSMutableArray *)self->_recents count]>= 4)
      {
        [(NSMutableArray *)self->_recents removeLastObject];
      }
    }

    else
    {
      v12 = [(NSMutableArray *)v11 objectAtIndex:v10];
      [(NSMutableArray *)self->_recents removeObjectAtIndex:v10];
      [(NSMutableArray *)self->_recents insertObject:v12 atIndex:0];
    }

    [(CategoriesDataSource *)self updateModel];
    v13 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v13 setObject:self->_recents forKey:@"STSRecentQueries"];
    [v13 synchronize];
    [(CategoriesDataSource *)self updateModel];
  }
}

- (id)headerTitleForRow:(int64_t)a3
{
  if (a3 || ![(NSMutableArray *)self->_recents count])
  {
    v3 = @"CATEGORIES";
  }

  else
  {
    v3 = @"RECENT";
  }

  v4 = STSLocalizedString(v3);

  return v4;
}

- (BOOL)isGroupRow:(int64_t)a3
{
  if (!a3)
  {
    return 1;
  }

  return [(NSMutableArray *)self->_recents count]&& [(NSMutableArray *)self->_recents count]+ 1 == a3;
}

- (id)stringValueForRowAtIndex:(int64_t)a3
{
  v3 = [(NSMutableArray *)self->_model objectAtIndex:a3];
  v4 = [v3 title];

  return v4;
}

- (void)didSelectItemAtIndex:(int64_t)a3
{
  v13 = [(NSMutableArray *)self->_model objectAtIndex:a3];
  v4 = [v13 title];
  [(CategoriesDataSource *)self addQueryToRecents:v4];

  v5 = [v13 searchResult];

  if (v5)
  {
    v6 = +[STSFeedbackReporter sharedInstance];
    v7 = [v13 searchResult];
    v8 = [v13 suggestion];
    [v6 didEngageCategoryResult:v7 suggestion:v8];
  }

  if ([v13 type] == 1)
  {
    v9 = [v13 suggestion];
    v10 = [v9 prediction];

    v11 = [(CategoriesDataSource *)self selectionDelegate];
    v12 = [v13 title];
    [v11 categoryViewController:self didSelectCategory:v12 suggested:v10 != 0];
  }

  else
  {
    if ([v13 type])
    {
      goto LABEL_8;
    }

    v11 = [(CategoriesDataSource *)self selectionDelegate];
    v12 = [v13 title];
    [v11 categoryViewController:self didSelectRecent:v12];
  }

LABEL_8:
}

- (BOOL)rowHasClearButton:(int64_t)a3
{
  v3 = [(NSMutableArray *)self->_model objectAtIndex:a3];
  v4 = [v3 clearButtonHidden];

  return v4 ^ 1;
}

- (void)sendRankSectionsFeedback
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  model = self->_model;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __48__CategoriesDataSource_sendRankSectionsFeedback__block_invoke;
  v12 = &unk_279B8AA50;
  v13 = v3;
  v14 = v4;
  v6 = v4;
  v7 = v3;
  [(NSMutableArray *)model enumerateObjectsUsingBlock:&v9];
  v8 = [STSFeedbackReporter sharedInstance:v9];
  [v8 didLoadCategoryResults:v6 recents:v7 queryId:{-[STSSearchModel categoryListRequestQueryId](self->_searchModel, "categoryListRequestQueryId")}];
}

void __48__CategoriesDataSource_sendRankSectionsFeedback__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 type] != 2)
  {
    v3 = [v7 type];
    v4 = 40;
    if (!v3)
    {
      v4 = 32;
    }

    v5 = *(a1 + v4);
    v6 = [v7 searchResult];
    [v5 addObject:v6];
  }
}

- (id)visibleResultsForIndexPaths:(id)a3
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__CategoriesDataSource_visibleResultsForIndexPaths___block_invoke;
  v11[3] = &unk_279B8AA78;
  v11[4] = self;
  v7 = v6;
  v12 = v7;
  [v5 enumerateObjectsUsingBlock:v11];

  v8 = v12;
  v9 = v7;

  return v7;
}

void __52__CategoriesDataSource_visibleResultsForIndexPaths___block_invoke(uint64_t a1, void *a2)
{
  v5 = [*(*(a1 + 32) + 48) objectAtIndex:{objc_msgSend(a2, "row")}];
  if ([v5 type] != 2)
  {
    v3 = *(a1 + 40);
    v4 = [v5 searchResult];
    [v3 addObject:v4];
  }
}

- (STSSearchModelUpdateDelegate)updateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_updateDelegate);

  return WeakRetained;
}

- (STSCategorySelectionDelegate)selectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionDelegate);

  return WeakRetained;
}

@end