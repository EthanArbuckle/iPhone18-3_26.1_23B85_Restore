@interface SearchUICombinedCardSectionRowModel
- (BOOL)isDraggable;
- (NSArray)snippetUICardSections;
- (SearchUICombinedCardSectionRowModel)initWithResult:(id)result cardSectionRowModels:(id)models cardSection:(id)section dataSourceIdentifier:(id)identifier;
- (SearchUICombinedCardSectionRowModel)initWithResult:(id)result cardSectionRowModels:(id)models dataSourceIdentifier:(id)identifier;
- (id)backgroundColor;
- (id)backgroundImage;
- (id)cardSection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dragSubtitle;
- (id)dragText;
- (id)dragTitle;
- (id)dragURL;
- (id)firstRowModel;
- (id)nextCard;
- (id)punchouts;
- (id)reuseIdentifier;
- (int)separatorStyle;
- (void)setIsTopHit:(BOOL)hit;
@end

@implementation SearchUICombinedCardSectionRowModel

- (SearchUICombinedCardSectionRowModel)initWithResult:(id)result cardSectionRowModels:(id)models dataSourceIdentifier:(id)identifier
{
  modelsCopy = models;
  v12.receiver = self;
  v12.super_class = SearchUICombinedCardSectionRowModel;
  v9 = [(SearchUIRowModel *)&v12 initWithResult:result itemIdentifier:identifier];
  v10 = v9;
  if (v9)
  {
    [(SearchUICombinedCardSectionRowModel *)v9 setCardSectionRowModels:modelsCopy];
  }

  return v10;
}

