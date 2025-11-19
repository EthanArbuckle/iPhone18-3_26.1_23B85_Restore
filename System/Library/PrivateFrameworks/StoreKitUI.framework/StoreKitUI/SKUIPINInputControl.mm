@interface SKUIPINInputControl
+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5;
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SKUIPINInputControl)initWithFrame:(CGRect)a3;
- (void)_reloadLabelSubviews;
- (void)_sendValueChangeEvents;
- (void)deleteBackward;
- (void)insertText:(id)a3;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (void)setBoxBackgroundColor:(id)a3;
- (void)setBoxBorderColor:(id)a3;
- (void)setFont:(id)a3;
- (void)setNumberOfCharacters:(int64_t)a3;
- (void)setSecureTextEntry:(BOOL)a3;
- (void)setText:(id)a3;
- (void)setTextColor:(id)a3;
- (void)tintColorDidChange;
@end

@implementation SKUIPINInputControl

- (SKUIPINInputControl)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUIPINInputControl *)v8 initWithFrame:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v26.receiver = self;
  v26.super_class = SKUIPINInputControl;
  v16 = [(SKUIPINInputControl *)&v26 initWithFrame:x, y, width, height];
  if (v16)
  {
    v17 = [MEMORY[0x277D75348] whiteColor];
    boxBackgroundColor = v16->_boxBackgroundColor;
    v16->_boxBackgroundColor = v17;

    v19 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
    boxBorderColor = v16->_boxBorderColor;
    v16->_boxBorderColor = v19;

    v21 = [MEMORY[0x277D74300] _lightSystemFontOfSize:28.0];
    font = v16->_font;
    v16->_font = v21;

    v23 = [MEMORY[0x277D75348] blackColor];
    textColor = v16->_textColor;
    v16->_textColor = v23;

    v16->_numberOfCharacters = 4;
    [(SKUIPINInputControl *)v16 _reloadLabelSubviews];
  }

  return v16;
}

- (void)setBoxBackgroundColor:(id)a3
{
  if (self->_boxBackgroundColor != a3)
  {
    v4 = [a3 copy];
    boxBackgroundColor = self->_boxBackgroundColor;
    self->_boxBackgroundColor = v4;

    [(SKUIPINInputControl *)self _setNeedsReloadLayout];
  }
}

- (void)setBoxBorderColor:(id)a3
{
  if (self->_boxBorderColor != a3)
  {
    v4 = [a3 copy];
    boxBorderColor = self->_boxBorderColor;
    self->_boxBorderColor = v4;

    [(SKUIPINInputControl *)self _setNeedsReloadLayout];
  }
}

- (void)setFont:(id)a3
{
  if (self->_font != a3)
  {
    v4 = [a3 copy];
    font = self->_font;
    self->_font = v4;

    [(SKUIPINInputControl *)self _setNeedsReloadLayout];
  }
}

- (void)setNumberOfCharacters:(int64_t)a3
{
  if (self->_numberOfCharacters != a3)
  {
    self->_numberOfCharacters = a3;
    [(SKUIPINInputControl *)self _setNeedsReloadLayout];
  }
}

- (void)setText:(id)a3
{
  if (self->_text != a3)
  {
    v4 = [a3 mutableCopy];
    text = self->_text;
    self->_text = v4;

    [(SKUIPINInputControl *)self _setNeedsReloadLayout];
  }
}

- (void)setTextColor:(id)a3
{
  if (self->_textColor != a3)
  {
    v4 = [a3 copy];
    textColor = self->_textColor;
    self->_textColor = v4;

    [(SKUIPINInputControl *)self _setNeedsReloadLayout];
  }
}

+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIPINInputControl *)v5 prefetchResourcesForViewElement:v6 reason:v7 context:v8, v9, v10, v11, v12];
      }
    }
  }

  return 0;
}

+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIPINInputControl *)v4 preferredSizeForViewElement:v5 context:v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = *MEMORY[0x277CBF3A8];
  v13 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v13;
  result.width = v12;
  return result;
}

