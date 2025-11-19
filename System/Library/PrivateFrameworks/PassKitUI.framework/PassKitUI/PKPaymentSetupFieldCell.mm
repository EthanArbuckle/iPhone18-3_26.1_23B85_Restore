@interface PKPaymentSetupFieldCell
+ (id)paymentSetupFieldCellForField:(id)a3 fromTableView:(id)a4;
+ (id)reuseIdentifier;
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldBeginEditing:(id)a3;
- (BOOL)textFieldShouldClear:(id)a3;
- (BOOL)textFieldShouldReturn:(id)a3;
- (BOOL)usesCustomInputView;
- (CGRect)_separatorFrame;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKPaymentSetupFieldCell)init;
- (PKPaymentSetupFieldCell)initWithSetupField:(id)a3;
- (PKPaymentSetupFieldCellDelegate)delegate;
- (double)_minimumHeight;
- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5;
- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4;
- (void)_applyDefaultValues;
- (void)_clearKeyboardAccessories;
- (void)_configureKeyboardAccessories;
- (void)_editableTextFieldDidBeginEditing:(id)a3;
- (void)_editableTextFieldDidEndEditing:(id)a3;
- (void)_editableTextFieldValueChanged:(id)a3;
- (void)_keyboardAccessoryButtonTapped:(id)a3;
- (void)_keyboardDidHide:(id)a3;
- (void)_keyboardWillShow:(id)a3;
- (void)_paymentSetupFieldCurrentValueChangedNotification:(id)a3;
- (void)_pullCurrentValueFromField;
- (void)_pushCurrentValueToField;
- (void)_removeObserversForKeyboardState;
- (void)_setUpObserversForKeyboardState;
- (void)_updateDisplay:(BOOL)a3;
- (void)_updateDisplayForFieldTypeDate:(id)a3;
- (void)_updateDisplayForFieldTypePicker:(id)a3;
- (void)_updateDisplayForFieldTypeText:(id)a3;
- (void)_updateTextFieldStylingWithForceUpdate:(BOOL)a3;
- (void)datePicker:(id)a3 didChangeDate:(id)a4;
- (void)dealloc;
- (void)layoutSubviews;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
- (void)pk_applyAppearance:(id)a3;
- (void)prepareForReuse;
- (void)resetTextFieldStyling;
- (void)setEditableTextFieldCameraCapturedTextColor:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setHidePrediction:(BOOL)a3;
- (void)setMinimumTextLabelWidth:(double)a3;
- (void)setPaymentSetupField:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
- (void)updatePaymentSetupFieldWithCurrentCellValue;
- (void)updatePaymentSetupFieldWithFormatting;
@end

@implementation PKPaymentSetupFieldCell

- (void)pk_applyAppearance:(id)a3
{
  v6.receiver = self;
  v6.super_class = PKPaymentSetupFieldCell;
  v4 = a3;
  [(PKTableViewCell *)&v6 pk_applyAppearance:v4];
  v5 = [v4 tintColor];

  [(PKPaymentSetupFieldCell *)self setEditableTextFieldCameraCapturedTextColor:v5];
}

+ (id)paymentSetupFieldCellForField:(id)a3 fromTableView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 identifier];
  v9 = [v8 isEqualToString:*MEMORY[0x1E69BC220]];

  if (v9)
  {
    a1 = objc_opt_class();
  }

  v10 = [v6 identifier];
  v11 = [v10 isEqualToString:*MEMORY[0x1E69BC1B8]];

  if (v11)
  {
    a1 = objc_opt_class();
  }

  if ([v6 isFieldTypeLabel])
  {
    a1 = objc_opt_class();
  }

  if ([v6 isFieldTypePicker])
  {
    v12 = [v6 pickerFieldObject];
    v13 = [v12 pickerType];

    if (v13 == 3)
    {
      a1 = objc_opt_class();
    }
  }

  v14 = [a1 reuseIdentifier];
  v15 = [v7 dequeueReusableCellWithIdentifier:v14];

  if (!v15)
  {
    v15 = objc_alloc_init(a1);
  }

  [v15 setPaymentSetupField:v6];
  v16 = [v6 identifier];
  [v15 setAccessibilityIdentifier:v16];

  return v15;
}

