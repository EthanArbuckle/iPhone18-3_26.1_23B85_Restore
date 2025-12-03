@interface SKUISignInView
+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context;
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
+ (id)_borderPathWithSize:(CGSize)size;
+ (id)_fontDescriptorWithViewElement:(id)element defaultTextStyle:(id)style bold:(BOOL)bold;
+ (id)_labelWithViewElement:(id)element;
+ (id)_textFieldWithViewElement:(id)element;
+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context;
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SKUISignInView)initWithFrame:(CGRect)frame;
- (SKUISignInViewDelegate)delegate;
- (double)_layoutLabels;
- (id)_accountNameText;
- (id)_applePasswordText;
- (void)_clearFieldsAndLabels;
- (void)_layoutTextFieldsOffsetX:(double)x;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context;
@end

@implementation SKUISignInView

- (SKUISignInView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUISignInView *)v8 initWithFrame:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v26.receiver = self;
  v26.super_class = SKUISignInView;
  height = [(SKUISignInView *)&v26 initWithFrame:x, y, width, height];
  if (height)
  {
    v17 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
    borderColor = height->_borderColor;
    height->_borderColor = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    labels = height->_labels;
    height->_labels = v19;

    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    textFields = height->_textFields;
    height->_textFields = v21;

    v23 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
    viewFontDescriptors = height->_viewFontDescriptors;
    height->_viewFontDescriptors = v23;
  }

  return height;
}

+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUISignInView *)v5 prefetchResourcesForViewElement:v6 reason:v7 context:v8, v9, v10, v11, v12];
      }
    }
  }

  return 0;
}

+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUISignInView *)v4 preferredSizeForViewElement:v5 context:v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = *MEMORY[0x277CBF3A8];
  v13 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v13;
  result.width = v12;
  return result;
}

+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl())
  {
    v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v5)
    {
      [(SKUISignInView *)v5 requestLayoutForViewElement:v6 width:v7 context:v8, v9, v10, v11, v12];
    }
  }
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  elementCopy = element;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUISignInView *)v8 sizeThatFitsWidth:v9 viewElement:v10 context:v11, v12, v13, v14, v15];
      }
    }
  }

  v16 = [elementCopy firstChildForElementType:138];
  if (v16)
  {
    v17 = [self _fontDescriptorWithViewElement:v16 defaultTextStyle:*MEMORY[0x277D76938] bold:1];
    v18 = [MEMORY[0x277D74300] fontWithDescriptor:v17 size:0.0];
    [v18 _scaledValueForValue:50.0];
    v20 = v19 + v19;
  }

  else
  {
    width = *MEMORY[0x277CBF3A8];
    v20 = *(MEMORY[0x277CBF3A8] + 8);
  }

  widthCopy = width;
  v22 = v20;
  result.height = v22;
  result.width = widthCopy;
  return result;
}

- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  [(SKUISignInView *)self _clearFieldsAndLabels];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __54__SKUISignInView_reloadWithViewElement_width_context___block_invoke;
  v17[3] = &unk_2781F9640;
  v17[4] = self;
  [(SKUIViewElement *)elementCopy enumerateChildrenUsingBlock:v17];
  style = [(SKUIViewElement *)elementCopy style];
  ikBackgroundColor = [style ikBackgroundColor];
  color = [ikBackgroundColor color];

  if (!color)
  {
    color = [MEMORY[0x277D75348] whiteColor];
  }

  [(SKUISignInView *)self setBackgroundColor:color];
  ikBorderColor = [style ikBorderColor];
  color2 = [ikBorderColor color];
  borderColor = self->_borderColor;
  self->_borderColor = color2;

  if (!self->_borderColor)
  {
    v13 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
    v14 = self->_borderColor;
    self->_borderColor = v13;
  }

  viewElement = self->_viewElement;
  self->_viewElement = elementCopy;
  v16 = elementCopy;

  [(SKUISignInView *)self setNeedsLayout];
}

