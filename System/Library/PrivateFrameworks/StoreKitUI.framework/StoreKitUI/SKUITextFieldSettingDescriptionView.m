@interface SKUITextFieldSettingDescriptionView
+ (BOOL)prefetchResourcesForSettingDescription:(id)a3 reason:(int64_t)a4 context:(id)a5;
+ (CGSize)preferredSizeForSettingDescription:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 settingDescription:(id)a4 context:(id)a5;
+ (void)requestLayoutForSettingDescription:(id)a3 width:(double)a4 context:(id)a5;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldReturn:(id)a3;
- (id)_currentControllerValue;
- (void)_addInputWithElement:(id)a3;
- (void)_addLabelWithElement:(id)a3;
- (void)_addTextInputWithElement:(id)a3;
- (void)_alignView:(id)a3 withBaselineLabel:(id)a4 font:(id)a5 offsetX:(double)a6 fitWidth:(double)a7;
- (void)_arrangeTextField:(id)a3 andLabel:(id)a4;
- (void)_fillLayoutWithView:(id)a3 labelForBaselinePosition:(id)a4;
- (void)_updateTextFieldValue:(id)a3;
- (void)beginEdits;
- (void)commitEdits;
- (void)layoutSubviews;
- (void)reloadWithSettingDescription:(id)a3 width:(double)a4 context:(id)a5;
- (void)setEnabled:(BOOL)a3;
- (void)textFieldDidEndEditing:(id)a3;
- (void)tintColorDidChange;
@end

@implementation SKUITextFieldSettingDescriptionView

- (void)beginEdits
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUITextFieldSettingDescriptionView *)v3 beginEdits:v4];
      }
    }
  }

  textField = self->_textField;
  if (textField)
  {
    [(UITextField *)textField becomeFirstResponder];
  }
}

- (void)commitEdits
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUITextFieldSettingDescriptionView *)v3 commitEdits:v4];
      }
    }
  }

  textField = self->_textField;
  if (textField)
  {
    [(UITextField *)textField resignFirstResponder];
  }
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUITextFieldSettingDescriptionView *)v5 setEnabled:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v15.receiver = self;
  v15.super_class = SKUITextFieldSettingDescriptionView;
  [(SKUIFieldSettingDescriptionView *)&v15 setEnabled:v3];
  textField = self->_textField;
  if (textField)
  {
    [(UITextField *)textField setEnabled:v3];
    v14 = 0.5;
    if (v3)
    {
      v14 = 1.0;
    }

    [(UITextField *)self->_textField setAlpha:v14];
  }
}

+ (BOOL)prefetchResourcesForSettingDescription:(id)a3 reason:(int64_t)a4 context:(id)a5
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUITextFieldSettingDescriptionView *)v5 prefetchResourcesForSettingDescription:v6 reason:v7 context:v8, v9, v10, v11, v12];
      }
    }
  }

  return 0;
}

+ (CGSize)preferredSizeForSettingDescription:(id)a3 context:(id)a4
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUITextFieldSettingDescriptionView *)v4 preferredSizeForSettingDescription:v5 context:v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = *MEMORY[0x277CBF3A8];
  v13 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v13;
  result.width = v12;
  return result;
}

+ (void)requestLayoutForSettingDescription:(id)a3 width:(double)a4 context:(id)a5
{
  v6 = a3;
  v7 = a5;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUITextFieldSettingDescriptionView *)v8 requestLayoutForSettingDescription:v9 width:v10 context:v11, v12, v13, v14, v15];
      }
    }
  }

  v16 = [v6 viewElement];
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__14;
  v38 = __Block_byref_object_dispose__14;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__14;
  v32 = __Block_byref_object_dispose__14;
  v33 = 0;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __88__SKUITextFieldSettingDescriptionView_requestLayoutForSettingDescription_width_context___block_invoke;
  v27[3] = &unk_2781F8590;
  v27[4] = &v34;
  v27[5] = &v28;
  [v16 enumerateChildrenUsingBlock:v27];
  if (v35[5] && v29[5])
  {
    v17 = objc_alloc_init(MEMORY[0x277D756B8]);
    v18 = [v35[5] text];
    v19 = [v18 string];
    [v17 setText:v19];

    v20 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [v17 setFont:v20];

    [v17 sizeThatFits:{1.0, 1.0}];
    v22 = v21;
    v23 = [v7 aggregateValueForKey:@"SKUITextFieldSettingDescriptionFieldLabelWidthKey"];
    v24 = v23;
    if (v23)
    {
      [v23 doubleValue];
      v22 = fmax(v22, v25);
    }

    v26 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:v22];
    [v7 setAggregateValue:v26 forKey:@"SKUITextFieldSettingDescriptionFieldLabelWidthKey"];
  }

  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(&v34, 8);
}