- (PKPaymentSetupFieldCell)init
{
  v3 = [objc_opt_class() reuseIdentifier];
  v31.receiver = self;
  v31.super_class = PKPaymentSetupFieldCell;
  v4 = [(PKPaymentSetupFieldCell *)&v31 initWithStyle:0 reuseIdentifier:v3];

  if (v4)
  {
    v5 = objc_alloc_init(PKUITextField);
    textField = v4->_textField;
    v4->_textField = v5;

    [(PKUITextField *)v4->_textField setAllowsTextFromCamera:0];
    v7 = [(PKPaymentSetupFieldCell *)v4 contentView];
    [v7 addSubview:v4->_textField];

    [(PKPaymentSetupFieldCell *)v4 setEnabled:1];
    [(PKPaymentSetupFieldCell *)v4 setPreservesSuperviewLayoutMargins:0];
    [(PKPaymentSetupFieldCell *)v4 setLayoutMargins:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    v8 = [(PKPaymentSetupFieldCell *)v4 editableTextField];
    [v8 addTarget:v4 action:sel__editableTextFieldDidBeginEditing_ forControlEvents:0x10000];

    v9 = [(PKPaymentSetupFieldCell *)v4 editableTextField];
    [v9 addTarget:v4 action:sel__editableTextFieldValueChanged_ forControlEvents:0x20000];

    v10 = [(PKPaymentSetupFieldCell *)v4 editableTextField];
    [v10 addTarget:v4 action:sel__editableTextFieldDidEndEditing_ forControlEvents:0x40000];

    [(PKPaymentSetupFieldCell *)v4 setSelectionStyle:0];
    [(PKPaymentSetupFieldCell *)v4 setShouldDrawFullWidthSeperator:0];
    [(PKPaymentSetupFieldCell *)v4 setShouldDrawSeperator:1];
    v11 = [(PKPaymentSetupFieldCell *)v4 editableTextField];
    v12 = [v11 inputAssistantItem];
    v13 = [v12 leadingBarButtonGroups];
    defaultLeadingBarButtonGroups = v4->_defaultLeadingBarButtonGroups;
    v4->_defaultLeadingBarButtonGroups = v13;

    v15 = [(PKPaymentSetupFieldCell *)v4 editableTextField];
    v16 = [v15 inputAssistantItem];
    v17 = [v16 trailingBarButtonGroups];
    defaultTrailingBarButtonGroups = v4->_defaultTrailingBarButtonGroups;
    v4->_defaultTrailingBarButtonGroups = v17;

    v19 = [(PKPaymentSetupFieldCell *)v4 editableTextField];
    v20 = [v19 inputAssistantItem];
    v21 = [v20 _centerBarButtonGroups];
    defaultCenterBarButtonGroups = v4->_defaultCenterBarButtonGroups;
    v4->_defaultCenterBarButtonGroups = v21;

    v23 = [MEMORY[0x1E69DC888] labelColor];
    editableTextFieldTextColor = v4->_editableTextFieldTextColor;
    v4->_editableTextFieldTextColor = v23;

    v25 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    editableTextFieldDisabledTextColor = v4->_editableTextFieldDisabledTextColor;
    v4->_editableTextFieldDisabledTextColor = v25;

    v27 = [(PKPaymentSetupFieldCell *)v4 tintColor];
    editableTextFieldCameraCapturedTextColor = v4->_editableTextFieldCameraCapturedTextColor;
    v4->_editableTextFieldCameraCapturedTextColor = v27;

    v29 = PKProvisioningSecondaryBackgroundColor();
    [(PKPaymentSetupFieldCell *)v4 setBackgroundColor:v29];

    v4->_hidePrediction = 0;
    v4->_canResignFirstResponder = 1;
    v4->_isShowingError = 0;
  }

  return v4;
}

- (PKPaymentSetupFieldCell)initWithSetupField:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentSetupFieldCell *)self init];
  v6 = v5;
  if (v5)
  {
    [(PKPaymentSetupFieldCell *)v5 setPaymentSetupField:v4];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PKPaymentSetupFieldCell;
  [(PKPaymentSetupFieldCell *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v48.receiver = self;
  v48.super_class = PKPaymentSetupFieldCell;
  [(PKPaymentSetupFieldCell *)&v48 layoutSubviews];
  v3 = [(PKPaymentSetupFieldCell *)self textLabel];
  v4 = [(PKPaymentSetupFieldCell *)self editableTextField];
  if (v4)
  {
    v5 = [(PKPaymentSetupFieldCell *)self contentView];
    [v5 bounds];
    v46 = v7;
    v47 = v6;
    v9 = v8;
    v11 = v10;
    [v3 frame];
    [v4 sizeThatFits:{v9, v11}];
    v12 = [(PKPaymentSetupFieldCell *)self _shouldReverseLayoutDirection];
    PKOBKListInlineCellContentEdgeInsets();
    v16 = v15;
    v17 = v13;
    v19 = v18;
    v20 = v14;
    if (v12)
    {
      v21 = v14;
    }

    else
    {
      v21 = v13;
    }

    if ([v4 textAlignment] != 2 || v12)
    {
      if (!v12)
      {
        v17 = v20;
      }

      [v4 textAlignment];
    }

    v45 = v47 + v21;
    v22 = v9 - (v21 + v17);
    v44 = v11 - (v16 + v19);
    [v3 sizeThatFits:v22];
    v42 = v23;
    v24 = [(PKPaymentSetupFieldCell *)self traitCollection];
    v25 = [v24 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v25);

    minimumTextLabelWidth = 0.0;
    if (!IsAccessibilityCategory)
    {
      minimumTextLabelWidth = self->_minimumTextLabelWidth;
    }

    v43 = v46 + v16;
    UIRectCenteredYInRect();
    MaxY = v28;
    v31 = v30;
    UIRectCenteredYInRect();
    v34 = v33;
    if (IsAccessibilityCategory)
    {
      v35 = v45;
      v36 = v45;
      if (v12)
      {
        v49.origin.x = v45;
        v49.origin.y = v43;
        v49.size.height = v44;
        v49.size.width = v22;
        v36 = CGRectGetMaxX(v49) - v22;
      }

      [v3 setFrame:{v36, v46 + 22.0, v22, v34}];
      v50.origin.x = v36;
      v50.origin.y = v46 + 22.0;
      v50.size.width = v22;
      v50.size.height = v34;
      MaxY = CGRectGetMaxY(v50);
    }

    else
    {
      v37 = v32;
      v38 = fmin(fmax(v42, minimumTextLabelWidth), v22 + -122.0);
      v35 = v45;
      if (v12)
      {
        v51.origin.x = v45;
        v51.origin.y = v43;
        v51.size.height = v44;
        v51.size.width = v22;
        MaxX = CGRectGetMaxX(v51);
        v40 = MaxX - v38;
        [v3 setFrame:{MaxX - v38, v37, v38, v34}];
        v22 = v40 - v45 + -22.0;
      }

      else
      {
        [v3 setFrame:{v45, v32, v38, v33}];
        v52.origin.x = v45;
        v52.origin.y = v37;
        v52.size.width = v38;
        v52.size.height = v34;
        v41 = CGRectGetMaxX(v52) + 22.0;
        v53.origin.x = v45;
        v53.origin.y = v43;
        v53.size.height = v44;
        v53.size.width = v22;
        v22 = CGRectGetMaxX(v53) - v41;
        v35 = v41;
      }
    }

    [v4 setFrame:{v35, MaxY, v22, v31}];
  }
}

- (BOOL)usesCustomInputView
{
  if (([(PKPaymentSetupField *)self->_paymentSetupField isFieldTypeDate]& 1) != 0)
  {
    return 1;
  }

  paymentSetupField = self->_paymentSetupField;

  return [(PKPaymentSetupField *)paymentSetupField isFieldTypePicker];
}

- (void)setPaymentSetupField:(id)a3
{
  v5 = a3;
  paymentSetupField = self->_paymentSetupField;
  if (paymentSetupField != v5)
  {
    v10 = v5;
    v7 = MEMORY[0x1E69BC188];
    if (paymentSetupField)
    {
      v8 = [MEMORY[0x1E696AD88] defaultCenter];
      [v8 removeObserver:self name:*v7 object:self->_paymentSetupField];
    }

    objc_storeStrong(&self->_paymentSetupField, a3);
    if (self->_paymentSetupField)
    {
      v9 = [MEMORY[0x1E696AD88] defaultCenter];
      [v9 addObserver:self selector:sel__paymentSetupFieldCurrentValueChangedNotification_ name:*v7 object:self->_paymentSetupField];
    }

    [(PKPaymentSetupFieldCell *)self _updateDisplay:1];
    v5 = v10;
  }
}

- (void)setMinimumTextLabelWidth:(double)a3
{
  if (self->_minimumTextLabelWidth != a3)
  {
    self->_minimumTextLabelWidth = a3;
    [(PKPaymentSetupFieldCell *)self setNeedsLayout];
  }
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    self->_enabled = a3;
    if ([(PKPaymentSetupField *)self->_paymentSetupField source]== 1 && [(PKPaymentSetupFieldCell *)self isEnabled])
    {
      v7 = [(PKPaymentSetupFieldCell *)self editableTextField];
      [v7 setTextColor:self->_editableTextFieldCameraCapturedTextColor];
    }

    else
    {
      v7 = [(PKPaymentSetupFieldCell *)self editableTextField];
      v5 = [(PKPaymentSetupFieldCell *)self isEnabled];
      v6 = 5;
      if (v5)
      {
        v6 = 4;
      }

      [v7 setTextColor:*(&self->super.super.super.super.super.isa + OBJC_IVAR___PKPaymentSetupFieldCell__textField[v6])];
    }
  }
}

- (void)setHidePrediction:(BOOL)a3
{
  if (self->_hidePrediction != a3)
  {
    self->_hidePrediction = a3;
    v4 = [(PKPaymentSetupFieldCell *)self editableTextField];
    [v4 setHidePrediction:self->_hidePrediction];
  }
}

- (void)setEditableTextFieldCameraCapturedTextColor:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_editableTextFieldCameraCapturedTextColor != v4)
  {
    v11 = v4;
    v6 = [(UIColor *)v4 copy];
    editableTextFieldCameraCapturedTextColor = self->_editableTextFieldCameraCapturedTextColor;
    self->_editableTextFieldCameraCapturedTextColor = v6;

    v8 = [(PKPaymentSetupField *)self->_paymentSetupField source];
    v5 = v11;
    if (v8 == 1)
    {
      v9 = [(PKPaymentSetupFieldCell *)self isEnabled];
      v5 = v11;
      if (v9)
      {
        v10 = [(PKPaymentSetupFieldCell *)self editableTextField];
        [v10 setTextColor:self->_editableTextFieldCameraCapturedTextColor];

        v5 = v11;
      }
    }
  }
}

- (void)_updateDisplay:(BOOL)a3
{
  if (a3)
  {
    [(PKPaymentSetupFieldCell *)self _applyDefaultValues];
  }

  v4 = PKUIGetMinScreenWidthType();
  paymentSetupField = self->_paymentSetupField;
  if (v4)
  {
    [(PKPaymentSetupField *)paymentSetupField localizedDisplayName];
  }

  else
  {
    [(PKPaymentSetupField *)paymentSetupField compactLocalizedDisplayName];
  }
  v6 = ;
  v7 = [(PKPaymentSetupFieldCell *)self textLabel];
  [v7 setText:v6];

  v8 = [(PKPaymentSetupField *)self->_paymentSetupField localizedPlaceholder];
  v9 = [(PKPaymentSetupFieldCell *)self editableTextField];
  [v9 setPlaceholder:v8];

  v10 = [(PKPaymentSetupFieldCell *)self editableTextField];
  [v10 setDelegate:self];

  v11 = [(PKPaymentSetupField *)self->_paymentSetupField isFieldTypeText];
  v12 = self->_paymentSetupField;
  if (v11)
  {
    v13 = [(PKPaymentSetupField *)v12 textFieldObject];
    [(PKPaymentSetupFieldCell *)self _updateDisplayForFieldTypeText:v13];
  }

  else
  {
    v14 = [(PKPaymentSetupField *)v12 isFieldTypeDate];
    v15 = self->_paymentSetupField;
    if (v14)
    {
      v13 = [(PKPaymentSetupField *)v15 dateFieldObject];
      [(PKPaymentSetupFieldCell *)self _updateDisplayForFieldTypeDate:v13];
    }

    else
    {
      v16 = [(PKPaymentSetupField *)v15 isFieldTypePicker];
      v17 = self->_paymentSetupField;
      if (v16)
      {
        v13 = [(PKPaymentSetupField *)v17 pickerFieldObject];
        [(PKPaymentSetupFieldCell *)self _updateDisplayForFieldTypePicker:v13];
      }

      else
      {
        if ([(PKPaymentSetupField *)v17 fieldType])
        {
          goto LABEL_13;
        }

        v13 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *v19 = 0;
          _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, "Error: PKPaymentSetupFieldTypeUnknown field type cells are not currently supported!", v19, 2u);
        }
      }
    }
  }

