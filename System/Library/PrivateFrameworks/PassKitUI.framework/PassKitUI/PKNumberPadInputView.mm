@interface PKNumberPadInputView
+ (CGSize)defaultSizeForInterfaceOrientation:(int64_t)a3;
- (PKNumberPadInputView)initWithFrame:(CGRect)a3 delegate:(id)a4 configurator:(id)a5;
- (id)_createBorderedButtonForButtonValue:(unint64_t)a3 withBorder:(unint64_t)a4 primaryAction:(id)a5;
- (void)_numericKeyPressed:(unint64_t)a3;
- (void)_reloadSubviews;
- (void)_updateButtons;
- (void)layoutSubviews;
- (void)performBatchUpdates:(id)a3;
- (void)setBottomView:(id)a3;
- (void)setNumberPadColor:(id)a3;
- (void)setShowsDecimalPointButton:(BOOL)a3;
- (void)setTextColor:(id)a3;
@end

@implementation PKNumberPadInputView

+ (CGSize)defaultSizeForInterfaceOrientation:(int64_t)a3
{
  [MEMORY[0x1E69DCBB8] defaultSizeForInterfaceOrientation:a3];
  result.height = v4;
  result.width = v3;
  return result;
}

- (PKNumberPadInputView)initWithFrame:(CGRect)a3 delegate:(id)a4 configurator:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  v12 = a5;
  v24.receiver = self;
  v24.super_class = PKNumberPadInputView;
  v13 = [(UIInputView *)&v24 initWithFrame:1 inputViewStyle:x, y, width, height];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_delegate, v11);
    v15 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v16 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    [(NSNumberFormatter *)v15 setLocale:v16];

    formatter = v14->_formatter;
    v14->_formatter = v15;

    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    buttons = v14->_buttons;
    v14->_buttons = v18;

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __60__PKNumberPadInputView_initWithFrame_delegate_configurator___block_invoke;
    v21[3] = &unk_1E8019020;
    v22 = v14;
    v23 = v12;
    [(PKNumberPadInputView *)v22 performBatchUpdates:v21];
  }

  return v14;
}

void __60__PKNumberPadInputView_initWithFrame_delegate_configurator___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(a1 + 32) + 625) = 1;
  *(*(a1 + 32) + 664) = 0;
  v5 = v3;
  [v3 setNumberPadColor:0];
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v5);
  }
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
        [(PKNumberPadInputView *)self _reloadSubviews];
      }

      if (self->_needsUpdate)
      {
        [(PKNumberPadInputView *)self _updateButtons];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = PKNumberPadInputView;
  [(PKNumberPadInputView *)&v12 layoutSubviews];
  [(PKNumberPadInputView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ((PKHomeButtonIsAvailable() & 1) == 0)
  {
    [(PKNumberPadInputView *)self safeAreaInsets];
    v10 = v10 - v11;
  }

  [(UIStackView *)self->_verticalStackView setFrame:v4, v6, v8, v10];
}

- (void)setShowsDecimalPointButton:(BOOL)a3
{
  if (self->_showsDecimalPointButton == !a3)
  {
    self->_showsDecimalPointButton = a3;
    [(PKNumberPadInputView *)self _reloadSubviews];
  }
}

- (void)setNumberPadColor:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = PKProvisioningBackgroundColor();
  }

  obj = v4;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_numberPadColor, obj);
    [(PKNumberPadInputView *)self setBackgroundColor:self->_numberPadColor];
    [(PKNumberPadInputView *)self _updateButtons];
  }
}

- (void)setTextColor:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [MEMORY[0x1E69DC888] labelColor];
  }

  obj = v4;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_textColor, obj);
    [(PKNumberPadInputView *)self _updateButtons];
  }
}

- (void)setBottomView:(id)a3
{
  v5 = a3;
  bottomView = self->_bottomView;
  v7 = v5;
  if (bottomView != v5)
  {
    if (bottomView)
    {
      [(UIStackView *)self->_verticalStackView removeArrangedSubview:?];
      [(UIView *)self->_bottomView removeFromSuperview];
    }

    objc_storeStrong(&self->_bottomView, a3);
    if (self->_bottomView)
    {
      [(UIStackView *)self->_verticalStackView addArrangedSubview:?];
    }
  }
}

- (void)_numericKeyPressed:(unint64_t)a3
{
  if (a3 < 0xA || a3 == 11)
  {
    v5 = PKNumberPadKeyButtonValueToString(self->_formatter, a3);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained numberPadInputView:self requestReplaceSelectedTextFieldRangeWithText:v5];
  }

  else
  {
    if (a3 != 10)
    {
      return;
    }

    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 numberPadInputViewRequestDeleteText:self];
  }
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
    v4 = self->_buttons;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }

    objc_autoreleasePoolPop(v3);
  }
}

