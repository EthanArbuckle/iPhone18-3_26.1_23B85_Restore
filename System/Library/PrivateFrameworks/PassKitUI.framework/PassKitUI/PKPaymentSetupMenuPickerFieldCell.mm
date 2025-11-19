@interface PKPaymentSetupMenuPickerFieldCell
- (BOOL)becomeFirstResponder;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)_pullCurrentValueFromField;
- (void)_updateDisplay:(BOOL)a3;
- (void)_updateDisplayForFieldTypePicker:(id)a3;
- (void)_updatePaymentSetupFieldPickerItem:(id)a3;
- (void)layoutSubviews;
@end

@implementation PKPaymentSetupMenuPickerFieldCell

- (BOOL)becomeFirstResponder
{
  if (self->_button)
  {
    [(UIButton *)self->_button performPrimaryAction];
    return 0;
  }

  else
  {
    v3.receiver = self;
    v3.super_class = PKPaymentSetupMenuPickerFieldCell;
    return [(PKPaymentSetupFieldCell *)&v3 becomeFirstResponder];
  }
}

- (void)_updateDisplay:(BOOL)a3
{
  if (a3)
  {
    [(PKPaymentSetupFieldCell *)self _applyDefaultValues];
  }

  v5 = [(PKPaymentSetupFieldCell *)self paymentSetupField];
  v4 = [v5 pickerFieldObject];
  [(PKPaymentSetupMenuPickerFieldCell *)self _updateDisplayForFieldTypePicker:v4];
}

- (void)_updatePaymentSetupFieldPickerItem:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentSetupFieldCell *)self paymentSetupField];
  v6 = [v5 pickerFieldObject];

  [v6 setCurrentValue:v4];
  [(PKPaymentSetupMenuPickerFieldCell *)self _pullCurrentValueFromField];
}

- (void)_pullCurrentValueFromField
{
  v3 = [(PKPaymentSetupFieldCell *)self paymentSetupField];
  v21 = [v3 currentValue];

  v4 = [(UIButton *)self->_button configuration];
  if (v21)
  {
    v5 = MEMORY[0x1E696AAB0];
    v6 = [(PKPaymentSetupFieldCell *)self paymentSetupField];
    v7 = [v6 displayString];
    v8 = PKOBKListTextFieldCellTextFieldFont();
    v9 = [v5 pkui_attriutedStringWithString:v7 font:v8 paragraphStyle:0];

    [v4 setAttributedTitle:v9];
    v10 = [MEMORY[0x1E69DC888] labelColor];
    [v4 setBaseForegroundColor:v10];

    v11 = [(PKPaymentSetupFieldCell *)self paymentSetupField];
    v12 = [v11 pickerFieldObject];
    v13 = [v12 pickerItems];
    v14 = [v13 indexOfObject:v21];

    v15 = [(UIMenu *)self->_menu children];
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([v15 count])
    {
      v17 = 0;
      do
      {
        v18 = [v15 objectAtIndexedSubscript:v17];
        [v18 setState:v14 == v17];
        [v16 addObject:v18];

        ++v17;
      }

      while (v17 < [v15 count]);
    }

    v19 = [(UIMenu *)self->_menu menuByReplacingChildren:v16];
    menu = self->_menu;
    self->_menu = v19;

    [(UIButton *)self->_button setMenu:self->_menu];
  }

  else
  {
    v9 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [v4 setBaseForegroundColor:v9];
  }

  [(UIButton *)self->_button setConfiguration:v4];
}

- (void)_updateDisplayForFieldTypePicker:(id)a3
{
  v4 = a3;
  if (PKUIGetMinScreenWidthType())
  {
    [v4 localizedDisplayName];
  }

  else
  {
    [v4 compactLocalizedDisplayName];
  }
  v5 = ;
  v6 = [(PKPaymentSetupMenuPickerFieldCell *)self textLabel];
  [v6 setText:v5];

  objc_initWeak(&location, self);
  v7 = [(PKPaymentSetupFieldCell *)self paymentSetupField];
  v8 = [v7 pickerFieldObject];
  v9 = [v8 pickerItems];
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __70__PKPaymentSetupMenuPickerFieldCell__updateDisplayForFieldTypePicker___block_invoke;
  v26 = &unk_1E801B980;
  objc_copyWeak(&v27, &location);
  v10 = [v9 pk_arrayByApplyingBlock:&v23];

  v11 = [MEMORY[0x1E69DCC60] menuWithChildren:{v10, v23, v24, v25, v26}];
  menu = self->_menu;
  self->_menu = v11;

  button = self->_button;
  if (!button)
  {
    v14 = MEMORY[0x1E69DC740];
    v15 = [v4 localizedDisplayName];
    v16 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC50]);
    v17 = [v14 pkui_plainConfigurationWithTitle:v15 font:v16];

    v18 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v17 setBaseForegroundColor:v18];

    [v17 setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
    v19 = [v4 localizedPlaceholder];
    [v17 setTitle:v19];

    [v17 setIndicator:2];
    v20 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v17 primaryAction:0];
    v21 = self->_button;
    self->_button = v20;

    [(UIButton *)self->_button setShowsMenuAsPrimaryAction:1];
    v22 = [(PKPaymentSetupMenuPickerFieldCell *)self contentView];
    [v22 addSubview:self->_button];

    button = self->_button;
  }

  [(UIButton *)button setMenu:self->_menu];
  [(PKPaymentSetupMenuPickerFieldCell *)self _pullCurrentValueFromField];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