LABEL_13:
  v18 = [(PKPaymentSetupFieldCell *)self editableTextField];
  [v18 setIsAccessibilityElement:{-[PKPaymentSetupField preventVoiceOver](self->_paymentSetupField, "preventVoiceOver") ^ 1}];

  [(PKPaymentSetupFieldCell *)self _pullCurrentValueFromField];
}

- (void)_applyDefaultValues
{
  v18 = [(PKPaymentSetupFieldCell *)self textLabel];
  v3 = PKOBKListTextFieldCellLabelFont();
  [v18 setFont:v3];

  [v18 setBaselineAdjustment:1];
  [v18 setAdjustsFontSizeToFitWidth:1];
  [v18 setText:0];
  v4 = [(PKPaymentSetupFieldCell *)self editableTextField];
  v5 = PKOBKListTextFieldCellTextFieldFont();
  [v4 setFont:v5];

  [v4 setText:0];
  [v4 setSecureTextEntry:0];
  [v4 setDisplaySecureTextUsingPlainText:0];
  v6 = MEMORY[0x1E696AAB0];
  v7 = PKLocalizedPaymentString(&cfstr_Required.isa);
  v8 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC50]);
  v9 = [v6 pkui_attriutedStringWithString:v7 font:v8 paragraphStyle:0];

  [v4 setAttributedPlaceholder:v9];
  [v4 setClearButtonMode:1];
  [v4 setAutocorrectionType:1];
  [v4 setAutocapitalizationType:1];
  [v4 setKeyboardType:0];
  [v4 setInputView:0];
  [v4 setAdjustsFontForContentSizeCategory:1];
  [v4 setHidePrediction:self->_hidePrediction];
  v10 = [v4 inputAssistantItem];
  [v10 setTrailingBarButtonGroups:self->_defaultTrailingBarButtonGroups];
  [v10 setLeadingBarButtonGroups:self->_defaultLeadingBarButtonGroups];
  [v10 _setCenterBarButtonGroups:self->_defaultCenterBarButtonGroups];
  if ([(PKPaymentSetupField *)self->_paymentSetupField source]== 1 && [(PKPaymentSetupFieldCell *)self isEnabled])
  {
    v11 = &OBJC_IVAR___PKPaymentSetupFieldCell__editableTextFieldCameraCapturedTextColor;
  }

  else
  {
    v12 = [(PKPaymentSetupFieldCell *)self isEnabled];
    v13 = 5;
    if (v12)
    {
      v13 = 4;
    }

    v11 = &OBJC_IVAR___PKPaymentSetupFieldCell__textField[v13];
  }

  [v4 setTextColor:*(&self->super.super.super.super.super.isa + *v11)];
  dateInputView = self->_dateInputView;
  if (dateInputView)
  {
    [(PKDatePicker *)dateInputView setDelegate:0];
    v15 = self->_dateInputView;
    self->_dateInputView = 0;
  }

  pickerInputView = self->_pickerInputView;
  if (pickerInputView)
  {
    [(UIPickerView *)pickerInputView setDelegate:0];
    [(UIPickerView *)self->_pickerInputView setDataSource:0];
    v17 = self->_pickerInputView;
    self->_pickerInputView = 0;
  }
}

- (void)_updateDisplayForFieldTypeText:(id)a3
{
  v24 = a3;
  v4 = [(PKPaymentSetupFieldCell *)self editableTextField];
  v5 = [v24 displayString];
  [v4 setText:v5];

  if ([v24 isNumericFractional])
  {
    v6 = 8;
  }

  else if ([v24 isNumeric])
  {
    v6 = 11;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v24 identifier];
  if ([v7 isEqualToString:*MEMORY[0x1E69BC1D0]])
  {
    v8 = MEMORY[0x1E69DE4E8];
LABEL_15:
    v9 = *v8;
    v10 = 0;
    goto LABEL_16;
  }

  if ([v7 isEqualToString:*MEMORY[0x1E69BC220]])
  {
    v8 = MEMORY[0x1E69DE480];
    goto LABEL_15;
  }

  if ([v7 isEqualToString:*MEMORY[0x1E69BC210]])
  {
    v9 = *MEMORY[0x1E69DE578];
    v10 = 1;
    v6 = 5;
    goto LABEL_16;
  }

  if (([v7 isEqualToString:*MEMORY[0x1E69BC238]] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", *MEMORY[0x1E69BC198]))
  {
    v8 = MEMORY[0x1E69DE540];
    goto LABEL_15;
  }

  if (([v7 isEqualToString:*MEMORY[0x1E69BC240]] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", *MEMORY[0x1E69BC1A0]))
  {
    v8 = MEMORY[0x1E69DE548];
    goto LABEL_15;
  }

  if ([v7 isEqualToString:*MEMORY[0x1E69BC248]])
  {
    v8 = MEMORY[0x1E69DE550];
    goto LABEL_15;
  }

  if ([v7 isEqualToString:*MEMORY[0x1E69BC218]])
  {
    v8 = MEMORY[0x1E69DE530];
    goto LABEL_15;
  }

  if ([v7 isEqualToString:*MEMORY[0x1E69BC1D8]])
  {
    v8 = MEMORY[0x1E69DE3F8];
    goto LABEL_15;
  }

  if ([v7 isEqualToString:*MEMORY[0x1E69BC230]])
  {
    v8 = MEMORY[0x1E69DE408];
    goto LABEL_15;
  }

  if ([v7 isEqualToString:*MEMORY[0x1E69BC1F0]])
  {
    v8 = MEMORY[0x1E69DE4C8];
    goto LABEL_15;
  }

  if ([v7 isEqualToString:*MEMORY[0x1E69BC1F8]])
  {
    v8 = MEMORY[0x1E69DE4B0];
    goto LABEL_15;
  }

  if ([v7 isEqualToString:*MEMORY[0x1E69BC1E8]])
  {
    v8 = MEMORY[0x1E69DE4A0];
    goto LABEL_15;
  }

  if ([v7 isEqualToString:*MEMORY[0x1E69BC250]])
  {
    v9 = 0;
    v10 = 0;
    v6 = 8;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    if ([v7 isEqualToString:*MEMORY[0x1E69BC200]])
    {
      v6 = 8;
    }
  }

LABEL_16:
  v11 = [v24 isSecureText];
  v12 = [v24 isSecureVisibleText];
  v13 = PKSensitiveFieldBroadcastingEnabled();
  v14 = (v13 ^ 1) & v11;
  v15 = (v13 ^ 1) & v12;
  v16 = [(PKPaymentSetupFieldCell *)self _shouldReverseLayoutDirection];
  v17 = [v4 textAlignment];
  v18 = [v4 clearButtonMode];
  v19 = [v24 alignment];
  v20 = 2;
  if (v16)
  {
    v20 = 0;
  }

  v21 = 2;
  if (!v16)
  {
    v21 = 0;
  }

  if (v19 != 1)
  {
    v21 = v17;
  }

  if (v19 == 2)
  {
    v22 = v20;
  }

  else
  {
    v22 = v21;
  }

  if (v19 == 2)
  {
    v23 = 0;
  }

  else
  {
    v23 = v18;
  }

  [v4 setKeyboardType:v6];
  [v4 setTextContentType:v9];
  [v4 setContentsIsSingleValue:v10];
  [v4 setSecureTextEntry:v14];
  [v4 setDisplaySecureTextUsingPlainText:v15];
  [v4 setSmartInsertDeleteType:1];
  [v4 setTextAlignment:v22];
  [v4 setClearButtonMode:v23];
  if ((v14 & v15) == 1)
  {
    [v4 setAutocapitalizationType:1];
  }

  [v4 pkui_setExcludedFromScreenCapture:v14 & v15 andBroadcasting:v14 & v15];
  if ([v24 hasDisplayFormat])
  {
    [v4 setAutocapitalizationType:3];
  }
}

- (void)_updateDisplayForFieldTypeDate:(id)a3
{
  v28 = a3;
  if (!self->_dateInputView)
  {
    v4 = objc_alloc_init(PKDatePicker);
    dateInputView = self->_dateInputView;
    self->_dateInputView = v4;
  }

  v6 = [(PKPaymentSetupFieldCell *)self editableTextField];
  [v6 setSecureTextEntry:1];

  v7 = [(PKPaymentSetupFieldCell *)self editableTextField];
  [v7 setDisplaySecureTextUsingPlainText:1];

  if (([v28 isOptional] & 1) == 0)
  {
    v8 = [(PKPaymentSetupFieldCell *)self editableTextField];
    [v8 setClearButtonMode:0];
  }

  -[UIView pkui_setExcludedFromScreenCapture:andBroadcasting:](self->_dateInputView, "pkui_setExcludedFromScreenCapture:andBroadcasting:", [v28 isSecureText], objc_msgSend(v28, "isSecureText"));
  v9 = [v28 identifier];
  v10 = [v9 isEqualToString:*MEMORY[0x1E69BC1B0]];

  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v12 = [v28 identifier];
    v13 = [v12 isEqualToString:*MEMORY[0x1E69BC1E0]];

    if (v13)
    {
      v11 = 2;
    }

    else
    {
      v11 = 0;
    }
  }

  v14 = self->_dateInputView;
  v15 = [v28 showsDay];
  v16 = [v28 showsMonth];
  v17 = [v28 showsYear];
  v18 = [v28 locale];
  v19 = [v28 calendar];
  [(PKDatePicker *)v14 reconfigureToShowDay:v15 month:v16 year:v17 style:v11 locale:v18 calendar:v19];

  [(PKDatePicker *)self->_dateInputView setDelegate:self];
  v20 = [(PKPaymentSetupFieldCell *)self editableTextField];
  [v20 setInputView:self->_dateInputView];

  v21 = [(PKPaymentSetupFieldCell *)self editableTextField];
  v22 = [v21 inputAssistantItem];
  v23 = MEMORY[0x1E695E0F0];
  [v22 setTrailingBarButtonGroups:MEMORY[0x1E695E0F0]];

  v24 = [(PKPaymentSetupFieldCell *)self editableTextField];
  v25 = [v24 inputAssistantItem];
  [v25 _setCenterBarButtonGroups:v23];

  v26 = [(PKPaymentSetupFieldCell *)self editableTextField];
  v27 = [v26 inputAssistantItem];
  [v27 setLeadingBarButtonGroups:v23];
}

- (void)_updateDisplayForFieldTypePicker:(id)a3
{
  v19 = a3;
  if (!self->_pickerInputView)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCD78]);
    pickerInputView = self->_pickerInputView;
    self->_pickerInputView = v4;
  }

  v6 = [(PKPaymentSetupFieldCell *)self editableTextField];
  [v6 setSecureTextEntry:1];

  v7 = [(PKPaymentSetupFieldCell *)self editableTextField];
  [v7 setDisplaySecureTextUsingPlainText:1];

  [(UIPickerView *)self->_pickerInputView setDelegate:self];
  [(UIPickerView *)self->_pickerInputView setDataSource:self];
  v8 = self->_pickerInputView;
  v9 = [(PKTableViewCell *)self customAccessoryColor];
  if (v9)
  {
    [(UIPickerView *)v8 setBackgroundColor:v9];
  }

  else
  {
    v10 = [(PKPaymentSetupFieldCell *)self backgroundColor];
    [(UIPickerView *)v8 setBackgroundColor:v10];
  }

  v11 = [(PKPaymentSetupFieldCell *)self editableTextField];
  [v11 setInputView:self->_pickerInputView];

  v12 = [(PKPaymentSetupFieldCell *)self editableTextField];
  v13 = [v12 inputAssistantItem];
  v14 = MEMORY[0x1E695E0F0];
  [v13 setTrailingBarButtonGroups:MEMORY[0x1E695E0F0]];

  v15 = [(PKPaymentSetupFieldCell *)self editableTextField];
  v16 = [v15 inputAssistantItem];
  [v16 _setCenterBarButtonGroups:v14];

  v17 = [(PKPaymentSetupFieldCell *)self editableTextField];
  v18 = [v17 inputAssistantItem];
  [v18 setLeadingBarButtonGroups:v14];
}

