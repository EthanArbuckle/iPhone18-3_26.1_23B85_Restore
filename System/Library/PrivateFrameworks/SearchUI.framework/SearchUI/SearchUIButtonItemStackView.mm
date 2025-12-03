@interface SearchUIButtonItemStackView
- (SearchUIButtonItemStackView)init;
- (SearchUIButtonItemStackViewDelegate)buttonItemStackViewDelegate;
- (id)buttonTypes;
- (id)viewForButtonItem:(id)item;
- (void)enumerateCachedViewControllersUsingBlock:(id)block;
- (void)setIsCompact:(BOOL)compact;
- (void)updateWithButtonItems:(id)items maxButtonItems:(unint64_t)buttonItems buttonItemViewType:(unint64_t)type rowModel:(id)model feedbackDelegate:(id)delegate;
@end

@implementation SearchUIButtonItemStackView

- (SearchUIButtonItemStackView)init
{
  v5.receiver = self;
  v5.super_class = SearchUIButtonItemStackView;
  v2 = [(SearchUIButtonItemStackView *)&v5 init];
  if (v2)
  {
    [SearchUIAutoLayout requireIntrinsicSizeForView:v2];
    [(SearchUIButtonItemStackView *)v2 setIsCompact:0];
    layer = [(SearchUIButtonItemStackView *)v2 layer];
    [layer setAllowsGroupOpacity:0];

    [(SearchUIButtonItemStackView *)v2 setCountMoreButtonTowardsMaxCount:1];
  }

  return v2;
}

- (void)setIsCompact:(BOOL)compact
{
  self->_isCompact = compact;
  v5 = 8.0;
  if (!compact)
  {
    isMacOS = [MEMORY[0x1E69D9240] isMacOS];
    v5 = 10.0;
    if (isMacOS)
    {
      v5 = 8.0;
    }
  }

  [(NUIContainerStackView *)self setSpacing:v5];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__SearchUIButtonItemStackView_setIsCompact___block_invoke;
  v7[3] = &__block_descriptor_33_e42_v16__0__SearchUIButtonItemViewController_8l;
  compactCopy = compact;
  [(SearchUIButtonItemStackView *)self enumerateCachedViewControllersUsingBlock:v7];
}

- (void)enumerateCachedViewControllersUsingBlock:(id)block
{
  v27 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  buttonItemViewControllersForClassNames = [(SearchUIButtonItemStackView *)self buttonItemViewControllersForClassNames];
  objectEnumerator = [buttonItemViewControllersForClassNames objectEnumerator];

  v7 = [objectEnumerator countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v12 = v11;
        v13 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v18;
          do
          {
            v16 = 0;
            do
            {
              if (*v18 != v15)
              {
                objc_enumerationMutation(v12);
              }

              blockCopy[2](blockCopy, *(*(&v17 + 1) + 8 * v16++));
            }

            while (v14 != v16);
            v14 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v14);
        }

        ++v10;
      }

      while (v10 != v8);
      v8 = [objectEnumerator countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v8);
  }
}