- (SearchUICombinedCardSectionRowModel)initWithResult:(id)result cardSectionRowModels:(id)models cardSection:(id)section dataSourceIdentifier:(id)identifier
{
  modelsCopy = models;
  identifierCopy = identifier;
  sectionCopy = section;
  resultCopy = result;
  v16.receiver = self;
  v16.super_class = SearchUICombinedCardSectionRowModel;
  v14 = -[SearchUIRowModel initWithResult:cardSection:queryId:itemIdentifier:](&v16, sel_initWithResult_cardSection_queryId_itemIdentifier_, resultCopy, sectionCopy, [resultCopy queryId], identifierCopy);

  if (v14)
  {
    [(SearchUICombinedCardSectionRowModel *)v14 setCardSectionRowModels:modelsCopy];
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
  cardSectionRowModels = [(SearchUICombinedCardSectionRowModel *)self cardSectionRowModels];
  nextCard2 = [cardSectionRowModels countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (nextCard2)
  {
    v5 = *v16;
    while (2)
    {
      for (i = 0; i != nextCard2; i = i + 1)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(cardSectionRowModels);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        nextCard = [v7 nextCard];

        if (nextCard)
        {
          nextCard2 = [v7 nextCard];
          goto LABEL_11;
        }
      }

      nextCard2 = [cardSectionRowModels countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (nextCard2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  identifyingResult = [(SearchUIRowModel *)self identifyingResult];
  card = [identifyingResult card];
  v11 = card;
  if (card)
  {
    v12 = card;
  }

  else
  {
    v12 = nextCard2;
  }

  v13 = v12;

  return v12;
}

- (int)separatorStyle
{
  cardSectionRowModels = [(SearchUICombinedCardSectionRowModel *)self cardSectionRowModels];
  lastObject = [cardSectionRowModels lastObject];
  separatorStyle = [lastObject separatorStyle];

  return separatorStyle;
}

- (NSArray)snippetUICardSections
{
  v3 = objc_opt_new();
  v4 = [SnippetUIUtilities supportsConfigurationForCombinedRowModel:self];

  return v4;
}

- (id)reuseIdentifier
{
  snippetUICardSections = [(SearchUICombinedCardSectionRowModel *)self snippetUICardSections];
  if ([snippetUICardSections count])
  {
    reuseIdentifier = @"SnippetUICombinedCell";
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SearchUICombinedCardSectionRowModel;
    reuseIdentifier = [(SearchUIRowModel *)&v6 reuseIdentifier];
  }

  return reuseIdentifier;
}

- (id)punchouts
{
  v23[1] = *MEMORY[0x1E69E9840];
  identifyingResult = [(SearchUIRowModel *)self identifyingResult];
  punchout = [identifyingResult punchout];
  if (punchout)
  {
    v5 = punchout;
    identifyingResult2 = [(SearchUIRowModel *)self identifyingResult];
    punchout2 = [identifyingResult2 punchout];
    v23[0] = punchout2;
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
  cardSectionRowModels = [(SearchUICombinedCardSectionRowModel *)self cardSectionRowModels];
  v10 = [cardSectionRowModels countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(cardSectionRowModels);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        punchouts = [v14 punchouts];

        if (punchouts)
        {
          punchouts2 = [v14 punchouts];

          v8 = punchouts2;
        }
      }

      v11 = [cardSectionRowModels countByEnumeratingWithState:&v18 objects:v22 count:16];
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
  cardSectionRowModels = [(SearchUICombinedCardSectionRowModel *)self cardSectionRowModels];
  dragURL2 = [cardSectionRowModels countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (dragURL2)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != dragURL2; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(cardSectionRowModels);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        dragURL = [v6 dragURL];

        if (dragURL)
        {
          dragURL2 = [v6 dragURL];
          goto LABEL_11;
        }
      }

      dragURL2 = [cardSectionRowModels countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (dragURL2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return dragURL2;
}

- (id)firstRowModel
{
  cardSectionRowModels = [(SearchUICombinedCardSectionRowModel *)self cardSectionRowModels];
  firstObject = [cardSectionRowModels firstObject];

  return firstObject;
}

- (id)dragTitle
{
  firstRowModel = [(SearchUICombinedCardSectionRowModel *)self firstRowModel];
  dragTitle = [firstRowModel dragTitle];

  return dragTitle;
}

- (id)dragText
{
  firstRowModel = [(SearchUICombinedCardSectionRowModel *)self firstRowModel];
  dragText = [firstRowModel dragText];

  return dragText;
}

- (id)dragSubtitle
{
  firstRowModel = [(SearchUICombinedCardSectionRowModel *)self firstRowModel];
  dragSubtitle = [firstRowModel dragSubtitle];

  return dragSubtitle;
}

- (BOOL)isDraggable
{
  firstRowModel = [(SearchUICombinedCardSectionRowModel *)self firstRowModel];
  isDraggable = [firstRowModel isDraggable];

  return isDraggable;
}

- (id)cardSection
{
  v8.receiver = self;
  v8.super_class = SearchUICombinedCardSectionRowModel;
  cardSection = [(SearchUIRowModel *)&v8 cardSection];

  if (cardSection)
  {
    v7.receiver = self;
    v7.super_class = SearchUICombinedCardSectionRowModel;
    cardSection2 = [(SearchUIRowModel *)&v7 cardSection];
  }

  else
  {
    firstRowModel = [(SearchUICombinedCardSectionRowModel *)self firstRowModel];
    cardSection2 = [firstRowModel cardSection];
  }

  return cardSection2;
}

- (id)backgroundColor
{
  if ([(SearchUIRowModel *)self allowBackgroundColor])
  {
    v12.receiver = self;
    v12.super_class = SearchUICombinedCardSectionRowModel;
    cardSection = [(SearchUIRowModel *)&v12 cardSection];

    if (!cardSection || (v11.receiver = self, v11.super_class = SearchUICombinedCardSectionRowModel, [(SearchUIRowModel *)&v11 backgroundColor], (backgroundColor2 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      identifyingResult = [(SearchUIRowModel *)self identifyingResult];
      v6 = [SearchUIUtilities cardForRenderingResult:identifyingResult];
      backgroundColor = [v6 backgroundColor];
      v8 = backgroundColor;
      if (backgroundColor)
      {
        backgroundColor2 = backgroundColor;
      }

      else
      {
        firstRowModel = [(SearchUICombinedCardSectionRowModel *)self firstRowModel];
        backgroundColor2 = [firstRowModel backgroundColor];
      }
    }
  }

  else
  {
    backgroundColor2 = 0;
  }

  return backgroundColor2;
}

- (id)backgroundImage
{
  v12.receiver = self;
  v12.super_class = SearchUICombinedCardSectionRowModel;
  cardSection = [(SearchUIRowModel *)&v12 cardSection];

  if (!cardSection || (v11.receiver = self, v11.super_class = SearchUICombinedCardSectionRowModel, [(SearchUIRowModel *)&v11 backgroundImage], (backgroundImage2 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    identifyingResult = [(SearchUIRowModel *)self identifyingResult];
    v6 = [SearchUIUtilities cardForRenderingResult:identifyingResult];
    backgroundImage = [v6 backgroundImage];
    v8 = backgroundImage;
    if (backgroundImage)
    {
      backgroundImage2 = backgroundImage;
    }

    else
    {
      firstRowModel = [(SearchUICombinedCardSectionRowModel *)self firstRowModel];
      backgroundImage2 = [firstRowModel backgroundImage];
    }
  }

  return backgroundImage2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = SearchUICombinedCardSectionRowModel;
  v4 = [(SearchUIRowModel *)&v7 copyWithZone:zone];
  cardSectionRowModels = [(SearchUICombinedCardSectionRowModel *)self cardSectionRowModels];
  [v4 setCardSectionRowModels:cardSectionRowModels];

  return v4;
}

- (void)setIsTopHit:(BOOL)hit
{
  hitCopy = hit;
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = SearchUICombinedCardSectionRowModel;
  [(SearchUIRowModel *)&v14 setIsTopHit:?];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  cardSectionRowModels = [(SearchUICombinedCardSectionRowModel *)self cardSectionRowModels];
  v6 = [cardSectionRowModels countByEnumeratingWithState:&v10 objects:v15 count:16];
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
          objc_enumerationMutation(cardSectionRowModels);
        }

        [*(*(&v10 + 1) + 8 * v9++) setIsTopHit:hitCopy];
      }

      while (v7 != v9);
      v7 = [cardSectionRowModels countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

@end