- (void)_paymentSetupFieldCurrentValueChangedNotification:(id)a3
{
  if (!self->_ignoreCurrentValueChangedNotifications)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__PKPaymentSetupFieldCell__paymentSetupFieldCurrentValueChangedNotification___block_invoke;
    block[3] = &unk_1E8010970;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(PKPaymentSetupFieldCell *)self traitCollection];
  v7 = [v6 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v7);

  v9.n128_f64[0] = width;
  PKFloatCeilToPixel(v9, v10);
  v12 = v11;
  v13 = width + PKTableViewCellTextInset() * -2.0;
  [(PKPaymentSetupFieldCell *)self layoutMargins];
  v16 = height - (v14 + v15);
  if (IsAccessibilityCategory)
  {
    v13 = v13 + -22.0;
    v17 = [(PKPaymentSetupFieldCell *)self editableTextField];
    [v17 sizeThatFits:{v13, v16}];
    v19 = v18;

    v20.n128_u64[0] = v19;
    PKFloatCeilToPixel(v20, v21);
    v23 = v22 + 0.0 + 20.0;
  }

  else
  {
    v23 = 0.0;
  }

  v24 = [(PKPaymentSetupFieldCell *)self textLabel];
  [v24 pkui_sizeThatFits:1 forceWordWrap:{v13, v16}];
  v26 = v25;

  v27.n128_u64[0] = v26;
  PKFloatCeilToPixel(v27, v28);
  v30 = v23 + v29 + 20.0;
  [(PKPaymentSetupFieldCell *)self _minimumHeight];
  if (v30 <= v31)
  {
    [(PKPaymentSetupFieldCell *)self _minimumHeight];
    v30 = v32;
  }

  v33 = v12;
  v34 = v30;
  result.height = v34;
  result.width = v33;
  return result;
}

- (double)_minimumHeight
{
  v3 = [MEMORY[0x1E69DCC28] cellConfiguration];
  v4 = [(PKPaymentSetupFieldCell *)self traitCollection];
  [v3 _minimumHeightForTraitCollection:v4];
  v6 = v5;

  return v6;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PKPaymentSetupFieldCell;
  [(PKTableViewCell *)&v3 prepareForReuse];
  [(PKPaymentSetupFieldCell *)self _updateDisplay:1];
  [(PKPaymentSetupFieldCell *)self setEnabled:1];
  [(PKPaymentSetupFieldCell *)self _clearKeyboardAccessories];
  [(PKPaymentSetupFieldCell *)self _removeObserversForKeyboardState];
}

- (BOOL)becomeFirstResponder
{
  v3 = [(PKPaymentSetupFieldCell *)self editableTextField];

  if (v3)
  {
    v4 = [(PKPaymentSetupFieldCell *)self editableTextField];
    v5 = [v4 becomeFirstResponder];

    return v5;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PKPaymentSetupFieldCell;
    return [(PKPaymentSetupFieldCell *)&v7 becomeFirstResponder];
  }
}

