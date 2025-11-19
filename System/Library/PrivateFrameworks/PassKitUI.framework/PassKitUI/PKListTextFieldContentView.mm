@interface PKListTextFieldContentView
- (BOOL)_keepTextFieldVisible;
- (BOOL)textFieldShouldReturn:(id)a3;
- (CGSize)_layoutWithBounds:(CGRect)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKListTextFieldContentView)initWithConfiguration:(id)a3;
- (PKListTextFieldContentView)initWithFrame:(CGRect)a3;
- (id)_transformedText:(id)a3 forTransform:(int64_t)a4;
- (int64_t)_textAlignmentForListAlignment:(int64_t)a3;
- (int64_t)_textAutocapTypeForTextTransform:(int64_t)a3;
- (void)_applyConfiguration:(id)a3;
- (void)_applyTextProperties:(id)a3 toLabel:(id)a4;
- (void)_applyTextProperties:(id)a3 toTextField:(id)a4;
- (void)_textFieldTextDidChange:(id)a3;
- (void)_updateErrorState:(BOOL)a3;
- (void)beginEditing;
- (void)endEditing;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)resetTextFieldTextFromLabel;
- (void)setConfiguration:(id)a3;
- (void)setToolbarItems:(id)a3;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidChangeSelection:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
@end

@implementation PKListTextFieldContentView

- (PKListTextFieldContentView)initWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(PKListTextFieldContentView *)self initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    [(PKListTextFieldContentView *)v5 setConfiguration:v4];
  }

  return v6;
}

- (PKListTextFieldContentView)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = PKListTextFieldContentView;
  v3 = [(PKListTextFieldContentView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    textLabel = v3->_textLabel;
    v3->_textLabel = v4;

    [(PKListTextFieldContentView *)v3 addSubview:v3->_textLabel];
    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    secondaryTextLabel = v3->_secondaryTextLabel;
    v3->_secondaryTextLabel = v6;

    [(PKListTextFieldContentView *)v3 addSubview:v3->_secondaryTextLabel];
    v8 = objc_alloc_init(MEMORY[0x1E69DD0B0]);
    textField = v3->_textField;
    v3->_textField = v8;

    [(UITextField *)v3->_textField setDelegate:v3];
    [(UITextField *)v3->_textField addTarget:v3 action:sel__textFieldTextDidChange_ forControlEvents:0x20000];
    [(PKListTextFieldContentView *)v3 addSubview:v3->_textField];
  }

  return v3;
}

- (void)setConfiguration:(id)a3
{
  v5 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_configuration, a3);
    [(PKListTextFieldContentView *)self _applyConfiguration:v5];
  }
}

- (void)_applyConfiguration:(id)a3
{
  textLabel = self->_textLabel;
  v5 = a3;
  v6 = [v5 text];
  [(UILabel *)textLabel setText:v6];

  textField = self->_textField;
  v8 = [v5 text];
  [(UITextField *)textField setText:v8];

  v9 = self->_textField;
  v10 = [v5 placeholderText];
  [(UITextField *)v9 setPlaceholder:v10];

  secondaryTextLabel = self->_secondaryTextLabel;
  v12 = [v5 secondaryText];
  [(UILabel *)secondaryTextLabel setText:v12];

  v13 = [v5 textProperties];
  [(PKListTextFieldContentView *)self _applyTextProperties:v13 toLabel:self->_textLabel];

  v14 = [v5 textProperties];
  [(PKListTextFieldContentView *)self _applyTextProperties:v14 toTextField:self->_textField];

  v15 = [v5 secondaryTextProperties];
  [(PKListTextFieldContentView *)self _applyTextProperties:v15 toLabel:self->_secondaryTextLabel];

  -[UITextField setClearsOnBeginEditing:](self->_textField, "setClearsOnBeginEditing:", [v5 clearsOnBeginEditing]);
  -[UITextField setClearsOnInsertion:](self->_textField, "setClearsOnInsertion:", [v5 clearsOnInsertion]);
  -[UITextField setReturnKeyType:](self->_textField, "setReturnKeyType:", [v5 returnKeyType]);
  -[UITextField setKeyboardType:](self->_textField, "setKeyboardType:", [v5 keyboardType]);
  -[UITextField setAutocorrectionType:](self->_textField, "setAutocorrectionType:", [v5 autocorrectionType]);
  v18 = [v5 error];

  if (v18)
  {
    v16 = self->_secondaryTextLabel;
    v17 = [v18 localizedDescription];
    [(UILabel *)v16 setText:v17];

    [(PKListTextFieldContentView *)self _updateErrorState:1];
  }

  if ([(UITextField *)self->_textField isFirstResponder])
  {
    [(PKListTextFieldContentView *)self beginEditing];
  }

  else
  {
    [(PKListTextFieldContentView *)self endEditing];
  }

  [(PKListTextFieldContentView *)self setNeedsLayout];
}

