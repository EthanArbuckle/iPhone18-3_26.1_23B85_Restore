@interface PKNumberPadInputView
+ (CGSize)defaultSizeForInterfaceOrientation:(int64_t)orientation;
- (PKNumberPadInputView)initWithFrame:(CGRect)frame delegate:(id)delegate configurator:(id)configurator;
- (id)_createBorderedButtonForButtonValue:(unint64_t)value withBorder:(unint64_t)border primaryAction:(id)action;
- (void)_numericKeyPressed:(unint64_t)pressed;
- (void)_reloadSubviews;
- (void)_updateButtons;
- (void)layoutSubviews;
- (void)performBatchUpdates:(id)updates;
- (void)setBottomView:(id)view;
- (void)setNumberPadColor:(id)color;
- (void)setShowsDecimalPointButton:(BOOL)button;
- (void)setTextColor:(id)color;
@end

@implementation PKNumberPadInputView

+ (CGSize)defaultSizeForInterfaceOrientation:(int64_t)orientation
{
  [MEMORY[0x1E69DCBB8] defaultSizeForInterfaceOrientation:orientation];
  result.height = v4;
  result.width = v3;
  return result;
}

- (PKNumberPadInputView)initWithFrame:(CGRect)frame delegate:(id)delegate configurator:(id)configurator
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  delegateCopy = delegate;
  configuratorCopy = configurator;
  v24.receiver = self;
  v24.super_class = PKNumberPadInputView;
  height = [(UIInputView *)&v24 initWithFrame:1 inputViewStyle:x, y, width, height];
  v14 = height;
  if (height)
  {
    objc_storeWeak(&height->_delegate, delegateCopy);
    v15 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    [(NSNumberFormatter *)v15 setLocale:autoupdatingCurrentLocale];

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
    v23 = configuratorCopy;
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

- (void)performBatchUpdates:(id)updates
{
  updatesCopy = updates;
  if (updatesCopy)
  {
    ++self->_batchedUpdateCount;
    v6 = updatesCopy;
    (*(updatesCopy + 2))(updatesCopy, self);
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

- (void)setShowsDecimalPointButton:(BOOL)button
{
  if (self->_showsDecimalPointButton == !button)
  {
    self->_showsDecimalPointButton = button;
    [(PKNumberPadInputView *)self _reloadSubviews];
  }
}

- (void)setNumberPadColor:(id)color
{
  colorCopy = color;
  if (!colorCopy)
  {
    colorCopy = PKProvisioningBackgroundColor();
  }

  obj = colorCopy;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_numberPadColor, obj);
    [(PKNumberPadInputView *)self setBackgroundColor:self->_numberPadColor];
    [(PKNumberPadInputView *)self _updateButtons];
  }
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  if (!colorCopy)
  {
    colorCopy = [MEMORY[0x1E69DC888] labelColor];
  }

  obj = colorCopy;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_textColor, obj);
    [(PKNumberPadInputView *)self _updateButtons];
  }
}

- (void)setBottomView:(id)view
{
  viewCopy = view;
  bottomView = self->_bottomView;
  v7 = viewCopy;
  if (bottomView != viewCopy)
  {
    if (bottomView)
    {
      [(UIStackView *)self->_verticalStackView removeArrangedSubview:?];
      [(UIView *)self->_bottomView removeFromSuperview];
    }

    objc_storeStrong(&self->_bottomView, view);
    if (self->_bottomView)
    {
      [(UIStackView *)self->_verticalStackView addArrangedSubview:?];
    }
  }
}

- (void)_numericKeyPressed:(unint64_t)pressed
{
  if (pressed < 0xA || pressed == 11)
  {
    v5 = PKNumberPadKeyButtonValueToString(self->_formatter, pressed);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained numberPadInputView:self requestReplaceSelectedTextFieldRangeWithText:v5];
  }

  else
  {
    if (pressed != 10)
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

            unsignedIntegerValue = [v14 unsignedIntegerValue];
            v19 = MEMORY[0x1E69DC628];
            v30[0] = MEMORY[0x1E69E9820];
            v30[1] = 3221225472;
            v30[2] = __39__PKNumberPadInputView__reloadSubviews__block_invoke;
            v30[3] = &unk_1E8019048;
            objc_copyWeak(v31, &location);
            v31[1] = unsignedIntegerValue;
            v20 = [v19 actionWithHandler:v30];
            v21 = [(PKNumberPadInputView *)self _createBorderedButtonForButtonValue:unsignedIntegerValue withBorder:v17 primaryAction:v20];

            v28[0] = MEMORY[0x1E69E9820];
            v28[1] = 3221225472;
            v28[2] = __39__PKNumberPadInputView__reloadSubviews__block_invoke_2;
            v28[3] = &unk_1E8019070;
            objc_copyWeak(v29, &location);
            v29[1] = unsignedIntegerValue;
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

- (id)_createBorderedButtonForButtonValue:(unint64_t)value withBorder:(unint64_t)border primaryAction:(id)action
{
  actionCopy = action;
  v9 = +[PKBorderedButtonConfiguration plainButtonConfiguration];
  [v9 setBorder:border];
  background = [v9 background];
  [background setCornerRadius:0.0];
  [v9 setTitleAlignment:2];
  [v9 setTitleTextAttributesTransformer:&__block_literal_global_99];
  if (value != 10 && value != 12)
  {
    v11 = PKNumberPadKeyButtonValueToString(self->_formatter, value);
    [v9 setTitle:v11];
  }

  v12 = [PKBorderedButton borderedButtonWithConfiguration:v9 primaryAction:actionCopy];
  v13 = v12;
  if (value == 12)
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