- (BOOL)resignFirstResponder
{
  v8.receiver = self;
  v8.super_class = PKPaymentSetupFieldCell;
  v3 = [(PKPaymentSetupFieldCell *)&v8 resignFirstResponder];
  v4 = [(PKPaymentSetupFieldCell *)self editableTextField];
  v5 = [v4 isUserInteractionEnabled];

  if (v5)
  {
    v6 = [(PKPaymentSetupFieldCell *)self editableTextField];
    v3 = [v6 resignFirstResponder];
  }

  return v3;
}

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (CGRect)_separatorFrame
{
  v17.receiver = self;
  v17.super_class = PKPaymentSetupFieldCell;
  [(PKPaymentSetupFieldCell *)&v17 _separatorFrame];
  if (self->_shouldDrawSeperator)
  {
    v5 = v3;
    v6 = v4;
    if (self->_shouldDrawFullWidthSeperator)
    {
      [(PKPaymentSetupFieldCell *)self bounds];
      Width = CGRectGetWidth(v18);
      v8 = 0.0;
    }

    else
    {
      PKOBKListInlineCellContentEdgeInsets();
      v8 = v13;
      v15 = v14;
      v16 = [(PKPaymentSetupFieldCell *)self _shouldReverseLayoutDirection];
      [(PKPaymentSetupFieldCell *)self bounds];
      Width = CGRectGetWidth(v19) - v8;
      if (_UISolariumFeatureFlagEnabled())
      {
        Width = Width - v15;
      }

      if (v16)
      {
        if (_UISolariumFeatureFlagEnabled())
        {
          v8 = v15;
        }

        else
        {
          v8 = 0.0;
        }
      }
    }
  }

  else
  {
    v8 = *MEMORY[0x1E695F058];
    v5 = *(MEMORY[0x1E695F058] + 8);
    Width = *(MEMORY[0x1E695F058] + 16);
    v6 = *(MEMORY[0x1E695F058] + 24);
  }

  v9 = v8;
  v10 = v5;
  v11 = Width;
  v12 = v6;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (void)updatePaymentSetupFieldWithCurrentCellValue
{
  [(PKPaymentSetupFieldCell *)self _pushCurrentValueToField];

  [(PKPaymentSetupFieldCell *)self _pullCurrentValueFromField];
}

- (void)updatePaymentSetupFieldWithFormatting
{
  v6 = [(PKPaymentSetupField *)self->_paymentSetupField textFieldObject];
  v3 = [(PKPaymentSetupFieldCell *)self editableTextField];
  v4 = [v3 text];
  v5 = [v6 stringByApplyingDisplayFormat:v4 allowPartialFractional:0];

  [v3 setText:v5];
  [v3 sendActionsForControlEvents:0x20000];
}

- (void)_updateTextFieldStylingWithForceUpdate:(BOOL)a3
{
  if (self->_shouldUpdateTextFieldStyling || a3)
  {
    v13 = [(PKPaymentSetupFieldCell *)self editableTextField];
    v4 = [v13 text];
    v5 = [v4 length];

    if (v5)
    {
      v6 = [(PKPaymentSetupField *)self->_paymentSetupField isReadonly];
      v7 = [(PKPaymentSetupField *)self->_paymentSetupField isOptional];
      v8 = [(PKPaymentSetupField *)self->_paymentSetupField submissionStringMeetsAllRequirements];
      v9 = [(PKPaymentSetupField *)self->_paymentSetupField submissionStringMeetsValidationRegex];
      if (v7)
      {
        v10 = v9;
      }

      else
      {
        v10 = v8;
      }

      if (v6 & 1) != 0 || (v10)
      {
        self->_isShowingError = 0;
        v11 = [MEMORY[0x1E69DC888] labelColor];
      }

      else
      {
        self->_isShowingError = 1;
        v11 = [MEMORY[0x1E69DC888] systemRedColor];
      }

      v12 = v11;
      [v13 setTextColor:v11];
    }

    else
    {
      [(PKPaymentSetupFieldCell *)self resetTextFieldStyling];
    }
  }
}

- (void)resetTextFieldStyling
{
  v4 = [(PKPaymentSetupFieldCell *)self editableTextField];
  v3 = [MEMORY[0x1E69DC888] labelColor];
  [v4 setTextColor:v3];

  self->_shouldUpdateTextFieldStyling = 0;
  self->_isShowingError = 0;
}

- (void)_pushCurrentValueToField
{
  self->_ignoreCurrentValueChangedNotifications = 1;
  v3 = [(PKPaymentSetupField *)self->_paymentSetupField textFieldObject];
  v23 = v3;
  if (v3)
  {
    v4 = [v3 secureTextVisibility] == 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(PKPaymentSetupField *)self->_paymentSetupField isFieldTypeDate];
  paymentSetupField = self->_paymentSetupField;
  if (v5)
  {
    v7 = [(PKDatePicker *)self->_dateInputView date];
    v8 = paymentSetupField;
LABEL_6:
    [(PKPaymentSetupField *)v8 setCurrentValue:v7];
LABEL_11:

    goto LABEL_12;
  }

  if ([(PKPaymentSetupField *)self->_paymentSetupField isFieldTypePicker])
  {
    v9 = [(PKPaymentSetupFieldCell *)self paymentSetupField];
    v7 = [v9 pickerFieldObject];

    v10 = [(UIPickerView *)self->_pickerInputView selectedRowInComponent:0];
    v11 = [v7 pickerItems];
    v12 = 0;
    if (v10 < [v11 count])
    {
      v12 = [v11 objectAtIndex:v10];
    }

    [v7 setCurrentValue:v12];

    goto LABEL_11;
  }

  if (!v4)
  {
    v13 = [(PKPaymentSetupFieldCell *)self editableTextField];
    v7 = [v13 text];

    v14 = [v7 length];
    v15 = self->_paymentSetupField;
    if (!v14)
    {
LABEL_20:
      v17 = 4;
LABEL_21:
      [(PKPaymentSetupField *)v15 setSource:v17];
      goto LABEL_22;
    }

    v16 = [(PKPaymentSetupField *)v15 source];
    if (v16 > 4)
    {
LABEL_22:
      v8 = self->_paymentSetupField;
      goto LABEL_6;
    }

    if (((1 << v16) & 0x13) != 0)
    {
      v15 = self->_paymentSetupField;
      goto LABEL_20;
    }

    v18 = [(PKPaymentSetupField *)self->_paymentSetupField defaultValue];
    v19 = v7;
    v20 = v18;
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      if (!v19 || !v20)
      {

LABEL_31:
        v15 = self->_paymentSetupField;
        v17 = 3;
        goto LABEL_21;
      }

      v22 = [v19 isEqualToString:v20];

      if (!v22)
      {
        goto LABEL_31;
      }
    }

    v15 = self->_paymentSetupField;
    v17 = 2;
    goto LABEL_21;
  }

LABEL_12:
  self->_ignoreCurrentValueChangedNotifications = 0;
}

- (void)_pullCurrentValueFromField
{
  v3 = [(PKPaymentSetupField *)self->_paymentSetupField isFieldTypeDate];
  paymentSetupField = self->_paymentSetupField;
  if (v3)
  {
    v5 = [(PKPaymentSetupField *)paymentSetupField currentValue];

    v6 = [(PKPaymentSetupFieldCell *)self editableTextField];
    v7 = v6;
    if (v5)
    {
      v8 = [(PKPaymentSetupField *)self->_paymentSetupField displayString];
      [v7 setText:v8];
    }

    else
    {
      [v6 setText:0];
    }

    v18 = [(PKPaymentSetupField *)self->_paymentSetupField currentValue];
    if (v18)
    {
      v16 = v18;
      goto LABEL_12;
    }

    v19 = [(PKPaymentSetupField *)self->_paymentSetupField dateFieldObject];
    v16 = [v19 defaultDate];

    if (v16)
    {
LABEL_12:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(PKDatePicker *)self->_dateInputView setDate:v16];
      }
    }

LABEL_14:

    goto LABEL_15;
  }

  if (![(PKPaymentSetupField *)paymentSetupField isFieldTypePicker])
  {
    v16 = [(PKPaymentSetupFieldCell *)self editableTextField];
    v17 = [(PKPaymentSetupField *)self->_paymentSetupField displayString];
    [v16 setText:v17];

    goto LABEL_14;
  }

  v9 = [(PKPaymentSetupField *)self->_paymentSetupField currentValue];

  if (v9)
  {
    v10 = [(PKPaymentSetupFieldCell *)self editableTextField];
    v11 = [(PKPaymentSetupField *)self->_paymentSetupField displayString];
    [v10 setText:v11];

    v12 = [(PKPaymentSetupField *)self->_paymentSetupField pickerFieldObject];
    v13 = [v12 pickerItems];
    v14 = [(PKPaymentSetupField *)self->_paymentSetupField currentValue];
    v15 = [v13 indexOfObject:v14];

    [(UIPickerView *)self->_pickerInputView selectRow:v15 inComponent:0 animated:0];
  }

LABEL_15:
  if ([(PKPaymentSetupField *)self->_paymentSetupField source]== 1 && [(PKPaymentSetupFieldCell *)self isEnabled])
  {
    v22 = [(PKPaymentSetupFieldCell *)self editableTextField];
    [v22 setTextColor:self->_editableTextFieldCameraCapturedTextColor];
  }

  else
  {
    v22 = [(PKPaymentSetupFieldCell *)self editableTextField];
    v20 = [(PKPaymentSetupFieldCell *)self isEnabled];
    v21 = 5;
    if (v20)
    {
      v21 = 4;
    }

    [v22 setTextColor:*(&self->super.super.super.super.super.isa + OBJC_IVAR___PKPaymentSetupFieldCell__textField[v21])];
  }
}