+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl())
  {
    v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v5)
    {
      [(SKUIPINInputControl *)v5 requestLayoutForViewElement:v6 width:v7 context:v8, v9, v10, v11, v12];
    }
  }
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  v7 = a4;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUIPINInputControl *)v8 sizeThatFitsWidth:v9 viewElement:v10 context:v11, v12, v13, v14, v15];
      }
    }
  }

  v16 = [v7 style];
  v17 = SKUIViewElementFontWithStyle(v16);

  if (!v17)
  {
    v17 = [MEMORY[0x277D74300] _lightSystemFontOfSize:28.0];
  }

  [a1 _defaultBoxSizeForFont:v17];
  v19 = v18;

  v20 = a3;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v6 = a3;
  v15 = [(SKUIViewElement *)v6 style];
  v7 = [v15 ikBackgroundColor];
  v8 = [v7 color];

  if (!v8)
  {
    v8 = [MEMORY[0x277D75348] whiteColor];
  }

  [(SKUIPINInputControl *)self setBoxBackgroundColor:v8];
  v9 = [v15 ikBorderColor];
  v10 = [v9 color];

  if (!v10)
  {
    v10 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
  }

  [(SKUIPINInputControl *)self setBoxBorderColor:v10];
  v11 = [v15 ikColor];
  v12 = [v11 color];

  if (!v12)
  {
    v12 = [MEMORY[0x277D75348] blackColor];
  }

  [(SKUIPINInputControl *)self setTextColor:v12];
  v13 = SKUIViewElementFontWithStyle(v15);
  if (!v13)
  {
    v13 = [MEMORY[0x277D74300] _lightSystemFontOfSize:28.0];
  }

  [(SKUIPINInputControl *)self setFont:v13];
  [(SKUIPINInputControl *)self setKeyboardType:[(SKUIViewElement *)v6 keyboardType]];
  [(SKUIPINInputControl *)self setNumberOfCharacters:[(SKUIViewElement *)v6 maximumLength]];
  [(SKUIPINInputControl *)self setSecureTextEntry:[(SKUIViewElement *)v6 isSecure]];
  viewElement = self->_viewElement;
  self->_viewElement = v6;
}

- (void)deleteBackward
{
  v3 = [(NSMutableString *)self->_text length];
  if (v3 >= 1)
  {
    [(NSMutableString *)self->_text deleteCharactersInRange:v3 - 1, 1];
    [(SKUIPINInputControl *)self _setNeedsReloadLayout];

    [(SKUIPINInputControl *)self _sendValueChangeEvents];
  }
}

- (void)insertText:(id)a3
{
  v7 = a3;
  if (-[NSMutableString length](self->_text, "length") < self->_numberOfCharacters && ([v7 isEqualToString:@"\n"] & 1) == 0)
  {
    text = self->_text;
    if (!text)
    {
      v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
      v6 = self->_text;
      self->_text = v5;

      text = self->_text;
    }

    [(NSMutableString *)text appendString:v7];
    [(SKUIPINInputControl *)self _setNeedsReloadLayout];
    [(SKUIPINInputControl *)self _sendValueChangeEvents];
  }
}

- (BOOL)becomeFirstResponder
{
  v5.receiver = self;
  v5.super_class = SKUIPINInputControl;
  v3 = [(SKUIPINInputControl *)&v5 becomeFirstResponder];
  if (v3)
  {
    [(SKUIPINInputControl *)self _reloadLabelSubviews];
  }

  return v3;
}

- (BOOL)resignFirstResponder
{
  v5.receiver = self;
  v5.super_class = SKUIPINInputControl;
  v3 = [(SKUIPINInputControl *)&v5 resignFirstResponder];
  if (v3)
  {
    [(SKUIPINInputControl *)self _reloadLabelSubviews];
  }

  return v3;
}

- (void)setSecureTextEntry:(BOOL)a3
{
  if (self->_secureTextEntry != a3)
  {
    self->_secureTextEntry = a3;
    [(SKUIPINInputControl *)self _setNeedsReloadLayout];
  }
}

