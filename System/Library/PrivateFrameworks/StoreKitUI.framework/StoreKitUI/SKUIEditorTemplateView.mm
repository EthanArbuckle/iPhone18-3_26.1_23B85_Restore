@interface SKUIEditorTemplateView
+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context;
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context;
- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context;
- (BOOL)updateWithItemState:(id)state context:(id)context animated:(BOOL)animated;
- (NSString)text;
- (SKUIEditorTemplateView)initWithFrame:(CGRect)frame;
- (SKUIEditorTemplateViewDelegate)delegate;
- (id)_textFromViewElement:(id)element;
- (id)viewForElementIdentifier:(id)identifier;
- (void)_reloadSubviews;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context;
- (void)setBottomInset:(double)inset;
- (void)setDisabled:(BOOL)disabled;
- (void)textViewDidChange:(id)change;
@end

@implementation SKUIEditorTemplateView

- (SKUIEditorTemplateView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SKUIEditorTemplateView;
  v3 = [(SKUIViewReuseView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SKUIEditorTemplateView *)v3 _reloadSubviews];
  }

  return v4;
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
        [(SKUIEditorTemplateView *)v5 prefetchResourcesForViewElement:v6 reason:v7 context:v8, v9, v10, v11, v12];
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
        [(SKUIEditorTemplateView *)v4 preferredSizeForViewElement:v5 context:v6, v7, v8, v9, v10, v11];
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
      [(SKUIEditorTemplateView *)v5 requestLayoutForViewElement:v6 width:v7 context:v8, v9, v10, v11, v12];
    }
  }
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIEditorTemplateView *)v5 sizeThatFitsWidth:v6 viewElement:v7 context:v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = *MEMORY[0x277CBF3A8];
  v14 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUIEditorTemplateView *)v7 reloadWithViewElement:v8 width:v9 context:v10, v11, v12, v13, v14];
      }
    }
  }

  textView = self->_textView;
  v16 = [(SKUIEditorTemplateView *)self _textFromViewElement:elementCopy];
  [(UITextView *)textView setText:v16];

  style = [elementCopy style];
  v18 = SKUIViewElementFontWithStyle(style);
  v19 = self->_textView;
  if (v18)
  {
    [(UITextView *)self->_textView setFont:v18];
  }

  else
  {
    v20 = SKUIFontPreferredFontForTextStyle(1);
    [(UITextView *)v19 setFont:v20];
  }

  ikColor = [style ikColor];
  color = [ikColor color];
  blackColor = color;
  if (!color)
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
  }

  objc_storeStrong(&self->_textColor, blackColor);
  if (!color)
  {
  }

  [(UITextView *)self->_textView setTextColor:self->_textColor];
  v36 = 0;
  style2 = [elementCopy style];
  v25 = SKUIViewElementPaddingForStyle(style2, &v36);
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = 15.0;
  v33 = 18.0;
  if (v36)
  {
    v34 = v25;
  }

  else
  {
    v34 = 18.0;
  }

  if (v36)
  {
    v35 = v27;
  }

  else
  {
    v35 = 15.0;
  }

  if (v36)
  {
    v33 = v29;
    v32 = v31;
  }

  [(UITextView *)self->_textView setTextContainerInset:v34, v35, v33, v32];
  [(UITextView *)self->_textView setContentOffset:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
}

- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIEditorTemplateView *)v5 setImage:v6 forArtworkRequest:v7 context:v8, v9, v10, v11, v12];
      }
    }
  }

  return 0;
}

- (BOOL)updateWithItemState:(id)state context:(id)context animated:(BOOL)animated
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIEditorTemplateView *)v5 updateWithItemState:v6 context:v7 animated:v8, v9, v10, v11, v12];
      }
    }
  }

  return 0;
}

- (id)viewForElementIdentifier:(id)identifier
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIEditorTemplateView *)v3 viewForElementIdentifier:v4, v5, v6, v7, v8, v9, v10];
      }
    }
  }

  return 0;
}

- (void)textViewDidChange:(id)change
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIEditorTemplateView *)v4 textViewDidChange:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = objc_loadWeakRetained(&self->_delegate);
    [v14 didChangeTextInEditorTemplateView:self];
  }
}

- (void)layoutSubviews
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIEditorTemplateView *)v3 layoutSubviews:v4];
      }
    }
  }

  v13.receiver = self;
  v13.super_class = SKUIEditorTemplateView;
  [(SKUIEditorTemplateView *)&v13 layoutSubviews];
  textView = self->_textView;
  [(SKUIEditorTemplateView *)self bounds];
  [(UITextView *)textView setFrame:?];
  if (self->_disabled)
  {
    v12 = [(UIColor *)self->_textColor colorWithAlphaComponent:0.2];
    [(UITextView *)self->_textView setTextColor:v12];
    [(UITextView *)self->_textView setEditable:0];
  }

  else
  {
    [(UITextView *)self->_textView setTextColor:self->_textColor];
    [(UITextView *)self->_textView setEditable:1];
  }
}

- (void)setBottomInset:(double)inset
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIEditorTemplateView *)v5 setBottomInset:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  [(UITextView *)self->_textView contentInset];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(UITextView *)self->_textView setContentInset:?];
  [(UITextView *)self->_textView setScrollIndicatorInsets:v14, v16, inset, v18];
}

- (void)setDisabled:(BOOL)disabled
{
  if (self->_disabled != disabled)
  {
    self->_disabled = disabled;
    [(SKUIEditorTemplateView *)self setNeedsLayout];
  }
}

- (NSString)text
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIEditorTemplateView *)v3 text:v4];
      }
    }
  }

  text = [(UITextView *)self->_textView text];

  return text;
}

- (void)_reloadSubviews
{
  if (!self->_textView)
  {
    v3 = objc_alloc(MEMORY[0x277D75C40]);
    v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    textView = self->_textView;
    self->_textView = v4;

    [(UITextView *)self->_textView setDelegate:self];
    [(UITextView *)self->_textView setKeyboardDismissMode:2];
    [(UITextView *)self->_textView setAlwaysBounceVertical:1];
    layoutManager = [(UITextView *)self->_textView layoutManager];
    [layoutManager setAllowsNonContiguousLayout:0];

    v7 = self->_textView;

    [(SKUIEditorTemplateView *)self addSubview:v7];
  }
}

- (id)_textFromViewElement:(id)element
{
  v3 = MEMORY[0x277CBEB18];
  elementCopy = element;
  v5 = objc_alloc_init(v3);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__SKUIEditorTemplateView__textFromViewElement___block_invoke;
  v9[3] = &unk_2781F9640;
  v10 = v5;
  v6 = v5;
  [elementCopy enumerateChildrenUsingBlock:v9];

  v7 = [v6 componentsJoinedByString:@"\n"];

  return v7;
}

void __47__SKUIEditorTemplateView__textFromViewElement___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 elementType] == 138)
  {
    v3 = *(a1 + 32);
    v4 = [v6 text];
    v5 = [v4 string];
    [v3 addObject:v5];
  }
}

- (SKUIEditorTemplateViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end