@interface PKListTextFieldContentView
- (BOOL)_keepTextFieldVisible;
- (BOOL)textFieldShouldReturn:(id)return;
- (CGSize)_layoutWithBounds:(CGRect)bounds;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKListTextFieldContentView)initWithConfiguration:(id)configuration;
- (PKListTextFieldContentView)initWithFrame:(CGRect)frame;
- (id)_transformedText:(id)text forTransform:(int64_t)transform;
- (int64_t)_textAlignmentForListAlignment:(int64_t)alignment;
- (int64_t)_textAutocapTypeForTextTransform:(int64_t)transform;
- (void)_applyConfiguration:(id)configuration;
- (void)_applyTextProperties:(id)properties toLabel:(id)label;
- (void)_applyTextProperties:(id)properties toTextField:(id)field;
- (void)_textFieldTextDidChange:(id)change;
- (void)_updateErrorState:(BOOL)state;
- (void)beginEditing;
- (void)endEditing;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)resetTextFieldTextFromLabel;
- (void)setConfiguration:(id)configuration;
- (void)setToolbarItems:(id)items;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidChangeSelection:(id)selection;
- (void)textFieldDidEndEditing:(id)editing;
@end

@implementation PKListTextFieldContentView

- (PKListTextFieldContentView)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [(PKListTextFieldContentView *)self initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    [(PKListTextFieldContentView *)v5 setConfiguration:configurationCopy];
  }

  return v6;
}

- (PKListTextFieldContentView)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = PKListTextFieldContentView;
  v3 = [(PKListTextFieldContentView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_configuration, configuration);
    [(PKListTextFieldContentView *)self _applyConfiguration:configurationCopy];
  }
}

- (void)_applyConfiguration:(id)configuration
{
  textLabel = self->_textLabel;
  configurationCopy = configuration;
  text = [configurationCopy text];
  [(UILabel *)textLabel setText:text];

  textField = self->_textField;
  text2 = [configurationCopy text];
  [(UITextField *)textField setText:text2];

  v9 = self->_textField;
  placeholderText = [configurationCopy placeholderText];
  [(UITextField *)v9 setPlaceholder:placeholderText];

  secondaryTextLabel = self->_secondaryTextLabel;
  secondaryText = [configurationCopy secondaryText];
  [(UILabel *)secondaryTextLabel setText:secondaryText];

  textProperties = [configurationCopy textProperties];
  [(PKListTextFieldContentView *)self _applyTextProperties:textProperties toLabel:self->_textLabel];

  textProperties2 = [configurationCopy textProperties];
  [(PKListTextFieldContentView *)self _applyTextProperties:textProperties2 toTextField:self->_textField];

  secondaryTextProperties = [configurationCopy secondaryTextProperties];
  [(PKListTextFieldContentView *)self _applyTextProperties:secondaryTextProperties toLabel:self->_secondaryTextLabel];

  -[UITextField setClearsOnBeginEditing:](self->_textField, "setClearsOnBeginEditing:", [configurationCopy clearsOnBeginEditing]);
  -[UITextField setClearsOnInsertion:](self->_textField, "setClearsOnInsertion:", [configurationCopy clearsOnInsertion]);
  -[UITextField setReturnKeyType:](self->_textField, "setReturnKeyType:", [configurationCopy returnKeyType]);
  -[UITextField setKeyboardType:](self->_textField, "setKeyboardType:", [configurationCopy keyboardType]);
  -[UITextField setAutocorrectionType:](self->_textField, "setAutocorrectionType:", [configurationCopy autocorrectionType]);
  error = [configurationCopy error];

  if (error)
  {
    v16 = self->_secondaryTextLabel;
    localizedDescription = [error localizedDescription];
    [(UILabel *)v16 setText:localizedDescription];

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

- (void)setToolbarItems:(id)items
{
  itemsCopy = items;
  if (itemsCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD180]);
    [v4 setItems:itemsCopy];
    [v4 sizeToFit];
    [(UITextField *)self->_textField setInputAccessoryView:v4];
  }

  else
  {
    [(UITextField *)self->_textField setInputAccessoryView:0];
  }
}