- (void)_reloadSubviews
{
  v34[4] = *MEMORY[0x1E69E9840];
  if (self->_batchedUpdateCount)
  {
    self->_needsReload = 1;
  }

  else
  {
    context = objc_autoreleasePoolPush();
    self->_needsReload = 0;
    self->_needsUpdate = 0;
    verticalStackView = self->_verticalStackView;
    if (verticalStackView)
    {
      [(UIStackView *)verticalStackView removeFromSuperview];
      v4 = self->_verticalStackView;
      self->_verticalStackView = 0;
    }

    [(NSMutableArray *)self->_buttons removeAllObjects];
    v5 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    v6 = self->_verticalStackView;
    self->_verticalStackView = v5;

    [(UIStackView *)self->_verticalStackView setAxis:1];
    [(UIStackView *)self->_verticalStackView setDistribution:1];
    [(UIStackView *)self->_verticalStackView setAlignment:0];
    [(UIStackView *)self->_verticalStackView setSpacing:0.0];
    [(PKNumberPadInputView *)self addSubview:self->_verticalStackView];
    if (self->_showsDecimalPointButton)
    {
      v7 = 11;
    }

    else
    {
      v7 = 12;
    }

    v34[0] = &unk_1F3CC83C0;
    v34[1] = &unk_1F3CC83D8;
    v34[2] = &unk_1F3CC83F0;
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
    v33[0] = v8;
    v33[1] = &unk_1F3CC7610;
    v33[2] = &unk_1F3CC7628;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:3];
    v34[3] = v9;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:4];

    objc_initWeak(&location, self);
    v26 = [v24 count];
    if (v26)
    {
      v10 = 0;
      do
      {
        v25 = v10;
        v27 = [v24 objectAtIndexedSubscript:?];
        v11 = objc_alloc_init(MEMORY[0x1E69DCF90]);
        [v11 setAxis:0];
        [v11 setDistribution:1];
        [v11 setAlignment:0];
        [v11 setSemanticContentAttribute:3];
        [v11 setSpacing:0.0];
        v12 = [v27 count];
        if (v12)
        {
          v13 = 0;
          do
          {
            v14 = [v27 objectAtIndexedSubscript:v13];
            IsAvailable = PKHomeButtonIsAvailable();
            v16 = 5;
            if (v12 == 1)
            {
              v16 = 1;
            }

            if ((IsAvailable & (v25 + 1 >= v26)) != 0)
            {
              v17 = v16 | 2;
            }

            else
            {
              v17 = v16;
            }

            v18 = [v14 unsignedIntegerValue];
            v19 = MEMORY[0x1E69DC628];
            v30[0] = MEMORY[0x1E69E9820];
            v30[1] = 3221225472;
            v30[2] = __39__PKNumberPadInputView__reloadSubviews__block_invoke;
            v30[3] = &unk_1E8019048;
            objc_copyWeak(v31, &location);
            v31[1] = v18;
            v20 = [v19 actionWithHandler:v30];
            v21 = [(PKNumberPadInputView *)self _createBorderedButtonForButtonValue:v18 withBorder:v17 primaryAction:v20];

            v28[0] = MEMORY[0x1E69E9820];
            v28[1] = 3221225472;
            v28[2] = __39__PKNumberPadInputView__reloadSubviews__block_invoke_2;
            v28[3] = &unk_1E8019070;
            objc_copyWeak(v29, &location);
            v29[1] = v18;
            [v21 setConfigurationUpdateHandler:v28];
            [v11 addArrangedSubview:v21];
            [(NSMutableArray *)self->_buttons addObject:v21];
            objc_destroyWeak(v29);

            objc_destroyWeak(v31);
            ++v13;
            --v12;
          }

          while (v12);
        }

        [(UIStackView *)self->_verticalStackView addArrangedSubview:v11];

        v10 = v25 + 1;
      }

      while (v25 + 1 != v26);
    }

    if (self->_bottomView)
    {
      [(UIStackView *)self->_verticalStackView addArrangedSubview:?];
    }

    objc_destroyWeak(&location);

    objc_autoreleasePoolPop(contexta);
  }
}

void __39__PKNumberPadInputView__reloadSubviews__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _numericKeyPressed:*(a1 + 40)];
}

void __39__PKNumberPadInputView__reloadSubviews__block_invoke_2(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v12 isHighlighted];
    v6 = [v12 configuration];
    if (*(a1 + 40) == 10)
    {
      if (v5)
      {
        UIKeyboardGetDeleteOnKeyImage();
      }

      else
      {
        UIKeyboardGetDeleteKeyImage();
      }
      v7 = ;
      v8 = [v7 imageWithRenderingMode:2];
      [v6 setImage:v8];
    }

    [v6 setBaseForegroundColor:WeakRetained[85]];
    v9 = [v6 background];
    v10 = v9;
    if (v5)
    {
      v11 = [MEMORY[0x1E69DC888] tableCellDefaultSelectionTintColor];
      [v10 setBackgroundColor:v11];
    }

    else
    {
      [v9 setBackgroundColor:WeakRetained[84]];
    }

    [v12 setConfiguration:v6];
  }

  objc_autoreleasePoolPop(v3);
}

- (id)_createBorderedButtonForButtonValue:(unint64_t)a3 withBorder:(unint64_t)a4 primaryAction:(id)a5
{
  v8 = a5;
  v9 = +[PKBorderedButtonConfiguration plainButtonConfiguration];
  [v9 setBorder:a4];
  v10 = [v9 background];
  [v10 setCornerRadius:0.0];
  [v9 setTitleAlignment:2];
  [v9 setTitleTextAttributesTransformer:&__block_literal_global_99];
  if (a3 != 10 && a3 != 12)
  {
    v11 = PKNumberPadKeyButtonValueToString(self->_formatter, a3);
    [v9 setTitle:v11];
  }

  v12 = [PKBorderedButton borderedButtonWithConfiguration:v9 primaryAction:v8];
  v13 = v12;
  if (a3 == 12)
  {
    [v12 setUserInteractionEnabled:0];
  }

  return v13;
}

id __85__PKNumberPadInputView__createBorderedButtonForButtonValue_withBorder_primaryAction___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];
  v3 = [MEMORY[0x1E69DB878] systemFontOfSize:31.0];
  [v2 setObject:v3 forKey:*MEMORY[0x1E69DB648]];

  return v2;
}

@end