void __88__SKUITextFieldSettingDescriptionView_requestLayoutForSettingDescription_width_context___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = [v6 elementType];
  if ((v4 - 139) >= 2)
  {
    if (v4 == 138)
    {
      v5 = 32;
      goto LABEL_6;
    }

    if (v4 != 58)
    {
      goto LABEL_7;
    }
  }

  v5 = 40;
LABEL_6:
  objc_storeStrong((*(*(a1 + v5) + 8) + 40), a2);
LABEL_7:
}

+ (CGSize)sizeThatFitsWidth:(double)a3 settingDescription:(id)a4 context:(id)a5
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUITextFieldSettingDescriptionView *)v5 sizeThatFitsWidth:v6 settingDescription:v7 context:v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = *MEMORY[0x277CBF3A8];
  v14 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)reloadWithSettingDescription:(id)a3 width:(double)a4 context:(id)a5
{
  objc_storeStrong(&self->_settingDescription, a3);
  v8 = a3;
  v9 = a5;
  v10 = [v8 viewElement];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__SKUITextFieldSettingDescriptionView_reloadWithSettingDescription_width_context___block_invoke;
  v13[3] = &unk_2781F9640;
  v13[4] = self;
  [v10 enumerateChildrenUsingBlock:v13];
  v11 = [v9 aggregateValueForKey:@"SKUITextFieldSettingDescriptionFieldLabelWidthKey"];

  [v11 doubleValue];
  self->_aggregateLabelWidth = v12;
  [(SKUITextFieldSettingDescriptionView *)self setNeedsLayout];
}

uint64_t __82__SKUITextFieldSettingDescriptionView_reloadWithSettingDescription_width_context___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 elementType];
  if ((v3 - 139) < 2 || v3 == 58)
  {
    v3 = [*(a1 + 32) _addInputWithElement:v6];
  }

  else
  {
    v4 = v6;
    if (v3 != 138)
    {
      goto LABEL_7;
    }

    v3 = [*(a1 + 32) _addLabelWithElement:v6];
  }

  v4 = v6;
LABEL_7:

  return MEMORY[0x2821F96F8](v3, v4);
}

- (void)textFieldDidEndEditing:(id)a3
{
  v4 = [a3 text];
  [(SKUITextFieldSettingDescriptionView *)self _updateTextFieldValue:v4];
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a5;
  v10 = [a3 text];
  v11 = [v10 stringByReplacingCharactersInRange:location withString:{length, v9}];

  [(SKUITextFieldSettingDescriptionView *)self _updateTextFieldValue:v11];
  return 1;
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = [(SKUIFieldSettingDescription *)self->_settingDescription controller];
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    [v4 returnInSettingDescription:self->_settingDescription];
  }

  return 0;
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = SKUITextFieldSettingDescriptionView;
  [(SKUITextFieldSettingDescriptionView *)&v3 tintColorDidChange];
  [(SKUITextFieldSettingDescriptionView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = SKUITextFieldSettingDescriptionView;
  [(SKUITextFieldSettingDescriptionView *)&v7 layoutSubviews];
  v3 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  textField = self->_textField;
  if (self->_label || !textField)
  {
    [(SKUITextFieldSettingDescriptionView *)self _arrangeTextField:textField andLabel:?];
  }

  else
  {
    [(UITextField *)self->_textField setFont:v3];
    v5 = self->_textField;
    v6 = [(UITextField *)v5 _placeholderLabel];
    [(SKUITextFieldSettingDescriptionView *)self _fillLayoutWithView:v5 labelForBaselinePosition:v6];
  }
}

- (void)_addInputWithElement:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_inputViewElement, a3);
  if ([v5 isMemberOfClass:objc_opt_class()])
  {
    [(SKUITextFieldSettingDescriptionView *)self _addTextInputWithElement:v5];
  }
}

- (void)_addLabelWithElement:(id)a3
{
  v4 = MEMORY[0x277D756B8];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  label = self->_label;
  self->_label = v6;

  v8 = self->_label;
  v9 = [v5 text];

  v10 = [v9 string];
  [(UILabel *)v8 setText:v10];

  v11 = self->_label;
  v12 = [MEMORY[0x277D75348] blackColor];
  [(UILabel *)v11 setTextColor:v12];

  v13 = self->_label;

  [(SKUITextFieldSettingDescriptionView *)self addSubview:v13];
}