void __54__SKUISignInView_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 elementType];
  if (v3 == 140)
  {
    v9 = *(a1 + 32);
    v4 = (a1 + 32);
    v6 = 432;
    if ([*(v9 + 432) count] > 1)
    {
      goto LABEL_8;
    }

    v7 = [objc_opt_class() _textFieldWithViewElement:v11];
    [v7 setDelegate:*v4];
    v8 = 0;
    goto LABEL_7;
  }

  if (v3 == 138)
  {
    v5 = *(a1 + 32);
    v4 = (a1 + 32);
    v6 = 424;
    if ([*(v5 + 424) count] <= 1)
    {
      v7 = [objc_opt_class() _labelWithViewElement:v11];
      v8 = 1;
LABEL_7:
      [*v4 addSubview:v7];
      [*(*v4 + v6) addObject:v7];
      v10 = [objc_opt_class() _fontDescriptorWithViewElement:v11 defaultTextStyle:*MEMORY[0x277D76938] bold:v8];

      [*(*v4 + 56) setObject:v10 forKey:v7];
    }
  }

LABEL_8:
}

- (BOOL)becomeFirstResponder
{
  v3.receiver = self;
  v3.super_class = SKUISignInView;
  return [(SKUISignInView *)&v3 becomeFirstResponder];
}