id __70__PKPaymentSetupMenuPickerFieldCell__updateDisplayForFieldTypePicker___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E69DC628];
  v5 = [v3 localizedDisplayName];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__PKPaymentSetupMenuPickerFieldCell__updateDisplayForFieldTypePicker___block_invoke_2;
  v9[3] = &unk_1E8012328;
  objc_copyWeak(&v11, (a1 + 32));
  v6 = v3;
  v10 = v6;
  v7 = [v4 actionWithTitle:v5 image:0 identifier:0 handler:v9];

  objc_destroyWeak(&v11);

  return v7;
}

void __70__PKPaymentSetupMenuPickerFieldCell__updateDisplayForFieldTypePicker___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updatePaymentSetupFieldPickerItem:*(a1 + 32)];
  [WeakRetained setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  PKFloatCeilToPixel(a3, *&a3.height);
  v7 = v6;
  v8 = width + PKTableViewCellTextInset() * -2.0;
  [(PKPaymentSetupMenuPickerFieldCell *)self layoutMargins];
  [(PKPaymentSetupMenuPickerFieldCell *)self layoutMargins];
  [(PKPaymentSetupMenuPickerFieldCell *)self layoutMargins];
  v10 = v9;
  [(PKPaymentSetupMenuPickerFieldCell *)self layoutMargins];
  [(UIButton *)self->_button sizeThatFits:v8, height - (v10 + v11)];
  v13.n128_u64[0] = v12.n128_u64[0];
  PKFloatCeilToPixel(v13, v12);
  v15 = v14;
  [(PKPaymentSetupFieldCell *)self _minimumHeight];
  if (v15 <= v16)
  {
    [(PKPaymentSetupFieldCell *)self _minimumHeight];
    v17 = v18;
  }

  else
  {
    v17 = v15 + 0.0;
  }

  v19 = v7;
  result.height = v17;
  result.width = v19;
  return result;
}

- (void)layoutSubviews
{
  v44.receiver = self;
  v44.super_class = PKPaymentSetupMenuPickerFieldCell;
  [(PKPaymentSetupFieldCell *)&v44 layoutSubviews];
  v3 = [(PKPaymentSetupMenuPickerFieldCell *)self textLabel];
  v4 = [(PKPaymentSetupMenuPickerFieldCell *)self contentView];
  [v4 bounds];
  v6 = v5;
  v43 = v7;
  v9 = v8;
  v11 = v10;
  [v3 frame];
  [(UIButton *)self->_button sizeThatFits:v9, v11];
  [v4 bounds];
  v12 = [(PKPaymentSetupMenuPickerFieldCell *)self _shouldReverseLayoutDirection];
  PKOBKListInlineCellContentEdgeInsets();
  if (v12)
  {
    v17 = v16;
  }

  else
  {
    v17 = v14;
  }

  v18 = v9 - (v16 + v14);
  [v3 sizeThatFits:{v18, v11 - (v13 + v15), *&v13}];
  v20 = v19;
  v21 = [(PKPaymentSetupMenuPickerFieldCell *)self traitCollection];
  v22 = [v21 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v22);

  v24 = 0.0;
  if (!IsAccessibilityCategory)
  {
    [(PKPaymentSetupFieldCell *)self minimumTextLabelWidth];
  }

  v25 = v6 + v17;
  v26 = fmin(fmax(v20, v24), v18 + -122.0);
  UIRectCenteredYInRect();
  v41 = v28;
  v42 = v27;
  v30 = v29;
  UIRectCenteredYInRect();
  v33 = v31;
  v34 = v32;
  if (v12)
  {
    v45.size.height = v39;
    v45.origin.y = v43 + v40;
    v45.origin.x = v25;
    v45.size.width = v18;
    MaxX = CGRectGetMaxX(v45);
    v36 = MaxX - v26;
    [v3 setFrame:{MaxX - v26, v33, v26, v34}];
    v37 = v36 - v30;
    v38 = -22.0;
  }

  else
  {
    [v3 setFrame:{v25, v31, v26, v32}];
    v46.origin.x = v25;
    v46.origin.y = v33;
    v46.size.width = v26;
    v46.size.height = v34;
    v37 = CGRectGetMaxX(v46);
    v38 = 22.0;
  }

  [(UIButton *)self->_button setFrame:v37 + v38, v42, v30, v41];
}

@end