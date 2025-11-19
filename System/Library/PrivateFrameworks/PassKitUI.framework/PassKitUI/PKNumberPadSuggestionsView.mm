@interface PKNumberPadSuggestionsView
+ (CGSize)defaultSize;
- (PKNumberPadSuggestionsView)initWithDefaultFrame;
- (PKNumberPadSuggestionsView)initWithFrame:(CGRect)a3;
- (PKNumberPadSuggestionsViewDelegate)delegate;
- (id)_createBorderedButtonForSuggestion:(id)a3 withBorder:(unint64_t)a4 primaryAction:(id)a5;
- (void)_reloadSubviews;
- (void)_selectedSuggestion:(id)a3;
- (void)_updateButtons;
- (void)performBatchUpdates:(id)a3;
- (void)setButtonBackgroundColor:(id)a3;
- (void)setButtonTextColor:(id)a3;
- (void)setSuggestions:(id)a3;
@end

@implementation PKNumberPadSuggestionsView

+ (CGSize)defaultSize
{
  [MEMORY[0x1E69DCBB8] defaultSizeForInterfaceOrientation:1];
  v3 = 44.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (PKNumberPadSuggestionsView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = PKNumberPadSuggestionsView;
  v3 = [(PKNumberPadSuggestionsView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKNumberPadSuggestionsView *)v3 setAxis:0];
    [(PKNumberPadSuggestionsView *)v4 setDistribution:1];
    [(PKNumberPadSuggestionsView *)v4 setAlignment:0];
    [(PKNumberPadSuggestionsView *)v4 setSpacing:0.0];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __44__PKNumberPadSuggestionsView_initWithFrame___block_invoke;
    v7[3] = &unk_1E8013EC0;
    v5 = v4;
    v8 = v5;
    [(PKNumberPadSuggestionsView *)v5 performBatchUpdates:v7];
    [(PKNumberPadSuggestionsView *)v5 setAccessibilityIdentifier:*MEMORY[0x1E69B9CD8]];
  }

  return v4;
}

void __44__PKNumberPadSuggestionsView_initWithFrame___block_invoke(uint64_t a1, void *a2)
{
  *(*(a1 + 32) + 449) = 1;
  v2 = MEMORY[0x1E69DC888];
  v3 = a2;
  v4 = [v2 labelColor];
  [v3 setButtonTextColor:v4];

  v5 = PKProvisioningBackgroundColor();
  [v3 setButtonBackgroundColor:v5];
}

- (PKNumberPadSuggestionsView)initWithDefaultFrame
{
  [objc_opt_class() defaultSize];

  return [(PKNumberPadSuggestionsView *)self initWithFrame:0.0, 0.0, v3, 44.0];
}

- (void)performBatchUpdates:(id)a3
{
  v4 = a3;
  if (v4)
  {
    ++self->_batchedUpdateCount;
    v6 = v4;
    (*(v4 + 2))(v4, self);
    v5 = self->_batchedUpdateCount - 1;
    self->_batchedUpdateCount = v5;
    if (!v5)
    {
      if (self->_needsReload)
      {
        [(PKNumberPadSuggestionsView *)self _reloadSubviews];
      }

      if (self->_needsUpdate)
      {
        [(PKNumberPadSuggestionsView *)self _updateButtons];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

- (void)setSuggestions:(id)a3
{
  if (self->_suggestions != a3)
  {
    v4 = [a3 copy];
    suggestions = self->_suggestions;
    self->_suggestions = v4;

    [(PKNumberPadSuggestionsView *)self _reloadSubviews];
  }
}

- (void)setButtonTextColor:(id)a3
{
  v5 = a3;
  if (self->_buttonTextColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_buttonTextColor, a3);
    [(PKNumberPadSuggestionsView *)self _updateButtons];
    v5 = v6;
  }
}

- (void)setButtonBackgroundColor:(id)a3
{
  v5 = a3;
  if (self->_buttonBackgroundColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_buttonBackgroundColor, a3);
    [(PKNumberPadSuggestionsView *)self _updateButtons];
    v5 = v6;
  }
}

- (void)_reloadSubviews
{
  v30 = *MEMORY[0x1E69E9840];
  if (self->_batchedUpdateCount)
  {
    self->_needsReload = 1;
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    self->_needsReload = 0;
    self->_needsUpdate = 0;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v4 = self->_suggestionButtons;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v5)
    {
      v6 = *v26;
      do
      {
        v7 = 0;
        do
        {
          if (*v26 != v6)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v25 + 1) + 8 * v7++) removeFromSuperview];
        }

        while (v5 != v7);
        v5 = [(NSArray *)v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v5);
    }

    suggestionButtons = self->_suggestionButtons;
    self->_suggestionButtons = 0;

    v9 = [(PKNumberPadSuggestionsView *)self _shouldReverseLayoutDirection];
    v10 = [(NSArray *)self->_suggestions count];
    objc_initWeak(&location, self);
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v10];
    suggestions = self->_suggestions;
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __45__PKNumberPadSuggestionsView__reloadSubviews__block_invoke;
    v19 = &unk_1E8019098;
    v23 = v9;
    v22[1] = v10;
    v20 = self;
    objc_copyWeak(v22, &location);
    v13 = v11;
    v21 = v13;
    [(NSArray *)suggestions enumerateObjectsUsingBlock:&v16];
    v14 = [v13 copy];
    v15 = self->_suggestionButtons;
    self->_suggestionButtons = v14;

    objc_destroyWeak(v22);
    objc_destroyWeak(&location);
    objc_autoreleasePoolPop(v3);
  }
}