- (BOOL)resignFirstResponder
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_textFields;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 isFirstResponder])
        {
          resignFirstResponder = [v8 resignFirstResponder];

          return resignFirstResponder;
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11.receiver = self;
  v11.super_class = SKUISignInView;
  return [(SKUISignInView *)&v11 resignFirstResponder];
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = SKUISignInView;
  [(SKUISignInView *)&v18 layoutSubviews];
  if (!self->_borderView)
  {
    v3 = [SKUIShapeView alloc];
    v4 = [(SKUIShapeView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    borderView = self->_borderView;
    self->_borderView = v4;

    [(SKUIShapeView *)self->_borderView setUserInteractionEnabled:0];
    [(SKUISignInView *)self addSubview:self->_borderView];
  }

  [(SKUISignInView *)self _layoutLabels];
  [(SKUISignInView *)self _layoutTextFieldsOffsetX:?];
  layer = [(SKUIShapeView *)self->_borderView layer];
  [layer setStrokeColor:{-[UIColor CGColor](self->_borderColor, "CGColor")}];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [layer setFillColor:{objc_msgSend(clearColor, "CGColor")}];

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v10 = 1.0 / v9;

  [layer setLineWidth:v10];
  [(SKUISignInView *)self bounds];
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  v15 = CGRectGetWidth(v19);
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v16 = CGRectGetHeight(v20);
  [(SKUIShapeView *)self->_borderView setFrame:0.0, 0.0, v15, v16];
  v17 = [objc_opt_class() _borderPathWithSize:{v15, v16}];
  [layer setPath:{objc_msgSend(v17, "CGPath")}];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v5 = [(NSMutableArray *)self->_labels firstObject:fits.width];
  if (v5)
  {
    v6 = [(NSMapTable *)self->_viewFontDescriptors objectForKey:v5];
    v7 = [MEMORY[0x277D74300] fontWithDescriptor:v6 size:0.0];
    [v7 _scaledValueForValue:50.0];
    v9 = v8 + v8;
    v17 = 0;
    style = [(SKUIViewElement *)self->_viewElement style];
    SKUIViewElementMarginForStyle(style, &v17);
    v12 = v11;
    v14 = v13;

    if (v17)
    {
      width = width - (v12 + v14);
    }
  }

  else
  {
    width = *MEMORY[0x277CBF3A8];
    v9 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v15 = width;
  v16 = v9;
  result.height = v16;
  result.width = v15;
  return result;
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  v6 = [string isEqualToString:{@"\n", range.location, range.length}];
  if (v6)
  {
    _accountNameText = [(SKUISignInView *)self _accountNameText];
    _applePasswordText = [(SKUISignInView *)self _applePasswordText];
    if ([_accountNameText length])
    {
      if ([_applePasswordText length])
      {
        delegate = [(SKUISignInView *)self delegate];
        if (delegate)
        {
          v10 = delegate;
          delegate2 = [(SKUISignInView *)self delegate];
          v12 = [delegate2 conformsToProtocol:&unk_28297C368];

          if (v12)
          {
            delegate3 = [(SKUISignInView *)self delegate];
            [delegate3 signInEntryComplete:self accountName:_accountNameText password:_applePasswordText];
          }
        }
      }
    }

    [(SKUISignInView *)self resignFirstResponder];
  }

  return v6 ^ 1;
}

+ (id)_borderPathWithSize:(CGSize)size
{
  width = size.width;
  v4 = size.height * 0.5;
  v5 = size.height * 0.5 + -1.0;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v8 = 1.0 / v7;
  v12 = 1.0 / v7;

  bezierPath = [MEMORY[0x277D75208] bezierPath];
  [bezierPath moveToPoint:{0.0, v5}];
  [bezierPath addLineToPoint:{0.0, 5.0}];
  [bezierPath addArcWithCenter:1 radius:5.0 startAngle:5.0 endAngle:5.0 clockwise:{3.14159265, 4.71238898}];
  [bezierPath addLineToPoint:{width + -5.0, 0.0}];
  [bezierPath addArcWithCenter:1 radius:width + -5.0 startAngle:5.0 endAngle:5.0 clockwise:{4.71238898, 0.0}];
  [bezierPath addLineToPoint:{width, v5}];
  [bezierPath moveToPoint:{width, v5 + v8}];
  v10 = v4 * 2.0 + -5.0;
  [bezierPath addLineToPoint:{width, v10}];
  [bezierPath addArcWithCenter:1 radius:width + -5.0 startAngle:v10 endAngle:5.0 clockwise:{0.0, 1.57079633}];
  [bezierPath addLineToPoint:{5.0, v4 + v4}];
  [bezierPath addArcWithCenter:1 radius:5.0 startAngle:v10 endAngle:5.0 clockwise:{1.57079633, 3.14159265}];
  [bezierPath addLineToPoint:{0.0, v5 + v8}];
  [bezierPath moveToPoint:{v12, v5}];
  [bezierPath lineToPoint:{width - v12, v5}];

  return bezierPath;
}

+ (id)_fontDescriptorWithViewElement:(id)element defaultTextStyle:(id)style bold:(BOOL)bold
{
  boldCopy = bold;
  elementCopy = element;
  styleCopy = style;
  if (!elementCopy || ([elementCopy style], v9 = objc_claimAutoreleasedReturnValue(), SKUIViewElementFontWithStyle(v9), v10 = objc_claimAutoreleasedReturnValue(), v9, objc_msgSend(v10, "fontDescriptor"), v11 = objc_claimAutoreleasedReturnValue(), v10, !v11))
  {
    v12 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:styleCopy];
    v11 = v12;
    if (boldCopy)
    {
      v13 = [v12 fontDescriptorWithSymbolicTraits:2];

      v11 = v13;
    }
  }

  return v11;
}

+ (id)_labelWithViewElement:(id)element
{
  v3 = MEMORY[0x277D756B8];
  elementCopy = element;
  v5 = [v3 alloc];
  v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  text = [elementCopy text];
  attributedString = [text attributedString];
  [v6 setAttributedText:attributedString];

  style = [elementCopy style];

  ikColor = [style ikColor];
  color = [ikColor color];

  if (!color)
  {
    color = [MEMORY[0x277D75348] blackColor];
  }

  [v6 setTextColor:color];

  return v6;
}

+ (id)_textFieldWithViewElement:(id)element
{
  elementCopy = element;
  v4 = [SKUISignInTextView alloc];
  v5 = [(SKUISignInTextView *)v4 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  keyboardType = [elementCopy keyboardType];
  if ([elementCopy isSecure])
  {
    [(SKUISignInTextView *)v5 setSecureTextEntry:1];
  }

  [(SKUISignInTextView *)v5 setKeyboardType:keyboardType];
  style = [elementCopy style];
  ikColor = [style ikColor];
  color = [ikColor color];

  if (!color)
  {
    color = [MEMORY[0x277D75348] blackColor];
  }

  [(SKUISignInTextView *)v5 setTextColor:color];
  placeholderText = [elementCopy placeholderText];
  if (placeholderText)
  {
    placeholderText2 = [elementCopy placeholderText];
  }

  else
  {
    placeholderText2 = &stru_2827FFAC8;
  }

  v12 = objc_alloc(MEMORY[0x277CBEAC0]);
  v13 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
  v14 = [v12 initWithObjectsAndKeys:{v13, *MEMORY[0x277D740C0], 0}];

  v15 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:placeholderText2 attributes:v14];
  [(SKUISignInTextView *)v5 setAttributedPlaceholder:v15];

  return v5;
}

- (id)_accountNameText
{
  if ([(NSMutableArray *)self->_textFields count])
  {
    v3 = [(NSMutableArray *)self->_textFields objectAtIndex:0];
    text = [v3 text];
  }

  else
  {
    text = 0;
  }

  return text;
}

- (id)_applePasswordText
{
  if ([(NSMutableArray *)self->_textFields count]< 2)
  {
    text = 0;
  }

  else
  {
    v3 = [(NSMutableArray *)self->_textFields objectAtIndex:1];
    text = [v3 text];
  }

  return text;
}

- (void)_clearFieldsAndLabels
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = self->_labels;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v17 + 1) + 8 * v7++) removeFromSuperview];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_labels removeAllObjects];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = self->_textFields;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) removeFromSuperview];
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v10);
  }

  [(NSMutableArray *)self->_textFields removeAllObjects];
  [(NSMapTable *)self->_viewFontDescriptors removeAllObjects];
}

