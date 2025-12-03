@interface SearchUIImageGridRowModel
- (Class)cardSectionViewClass;
- (SearchUIImageGridRowModel)initWithResult:(id)result cardSection:(id)section isInline:(BOOL)inline queryId:(unint64_t)id itemIdentifier:(id)identifier builder:(id)builder;
- (SearchUIImageGridRowModel)initWithResults:(id)results itemIdentifier:(id)identifier builder:(id)builder;
- (id)cardSection;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SearchUIImageGridRowModel

- (SearchUIImageGridRowModel)initWithResults:(id)results itemIdentifier:(id)identifier builder:(id)builder
{
  v44 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  builderCopy = builder;
  v41.receiver = self;
  v41.super_class = SearchUIImageGridRowModel;
  v9 = [(SearchUIRowModel *)&v41 initWithResults:resultsCopy itemIdentifier:identifier];
  v10 = v9;
  if (v9)
  {
    v24 = v9;
    v27 = objc_opt_new();
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v25 = resultsCopy;
    obj = resultsCopy;
    v11 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v38;
      do
      {
        v14 = 0;
        do
        {
          if (*v38 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v37 + 1) + 8 * v14);
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __68__SearchUIImageGridRowModel_initWithResults_itemIdentifier_builder___block_invoke;
          aBlock[3] = &unk_1E85B40C0;
          v16 = v27;
          v34 = v16;
          v35 = builderCopy;
          v36 = v15;
          v17 = _Block_copy(aBlock);
          [v16 count];
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v18 = [SearchUIUtilities cardSectionsForRenderingResult:v15];
          v19 = [v18 countByEnumeratingWithState:&v29 objects:v42 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v30;
            do
            {
              v22 = 0;
              do
              {
                if (*v30 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v17[2](v17, *(*(&v29 + 1) + 8 * v22++));
              }

              while (v20 != v22);
              v20 = [v18 countByEnumeratingWithState:&v29 objects:v42 count:16];
            }

            while (v20);
          }

          ++v14;
        }

        while (v14 != v12);
        v12 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v12);
    }

    v10 = v24;
    [(SearchUIImageGridRowModel *)v24 setCardSectionRowModels:v27];

    resultsCopy = v25;
  }

  return v10;
}

void __68__SearchUIImageGridRowModel_initWithResults_itemIdentifier_builder___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [v3 cardSections];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(a1 + 32);
          v10 = [*(a1 + 40) buildRowModelFromCardSection:*(*(&v11 + 1) + 8 * v8) result:*(a1 + 48)];
          [v9 addObject:v10];

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }
}

- (SearchUIImageGridRowModel)initWithResult:(id)result cardSection:(id)section isInline:(BOOL)inline queryId:(unint64_t)id itemIdentifier:(id)identifier builder:(id)builder
{
  v31 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  sectionCopy = section;
  builderCopy = builder;
  v29.receiver = self;
  v29.super_class = SearchUIImageGridRowModel;
  v16 = [(SearchUIRowModel *)&v29 initWithResult:resultCopy cardSection:sectionCopy queryId:id itemIdentifier:identifier];
  if (v16)
  {
    v17 = objc_opt_new();
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    cardSections = [sectionCopy cardSections];
    v19 = [cardSections countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v26;
      do
      {
        v22 = 0;
        do
        {
          if (*v26 != v21)
          {
            objc_enumerationMutation(cardSections);
          }

          v23 = [builderCopy buildRowModelFromCardSection:*(*(&v25 + 1) + 8 * v22) result:resultCopy];
          [v17 addObject:v23];

          ++v22;
        }

        while (v20 != v22);
        v20 = [cardSections countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v20);
    }

    [(SearchUIImageGridRowModel *)v16 setCardSectionRowModels:v17];
  }

  return v16;
}

- (id)cardSection
{
  identifyingResult = [(SearchUIRowModel *)self identifyingResult];
  v4 = [SearchUIUtilities cardSectionsForRenderingResult:identifyingResult];
  firstObject = [v4 firstObject];
  v6 = firstObject;
  if (firstObject)
  {
    cardSection = firstObject;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SearchUIImageGridRowModel;
    cardSection = [(SearchUIRowModel *)&v10 cardSection];
  }

  v8 = cardSection;

  return v8;
}

- (Class)cardSectionViewClass
{
  v2 = objc_opt_new();
  v3 = [SearchUICardSectionCreator viewClassForCardSection:v2 horizontal:0];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = SearchUIImageGridRowModel;
  v4 = [(SearchUICardSectionRowModel *)&v7 copyWithZone:zone];
  cardSectionRowModels = [(SearchUIImageGridRowModel *)self cardSectionRowModels];
  [v4 setCardSectionRowModels:cardSectionRowModels];

  return v4;
}

@end