- (void)_addTextInputWithElement:(id)a3
{
  v15 = a3;
  v4 = objc_alloc_init(MEMORY[0x277D75BB8]);
  textField = self->_textField;
  self->_textField = v4;

  -[UITextField setSecureTextEntry:](self->_textField, "setSecureTextEntry:", [v15 isSecure]);
  v6 = self->_textField;
  v7 = [MEMORY[0x277D75348] blackColor];
  [(UITextField *)v6 setTextColor:v7];

  [(UITextField *)self->_textField setDelegate:self];
  [(UITextField *)self->_textField setAutocorrectionType:1];
  [(UITextField *)self->_textField setAutocapitalizationType:0];
  -[UITextField setKeyboardType:](self->_textField, "setKeyboardType:", [v15 keyboardType]);
  v8 = [(SKUITextFieldSettingDescriptionView *)self _currentControllerValue];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UITextField *)self->_textField setText:v8];
  }

  v9 = objc_alloc(MEMORY[0x277CBEAC0]);
  v10 = [MEMORY[0x277D75348] lightGrayColor];
  v11 = [v9 initWithObjectsAndKeys:{v10, *MEMORY[0x277D740C0], 0}];

  v12 = objc_alloc(MEMORY[0x277CCA898]);
  v13 = [v15 placeholderText];
  v14 = [v12 initWithString:v13 attributes:v11];

  [(UITextField *)self->_textField setAttributedPlaceholder:v14];
  [(SKUITextFieldSettingDescriptionView *)self addSubview:self->_textField];
}

- (void)_alignView:(id)a3 withBaselineLabel:(id)a4 font:(id)a5 offsetX:(double)a6 fitWidth:(double)a7
{
  v12 = a5;
  v13 = a4;
  v27 = a3;
  [(SKUITextFieldSettingDescriptionView *)self bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [v12 _scaledValueForValue:30.0];
  v23 = v22;

  [v13 _firstBaselineOffsetFromTop];
  v25 = v24;

  [v27 sizeThatFits:{a7, 1.0}];
  SKUIRectByApplyingUserInterfaceLayoutDirectionInRect(a6, v23 - v25, a7, v26, v15, v17, v19, v21);
  [v27 setFrame:?];
}

- (void)_arrangeTextField:(id)a3 andLabel:(id)a4
{
  v6 = MEMORY[0x277D74300];
  v7 = *MEMORY[0x277D76918];
  v8 = a4;
  v9 = a3;
  v22 = [v6 preferredFontForTextStyle:v7];
  [(SKUISettingDescriptionView *)self layoutMargins];
  v11 = v10;
  v13 = v12;
  [(SKUITextFieldSettingDescriptionView *)self bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [(SKUITextFieldSettingDescriptionView *)self _alignView:v8 withBaselineLabel:v8 font:v22 offsetX:v11 fitWidth:self->_aggregateLabelWidth];
  v24.origin.x = v15;
  v24.origin.y = v17;
  v24.size.width = v19;
  v24.size.height = v21;
  [(SKUITextFieldSettingDescriptionView *)self _alignView:v9 withBaselineLabel:v8 font:v22 offsetX:v11 + self->_aggregateLabelWidth + 16.0 fitWidth:CGRectGetWidth(v24) - (v11 + self->_aggregateLabelWidth + 16.0) - v13];
}

- (id)_currentControllerValue
{
  v3 = [(SKUIFieldSettingDescription *)self->_settingDescription controller];
  if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = [v3 valueForSettingDescription:self->_settingDescription];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_updateTextFieldValue:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = &stru_2827FFAC8;
  }

  v7 = v4;
  v5 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v4, @"value", 0}];
  [(SKUIInputViewElement *)self->_inputViewElement dispatchEventOfType:15 canBubble:1 isCancelable:1 extraInfo:v5 completionBlock:0];
  v6 = [(SKUIFieldSettingDescription *)self->_settingDescription controller];
  if ([v6 isMemberOfClass:objc_opt_class()])
  {
    [v6 setValue:v7 forSettingDescription:self->_settingDescription];
  }
}

- (void)_fillLayoutWithView:(id)a3 labelForBaselinePosition:(id)a4
{
  v6 = MEMORY[0x277D74300];
  v7 = *MEMORY[0x277D76918];
  v8 = a4;
  v9 = a3;
  v14 = [v6 preferredFontForTextStyle:v7];
  [(SKUISettingDescriptionView *)self layoutMargins];
  v11 = v10;
  v13 = v12;
  [(SKUITextFieldSettingDescriptionView *)self bounds];
  [(SKUITextFieldSettingDescriptionView *)self _alignView:v9 withBaselineLabel:v8 font:v14 offsetX:v11 fitWidth:CGRectGetWidth(v16) - v11 - v13];
}

@end