- (void)layoutSubviews
{
  v42 = *MEMORY[0x277D85DE8];
  [(SKUIPINInputControl *)self bounds];
  v4 = v3;
  v6 = v5;
  if (self->_needsLabelReload)
  {
    [(SKUIPINInputControl *)self _reloadLabelSubviews];
    self->_needsLabelReload = 0;
  }

  [objc_opt_class() _defaultBoxSizeForFont:self->_font];
  v8 = v7;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v9 = self->_labels;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v37;
    v13 = v8;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v36 + 1) + 8 * i) sizeThatFits:{v4, v6}];
        if (v8 < v16)
        {
          v8 = v16;
        }

        if (v13 < v15)
        {
          v13 = v15;
        }
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v11);
  }

  else
  {
    v13 = v8;
  }

  v17 = [(NSMutableArray *)self->_labels count];
  v18 = v13 * v17;
  v19 = (v17 - 1);
  v20 = (v4 - v18) / v19;
  v21 = floorf(v20);
  if (v21 <= 10.0)
  {
    v22 = v21;
  }

  else
  {
    v22 = 10.0;
  }

  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v23 = self->_labels;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = (v6 - v8) * 0.5;
    v27 = floorf(v26);
    v28 = (v4 - (v18 + v22 * v19)) * 0.5;
    v29 = floorf(v28);
    v30 = *v33;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v33 != v30)
        {
          objc_enumerationMutation(v23);
        }

        [*(*(&v32 + 1) + 8 * j) setFrame:{v29, v27, v13, v8, v32}];
        v43.origin.x = v29;
        v43.origin.y = v27;
        v43.size.width = v13;
        v43.size.height = v8;
        v29 = v22 + CGRectGetMaxX(v43);
      }

      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v25);
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v24 = *MEMORY[0x277D85DE8];
  if (self->_needsLabelReload)
  {
    [(SKUIPINInputControl *)self _reloadLabelSubviews];
    self->_needsLabelReload = 0;
  }

  [objc_opt_class() _defaultBoxSizeForFont:self->_font];
  v7 = v6;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = self->_labels;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    v12 = v7;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v19 + 1) + 8 * i) sizeThatFits:{width, height, v19}];
        if (v7 < v15)
        {
          v7 = v15;
        }

        if (v12 < v14)
        {
          v12 = v14;
        }
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  else
  {
    v12 = v7;
  }

  v16 = [(NSMutableArray *)self->_labels count];
  v17 = (v16 - 1) * 10.0 + v12 * v16;
  v18 = v7;
  result.height = v18;
  result.width = v17;
  return result;
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = SKUIPINInputControl;
  [(SKUIPINInputControl *)&v3 tintColorDidChange];
  [(SKUIPINInputControl *)self _reloadLabelSubviews];
}

- (void)_reloadLabelSubviews
{
  if (!self->_labels)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    labels = self->_labels;
    self->_labels = v3;
  }

  v26 = [(UIColor *)self->_boxBorderColor CGColor];
  v5 = [MEMORY[0x277D759A0] mainScreen];
  [v5 scale];
  v7 = v6;

  v8 = [(SKUIPINInputControl *)self isFirstResponder];
  v25 = [(SKUIPINInputControl *)self isSecureTextEntry];
  v9 = [(NSMutableString *)self->_text length];
  if (self->_numberOfCharacters >= 1)
  {
    v10 = v9;
    v11 = 0;
    v12 = 1.0 / v7;
    do
    {
      if (v11 >= [(NSMutableArray *)self->_labels count])
      {
        v13 = objc_alloc_init(MEMORY[0x277D756B8]);
        [v13 setTextAlignment:1];
        [v13 setUserInteractionEnabled:0];
        [(NSMutableArray *)self->_labels addObject:v13];
        [(SKUIPINInputControl *)self addSubview:v13];
      }

      else
      {
        v13 = [(NSMutableArray *)self->_labels objectAtIndex:v11];
      }

      v14 = [v13 layer];
      v15 = v14;
      if (v10 == v11)
      {
        v16 = v8;
      }

      else
      {
        v16 = 0;
      }

      if (v16 == 1)
      {
        v17 = [(SKUIPINInputControl *)self tintColor];
        [v15 setBorderColor:{objc_msgSend(v17, "CGColor")}];

        v18 = 1.0;
      }

      else
      {
        [v14 setBorderColor:v26];
        v18 = v12;
      }

      [v15 setBorderWidth:v18];
      [v13 setBackgroundColor:self->_boxBackgroundColor];
      [v13 setFont:self->_font];
      [v13 setTextColor:self->_textColor];
      if (v11 >= v10)
      {
        v19 = v13;
        v20 = 0;
      }

      else
      {
        if (!v25)
        {
          v21 = [(NSMutableString *)self->_text substringWithRange:v11, 1];
          [v13 setText:v21];

          goto LABEL_20;
        }

        v19 = v13;
        v20 = @"•";
      }

      [v19 setText:v20];
LABEL_20:

      ++v11;
    }

    while (v11 < self->_numberOfCharacters);
  }

  v22 = [(NSMutableArray *)self->_labels count];
  if (v22 > self->_numberOfCharacters)
  {
    v23 = v22 - 1;
    do
    {
      v24 = [(NSMutableArray *)self->_labels objectAtIndex:v23];
      [v24 removeFromSuperview];
      [(NSMutableArray *)self->_labels removeObjectAtIndex:v23];

      ++v23;
    }

    while (v23 >= self->_numberOfCharacters);
  }
}

- (void)_sendValueChangeEvents
{
  if (self->_viewElement)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{self->_text, @"term", 0}];
    [(SKUIViewElement *)self->_viewElement dispatchEventOfType:15 canBubble:1 isCancelable:1 extraInfo:v3 completionBlock:0];
  }

  [(SKUIPINInputControl *)self sendActionsForControlEvents:4096];
}

@end