void __45__PKNumberPadSuggestionsView__reloadSubviews__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (*(a1 + 56) - 1 == a3)
  {
    v6 = 1;
  }

  else if (*(a1 + 64))
  {
    v6 = 9;
  }

  else
  {
    v6 = 5;
  }

  v7 = *(a1 + 32);
  v8 = MEMORY[0x1E69DC628];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __45__PKNumberPadSuggestionsView__reloadSubviews__block_invoke_2;
  v12[3] = &unk_1E8010A60;
  objc_copyWeak(&v13, (a1 + 48));
  v9 = [v8 actionWithHandler:v12];
  v10 = [v7 _createBorderedButtonForSuggestion:v5 withBorder:v6 primaryAction:v9];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45__PKNumberPadSuggestionsView__reloadSubviews__block_invoke_3;
  v11[3] = &unk_1E8018188;
  v11[4] = *(a1 + 32);
  [v10 setConfigurationUpdateHandler:v11];
  [*(a1 + 32) addArrangedSubview:v10];
  [*(a1 + 40) addObject:v10];

  objc_destroyWeak(&v13);
}

void __45__PKNumberPadSuggestionsView__reloadSubviews__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v5 sender];
    [WeakRetained _selectedSuggestion:v4];
  }
}

void __45__PKNumberPadSuggestionsView__reloadSubviews__block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 configuration];
  [v3 setBaseForegroundColor:*(*(a1 + 32) + 472)];
  v4 = [v3 background];
  if ([v6 isHighlighted])
  {
    v5 = [MEMORY[0x1E69DC888] tableCellDefaultSelectionTintColor];
    [v4 setBackgroundColor:v5];
  }

  else
  {
    [v4 setBackgroundColor:*(*(a1 + 32) + 480)];
  }

  [v6 setConfiguration:v3];
}

- (void)_updateButtons
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_batchedUpdateCount)
  {
    self->_needsUpdate = 1;
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    self->_needsUpdate = 0;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = self->_suggestionButtons;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8++) setNeedsUpdateConfiguration];
        }

        while (v6 != v8);
        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }

    objc_autoreleasePoolPop(v3);
  }
}

- (id)_createBorderedButtonForSuggestion:(id)a3 withBorder:(unint64_t)a4 primaryAction:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v24 = a5;
  v8 = +[PKBorderedButtonConfiguration plainButtonConfiguration];
  [v8 setBorder:a4];
  v23 = [v8 background];
  [v23 setCornerRadius:0.0];
  v9 = [v7 displayValue];
  v10 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v10 setAlignment:1];
  v11 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v9];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = [v9 componentsSeparatedByString:@"\n"];
  v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v28;
    v16 = *MEMORY[0x1E69DB688];
    do
    {
      v17 = 0;
      do
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = [v9 rangeOfString:*(*(&v27 + 1) + 8 * v17)];
        [v11 addAttribute:v16 value:v10 range:{v18, v19}];
        ++v17;
      }

      while (v14 != v17);
      v14 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v14);
  }

  [v8 setAttributedTitle:v11];
  [v8 setTitleAlignment:2];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __90__PKNumberPadSuggestionsView__createBorderedButtonForSuggestion_withBorder_primaryAction___block_invoke;
  v25[3] = &unk_1E8013EE8;
  v26 = v7;
  v20 = v7;
  [v8 setTitleTextAttributesTransformer:v25];
  v21 = [PKBorderedButton borderedButtonWithConfiguration:v8 primaryAction:v24];

  return v21;
}

id __90__PKNumberPadSuggestionsView__createBorderedButtonForSuggestion_withBorder_primaryAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = [*(a1 + 32) title];
  v5 = [v4 length];

  v6 = 14.0;
  if (!v5)
  {
    v6 = 17.0;
  }

  v7 = [MEMORY[0x1E69DB878] systemFontOfSize:v6];
  [v3 setObject:v7 forKey:*MEMORY[0x1E69DB648]];

  return v3;
}

- (void)_selectedSuggestion:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [(NSArray *)self->_suggestions objectAtIndex:[(NSArray *)self->_suggestionButtons indexOfObject:a3]];
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 displayValue];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Suggestion %@ selected", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained numberPadSuggestionsView:self didSelectSuggestion:v4];
}

- (PKNumberPadSuggestionsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end