- (void)_applyTextProperties:(id)properties toLabel:(id)label
{
  labelCopy = label;
  propertiesCopy = properties;
  resolvedColor = [propertiesCopy resolvedColor];
  [labelCopy setTextColor:resolvedColor];

  font = [propertiesCopy font];
  [labelCopy setFont:font];

  [labelCopy setTextAlignment:{-[PKListTextFieldContentView _textAlignmentForListAlignment:](self, "_textAlignmentForListAlignment:", objc_msgSend(propertiesCopy, "alignment"))}];
  [labelCopy setLineBreakMode:{objc_msgSend(propertiesCopy, "lineBreakMode")}];
  [labelCopy setNumberOfLines:{objc_msgSend(propertiesCopy, "numberOfLines")}];
  [labelCopy setAdjustsFontSizeToFitWidth:{objc_msgSend(propertiesCopy, "adjustsFontSizeToFitWidth")}];
  [propertiesCopy minimumScaleFactor];
  [labelCopy setMinimumScaleFactor:?];
  [labelCopy setAllowsDefaultTighteningForTruncation:{objc_msgSend(propertiesCopy, "allowsDefaultTighteningForTruncation")}];
  [labelCopy setAdjustsFontForContentSizeCategory:{objc_msgSend(propertiesCopy, "adjustsFontForContentSizeCategory")}];
  text = [labelCopy text];
  transform = [propertiesCopy transform];

  v11 = [(PKListTextFieldContentView *)self _transformedText:text forTransform:transform];
  [labelCopy setText:v11];
}

- (void)_applyTextProperties:(id)properties toTextField:(id)field
{
  fieldCopy = field;
  propertiesCopy = properties;
  resolvedColor = [propertiesCopy resolvedColor];
  [fieldCopy setTextColor:resolvedColor];

  font = [propertiesCopy font];
  [fieldCopy setFont:font];

  [fieldCopy setTextAlignment:{-[PKListTextFieldContentView _textAlignmentForListAlignment:](self, "_textAlignmentForListAlignment:", objc_msgSend(propertiesCopy, "alignment"))}];
  [fieldCopy setAdjustsFontSizeToFitWidth:{objc_msgSend(propertiesCopy, "adjustsFontSizeToFitWidth")}];
  [propertiesCopy minimumScaleFactor];
  [fieldCopy setMinimumFontSize:?];
  [fieldCopy setAdjustsFontForContentSizeCategory:{objc_msgSend(propertiesCopy, "adjustsFontForContentSizeCategory")}];
  text = [fieldCopy text];
  v10 = -[PKListTextFieldContentView _transformedText:forTransform:](self, "_transformedText:forTransform:", text, [propertiesCopy transform]);
  [fieldCopy setText:v10];

  transform = [propertiesCopy transform];
  [fieldCopy setAutocapitalizationType:{-[PKListTextFieldContentView _textAutocapTypeForTextTransform:](self, "_textAutocapTypeForTextTransform:", transform)}];
}

- (int64_t)_textAlignmentForListAlignment:(int64_t)alignment
{
  if (alignment == 2)
  {
    return 3;
  }

  if (alignment)
  {
    return 1;
  }

  if ([(PKListTextFieldContentView *)self _shouldReverseLayoutDirection:v3])
  {
    return 2;
  }

  return 0;
}

- (id)_transformedText:(id)text forTransform:(int64_t)transform
{
  textCopy = text;
  v6 = textCopy;
  switch(transform)
  {
    case 3:
      pk_capitalizedStringForPreferredLocale = [textCopy pk_capitalizedStringForPreferredLocale];
      break;
    case 2:
      pk_capitalizedStringForPreferredLocale = [textCopy pk_lowercaseStringForPreferredLocale];
      break;
    case 1:
      pk_capitalizedStringForPreferredLocale = [textCopy pk_uppercaseStringForPreferredLocale];
      break;
    default:
      pk_capitalizedStringForPreferredLocale = textCopy;
      break;
  }

  v8 = pk_capitalizedStringForPreferredLocale;

  return v8;
}