- (void)setToolbarItems:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD180]);
    [v4 setItems:v5];
    [v4 sizeToFit];
    [(UITextField *)self->_textField setInputAccessoryView:v4];
  }

  else
  {
    [(UITextField *)self->_textField setInputAccessoryView:0];
  }
}

- (void)_applyTextProperties:(id)a3 toLabel:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 resolvedColor];
  [v6 setTextColor:v8];

  v9 = [v7 font];
  [v6 setFont:v9];

  [v6 setTextAlignment:{-[PKListTextFieldContentView _textAlignmentForListAlignment:](self, "_textAlignmentForListAlignment:", objc_msgSend(v7, "alignment"))}];
  [v6 setLineBreakMode:{objc_msgSend(v7, "lineBreakMode")}];
  [v6 setNumberOfLines:{objc_msgSend(v7, "numberOfLines")}];
  [v6 setAdjustsFontSizeToFitWidth:{objc_msgSend(v7, "adjustsFontSizeToFitWidth")}];
  [v7 minimumScaleFactor];
  [v6 setMinimumScaleFactor:?];
  [v6 setAllowsDefaultTighteningForTruncation:{objc_msgSend(v7, "allowsDefaultTighteningForTruncation")}];
  [v6 setAdjustsFontForContentSizeCategory:{objc_msgSend(v7, "adjustsFontForContentSizeCategory")}];
  v12 = [v6 text];
  v10 = [v7 transform];

  v11 = [(PKListTextFieldContentView *)self _transformedText:v12 forTransform:v10];
  [v6 setText:v11];
}

- (void)_applyTextProperties:(id)a3 toTextField:(id)a4
{
  v12 = a4;
  v6 = a3;
  v7 = [v6 resolvedColor];
  [v12 setTextColor:v7];

  v8 = [v6 font];
  [v12 setFont:v8];

  [v12 setTextAlignment:{-[PKListTextFieldContentView _textAlignmentForListAlignment:](self, "_textAlignmentForListAlignment:", objc_msgSend(v6, "alignment"))}];
  [v12 setAdjustsFontSizeToFitWidth:{objc_msgSend(v6, "adjustsFontSizeToFitWidth")}];
  [v6 minimumScaleFactor];
  [v12 setMinimumFontSize:?];
  [v12 setAdjustsFontForContentSizeCategory:{objc_msgSend(v6, "adjustsFontForContentSizeCategory")}];
  v9 = [v12 text];
  v10 = -[PKListTextFieldContentView _transformedText:forTransform:](self, "_transformedText:forTransform:", v9, [v6 transform]);
  [v12 setText:v10];

  v11 = [v6 transform];
  [v12 setAutocapitalizationType:{-[PKListTextFieldContentView _textAutocapTypeForTextTransform:](self, "_textAutocapTypeForTextTransform:", v11)}];
}

- (int64_t)_textAlignmentForListAlignment:(int64_t)a3
{
  if (a3 == 2)
  {
    return 3;
  }

  if (a3)
  {
    return 1;
  }

  if ([(PKListTextFieldContentView *)self _shouldReverseLayoutDirection:v3])
  {
    return 2;
  }

  return 0;
}

- (id)_transformedText:(id)a3 forTransform:(int64_t)a4
{
  v5 = a3;
  v6 = v5;
  switch(a4)
  {
    case 3:
      v7 = [v5 pk_capitalizedStringForPreferredLocale];
      break;
    case 2:
      v7 = [v5 pk_lowercaseStringForPreferredLocale];
      break;
    case 1:
      v7 = [v5 pk_uppercaseStringForPreferredLocale];
      break;
    default:
      v7 = v5;
      break;
  }

  v8 = v7;

  return v8;
}

