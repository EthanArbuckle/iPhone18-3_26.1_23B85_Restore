@interface SFCollectionStyleHorizontallyScrolling(SearchUICollectionModel)
- (id)searchUISectionModelForCardRowModels:()SearchUICollectionModel section:expandedCollectionSections:;
@end

@implementation SFCollectionStyleHorizontallyScrolling(SearchUICollectionModel)

- (id)searchUISectionModelForCardRowModels:()SearchUICollectionModel section:expandedCollectionSections:
{
  v6 = a4;
  v7 = a3;
  v8 = +[SearchUISectionModel sectionModelWithScrollingRowModels:numberOfRows:section:](SearchUISectionModel, "sectionModelWithScrollingRowModels:numberOfRows:section:", v7, [a1 numberOfRows], v6);

  v9 = [v8 rowModels];
  v10 = [v9 count];

  if (v10)
  {
    v11 = v8;
  }

  else
  {
    v12 = SearchUIGeneralLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [SFCollectionStyleHorizontallyScrolling(SearchUICollectionModel) searchUISectionModelForCardRowModels:v6 section:v12 expandedCollectionSections:?];
    }

    v11 = 0;
  }

  return v11;
}

- (void)searchUISectionModelForCardRowModels:()SearchUICollectionModel section:expandedCollectionSections:.cold.1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [a1 collectionSection];
  v4 = [v3 title];
  v5 = [v4 text];
  v6 = 138412290;
  v7 = v5;
  _os_log_fault_impl(&dword_1DA169000, a2, OS_LOG_TYPE_FAULT, "failed to generate scrollable card section for %@", &v6, 0xCu);
}

@end