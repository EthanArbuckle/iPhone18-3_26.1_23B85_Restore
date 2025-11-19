@interface SearchUIHorizontallyScrollingCardSectionRowModel
- (BOOL)hasLeadingImage;
- (SearchUIHorizontallyScrollingCardSectionRowModel)initWithResult:(id)a3 cardSection:(id)a4 queryId:(unint64_t)a5 itemIdentifier:(id)a6 builder:(id)a7;
- (SearchUIHorizontallyScrollingCardSectionRowModel)initWithResults:(id)a3 itemIdentifier:(id)a4 builder:(id)a5;
- (id)cardSection;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SearchUIHorizontallyScrollingCardSectionRowModel

- (SearchUIHorizontallyScrollingCardSectionRowModel)initWithResults:(id)a3 itemIdentifier:(id)a4 builder:(id)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v36.receiver = self;
  v36.super_class = SearchUIHorizontallyScrollingCardSectionRowModel;
  v10 = [(SearchUIRowModel *)&v36 initWithResults:v8 itemIdentifier:a4];
  v11 = v10;
  if (v10)
  {
    v24 = v10;
    v12 = objc_opt_new();
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v25 = v8;
    obj = v8;
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

                v22 = [v9 buildRowModelFromCardSection:*(*(&v28 + 1) + 8 * v21) result:v16];
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

    v8 = v25;
  }

  return v11;
}

- (SearchUIHorizontallyScrollingCardSectionRowModel)initWithResult:(id)a3 cardSection:(id)a4 queryId:(unint64_t)a5 itemIdentifier:(id)a6 builder:(id)a7
{
  v31 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v29.receiver = self;
  v29.super_class = SearchUIHorizontallyScrollingCardSectionRowModel;
  v15 = [(SearchUIRowModel *)&v29 initWithResult:v12 cardSection:v13 queryId:a5 itemIdentifier:a6];
  if (v15)
  {
    v16 = objc_opt_new();
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v17 = [v13 cardSections];
    v18 = [v17 countByEnumeratingWithState:&v25 objects:v30 count:16];
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
            objc_enumerationMutation(v17);
          }

          v22 = [v14 buildRowModelFromCardSection:*(*(&v25 + 1) + 8 * v21) result:v12];
          [v16 addObject:v22];

          ++v21;
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v19);
    }

    [(SearchUIHorizontallyScrollingCardSectionRowModel *)v15 setCardSectionRowModels:v16];
    if ([v13 numberOfRows])
    {
      v23 = [v13 numberOfRows];
    }

    else
    {
      v23 = 1;
    }

    v15->_numberOfRows = v23;
  }

  return v15;
}

- (id)cardSection
{
  v2 = [(SearchUIHorizontallyScrollingCardSectionRowModel *)self cardSectionRowModels];
  v3 = [v2 firstObject];
  v4 = [v3 cardSection];

  return v4;
}

- (BOOL)hasLeadingImage
{
  v2 = [(SearchUIHorizontallyScrollingCardSectionRowModel *)self cardSectionRowModels];
  v3 = [v2 firstObject];
  v4 = [v3 hasLeadingImage];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = SearchUIHorizontallyScrollingCardSectionRowModel;
  v4 = [(SearchUIRowModel *)&v7 copyWithZone:a3];
  v5 = [(SearchUIHorizontallyScrollingCardSectionRowModel *)self cardSectionRowModels];
  [v4 setCardSectionRowModels:v5];

  return v4;
}

@end