- (double)_layoutLabels
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = self->_labels;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    v7 = 0.0;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [(NSMapTable *)self->_viewFontDescriptors objectForKey:v10, v22];
        v12 = [MEMORY[0x277D74300] fontWithDescriptor:v11 size:0.0];
        [v10 setFont:v12];
        [v10 sizeThatFits:{1.79769313e308, 1.79769313e308}];
        v14 = v13;
        v16 = v15;
        [v12 _scaledValueForValue:29.0];
        v18 = v17;
        [v10 _firstBaselineOffsetFromTop];
        [v10 setFrame:{12.0, v8 + v18 - v19, v14, v16}];
        [v12 _scaledValueForValue:50.0];
        v8 = v8 + v20;
        v7 = fmax(v7, v14);
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (void)_layoutTextFieldsOffsetX:(double)x
{
  v29 = *MEMORY[0x277D85DE8];
  [(SKUISignInView *)self bounds];
  Width = CGRectGetWidth(v30);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = self->_textFields;
  v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = Width - x + -22.0 + -12.0;
    v9 = *v25;
    v10 = x + 22.0;
    v11 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = [(NSMapTable *)self->_viewFontDescriptors objectForKey:v13];
        v15 = [MEMORY[0x277D74300] fontWithDescriptor:v14 size:0.0];
        [v13 setFont:v15];
        _placeholderLabel = [v13 _placeholderLabel];
        [v13 sizeThatFits:{v8, 1.79769313e308}];
        v18 = v17;
        [v15 _scaledValueForValue:29.0];
        v20 = v19;
        [_placeholderLabel _firstBaselineOffsetFromTop];
        [v13 setFrame:{v10, v11 + v20 - v21, v8, v18}];
        [v15 _scaledValueForValue:50.0];
        v11 = v11 + v22;
      }

      v7 = [(NSMutableArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v7);
  }
}

- (SKUISignInViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end