- (void)updateWithButtonItems:(id)items maxButtonItems:(unint64_t)buttonItems buttonItemViewType:(unint64_t)type rowModel:(id)model feedbackDelegate:(id)delegate
{
  itemsCopy = items;
  modelCopy = model;
  delegateCopy = delegate;
  buttonItems = [(SearchUIButtonItemStackView *)self buttonItems];
  v16 = [itemsCopy isEqualToArray:buttonItems];

  if ((v16 & 1) == 0)
  {
    [(SearchUIButtonItemStackView *)self setButtonItems:itemsCopy];
    -[SearchUIButtonItemStackView setHidden:](self, "setHidden:", [itemsCopy count] == 0);
    [(SearchUIButtonItemStackView *)self setButtonItemFactory:0];
    if ([itemsCopy count])
    {
      [(SearchUIButtonItemStackView *)self enumerateCachedViewControllersUsingBlock:&__block_literal_global_12];
      [(SearchUIButtonItemStackView *)self setHasLeftMainThread:0];
      [(SearchUIButtonItemStackView *)self setAlpha:0.0];
      objc_initWeak(&location, self);
      v17 = objc_opt_new();
      [v17 setDelegate:self];
      [v17 setFeedbackDelegate:delegateCopy];
      [v17 setCountMoreButtonTowardsMaxCount:{-[SearchUIButtonItemStackView countMoreButtonTowardsMaxCount](self, "countMoreButtonTowardsMaxCount")}];
      [(SearchUIButtonItemStackView *)self setIsDoneUpdating:0];
      shouldReverseButtonOrder = [(SearchUIButtonItemStackView *)self shouldReverseButtonOrder];
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __113__SearchUIButtonItemStackView_updateWithButtonItems_maxButtonItems_buttonItemViewType_rowModel_feedbackDelegate___block_invoke_2;
      v22 = &unk_1E85B3130;
      objc_copyWeak(v26, &location);
      v23 = itemsCopy;
      v24 = modelCopy;
      v25 = delegateCopy;
      v26[1] = type;
      [v17 fetchSearchUIButtonitemsWithSFButtonItems:v23 maxButtonItems:buttonItems shouldReverseButtonOrder:shouldReverseButtonOrder completion:&v19];
      [(SearchUIButtonItemStackView *)self setHasLeftMainThread:1, v19, v20, v21, v22];
      [(SearchUIButtonItemStackView *)self setButtonItemFactory:v17];

      objc_destroyWeak(v26);
      objc_destroyWeak(&location);
    }
  }
}

void __113__SearchUIButtonItemStackView_updateWithButtonItems_maxButtonItems_buttonItemViewType_rowModel_feedbackDelegate___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 view];
  [v2 setHidden:1];
}

void __113__SearchUIButtonItemStackView_updateWithButtonItems_maxButtonItems_buttonItemViewType_rowModel_feedbackDelegate___block_invoke_2(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __113__SearchUIButtonItemStackView_updateWithButtonItems_maxButtonItems_buttonItemViewType_rowModel_feedbackDelegate___block_invoke_3;
  v9[3] = &unk_1E85B3108;
  objc_copyWeak(v14, (a1 + 56));
  v10 = *(a1 + 32);
  v6 = v5;
  v11 = v6;
  v12 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 64);
  v13 = v7;
  v14[1] = v8;
  v15 = a3;
  [SearchUIUtilities dispatchMainIfNecessary:v9];

  objc_destroyWeak(v14);
}

void __113__SearchUIButtonItemStackView_updateWithButtonItems_maxButtonItems_buttonItemViewType_rowModel_feedbackDelegate___block_invoke_3(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = *(a1 + 32);
  v4 = [WeakRetained buttonItems];
  LODWORD(v3) = [v3 isEqualToArray:v4];

  if (v3)
  {
    v5 = [*(a1 + 40) firstObject];
    v6 = NSStringFromClass([v5 searchUI_viewControllerClass]);

    v7 = [WeakRetained buttonItemViewControllersForClassNames];

    if (!v7)
    {
      v8 = objc_opt_new();
      [WeakRetained setButtonItemViewControllersForClassNames:v8];
    }

    v9 = [WeakRetained buttonItemViewControllersForClassNames];
    v10 = [v9 objectForKeyedSubscript:v6];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = objc_opt_new();
    }

    v13 = v12;

    v14 = *(a1 + 40);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __113__SearchUIButtonItemStackView_updateWithButtonItems_maxButtonItems_buttonItemViewType_rowModel_feedbackDelegate___block_invoke_4;
    v33[3] = &unk_1E85B30E0;
    v15 = v13;
    v34 = v15;
    v35 = WeakRetained;
    v36 = *(a1 + 48);
    v16 = *(a1 + 56);
    v17 = *(a1 + 72);
    v37 = v16;
    v38 = v17;
    [v14 enumerateObjectsUsingBlock:v33];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v18 = *(a1 + 32);
    v19 = [v18 countByEnumeratingWithState:&v29 objects:v39 count:16];
    if (v19)
    {
      v20 = *v30;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = [*(*(&v29 + 1) + 8 * i) _searchUIButtonItemGeneratorClass];
          if (v22 == objc_opt_class())
          {
            LODWORD(v19) = 1;
            goto LABEL_17;
          }
        }

        v19 = [v18 countByEnumeratingWithState:&v29 objects:v39 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:

    v23 = [WeakRetained buttonItemStackViewDelegate];

    if (v23)
    {
      v24 = [WeakRetained buttonItemStackViewDelegate];
      [v24 didUpdateWithButtonItems:*(a1 + 40) isFinalUpdate:*(a1 + 80)];
    }

    v25 = *(a1 + 80);
    if ((v19 | v25))
    {
      v26 = [WeakRetained hasLeftMainThread];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __113__SearchUIButtonItemStackView_updateWithButtonItems_maxButtonItems_buttonItemViewType_rowModel_feedbackDelegate___block_invoke_5;
      v28[3] = &unk_1E85B24C8;
      v28[4] = WeakRetained;
      [MEMORY[0x1E69D9240] performAnimatableChanges:v28 animated:v26 & (v19 ^ 1)];
      LOBYTE(v25) = *(a1 + 80);
    }

    [WeakRetained setIsDoneUpdating:v25 & 1];
    if (v6)
    {
      v27 = [WeakRetained buttonItemViewControllersForClassNames];
      [v27 setObject:v15 forKeyedSubscript:v6];

      [WeakRetained setCurrentButtonItemViewControllers:v15];
    }
  }
}