- (void)_editableTextFieldDidBeginEditing:(id)a3
{
  if ([(PKPaymentSetupFieldCell *)self usesCustomInputView])
  {
    [(PKPaymentSetupFieldCell *)self updatePaymentSetupFieldWithCurrentCellValue];
  }

  if ([(PKPaymentSetupField *)self->_paymentSetupField isFieldTypeText])
  {
    v4 = [(PKPaymentSetupFieldCell *)self editableTextField];
    v5 = [v4 text];
    v6 = [v5 length];

    self->_shouldUpdateTextFieldStyling = v6 != 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 fieldCellEditableTextFieldDidBeginEditing:self];
  }
}

- (void)_editableTextFieldDidEndEditing:(id)a3
{
  if ([(PKPaymentSetupField *)self->_paymentSetupField isFieldTypeText])
  {
    [(PKPaymentSetupFieldCell *)self _updateTextFieldStylingWithForceUpdate:1];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 fieldCellEditableTextFieldDidEndEditing:self];
  }
}

- (void)_editableTextFieldValueChanged:(id)a3
{
  if (([(PKPaymentSetupField *)self->_paymentSetupField isFieldTypeDate]& 1) == 0 && ([(PKPaymentSetupField *)self->_paymentSetupField isFieldTypePicker]& 1) == 0)
  {
    [(PKPaymentSetupFieldCell *)self _pushCurrentValueToField];
  }

  if ([(PKPaymentSetupField *)self->_paymentSetupField isFieldTypeText])
  {
    [(PKPaymentSetupFieldCell *)self _updateTextFieldStylingWithForceUpdate:0];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 fieldCellEditableTextFieldValueDidChange:self];
  }
}

- (void)_configureKeyboardAccessories
{
  v50 = *MEMORY[0x1E69E9840];
  v35 = [(PKPaymentSetupField *)self->_paymentSetupField textFieldObject];
  if (v35 || _UISolariumFeatureFlagEnabled() && ([(PKPaymentSetupField *)self->_paymentSetupField fieldType]== 2 || [(PKPaymentSetupField *)self->_paymentSetupField fieldType]== 5))
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v30 = objc_opt_class();
      v31 = v30;
      IsHardwareKeyboardActive = PKUIKeyboardIsHardwareKeyboardActive();
      v33 = @"NO";
      *buf = 138412802;
      v45 = v30;
      if (IsHardwareKeyboardActive)
      {
        v33 = @"YES";
      }

      v46 = 2048;
      v47 = self;
      v48 = 2112;
      v49 = v33;
      _os_log_debug_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEBUG, "Configuring keyboard accessories for <%@: %p>. HW keyboard?: %@", buf, 0x20u);
    }

    if (PKUIKeyboardIsHardwareKeyboardActive())
    {
      [(PKPaymentSetupFieldCell *)self _clearKeyboardAccessories];
      goto LABEL_32;
    }

    v4 = [v35 keyboardAccessories];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = MEMORY[0x1E695E0F0];
    }

    v34 = v6;

    if (PKEqualObjects())
    {
      v7 = v3;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v8 = objc_opt_class();
        configuredKeyboardAccessories = self->_configuredKeyboardAccessories;
        *buf = 138412802;
        v45 = v8;
        v46 = 2048;
        v47 = self;
        v48 = 2112;
        v49 = configuredKeyboardAccessories;
        v10 = v8;
        _os_log_debug_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEBUG, "Found matching keyboard accessories configuration cache for <%@: %p>. Configured accessories: %@", buf, 0x20u);

        v7 = v3;
      }

      goto LABEL_31;
    }

    objc_storeStrong(&self->_configuredKeyboardAccessories, v6);
    v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v12 = objc_loadWeakRetained(&self->_delegate);
      v13 = objc_opt_respondsToSelector();

      if ((v13 & 1) == 0)
      {
LABEL_30:
        objc_initWeak(buf, self);
        v27 = MEMORY[0x1E69DC628];
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __56__PKPaymentSetupFieldCell__configureKeyboardAccessories__block_invoke;
        v37[3] = &unk_1E8012328;
        objc_copyWeak(&v38, buf);
        v37[4] = self;
        v28 = [v27 actionWithHandler:v37];
        v29 = [(PKPaymentSetupFieldCell *)self editableTextField];
        [v29 pkui_attachDoneToolbarWithAdditionalItems:v36 doneAction:v28];

        objc_destroyWeak(&v38);
        objc_destroyWeak(buf);
        v7 = v36;
LABEL_31:

        goto LABEL_32;
      }

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      WeakRetained = [v35 keyboardAccessories];
      v14 = [WeakRetained countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (v14)
      {
        v15 = *v40;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v40 != v15)
            {
              objc_enumerationMutation(WeakRetained);
            }

            v17 = [*(*(&v39 + 1) + 8 * i) unsignedIntegerValue];
            v18 = objc_loadWeakRetained(&self->_delegate);
            v19 = [v18 fieldCell:self supportsKeyboardAccessory:v17];

            if (v17 == 2)
            {
              v20 = v19;
            }

            else
            {
              v20 = 0;
            }

            if (v20 == 1)
            {
              v21 = [MEMORY[0x1E69DC740] pkui_createPlainMinimalButtonConfiguration];
              v22 = PKLocalizedPaymentString(&cfstr_ManualEntryCam.isa);
              [v21 setTitle:v22];

              v23 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"creditcard.viewfinder"];
              [v21 setImage:v23];

              [v21 setImagePlacement:2];
              [v21 setImagePadding:8.0];
              v24 = [MEMORY[0x1E69DC888] labelColor];
              [v21 setBaseForegroundColor:v24];

              [v21 setContentInsets:{0.0, 8.0, 0.0, 8.0}];
              v25 = [MEMORY[0x1E69DC738] buttonWithType:1];
              [v25 setConfiguration:v21];
              [v25 addTarget:self action:sel__keyboardAccessoryButtonTapped_ forControlEvents:0x2000];
              [v25 setTag:2];
              v26 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v25];
              [v36 addObject:v26];
            }
          }

          v14 = [WeakRetained countByEnumeratingWithState:&v39 objects:v43 count:16];
        }

        while (v14);
      }
    }

    goto LABEL_30;
  }

LABEL_32:
}

void __56__PKPaymentSetupFieldCell__configureKeyboardAccessories__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 144);
    if (objc_opt_respondsToSelector())
    {
      v4 = objc_loadWeakRetained(v9 + 144);
      v5 = objc_opt_respondsToSelector();

      if (v5)
      {
        v6 = objc_loadWeakRetained(v9 + 144);
        v7 = [v6 fieldCell:*(a1 + 32) supportsKeyboardAccessory:1];

        if (v7)
        {
          v8 = objc_loadWeakRetained(v9 + 144);
          [v8 fieldCell:v9 didTapKeyboardAccessory:1];

LABEL_8:
          WeakRetained = v9;
          goto LABEL_9;
        }
      }
    }

    else
    {
    }

    [v9 resignFirstResponder];
    goto LABEL_8;
  }

LABEL_9:
}

- (void)_clearKeyboardAccessories
{
  configuredKeyboardAccessories = self->_configuredKeyboardAccessories;
  if (configuredKeyboardAccessories)
  {
    self->_configuredKeyboardAccessories = 0;

    v4 = [(PKPaymentSetupFieldCell *)self editableTextField];
    [v4 setInputAccessoryView:0];
    if ([(PKPaymentSetupFieldCell *)self isFirstResponder])
    {
      [v4 reloadInputViews];
    }
  }
}

- (void)_keyboardAccessoryButtonTapped:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 fieldCell:self didTapKeyboardAccessory:{objc_msgSend(v7, "tag")}];
  }
}

- (void)datePicker:(id)a3 didChangeDate:(id)a4
{
  [(PKPaymentSetupFieldCell *)self updatePaymentSetupFieldWithCurrentCellValue:a3];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 fieldCellEditableTextFieldValueDidChange:self];
  }
}