- (int64_t)_textAutocapTypeForTextTransform:(int64_t)a3
{
  v3 = 3;
  if (a3 != 1)
  {
    v3 = 0;
  }

  if (a3 == 3)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKListTextFieldContentView;
  [(PKListTextFieldContentView *)&v3 layoutSubviews];
  [(PKListTextFieldContentView *)self bounds];
  [(PKListTextFieldContentView *)self _layoutWithBounds:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  self->_isTemplateLayout = 1;
  [(PKListTextFieldContentView *)self _layoutWithBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a3.width, a3.height];
  self->_isTemplateLayout = 0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(PKListTextFieldContentView *)self configuration];
  v9 = *(MEMORY[0x1E695F050] + 16);
  slice.origin = *MEMORY[0x1E695F050];
  slice.size = v9;
  [(PKListTextFieldContentConfiguration *)self->_configuration directionalLayoutMargins];
  v52 = x;
  v11 = x + v10;
  v13 = y + v12;
  v15 = width - (v10 + v14);
  v51 = v12 + v16;
  v17 = height - (v12 + v16);
  remainder.origin.x = v11;
  remainder.origin.y = y + v12;
  remainder.size.width = v15;
  remainder.size.height = v17;
  if (!self->_isTemplateLayout && [v8 focusTextField])
  {
    [(UITextField *)self->_textField setFrame:v11, v13, v15, v17];
  }

  if ([v8 mode] && (-[UILabel text](self->_secondaryTextLabel, "text"), v18 = objc_claimAutoreleasedReturnValue(), v18, v18))
  {
    v50 = y;
    [(UILabel *)self->_secondaryTextLabel pkui_sizeThatFits:1 forceWordWrap:v15, v17];
    v20 = v19;
    v49 = v21;
    [(UILabel *)self->_textLabel pkui_sizeThatFits:1 forceWordWrap:v15, v17];
    if (v22 == 0.0)
    {
      [(UITextField *)self->_textField sizeThatFits:width, height];
    }

    v23 = v22;
    if (v20 <= v15 * 0.5)
    {
      v58.origin.x = v11;
      v58.origin.y = v13;
      v58.size.width = v15;
      v58.size.height = v17;
      CGRectDivide(v58, &slice, &remainder, v20, CGRectMinXEdge);
      if (!self->_isTemplateLayout)
      {
        [(UILabel *)self->_secondaryTextLabel setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
      }

      [(PKListTextFieldContentConfiguration *)self->_configuration textToSecondaryTextHorizontalPadding];
      v45 = v44;
      CGRectDivide(remainder, &slice, &remainder, v44, CGRectMinXEdge);
      if (!self->_isTemplateLayout)
      {
        [(UILabel *)self->_textLabel setFrame:remainder.origin.x, remainder.origin.y, remainder.size.width, remainder.size.height];
      }

      if (([v8 focusTextField] & 1) == 0 && !self->_isTemplateLayout)
      {
        [(UITextField *)self->_textField setFrame:remainder.origin.x, remainder.origin.y, remainder.size.width, remainder.size.height];
      }

      v26 = fmax(v23, v49) + v45;
    }

    else
    {
      v56.origin.x = v11;
      v56.origin.y = v13;
      v56.size.width = v15;
      v56.size.height = v17;
      CGRectDivide(v56, &slice, &remainder, v49, CGRectMinYEdge);
      if (!self->_isTemplateLayout)
      {
        [(UILabel *)self->_secondaryTextLabel setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
      }

      [(PKListTextFieldContentConfiguration *)self->_configuration textToSecondaryTextVerticalPadding];
      v25 = v24;
      CGRectDivide(remainder, &slice, &remainder, v24, CGRectMinYEdge);
      CGRectDivide(remainder, &slice, &remainder, v23, CGRectMinYEdge);
      if (!self->_isTemplateLayout)
      {
        [(UILabel *)self->_textLabel setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
      }

      if (([v8 focusTextField] & 1) == 0 && !self->_isTemplateLayout)
      {
        [(UITextField *)self->_textField setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
      }

      v26 = v23 + v49 + v25;
    }

    v30 = v26 + 0.0;
    y = v50;
  }

  else
  {
    v27 = [(UILabel *)self->_textLabel text];

    if (v27)
    {
      [(UILabel *)self->_textLabel pkui_sizeThatFits:1 forceWordWrap:v15, v17];
      v29 = v28;
      v57.origin.x = v11;
      v57.origin.y = v13;
      v57.size.width = v15;
      v57.size.height = v17;
      CGRectDivide(v57, &slice, &remainder, v29, CGRectMinYEdge);
      if (!self->_isTemplateLayout)
      {
        [(UILabel *)self->_textLabel setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
        if (([v8 focusTextField] & 1) == 0)
        {
          [(UITextField *)self->_textField setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
        }
      }

      v30 = v29 + 0.0;
    }

    else
    {
      v30 = 0.0;
      if (!self->_isTemplateLayout)
      {
        v31 = *MEMORY[0x1E695F058];
        v32 = *(MEMORY[0x1E695F058] + 8);
        v33 = y;
        v34 = *(MEMORY[0x1E695F058] + 16);
        v35 = *(MEMORY[0x1E695F058] + 24);
        [(UILabel *)self->_textLabel setFrame:*MEMORY[0x1E695F058], v32, v34, v35];
        v36 = v35;
        y = v33;
        [(UITextField *)self->_textField setFrame:v31, v32, v34, v36];
      }
    }

    [(PKListTextFieldContentConfiguration *)self->_configuration textToSecondaryTextVerticalPadding];
    v38 = v37;
    v39 = [(UILabel *)self->_secondaryTextLabel text];

    if (v39)
    {
      [(UILabel *)self->_secondaryTextLabel pkui_sizeThatFits:1 forceWordWrap:remainder.size.width, remainder.size.height];
      v41 = v40;
      CGRectDivide(remainder, &slice, &remainder, v38, CGRectMinYEdge);
      CGRectDivide(remainder, &slice, &remainder, v41, CGRectMinYEdge);
      if (!self->_isTemplateLayout)
      {
        [(UILabel *)self->_secondaryTextLabel setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
      }

      v30 = v30 + v38 + v41;
    }

    else if (!self->_isTemplateLayout)
    {
      [(UILabel *)self->_secondaryTextLabel setFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    }

    if (v30 == 0.0)
    {
      [(UITextField *)self->_textField sizeThatFits:width, height];
      v43 = v42;
      if (!self->_isTemplateLayout)
      {
        CGRectDivide(remainder, &slice, &remainder, v42, CGRectMinYEdge);
        [(UITextField *)self->_textField setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
      }

      v30 = v30 + v43;
    }
  }

  v59.origin.x = v52;
  v59.origin.y = y;
  v59.size.width = width;
  v59.size.height = height;
  v46 = CGRectGetWidth(v59);

  v47 = v46;
  v48 = v51 + v30;
  result.height = v48;
  result.width = v47;
  return result;
}

- (void)beginEditing
{
  [(UITextField *)self->_textField setHidden:0];
  [(UILabel *)self->_textLabel setHidden:1];
  [(UILabel *)self->_textLabel setUserInteractionEnabled:1];
  if ([(PKListTextFieldContentConfiguration *)self->_configuration focusTextField])
  {
    [(UILabel *)self->_secondaryTextLabel setHidden:1];
  }

  textField = self->_textField;

  [(UITextField *)textField becomeFirstResponder];
}

- (void)endEditing
{
  v3 = [(PKListTextFieldContentView *)self _keepTextFieldVisible];
  [(UITextField *)self->_textField setHidden:v3 ^ 1];
  [(UILabel *)self->_textLabel setHidden:v3];
  [(UILabel *)self->_textLabel setUserInteractionEnabled:0];
  if ([(PKListTextFieldContentConfiguration *)self->_configuration focusTextField])
  {
    [(UILabel *)self->_secondaryTextLabel setHidden:0];
  }

  textField = self->_textField;

  [(UITextField *)textField resignFirstResponder];
}

- (void)resetTextFieldTextFromLabel
{
  textField = self->_textField;
  v3 = [(UILabel *)self->_textLabel text];
  [(UITextField *)textField setText:v3];
}

- (void)_textFieldTextDidChange:(id)a3
{
  v6 = a3;
  v4 = [(PKListTextFieldContentView *)self configuration];
  v5 = [v4 hasErrorHandler];

  if (v5)
  {
    [(PKListTextFieldContentView *)self _updateErrorState:(v5)[2](v5, v6)];
  }
}

- (void)_updateErrorState:(BOOL)a3
{
  v3 = a3;
  v5 = [(PKListTextFieldContentView *)self configuration];
  v10 = v5;
  if (v3)
  {
    v6 = [v5 errorColor];
    v7 = v6;
  }

  else
  {
    v8 = [v5 textProperties];
    v7 = [v8 color];

    v9 = [v10 secondaryTextProperties];
    v6 = [v9 color];
  }

  [(UILabel *)self->_textLabel setTextColor:v7];
  [(UITextField *)self->_textField setTextColor:v7];
  [(UILabel *)self->_secondaryTextLabel setTextColor:v6];
}

- (BOOL)_keepTextFieldVisible
{
  v2 = [(PKListTextFieldContentView *)self configuration];
  v3 = [v2 mode] == 1;

  return v3;
}

- (void)prepareForReuse
{
  [(UILabel *)self->_textLabel setText:0];
  [(UILabel *)self->_secondaryTextLabel setText:0];
  [(UITextField *)self->_textField setText:0];
  configuration = self->_configuration;
  self->_configuration = 0;
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(PKListTextFieldContentViewDelegate *)self->_delegate textFieldShouldReturn:v4 forContentView:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(PKListTextFieldContentViewDelegate *)self->_delegate textFieldDidBeginEditing:v4 forContentView:self];
  }
}

- (void)textFieldDidEndEditing:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(PKListTextFieldContentViewDelegate *)self->_delegate textFieldDidEndEditing:v4 forContentView:self];
  }
}

- (void)textFieldDidChangeSelection:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(PKListTextFieldContentViewDelegate *)self->_delegate textFieldDidChangeSelection:v4 forContentView:self];
  }
}

@end