- (int64_t)_textAutocapTypeForTextTransform:(int64_t)transform
{
  v3 = 3;
  if (transform != 1)
  {
    v3 = 0;
  }

  if (transform == 3)
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  self->_isTemplateLayout = 1;
  [(PKListTextFieldContentView *)self _layoutWithBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height];
  self->_isTemplateLayout = 0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  configuration = [(PKListTextFieldContentView *)self configuration];
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
  if (!self->_isTemplateLayout && [configuration focusTextField])
  {
    [(UITextField *)self->_textField setFrame:v11, v13, v15, v17];
  }

  if ([configuration mode] && (-[UILabel text](self->_secondaryTextLabel, "text"), v18 = objc_claimAutoreleasedReturnValue(), v18, v18))
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

      if (([configuration focusTextField] & 1) == 0 && !self->_isTemplateLayout)
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

      if (([configuration focusTextField] & 1) == 0 && !self->_isTemplateLayout)
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
    text = [(UILabel *)self->_textLabel text];

    if (text)
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
        if (([configuration focusTextField] & 1) == 0)
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
    text2 = [(UILabel *)self->_secondaryTextLabel text];

    if (text2)
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
  _keepTextFieldVisible = [(PKListTextFieldContentView *)self _keepTextFieldVisible];
  [(UITextField *)self->_textField setHidden:_keepTextFieldVisible ^ 1];
  [(UILabel *)self->_textLabel setHidden:_keepTextFieldVisible];
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
  text = [(UILabel *)self->_textLabel text];
  [(UITextField *)textField setText:text];
}

- (void)_textFieldTextDidChange:(id)change
{
  changeCopy = change;
  configuration = [(PKListTextFieldContentView *)self configuration];
  hasErrorHandler = [configuration hasErrorHandler];

  if (hasErrorHandler)
  {
    [(PKListTextFieldContentView *)self _updateErrorState:(hasErrorHandler)[2](hasErrorHandler, changeCopy)];
  }
}

- (void)_updateErrorState:(BOOL)state
{
  stateCopy = state;
  configuration = [(PKListTextFieldContentView *)self configuration];
  v10 = configuration;
  if (stateCopy)
  {
    errorColor = [configuration errorColor];
    color = errorColor;
  }

  else
  {
    textProperties = [configuration textProperties];
    color = [textProperties color];

    secondaryTextProperties = [v10 secondaryTextProperties];
    errorColor = [secondaryTextProperties color];
  }

  [(UILabel *)self->_textLabel setTextColor:color];
  [(UITextField *)self->_textField setTextColor:color];
  [(UILabel *)self->_secondaryTextLabel setTextColor:errorColor];
}

- (BOOL)_keepTextFieldVisible
{
  configuration = [(PKListTextFieldContentView *)self configuration];
  v3 = [configuration mode] == 1;

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

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(PKListTextFieldContentViewDelegate *)self->_delegate textFieldShouldReturn:returnCopy forContentView:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)textFieldDidBeginEditing:(id)editing
{
  editingCopy = editing;
  if (objc_opt_respondsToSelector())
  {
    [(PKListTextFieldContentViewDelegate *)self->_delegate textFieldDidBeginEditing:editingCopy forContentView:self];
  }
}

- (void)textFieldDidEndEditing:(id)editing
{
  editingCopy = editing;
  if (objc_opt_respondsToSelector())
  {
    [(PKListTextFieldContentViewDelegate *)self->_delegate textFieldDidEndEditing:editingCopy forContentView:self];
  }
}

- (void)textFieldDidChangeSelection:(id)selection
{
  selectionCopy = selection;
  if (objc_opt_respondsToSelector())
  {
    [(PKListTextFieldContentViewDelegate *)self->_delegate textFieldDidChangeSelection:selectionCopy forContentView:self];
  }
}

@end