- (BOOL)textFieldShouldBeginEditing:(id)a3
{
  if (-[PKPaymentSetupFieldCell isEnabled](self, "isEnabled", a3) && ((WeakRetained = objc_loadWeakRetained(&self->_delegate), v5 = objc_opt_respondsToSelector(), WeakRetained, (v5 & 1) == 0) || (v6 = objc_loadWeakRetained(&self->_delegate), v7 = [v6 fieldCellEditableTextFieldShouldBeginEditing:self], v6, v7)))
  {
    if ([(PKPaymentSetupField *)self->_paymentSetupField isFieldTypeDate]&& [(PKPaymentSetupField *)self->_paymentSetupField source]== 1)
    {
      [(PKPaymentSetupField *)self->_paymentSetupField setSource:0];
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  [(PKPaymentSetupFieldCell *)self _configureKeyboardAccessories];
  [(PKPaymentSetupFieldCell *)self _setUpObserversForKeyboardState];
  return v8;
}

- (BOOL)textFieldShouldClear:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = [v6 fieldCellEditableTextFieldShouldClear:self];

    if (!v7)
    {
      return 0;
    }
  }

  v8 = 1;
  self->_ignoreCurrentValueChangedNotifications = 1;
  [(PKPaymentSetupField *)self->_paymentSetupField setCurrentValue:0];
  self->_ignoreCurrentValueChangedNotifications = 0;
  [(PKPaymentSetupField *)self->_paymentSetupField setSource:4];
  [(PKPaymentSetupFieldCell *)self resetTextFieldStyling];
  return v8;
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = objc_loadWeakRetained(&self->_delegate);
  v7 = [v6 fieldCellEditableTextFieldShouldReturn:self];

  return v7;
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v130 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  if (([(PKPaymentSetupField *)self->_paymentSetupField isFieldTypeDate]& 1) == 0 && ([(PKPaymentSetupField *)self->_paymentSetupField isFieldTypePicker]& 1) == 0)
  {
    v12 = [(PKPaymentSetupField *)self->_paymentSetupField textFieldObject];
    v13 = v12;
    v116 = length;
    if (v12 && ![v12 secureTextVisibility])
    {
      v15 = [v13 currentValue];
      v16 = v15;
      v17 = &stru_1F3BD7330;
      if (v15)
      {
        v17 = v15;
      }

      v14 = v17;

      v118 = 1;
    }

    else
    {
      v14 = [v9 text];
      v118 = 0;
    }

    v18 = [(__CFString *)v14 length];
    v19 = v10;
    v20 = [(__CFString *)v19 length];
    v113 = v20;
    v107 = v19;
    if (v18)
    {
      v109 = 1;
      v21 = v20;
    }

    else
    {
      v22 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v23 = [(__CFString *)v19 stringByTrimmingCharactersInSet:v22];
      v24 = v19;
      v19 = v23;

      v25 = [(__CFString *)v19 length];
      if (!v25)
      {
        LOBYTE(v11) = 1;
        goto LABEL_113;
      }

      v21 = v25;
      v109 = v25 >= v113;
    }

    v26 = [v13 maxLength];
    if (v13)
    {
      v27 = v26 == 0;
    }

    else
    {
      v27 = 1;
    }

    v28 = v27 || v21 == 0;
    v108 = v18;
    if (v28)
    {
      v11 = 1;
      if (!v13)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v103 = v26;
      v105 = v19;
      v29 = [(__CFString *)v14 stringByReplacingCharactersInRange:location withString:v116, v19];
      v30 = [v13 keepPaddingCharactersForSubmission];
      if ((v30 & 1) == 0 && [v13 hasDisplayFormat])
      {
        v110 = v21;
        v97 = v10;
        v99 = v9;
        v126 = 0u;
        v127 = 0u;
        v124 = 0u;
        v125 = 0u;
        v101 = v13;
        v31 = [v13 displayFormatPaddingCharacters];
        v32 = [v31 countByEnumeratingWithState:&v124 objects:v129 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v125;
          do
          {
            v35 = 0;
            v36 = v29;
            do
            {
              if (*v125 != v34)
              {
                objc_enumerationMutation(v31);
              }

              v29 = [v36 stringByReplacingOccurrencesOfString:*(*(&v124 + 1) + 8 * v35) withString:&stru_1F3BD7330];

              ++v35;
              v36 = v29;
            }

            while (v33 != v35);
            v33 = [v31 countByEnumeratingWithState:&v124 objects:v129 count:16];
          }

          while (v33);
        }

        v10 = v97;
        v9 = v99;
        v13 = v101;
        v21 = v110;
      }

      v11 = [v29 length] <= v103;

      v19 = v105;
      if (!v13)
      {
        goto LABEL_52;
      }
    }

    if (v11)
    {
      v111 = v21;
      v37 = [(PKPaymentSetupField *)self->_paymentSetupField source];
      if ((v37 - 2) >= 2)
      {
        v40 = v116;
        if (v37 != 1)
        {
          goto LABEL_44;
        }

        paymentSetupField = self->_paymentSetupField;
      }

      else
      {
        v38 = [(__CFString *)v14 length];
        paymentSetupField = self->_paymentSetupField;
        v40 = v116;
        if (location || v116 != v38)
        {
          v41 = 3;
LABEL_43:
          [(PKPaymentSetupField *)paymentSetupField setSource:v41];
LABEL_44:
          v42 = [(__CFString *)v14 length];
          if (location || v40 != v42)
          {
            [(PKPaymentSetupFieldCell *)self _updateTextFieldStylingWithForceUpdate:0];
          }

          else
          {
            [(PKPaymentSetupFieldCell *)self resetTextFieldStyling];
          }

          v43 = [v13 allowedCharacters];
          v44 = v43;
          v11 = 1;
          if (v43 && v19)
          {
            [v43 invertedSet];
            v46 = v45 = v19;
            v11 = [(__CFString *)v45 rangeOfCharacterFromSet:v46 options:0]== 0x7FFFFFFFFFFFFFFFLL;

            v19 = v45;
          }

          v21 = v111;
          goto LABEL_52;
        }
      }

      v41 = 4;
      goto LABEL_43;
    }

LABEL_52:
    v47 = v118 ^ 1;
    if (!v13)
    {
      v47 = 1;
    }

    if ((v47 & 1) != 0 || !v11)
    {
      v55 = !v11;
      if (!v13)
      {
        v55 = 1;
      }

      if ((v55 & 1) == 0)
      {
        if ([v13 hasDisplayFormat])
        {
          v56 = [v13 displayFormatPaddingCharacters];
          v112 = v21;
          if (location)
          {
            v57 = v19;
            v58 = v116;
            do
            {
              v59 = [(__CFString *)v14 substringWithRange:location, v58 != 0];
              v60 = [v56 containsObject:v59];

              if (!v60)
              {
                break;
              }

              ++v58;
              --location;
            }

            while (location);
            v19 = v57;
          }

          else
          {
            v58 = v116;
          }

          if (v19)
          {
            v61 = v19;
          }

          else
          {
            v61 = &stru_1F3BD7330;
          }

          v62 = [(__CFString *)v14 stringByReplacingCharactersInRange:location withString:v58, v61];
          [v9 selectedTextRange];
          v96 = v95 = v62;
          v63 = [v13 stringByApplyingDisplayFormat:v62];
          v104 = v63;
          if ([v13 isNumericFractional] && (v64 = objc_msgSend(v63, "length"), v64 == -[__CFString length](v14, "length")))
          {
            v65 = 0;
            v11 = 1;
            v66 = v56;
            v67 = v95;
          }

          else
          {
            [v9 setText:v63];
            v106 = v19;
            if ([(__CFString *)v14 length]&& v58 + location == [(__CFString *)v14 length])
            {
              v68 = [v9 endOfDocument];
              v66 = v56;
            }

            else
            {
              v117 = v58;
              v69 = [(__CFString *)v14 substringToIndex:location];
              v70 = v113;
              v102 = v13;
              v119 = v69;
              if (v113)
              {
                v71 = v69;
                v72 = [(__CFString *)v107 substringToIndex:1];
                v73 = [v63 rangeOfString:v72 options:0 range:{objc_msgSend(v71, "length"), objc_msgSend(v63, "length") - objc_msgSend(v71, "length")}];

                if (v73 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  v74 = 0;
                }

                else
                {
                  v74 = v73 - [v71 length];
                }

                v70 = v113;
              }

              else
              {
                v74 = 0;
              }

              v115 = v14;
              v75 = location + v70 + v74;
              v76 = v56;
              if (v75 >= [v63 length])
              {
                v75 = [v63 length];
              }

              v77 = [v63 substringToIndex:v75];
              v98 = v10;
              if ([v13 isNumericFractional])
              {
                v78 = [v13 decimalSeparator];
                if (([v56 containsObject:v78] & 1) == 0)
                {
                  v79 = [v56 arrayByAddingObject:v78];

                  v76 = v79;
                }
              }

              v100 = v9;
              v122 = 0u;
              v123 = 0u;
              v120 = 0u;
              v121 = 0u;
              v66 = v76;
              v80 = [v66 countByEnumeratingWithState:&v120 objects:v128 count:16];
              if (v80)
              {
                v81 = v80;
                v82 = 0;
                v83 = 0;
                v84 = *v121;
                do
                {
                  v85 = v66;
                  for (i = 0; i != v81; ++i)
                  {
                    if (*v121 != v84)
                    {
                      objc_enumerationMutation(v85);
                    }

                    v87 = *(*(&v120 + 1) + 8 * i);
                    v88 = [v87 length];
                    v89 = [v119 componentsSeparatedByString:v87];
                    v82 += ([v89 count] - 1) * v88;

                    v90 = [v77 componentsSeparatedByString:v87];
                    v83 += ([v90 count] - 1) * v88;
                  }

                  v66 = v85;
                  v81 = [v85 countByEnumeratingWithState:&v120 objects:v128 count:16];
                }

                while (v81);
              }

              else
              {
                v82 = 0;
                v83 = 0;
              }

              v91 = [v96 end];
              v9 = v100;
              v68 = [v100 positionFromPosition:v91 offset:v112 - v117 - v82 + v83];

              if (!v68)
              {
                v68 = [v100 endOfDocument];
              }

              v10 = v98;
              v13 = v102;
              v14 = v115;
            }

            v67 = v95;
            v92 = [v9 textRangeFromPosition:v68 toPosition:v68];
            [v9 setSelectedTextRange:v92];

            [v9 sendActionsForControlEvents:0x20000];
            v11 = 0;
            v65 = 1;
            v19 = v106;
          }

          if (!v65)
          {
            LOBYTE(v11) = 0;
            goto LABEL_113;
          }
        }

        else
        {
          v11 = 1;
        }
      }

      if (v109 || !v11 || v108 || [v9 isSecureTextEntry] && !objc_msgSend(v9, "displaySecureTextUsingPlainText"))
      {
        goto LABEL_113;
      }

      v114 = v14;
      [v9 setText:v19];
      v49 = [v9 endOfDocument];
      v93 = [v9 textRangeFromPosition:v49 toPosition:v49];
      [v9 setSelectedTextRange:v93];

      [v9 sendActionsForControlEvents:0x20000];
    }

    else
    {
      if (v19)
      {
        v48 = v19;
      }

      else
      {
        v48 = &stru_1F3BD7330;
      }

      v114 = v14;
      v49 = [(__CFString *)v14 stringByReplacingCharactersInRange:location withString:v116, v48];
      self->_ignoreCurrentValueChangedNotifications = 1;
      [v13 setCurrentValue:v49];
      self->_ignoreCurrentValueChangedNotifications = 0;
      v50 = [&stru_1F3BD7330 stringByPaddingToLength:objc_msgSend(v49 withString:"length") startingAtIndex:{@"•", 0}];
      [v9 setText:v50];
      [v9 endOfDocument];
      v52 = v51 = v19;
      [v9 textRangeFromPosition:v52 toPosition:v52];
      v54 = v53 = v13;
      [v9 setSelectedTextRange:v54];

      v13 = v53;
      [v9 sendActionsForControlEvents:0x20000];

      v19 = v51;
    }

    LOBYTE(v11) = 0;
    v14 = v114;
LABEL_113:

    goto LABEL_114;
  }

  LOBYTE(v11) = 0;
LABEL_114:

  return v11;
}

