@interface SearchUICombinedCardSectionRowModel
- (BOOL)isDraggable;
- (NSArray)snippetUICardSections;
- (SearchUICombinedCardSectionRowModel)initWithResult:(id)a3 cardSectionRowModels:(id)a4 cardSection:(id)a5 dataSourceIdentifier:(id)a6;
- (SearchUICombinedCardSectionRowModel)initWithResult:(id)a3 cardSectionRowModels:(id)a4 dataSourceIdentifier:(id)a5;
- (id)backgroundColor;
- (id)backgroundImage;
- (id)cardSection;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dragSubtitle;
- (id)dragText;
- (id)dragTitle;
- (id)dragURL;
- (id)firstRowModel;
- (id)nextCard;
- (id)punchouts;
- (id)reuseIdentifier;
- (int)separatorStyle;
- (void)setIsTopHit:(BOOL)a3;
@end

@implementation SearchUICombinedCardSectionRowModel

- (SearchUICombinedCardSectionRowModel)initWithResult:(id)a3 cardSectionRowModels:(id)a4 dataSourceIdentifier:(id)a5
{
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SearchUICombinedCardSectionRowModel;
  v9 = [(SearchUIRowModel *)&v12 initWithResult:a3 itemIdentifier:a5];
  v10 = v9;
  if (v9)
  {
    [(SearchUICombinedCardSectionRowModel *)v9 setCardSectionRowModels:v8];
  }

  return v10;
}

- (SearchUICombinedCardSectionRowModel)initWithResult:(id)a3 cardSectionRowModels:(id)a4 cardSection:(id)a5 dataSourceIdentifier:(id)a6
{
  v10 = a4;
  v11 = a6;
  v12 = a5;
  v13 = a3;
  v16.receiver = self;
  v16.super_class = SearchUICombinedCardSectionRowModel;
  v14 = -[SearchUIRowModel initWithResult:cardSection:queryId:itemIdentifier:](&v16, sel_initWithResult_cardSection_queryId_itemIdentifier_, v13, v12, [v13 queryId], v11);

  if (v14)
  {
    [(SearchUICombinedCardSectionRowModel *)v14 setCardSectionRowModels:v10];
  }

  return v14;
}

- (id)nextCard
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(SearchUICombinedCardSectionRowModel *)self cardSectionRowModels];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = *v16;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = [v7 nextCard];

        if (v8)
        {
          v4 = [v7 nextCard];
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = [(SearchUIRowModel *)self identifyingResult];
  v10 = [v9 card];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v4;
  }

  v13 = v12;

  return v12;
}

- (int)separatorStyle
{
  v2 = [(SearchUICombinedCardSectionRowModel *)self cardSectionRowModels];
  v3 = [v2 lastObject];
  v4 = [v3 separatorStyle];

  return v4;
}

- (NSArray)snippetUICardSections
{
  v3 = objc_opt_new();
  v4 = [SnippetUIUtilities supportsConfigurationForCombinedRowModel:self];

  return v4;
}

- (id)reuseIdentifier
{
  v3 = [(SearchUICombinedCardSectionRowModel *)self snippetUICardSections];
  if ([v3 count])
  {
    v4 = @"SnippetUICombinedCell";
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SearchUICombinedCardSectionRowModel;
    v4 = [(SearchUIRowModel *)&v6 reuseIdentifier];
  }

  return v4;
}

