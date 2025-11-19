@interface SKUIEditorTemplateView
+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5;
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5;
- (BOOL)updateWithItemState:(id)a3 context:(id)a4 animated:(BOOL)a5;
- (NSString)text;
- (SKUIEditorTemplateView)initWithFrame:(CGRect)a3;
- (SKUIEditorTemplateViewDelegate)delegate;
- (id)_textFromViewElement:(id)a3;
- (id)viewForElementIdentifier:(id)a3;
- (void)_reloadSubviews;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (void)setBottomInset:(double)a3;
- (void)setDisabled:(BOOL)a3;
- (void)textViewDidChange:(id)a3;
@end

@implementation SKUIEditorTemplateView

- (SKUIEditorTemplateView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SKUIEditorTemplateView;
  v3 = [(SKUIViewReuseView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SKUIEditorTemplateView *)v3 _reloadSubviews];
  }

  return v4;
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
        [(SKUIEditorTemplateView *)v5 prefetchResourcesForViewElement:v6 reason:v7 context:v8, v9, v10, v11, v12];
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

+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5
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

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
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

- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v6 = a3;
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
  v16 = [(SKUIEditorTemplateView *)self _textFromViewElement:v6];
  [(UITextView *)textView setText:v16];

  v17 = [v6 style];
  v18 = SKUIViewElementFontWithStyle(v17);
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

  v21 = [v17 ikColor];
  v22 = [v21 color];
  v23 = v22;
  if (!v22)
  {
    v23 = [MEMORY[0x277D75348] blackColor];
  }

  objc_storeStrong(&self->_textColor, v23);
  if (!v22)
  {
  }

  [(UITextView *)self->_textView setTextColor:self->_textColor];
  v36 = 0;
  v24 = [v6 style];
  v25 = SKUIViewElementPaddingForStyle(v24, &v36);
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

- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5
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

- (BOOL)updateWithItemState:(id)a3 context:(id)a4 animated:(BOOL)a5
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

- (id)viewForElementIdentifier:(id)a3
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

- (void)textViewDidChange:(id)a3
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

- (void)setBottomInset:(double)a3
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
  [(UITextView *)self->_textView setScrollIndicatorInsets:v14, v16, a3, v18];
}

- (void)setDisabled:(BOOL)a3
{
  if (self->_disabled != a3)
  {
    self->_disabled = a3;
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

  v11 = [(UITextView *)self->_textView text];

  return v11;
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
    v6 = [(UITextView *)self->_textView layoutManager];
    [v6 setAllowsNonContiguousLayout:0];

    v7 = self->_textView;

    [(SKUIEditorTemplateView *)self addSubview:v7];
  }
}

- (id)_textFromViewElement:(id)a3
{
  v3 = MEMORY[0x277CBEB18];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__SKUIEditorTemplateView__textFromViewElement___block_invoke;
  v9[3] = &unk_2781F9640;
  v10 = v5;
  v6 = v5;
  [v4 enumerateChildrenUsingBlock:v9];

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