- (void)textFieldDidEndEditing:(id)a3
{
  v4 = [(PKPaymentSetupField *)self->_paymentSetupField textFieldObject];
  v5 = [v4 isNumericFractional];

  if (v5)
  {
    [(PKPaymentSetupFieldCell *)self updatePaymentSetupFieldWithFormatting];
  }

  [(PKPaymentSetupFieldCell *)self _clearKeyboardAccessories];

  [(PKPaymentSetupFieldCell *)self _removeObserversForKeyboardState];
}

- (void)_setUpObserversForKeyboardState
{
  v12 = *MEMORY[0x1E69E9840];
  hasKeyboardObservers = self->_hasKeyboardObservers;
  v4 = PKLogFacilityTypeGetObject();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (hasKeyboardObservers)
  {
    if (v5)
    {
      v8 = 138412546;
      v9 = objc_opt_class();
      v10 = 2048;
      v11 = self;
      v6 = v9;
      _os_log_debug_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEBUG, "Already added keyboard observers to <%@: %p>.", &v8, 0x16u);
    }
  }

  else
  {
    if (v5)
    {
      v8 = 138412546;
      v9 = objc_opt_class();
      v10 = 2048;
      v11 = self;
      v7 = v9;
      _os_log_debug_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEBUG, "Adding keyboard observers to <%@: %p>.", &v8, 0x16u);
    }

    self->_hasKeyboardObservers = 1;
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:self selector:sel__keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];
    [v4 addObserver:self selector:sel__keyboardDidHide_ name:*MEMORY[0x1E69DDF70] object:0];
  }
}

- (void)_removeObserversForKeyboardState
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412546;
    v7 = objc_opt_class();
    v8 = 2048;
    v9 = self;
    v5 = v7;
    _os_log_debug_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEBUG, "Removing keyboard observers from <%@: %p>.", &v6, 0x16u);
  }

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x1E69DE080] object:0];
  [v4 removeObserver:self name:*MEMORY[0x1E69DDF70] object:0];
  self->_hasKeyboardObservers = 0;
}

- (void)_keyboardWillShow:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = objc_opt_class();
    v6 = v5;
    IsHardwareKeyboardActive = PKUIKeyboardIsHardwareKeyboardActive();
    v8 = @"NO";
    v9 = 138412802;
    v10 = v5;
    if (IsHardwareKeyboardActive)
    {
      v8 = @"YES";
    }

    v11 = 2048;
    v12 = self;
    v13 = 2112;
    v14 = v8;
    _os_log_debug_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEBUG, "Keyboard will show for <%@: %p>. HW keyboard?: %@", &v9, 0x20u);
  }

  [(PKPaymentSetupFieldCell *)self _configureKeyboardAccessories];
}

- (void)_keyboardDidHide:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = objc_opt_class();
    v6 = v5;
    IsHardwareKeyboardActive = PKUIKeyboardIsHardwareKeyboardActive();
    v8 = @"NO";
    v9 = 138412802;
    v10 = v5;
    if (IsHardwareKeyboardActive)
    {
      v8 = @"YES";
    }

    v11 = 2048;
    v12 = self;
    v13 = 2112;
    v14 = v8;
    _os_log_debug_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEBUG, "Keyboard did hide for <%@: %p>. HW keyboard?: %@", &v9, 0x20u);
  }

  [(PKPaymentSetupFieldCell *)self _clearKeyboardAccessories];
}

- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4
{
  v5 = [(PKPaymentSetupFieldCell *)self paymentSetupField:a3];
  v6 = [v5 isFieldTypePicker];

  if (!v6)
  {
    return 0;
  }

  v7 = [(PKPaymentSetupFieldCell *)self paymentSetupField];
  v8 = [v7 pickerFieldObject];
  v9 = [v8 pickerItems];
  v10 = [v9 count];

  return v10;
}

- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5
{
  v7 = [(PKPaymentSetupFieldCell *)self paymentSetupField:a3];
  v8 = [v7 isFieldTypePicker];

  if (v8)
  {
    v9 = [(PKPaymentSetupFieldCell *)self paymentSetupField];
    v10 = [v9 pickerFieldObject];
    v11 = [v10 pickerItems];
    v12 = [v11 objectAtIndex:a4];
    v13 = [v12 localizedDisplayName];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  [(PKPaymentSetupFieldCell *)self updatePaymentSetupFieldWithCurrentCellValue:a3];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 fieldCellEditableTextFieldValueDidChange:self];
  }
}

- (PKPaymentSetupFieldCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end