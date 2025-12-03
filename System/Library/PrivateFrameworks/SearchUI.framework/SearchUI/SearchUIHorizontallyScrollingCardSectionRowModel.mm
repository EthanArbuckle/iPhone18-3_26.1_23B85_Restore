@interface SearchUIHorizontallyScrollingCardSectionRowModel
- (BOOL)hasLeadingImage;
- (SearchUIHorizontallyScrollingCardSectionRowModel)initWithResult:(id)result cardSection:(id)section queryId:(unint64_t)id itemIdentifier:(id)identifier builder:(id)builder;
- (SearchUIHorizontallyScrollingCardSectionRowModel)initWithResults:(id)results itemIdentifier:(id)identifier builder:(id)builder;
- (id)cardSection;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SearchUIHorizontallyScrollingCardSectionRowModel

- (SearchUIHorizontallyScrollingCardSectionRowModel)initWithResults:(id)results itemIdentifier:(id)identifier builder:(id)builder
{
  v39 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  builderCopy = builder;
  v36.receiver = self;
  v36.super_class = SearchUIHorizontallyScrollingCardSectionRowModel;
  v10 = [(SearchUIRowModel *)&v36 initWithResults:resultsCopy itemIdentifier:identifier];
  v11 = v10;
  if (v10)
  {
    v24 = v10;
    v12 = objc_opt_new();
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v25 = resultsCopy;
    obj = resultsCopy;
    v13 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v13)
    {
      v14 = v13;
      v27 = *v33;
      do
      {
        v15 = 0;
        do
        {
          if (*v33 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v32 + 1) + 8 * v15);
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v17 = [SearchUIUtilities cardSectionsForRenderingResult:v16, v24];
          v18 = [v17 countByEnumeratingWithState:&v28 objects:v37 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v29;
            do
            {
              v21 = 0;
              do
              {
                if (*v29 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = [builderCopy buildRowModelFromCardSection:*(*(&v28 + 1) + 8 * v21) result:v16];
                [v12 addObject:v22];

                ++v21;
              }

              while (v19 != v21);
              v19 = [v17 countByEnumeratingWithState:&v28 objects:v37 count:16];
            }

            while (v19);
          }

          ++v15;
        }

        while (v15 != v14);
        v14 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v14);
    }

    v11 = v24;
    [(SearchUIHorizontallyScrollingCardSectionRowModel *)v24 setCardSectionRowModels:v12];
    v24->_numberOfRows = 1;

    resultsCopy = v25;
  }

  return v11;
}

- (SearchUIHorizontallyScrollingCardSectionRowModel)initWithResult:(id)result cardSection:(id)section queryId:(unint64_t)id itemIdentifier:(id)identifier builder:(id)builder
{
  v31 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  sectionCopy = section;
  builderCopy = builder;
  v29.receiver = self;
  v29.super_class = SearchUIHorizontallyScrollingCardSectionRowModel;
  v15 = [(SearchUIRowModel *)&v29 initWithResult:resultCopy cardSection:sectionCopy queryId:id itemIdentifier:identifier];
  if (v15)
  {
    v16 = objc_opt_new();
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    cardSections = [sectionCopy cardSections];
    v18 = [cardSections countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v26;
      do
      {
        v21 = 0;
        do
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(cardSections);
          }

          v22 = [builderCopy buildRowModelFromCardSection:*(*(&v25 + 1) + 8 * v21) result:resultCopy];
          [v16 addObject:v22];

          ++v21;
        }

        while (v19 != v21);
        v19 = [cardSections countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v19);
    }

    [(SearchUIHorizontallyScrollingCardSectionRowModel *)v15 setCardSectionRowModels:v16];
    if ([sectionCopy numberOfRows])
    {
      numberOfRows = [sectionCopy numberOfRows];
    }

    else
    {
      numberOfRows = 1;
    }

    v15->_numberOfRows = numberOfRows;
  }

  return v15;
}

- (id)cardSection
{
  cardSectionRowModels = [(SearchUIHorizontallyScrollingCardSectionRowModel *)self cardSectionRowModels];
  firstObject = [cardSectionRowModels firstObject];
  cardSection = [firstObject cardSection];

  return cardSection;
}

- (BOOL)hasLeadingImage
{
  cardSectionRowModels = [(SearchUIHorizontallyScrollingCardSectionRowModel *)self cardSectionRowModels];
  firstObject = [cardSectionRowModels firstObject];
  hasLeadingImage = [firstObject hasLeadingImage];

  return hasLeadingImage;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = SearchUIHorizontallyScrollingCardSectionRowModel;
  v4 = [(SearchUIRowModel *)&v7 copyWithZone:zone];
  cardSectionRowModels = [(SearchUIHorizontallyScrollingCardSectionRowModel *)self cardSectionRowModels];
  [v4 setCardSectionRowModels:cardSectionRowModels];

  return v4;
}

@end