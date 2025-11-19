@interface SearchUICombinedCardSectionsView
- (SearchUICombinedCardSectionsView)init;
- (SearchUICombinedCardSectionsView)initWithRowModel:(id)a3 feedbackDelegate:(id)a4;
- (SearchUIFeedbackDelegate)feedbackDelegate;
- (int64_t)numberOfSeparators;
- (void)layoutAllSeparators;
- (void)layoutSubviews;
- (void)setRowModel:(id)a3;
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

- (SearchUICombinedCardSectionsView)initWithRowModel:(id)a3 feedbackDelegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SearchUICombinedCardSectionsView *)self init];
  v9 = v8;
  if (v8)
  {
    [(SearchUICombinedCardSectionsView *)v8 setFeedbackDelegate:v7];
    [(SearchUICombinedCardSectionsView *)v9 setRowModel:v6];
  }

  return v9;
}

- (int64_t)numberOfSeparators
{
  v2 = [(SearchUICombinedCardSectionsView *)self separatorViews];
  v3 = [v2 count];

  return v3;
}

- (void)setRowModel:(id)a3
{
  v78 = *MEMORY[0x1E69E9840];
  v60 = a3;
  if (self->_rowModel != v60)
  {
    objc_storeStrong(&self->_rowModel, a3);
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v5 = [(SearchUICombinedCardSectionsView *)self uncacheableViews];
    v6 = [v5 countByEnumeratingWithState:&v71 objects:v77 count:16];
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
            objc_enumerationMutation(v5);
          }

          [*(*(&v71 + 1) + 8 * i) removeFromSuperview];
        }

        v7 = [v5 countByEnumeratingWithState:&v71 objects:v77 count:16];
      }

      while (v7);
    }

    v10 = [(SearchUICombinedCardSectionsView *)self uncacheableViews];
    [v10 removeAllObjects];

    v11 = [(SearchUICombinedCardSectionsView *)self separatorViews];
    [v11 removeAllObjects];

    v12 = objc_opt_new();
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v13 = [(SearchUICombinedCardSectionRowModel *)v60 cardSectionRowModels];
    v14 = [v13 countByEnumeratingWithState:&v67 objects:v76 count:16];
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
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v67 + 1) + 8 * j) cardSection];
          [v12 addObject:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v67 objects:v76 count:16];
      }

      while (v15);
    }

    v62 = [SearchUITableModel tableModelWithCardSections:v12 isInline:1 queryId:[(SearchUIRowModel *)v60 queryId]];
    v58 = objc_opt_new();
    v19 = objc_opt_new();
    v20 = [(SearchUICombinedCardSectionRowModel *)v60 cardSectionRowModels];
    [(SearchUICombinedCardSectionsView *)self setHasAttributionFooter:0];
    v61 = v20;
    if ([v20 count])
    {
      for (k = 0; k < [v61 count]; ++k)
      {
        v22 = [v20 objectAtIndexedSubscript:{k, v58}];
        [v22 setAllowAdjustmentsForConcentricity:0];
        v23 = [v22 reuseIdentifier];
        if (v23)
        {
          v24 = [(SearchUICombinedCardSectionsView *)self cardSectionsMapping];
          v25 = [v24 objectForKeyedSubscript:v23];
          v26 = [v25 count];

          if (v26)
          {
            v27 = [(SearchUICombinedCardSectionsView *)self cardSectionsMapping];
            v28 = [v27 objectForKeyedSubscript:v23];
            v29 = [v28 lastObject];

            [v29 updateWithRowModel:v22];
            v30 = [(SearchUICombinedCardSectionsView *)self cardSectionsMapping];
            v31 = [v30 objectForKeyedSubscript:v23];
            [v31 removeLastObject];
          }

          else
          {
            v30 = [(SearchUICombinedCardSectionsView *)self feedbackDelegate];
            v29 = [SearchUICardSectionCreator cardSectionViewForModel:v22 feedbackDelegate:v30];
          }

          v34 = [v19 objectForKeyedSubscript:v23];

          if (!v34)
          {
            v35 = objc_opt_new();
            [v19 setObject:v35 forKeyedSubscript:v23];
          }

          v36 = [v19 objectForKeyedSubscript:v23];
          [v36 addObject:v29];

          if (v29)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v32 = [(SearchUICombinedCardSectionsView *)self feedbackDelegate];
          v29 = [SearchUICardSectionCreator cardSectionViewForModel:v22 feedbackDelegate:v32];

          if (v29)
          {
            v33 = [(SearchUICombinedCardSectionsView *)self uncacheableViews];
            [v33 addObject:v29];

LABEL_27:
            [v58 addObject:v29];
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
            v40 = [(SearchUICombinedCardSectionRowModel *)v60 cardSectionRowModels];
            v41 = [v40 lastObject];

            if (v22 != v41)
            {
              v42 = objc_opt_new();
              v43 = [(SearchUICombinedCardSectionsView *)self uncacheableViews];
              [v43 addObject:v42];

              v44 = [(SearchUICombinedCardSectionsView *)self separatorViews];
              [v44 addObject:v42];

              [v29 addSubview:v42];
            }
          }
        }

        v20 = v61;
      }
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v45 = [v19 allKeys];
    v46 = [v45 countByEnumeratingWithState:&v63 objects:v75 count:16];
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
            objc_enumerationMutation(v45);
          }

          v50 = *(*(&v63 + 1) + 8 * m);
          v51 = [(SearchUICombinedCardSectionsView *)self cardSectionsMapping];
          v52 = [v51 objectForKeyedSubscript:v50];

          if (!v52)
          {
            v53 = objc_opt_new();
            v54 = [(SearchUICombinedCardSectionsView *)self cardSectionsMapping];
            [v54 setObject:v53 forKeyedSubscript:v50];
          }

          v55 = [(SearchUICombinedCardSectionsView *)self cardSectionsMapping];
          v56 = [v55 objectForKeyedSubscript:v50];
          v57 = [v19 objectForKeyedSubscript:v50];
          [v56 addObjectsFromArray:v57];
        }

        v47 = [v45 countByEnumeratingWithState:&v63 objects:v75 count:16];
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
  v5 = [(SearchUICombinedCardSectionsView *)self separatorViews];
  v6 = [v5 countByEnumeratingWithState:&v44 objects:v48 count:16];
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
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v44 + 1) + 8 * v12);
        v14 = [v13 superview];
        if (v14 && (v15 = v14, [v13 superview], v16 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v16, v15, (isKindOfClass & 1) != 0))
        {
          v18 = [v13 superview];
          v19 = [v18 section];
          v20 = [v19 separatorStyle];

          v21 = v10;
          v22 = v9;
          if (v20 != 5)
          {
            v42 = *(v11 + 496);
            v43 = [v18 section];
            v23 = self;
            v24 = v8;
            v25 = v5;
            v26 = [v43 separatorStyle];
            v27 = [v18 leadingView];
            [v18 leadingTextView];
            v29 = v28 = v11;
            v30 = v26;
            v5 = v25;
            v8 = v24;
            self = v23;
            [v42 separatorInsetsForStyle:v30 cellView:v23 leadingView:v27 leadingTextView:v29];
            v22 = v31;
            v21 = v32;

            v11 = v28;
            v7 = v41;

            if (v4 >= v22)
            {
              v22 = v4;
            }
          }

          [v18 bounds];
          v34 = v33;
          [v13 separatorHeight];
          v36 = v34 - v35;
          [v18 bounds];
          v38 = v37 - v22 - v21;
          [v13 separatorHeight];
          [v13 setFrame:{v22, v36, v38, v39}];
        }

        else
        {
          [v13 removeFromSuperview];
          v40 = [(SearchUICombinedCardSectionsView *)self separatorViews];
          [v40 removeObject:v13];

          v18 = [(SearchUICombinedCardSectionsView *)self uncacheableViews];
          [v18 removeObject:v13];
        }

        ++v12;
      }

      while (v7 != v12);
      v7 = [v5 countByEnumeratingWithState:&v44 objects:v48 count:16];
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