@interface SearchUICombinedCardSectionsView
- (SearchUICombinedCardSectionsView)init;
- (SearchUICombinedCardSectionsView)initWithRowModel:(id)model feedbackDelegate:(id)delegate;
- (SearchUIFeedbackDelegate)feedbackDelegate;
- (int64_t)numberOfSeparators;
- (void)layoutAllSeparators;
- (void)layoutSubviews;
- (void)setRowModel:(id)model;
@end

@implementation SearchUICombinedCardSectionsView

- (SearchUICombinedCardSectionsView)init
{
  v8.receiver = self;
  v8.super_class = SearchUICombinedCardSectionsView;
  v2 = [(SearchUICombinedCardSectionsView *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(NUIContainerStackView *)v2 setAxis:1];
    [(NUIContainerStackView *)v3 setDistribution:6];
    [(SearchUICombinedCardSectionsView *)v3 setArrangedSubviewRemovalPolicy:1];
    [(SearchUICombinedCardSectionsView *)v3 setArrangedSubviewAdditionPolicy:1];
    v4 = objc_opt_new();
    [(SearchUICombinedCardSectionsView *)v3 setCardSectionsMapping:v4];

    v5 = objc_opt_new();
    [(SearchUICombinedCardSectionsView *)v3 setUncacheableViews:v5];

    v6 = objc_opt_new();
    [(SearchUICombinedCardSectionsView *)v3 setSeparatorViews:v6];
  }

  return v3;
}

- (SearchUICombinedCardSectionsView)initWithRowModel:(id)model feedbackDelegate:(id)delegate
{
  modelCopy = model;
  delegateCopy = delegate;
  v8 = [(SearchUICombinedCardSectionsView *)self init];
  v9 = v8;
  if (v8)
  {
    [(SearchUICombinedCardSectionsView *)v8 setFeedbackDelegate:delegateCopy];
    [(SearchUICombinedCardSectionsView *)v9 setRowModel:modelCopy];
  }

  return v9;
}

- (int64_t)numberOfSeparators
{
  separatorViews = [(SearchUICombinedCardSectionsView *)self separatorViews];
  v3 = [separatorViews count];

  return v3;
}

