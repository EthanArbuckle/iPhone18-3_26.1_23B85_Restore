@interface SearchUIListenToAsyncSectionLoader
+ (BOOL)supportsSectionModel:(id)model;
- (SearchUIListenToAsyncSectionLoader)initWithSectionModel:(id)model result:(id)result queryId:(unint64_t)id;
- (id)cacheIdentifier;
- (id)placeholderCardSections;
- (void)fetchCardSectionsWithCompletionHandler:(id)handler;
@end

@implementation SearchUIListenToAsyncSectionLoader

+ (BOOL)supportsSectionModel:(id)model
{
  modelCopy = model;
  rowModels = [modelCopy rowModels];
  if ([rowModels count] == 1)
  {
    rowModels2 = [modelCopy rowModels];
    firstObject = [rowModels2 firstObject];
    cardSection = [firstObject cardSection];
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
  listenToCardSection = [(SearchUIListenToAsyncSectionLoader *)self listenToCardSection];
  fallbackCardSection = [listenToCardSection fallbackCardSection];

  if (fallbackCardSection)
  {
    listenToCardSection2 = [(SearchUIListenToAsyncSectionLoader *)self listenToCardSection];
    fallbackCardSection2 = [listenToCardSection2 fallbackCardSection];
    v10[0] = fallbackCardSection2;
    placeholderCardSections = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SearchUIListenToAsyncSectionLoader;
    placeholderCardSections = [(SearchUIAsyncSectionLoader *)&v9 placeholderCardSections];
  }

  return placeholderCardSections;
}

- (SearchUIListenToAsyncSectionLoader)initWithSectionModel:(id)model result:(id)result queryId:(unint64_t)id
{
  modelCopy = model;
  v14.receiver = self;
  v14.super_class = SearchUIListenToAsyncSectionLoader;
  v9 = [(SearchUIAsyncSectionLoader *)&v14 initWithSectionModel:modelCopy result:result queryId:id];
  if (v9)
  {
    rowModels = [modelCopy rowModels];
    firstObject = [rowModels firstObject];
    cardSection = [firstObject cardSection];
    [(SearchUIListenToAsyncSectionLoader *)v9 setListenToCardSection:cardSection];
  }

  return v9;
}

- (id)cacheIdentifier
{
  listenToCardSection = [(SearchUIListenToAsyncSectionLoader *)self listenToCardSection];
  resultIdentifier = [listenToCardSection resultIdentifier];

  return resultIdentifier;
}

- (void)fetchCardSectionsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = objc_opt_new();
  listenToCardSection = [(SearchUIListenToAsyncSectionLoader *)self listenToCardSection];
  v6 = [SearchUIMediaUtilities cardSectionsForListenToCardSection:listenToCardSection];
  [v7 setCardSection:v6];

  [v7 setAnimated:1];
  handlerCopy[2](handlerCopy, v7);
}

@end