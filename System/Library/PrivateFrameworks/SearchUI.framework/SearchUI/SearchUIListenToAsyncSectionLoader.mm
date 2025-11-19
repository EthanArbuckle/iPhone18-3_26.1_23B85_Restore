@interface SearchUIListenToAsyncSectionLoader
+ (BOOL)supportsSectionModel:(id)a3;
- (SearchUIListenToAsyncSectionLoader)initWithSectionModel:(id)a3 result:(id)a4 queryId:(unint64_t)a5;
- (id)cacheIdentifier;
- (id)placeholderCardSections;
- (void)fetchCardSectionsWithCompletionHandler:(id)a3;
@end

@implementation SearchUIListenToAsyncSectionLoader

+ (BOOL)supportsSectionModel:(id)a3
{
  v3 = a3;
  v4 = [v3 rowModels];
  if ([v4 count] == 1)
  {
    v5 = [v3 rowModels];
    v6 = [v5 firstObject];
    v7 = [v6 cardSection];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (id)placeholderCardSections
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [(SearchUIListenToAsyncSectionLoader *)self listenToCardSection];
  v4 = [v3 fallbackCardSection];

  if (v4)
  {
    v5 = [(SearchUIListenToAsyncSectionLoader *)self listenToCardSection];
    v6 = [v5 fallbackCardSection];
    v10[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SearchUIListenToAsyncSectionLoader;
    v7 = [(SearchUIAsyncSectionLoader *)&v9 placeholderCardSections];
  }

  return v7;
}

- (SearchUIListenToAsyncSectionLoader)initWithSectionModel:(id)a3 result:(id)a4 queryId:(unint64_t)a5
{
  v8 = a3;
  v14.receiver = self;
  v14.super_class = SearchUIListenToAsyncSectionLoader;
  v9 = [(SearchUIAsyncSectionLoader *)&v14 initWithSectionModel:v8 result:a4 queryId:a5];
  if (v9)
  {
    v10 = [v8 rowModels];
    v11 = [v10 firstObject];
    v12 = [v11 cardSection];
    [(SearchUIListenToAsyncSectionLoader *)v9 setListenToCardSection:v12];
  }

  return v9;
}

- (id)cacheIdentifier
{
  v2 = [(SearchUIListenToAsyncSectionLoader *)self listenToCardSection];
  v3 = [v2 resultIdentifier];

  return v3;
}

- (void)fetchCardSectionsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v7 = objc_opt_new();
  v5 = [(SearchUIListenToAsyncSectionLoader *)self listenToCardSection];
  v6 = [SearchUIMediaUtilities cardSectionsForListenToCardSection:v5];
  [v7 setCardSection:v6];

  [v7 setAnimated:1];
  v4[2](v4, v7);
}

@end