- (void)setRowModel:(id)model
{
  v78 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  if (self->_rowModel != modelCopy)
  {
    objc_storeStrong(&self->_rowModel, model);
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    uncacheableViews = [(SearchUICombinedCardSectionsView *)self uncacheableViews];
    v6 = [uncacheableViews countByEnumeratingWithState:&v71 objects:v77 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v72;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v72 != v8)
          {
            objc_enumerationMutation(uncacheableViews);
          }

          [*(*(&v71 + 1) + 8 * i) removeFromSuperview];
        }

        v7 = [uncacheableViews countByEnumeratingWithState:&v71 objects:v77 count:16];
      }

      while (v7);
    }

    uncacheableViews2 = [(SearchUICombinedCardSectionsView *)self uncacheableViews];
    [uncacheableViews2 removeAllObjects];

    separatorViews = [(SearchUICombinedCardSectionsView *)self separatorViews];
    [separatorViews removeAllObjects];

    v12 = objc_opt_new();
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    cardSectionRowModels = [(SearchUICombinedCardSectionRowModel *)modelCopy cardSectionRowModels];
    v14 = [cardSectionRowModels countByEnumeratingWithState:&v67 objects:v76 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v68;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v68 != v16)
          {
            objc_enumerationMutation(cardSectionRowModels);
          }

          cardSection = [*(*(&v67 + 1) + 8 * j) cardSection];
          [v12 addObject:cardSection];
        }

        v15 = [cardSectionRowModels countByEnumeratingWithState:&v67 objects:v76 count:16];
      }

      while (v15);
    }

    v62 = [SearchUITableModel tableModelWithCardSections:v12 isInline:1 queryId:[(SearchUIRowModel *)modelCopy queryId]];
    v58 = objc_opt_new();
    v19 = objc_opt_new();
    cardSectionRowModels2 = [(SearchUICombinedCardSectionRowModel *)modelCopy cardSectionRowModels];
    [(SearchUICombinedCardSectionsView *)self setHasAttributionFooter:0];
    v61 = cardSectionRowModels2;
    if ([cardSectionRowModels2 count])
    {
      for (k = 0; k < [v61 count]; ++k)
      {
        v22 = [cardSectionRowModels2 objectAtIndexedSubscript:{k, v58}];
        [v22 setAllowAdjustmentsForConcentricity:0];
        reuseIdentifier = [v22 reuseIdentifier];
        if (reuseIdentifier)
        {
          cardSectionsMapping = [(SearchUICombinedCardSectionsView *)self cardSectionsMapping];
          v25 = [cardSectionsMapping objectForKeyedSubscript:reuseIdentifier];
          v26 = [v25 count];

          if (v26)
          {
            cardSectionsMapping2 = [(SearchUICombinedCardSectionsView *)self cardSectionsMapping];
            v28 = [cardSectionsMapping2 objectForKeyedSubscript:reuseIdentifier];
            lastObject = [v28 lastObject];

            [lastObject updateWithRowModel:v22];
            cardSectionsMapping3 = [(SearchUICombinedCardSectionsView *)self cardSectionsMapping];
            v31 = [cardSectionsMapping3 objectForKeyedSubscript:reuseIdentifier];
            [v31 removeLastObject];
          }

          else
          {
            cardSectionsMapping3 = [(SearchUICombinedCardSectionsView *)self feedbackDelegate];
            lastObject = [SearchUICardSectionCreator cardSectionViewForModel:v22 feedbackDelegate:cardSectionsMapping3];
          }

          v34 = [v19 objectForKeyedSubscript:reuseIdentifier];

          if (!v34)
          {
            v35 = objc_opt_new();
            [v19 setObject:v35 forKeyedSubscript:reuseIdentifier];
          }

          v36 = [v19 objectForKeyedSubscript:reuseIdentifier];
          [v36 addObject:lastObject];

          if (lastObject)
          {
            goto LABEL_27;
          }
        }

        else
        {
          feedbackDelegate = [(SearchUICombinedCardSectionsView *)self feedbackDelegate];
          lastObject = [SearchUICardSectionCreator cardSectionViewForModel:v22 feedbackDelegate:feedbackDelegate];

          if (lastObject)
          {
            uncacheableViews3 = [(SearchUICombinedCardSectionsView *)self uncacheableViews];
            [uncacheableViews3 addObject:lastObject];

LABEL_27:
            [v58 addObject:lastObject];
            objc_opt_class();
            v37 = 1;
            if (objc_opt_isKindOfClass())
            {
              [(SearchUICombinedCardSectionsView *)self setHasAttributionFooter:1];
            }

            goto LABEL_30;
          }
        }

        v37 = 0;
LABEL_30:
        v38 = [MEMORY[0x1E696AC88] indexPathForRow:k inSection:0];
        v39 = [v62 separatorStyleForIndexPath:v38];

        if (v37)
        {
          if (v39 != 1)
          {
            cardSectionRowModels3 = [(SearchUICombinedCardSectionRowModel *)modelCopy cardSectionRowModels];
            lastObject2 = [cardSectionRowModels3 lastObject];

            if (v22 != lastObject2)
            {
              v42 = objc_opt_new();
              uncacheableViews4 = [(SearchUICombinedCardSectionsView *)self uncacheableViews];
              [uncacheableViews4 addObject:v42];

              separatorViews2 = [(SearchUICombinedCardSectionsView *)self separatorViews];
              [separatorViews2 addObject:v42];

              [lastObject addSubview:v42];
            }
          }
        }

        cardSectionRowModels2 = v61;
      }
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    allKeys = [v19 allKeys];
    v46 = [allKeys countByEnumeratingWithState:&v63 objects:v75 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v64;
      do
      {
        for (m = 0; m != v47; ++m)
        {
          if (*v64 != v48)
          {
            objc_enumerationMutation(allKeys);
          }

          v50 = *(*(&v63 + 1) + 8 * m);
          cardSectionsMapping4 = [(SearchUICombinedCardSectionsView *)self cardSectionsMapping];
          v52 = [cardSectionsMapping4 objectForKeyedSubscript:v50];

          if (!v52)
          {
            v53 = objc_opt_new();
            cardSectionsMapping5 = [(SearchUICombinedCardSectionsView *)self cardSectionsMapping];
            [cardSectionsMapping5 setObject:v53 forKeyedSubscript:v50];
          }

          cardSectionsMapping6 = [(SearchUICombinedCardSectionsView *)self cardSectionsMapping];
          v56 = [cardSectionsMapping6 objectForKeyedSubscript:v50];
          v57 = [v19 objectForKeyedSubscript:v50];
          [v56 addObjectsFromArray:v57];
        }

        v47 = [allKeys countByEnumeratingWithState:&v63 objects:v75 count:16];
      }

      while (v47);
    }

    [(SearchUICombinedCardSectionsView *)self setArrangedSubviews:v59];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SearchUICombinedCardSectionsView;
  [(SearchUICombinedCardSectionsView *)&v3 layoutSubviews];
  [(SearchUICombinedCardSectionsView *)self layoutAllSeparators];
}