void __113__SearchUIButtonItemStackView_updateWithButtonItems_maxButtonItems_buttonItemViewType_rowModel_feedbackDelegate___block_invoke_4(uint64_t a1, void *a2, unint64_t a3)
{
  v14 = a2;
  if ([*(a1 + 32) count] <= a3 || (objc_msgSend(*(a1 + 32), "objectAtIndexedSubscript:", a3), (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = [SearchUIButtonItemViewController buttonItemViewControllerForButtonItem:v14];
    [*(a1 + 32) addObject:v5];
    v6 = *(a1 + 40);
    v7 = [v5 view];
    [v6 addArrangedSubview:v7];
  }

  [v5 setRowModel:*(a1 + 48)];
  [v5 setFeedbackDelegate:*(a1 + 56)];
  [v5 setIsCompact:{objc_msgSend(*(a1 + 40), "isCompact")}];
  [v5 updateWithButtonItem:v14 buttonItemViewType:*(a1 + 64)];
  if ([v14 isOverflowButton])
  {
    v8 = 1000.0;
  }

  else
  {
    v8 = 250.0;
  }

  v9 = [v5 view];
  *&v10 = v8;
  [v9 setContentHuggingPriority:0 forAxis:v10];

  v11 = [v5 view];
  *&v12 = v8;
  [v11 setContentCompressionResistancePriority:0 forAxis:v12];

  v13 = [v5 view];
  [v13 setHidden:0];
}

- (id)viewForButtonItem:(id)item
{
  itemCopy = item;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__SearchUIButtonItemStackView_viewForButtonItem___block_invoke;
  v8[3] = &unk_1E85B3158;
  v5 = itemCopy;
  v9 = v5;
  v10 = &v11;
  [(SearchUIButtonItemStackView *)self enumerateCachedViewControllersUsingBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __49__SearchUIButtonItemStackView_viewForButtonItem___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 buttonItem];
  v4 = [v3 isEqual:*(a1 + 32)];

  if (v4)
  {
    v5 = [v8 view];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

- (id)buttonTypes
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  currentButtonItemViewControllers = [(SearchUIButtonItemStackView *)self currentButtonItemViewControllers];
  v5 = [currentButtonItemViewControllers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(currentButtonItemViewControllers);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        view = [v9 view];
        isHidden = [view isHidden];

        if ((isHidden & 1) == 0)
        {
          buttonItem = [v9 buttonItem];
          [v3 addObject:objc_opt_class()];
        }
      }

      v6 = [currentButtonItemViewControllers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (SearchUIButtonItemStackViewDelegate)buttonItemStackViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_buttonItemStackViewDelegate);

  return WeakRetained;
}

@end