- (id)punchouts
{
  v23[1] = *MEMORY[0x1E69E9840];
  v3 = [(SearchUIRowModel *)self identifyingResult];
  v4 = [v3 punchout];
  if (v4)
  {
    v5 = v4;
    v6 = [(SearchUIRowModel *)self identifyingResult];
    v7 = [v6 punchout];
    v23[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];

    if (v8)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [(SearchUICombinedCardSectionRowModel *)self cardSectionRowModels];
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v8 = 0;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [v14 punchouts];

        if (v15)
        {
          v16 = [v14 punchouts];

          v8 = v16;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  else
  {
    v8 = 0;
  }

LABEL_17:

  return v8;
}

- (id)dragURL
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(SearchUICombinedCardSectionRowModel *)self cardSectionRowModels];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        v7 = [v6 dragURL];

        if (v7)
        {
          v3 = [v6 dragURL];
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (id)firstRowModel
{
  v2 = [(SearchUICombinedCardSectionRowModel *)self cardSectionRowModels];
  v3 = [v2 firstObject];

  return v3;
}

- (id)dragTitle
{
  v2 = [(SearchUICombinedCardSectionRowModel *)self firstRowModel];
  v3 = [v2 dragTitle];

  return v3;
}

- (id)dragText
{
  v2 = [(SearchUICombinedCardSectionRowModel *)self firstRowModel];
  v3 = [v2 dragText];

  return v3;
}

- (id)dragSubtitle
{
  v2 = [(SearchUICombinedCardSectionRowModel *)self firstRowModel];
  v3 = [v2 dragSubtitle];

  return v3;
}

- (BOOL)isDraggable
{
  v2 = [(SearchUICombinedCardSectionRowModel *)self firstRowModel];
  v3 = [v2 isDraggable];

  return v3;
}

- (id)cardSection
{
  v8.receiver = self;
  v8.super_class = SearchUICombinedCardSectionRowModel;
  v3 = [(SearchUIRowModel *)&v8 cardSection];

  if (v3)
  {
    v7.receiver = self;
    v7.super_class = SearchUICombinedCardSectionRowModel;
    v4 = [(SearchUIRowModel *)&v7 cardSection];
  }

  else
  {
    v5 = [(SearchUICombinedCardSectionRowModel *)self firstRowModel];
    v4 = [v5 cardSection];
  }

  return v4;
}

- (id)backgroundColor
{
  if ([(SearchUIRowModel *)self allowBackgroundColor])
  {
    v12.receiver = self;
    v12.super_class = SearchUICombinedCardSectionRowModel;
    v3 = [(SearchUIRowModel *)&v12 cardSection];

    if (!v3 || (v11.receiver = self, v11.super_class = SearchUICombinedCardSectionRowModel, [(SearchUIRowModel *)&v11 backgroundColor], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v5 = [(SearchUIRowModel *)self identifyingResult];
      v6 = [SearchUIUtilities cardForRenderingResult:v5];
      v7 = [v6 backgroundColor];
      v8 = v7;
      if (v7)
      {
        v4 = v7;
      }

      else
      {
        v9 = [(SearchUICombinedCardSectionRowModel *)self firstRowModel];
        v4 = [v9 backgroundColor];
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)backgroundImage
{
  v12.receiver = self;
  v12.super_class = SearchUICombinedCardSectionRowModel;
  v3 = [(SearchUIRowModel *)&v12 cardSection];

  if (!v3 || (v11.receiver = self, v11.super_class = SearchUICombinedCardSectionRowModel, [(SearchUIRowModel *)&v11 backgroundImage], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = [(SearchUIRowModel *)self identifyingResult];
    v6 = [SearchUIUtilities cardForRenderingResult:v5];
    v7 = [v6 backgroundImage];
    v8 = v7;
    if (v7)
    {
      v4 = v7;
    }

    else
    {
      v9 = [(SearchUICombinedCardSectionRowModel *)self firstRowModel];
      v4 = [v9 backgroundImage];
    }
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = SearchUICombinedCardSectionRowModel;
  v4 = [(SearchUIRowModel *)&v7 copyWithZone:a3];
  v5 = [(SearchUICombinedCardSectionRowModel *)self cardSectionRowModels];
  [v4 setCardSectionRowModels:v5];

  return v4;
}

- (void)setIsTopHit:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = SearchUICombinedCardSectionRowModel;
  [(SearchUIRowModel *)&v14 setIsTopHit:?];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [(SearchUICombinedCardSectionRowModel *)self cardSectionRowModels];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) setIsTopHit:v3];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

@end