- (void)layoutAllSeparators
{
  v49 = *MEMORY[0x1E69E9840];
  +[SearchUIUtilities standardTableCellContentInset];
  v4 = v3;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  separatorViews = [(SearchUICombinedCardSectionsView *)self separatorViews];
  v6 = [separatorViews countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v45;
    v9 = *(MEMORY[0x1E69DDCE0] + 8);
    v10 = *(MEMORY[0x1E69DDCE0] + 24);
    v11 = 0x1E85B0000uLL;
    do
    {
      v12 = 0;
      v41 = v7;
      do
      {
        if (*v45 != v8)
        {
          objc_enumerationMutation(separatorViews);
        }

        v13 = *(*(&v44 + 1) + 8 * v12);
        superview = [v13 superview];
        if (superview && (v15 = superview, [v13 superview], v16 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v16, v15, (isKindOfClass & 1) != 0))
        {
          superview2 = [v13 superview];
          section = [superview2 section];
          separatorStyle = [section separatorStyle];

          v21 = v10;
          v22 = v9;
          if (separatorStyle != 5)
          {
            v42 = *(v11 + 496);
            section2 = [superview2 section];
            selfCopy = self;
            v24 = v8;
            v25 = separatorViews;
            separatorStyle2 = [section2 separatorStyle];
            leadingView = [superview2 leadingView];
            [superview2 leadingTextView];
            v29 = v28 = v11;
            v30 = separatorStyle2;
            separatorViews = v25;
            v8 = v24;
            self = selfCopy;
            [v42 separatorInsetsForStyle:v30 cellView:selfCopy leadingView:leadingView leadingTextView:v29];
            v22 = v31;
            v21 = v32;

            v11 = v28;
            v7 = v41;

            if (v4 >= v22)
            {
              v22 = v4;
            }
          }

          [superview2 bounds];
          v34 = v33;
          [v13 separatorHeight];
          v36 = v34 - v35;
          [superview2 bounds];
          v38 = v37 - v22 - v21;
          [v13 separatorHeight];
          [v13 setFrame:{v22, v36, v38, v39}];
        }

        else
        {
          [v13 removeFromSuperview];
          separatorViews2 = [(SearchUICombinedCardSectionsView *)self separatorViews];
          [separatorViews2 removeObject:v13];

          superview2 = [(SearchUICombinedCardSectionsView *)self uncacheableViews];
          [superview2 removeObject:v13];
        }

        ++v12;
      }

      while (v7 != v12);
      v7 = [separatorViews countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v7);
  }
}

- (SearchUIFeedbackDelegate)feedbackDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_feedbackDelegate);

  return WeakRetained;
}

@end