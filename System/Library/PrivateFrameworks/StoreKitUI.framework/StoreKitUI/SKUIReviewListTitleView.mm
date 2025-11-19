@interface SKUIReviewListTitleView
+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5;
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
+ (id)_attributedStringForDateLabel:(id)a3 context:(id)a4;
+ (id)_attributedStringForTitleLabel:(id)a3 context:(id)a4;
+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SKUIReviewListTitleView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)contentInset;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (void)setContentInset:(UIEdgeInsets)a3;
@end

@implementation SKUIReviewListTitleView

- (SKUIReviewListTitleView)initWithFrame:(CGRect)a3
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
        [(SKUIReviewListTitleView *)v8 initWithFrame:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v19.receiver = self;
  v19.super_class = SKUIReviewListTitleView;
  v16 = [(SKUIViewReuseView *)&v19 initWithFrame:x, y, width, height];
  v17 = v16;
  if (v16)
  {
    [(SKUIReviewListTitleView *)v16 setContentMode:3];
  }

  return v17;
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
        [(SKUIReviewListTitleView *)v5 prefetchResourcesForViewElement:v6 reason:v7 context:v8, v9, v10, v11, v12];
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
        [(SKUIReviewListTitleView *)v4 preferredSizeForViewElement:v5 context:v6, v7, v8, v9, v10, v11];
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
  v8 = a3;
  v9 = a5;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v10)
      {
        [(SKUIReviewListTitleView *)v10 requestLayoutForViewElement:v11 width:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  v18 = [a1 _dateLabelForViewElement:v8];
  if (v18)
  {
    v19 = [a1 _attributedStringForDateLabel:v18 context:v9];
    v20 = [v9 labelLayoutCache];
    [v20 requestLayoutForLabel:v18 attributedString:v19 width:a4];

    if ([v19 length])
    {
      [v19 boundingRectWithSize:1 options:0 context:{a4, 1.79769313e308}];
      a4 = a4 - v21;
    }
  }

  v22 = [a1 _textLabelForViewElement:v8];
  if (v22)
  {
    v23 = [a1 _attributedStringForTitleLabel:v22 context:v9];
    v24 = [v9 labelLayoutCache];
    [v24 requestLayoutForLabel:v22 attributedString:v23 width:a4];
  }
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v9)
      {
        [(SKUIReviewListTitleView *)v9 sizeThatFitsWidth:v10 viewElement:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  v17 = [v7 firstChildForElementType:138];
  v18 = *(MEMORY[0x277CBF3A8] + 8);
  [v8 sizeForViewElement:v17 width:a3];
  v20 = v18 + v19;
  v21 = [v8 textPropertiesForViewElement:v17 width:a3];

  [v21 baselineOffsetFromBottom];
  v22 = a3;
  v23 = v20;
  result.height = v23;
  result.width = v22;
  return result;
}

- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__SKUIReviewListTitleView_reloadWithViewElement_width_context___block_invoke;
  v12[3] = &unk_2781F95C8;
  v15 = a4;
  v12[4] = self;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [(SKUIViewReuseView *)self modifyUsingBlock:v12];
}

void __63__SKUIReviewListTitleView_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = *(a1 + 56);
  v4 = [objc_opt_class() _dateLabelForViewElement:*(a1 + 40)];
  if (v4)
  {
    v5 = [v15 addLabelViewWithElement:v4 width:*(a1 + 48) context:*(a1 + 56)];
    [*(a1 + 32) setDateView:v5];

    v6 = [*(a1 + 48) textPropertiesForViewElement:v4 width:*(a1 + 56)];
    v7 = [*(a1 + 32) dateView];
    [v15 setTextProperties:v6 forView:v7];

    v8 = [*(a1 + 32) dateView];
    [v8 sizeThatFits:{*(a1 + 56), 1.79769313e308}];
    v10 = v9;

    v3 = v3 - v10;
  }

  else
  {
    [*(a1 + 32) setDateView:0];
  }

  v11 = [objc_opt_class() _textLabelForViewElement:*(a1 + 40)];
  if (v11)
  {
    v12 = [v15 addLabelViewWithElement:v11 width:*(a1 + 48) context:v3];
    [*(a1 + 32) setTitleView:v12];

    v13 = [*(a1 + 48) textPropertiesForViewElement:v11 width:v3];
    v14 = [*(a1 + 32) titleView];
    [v15 setTextProperties:v13 forView:v14];
  }

  else
  {
    [*(a1 + 32) setTitleView:0];
  }
}

- (void)setContentInset:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInset.top, v3), vceqq_f64(*&self->_contentInset.bottom, v4)))) & 1) == 0)
  {
    self->_contentInset = a3;
    [(SKUIReviewListTitleView *)self setNeedsDisplay];
  }
}

- (void)layoutSubviews
{
  v47.receiver = self;
  v47.super_class = SKUIReviewListTitleView;
  [(SKUIReviewListTitleView *)&v47 layoutSubviews];
  [(SKUIReviewListTitleView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  rect = v9;
  [(SKUIReviewListTitleView *)self contentInset];
  v11 = v10;
  v45 = v12;
  v14 = v13;
  v15 = [(SKUIReviewListTitleView *)self titleView];
  v16 = [(SKUIReviewListTitleView *)self dateView];
  v17 = [v16 layout];
  [v17 boundingSize];
  v19 = v18;
  v21 = v20;

  v22 = [v15 layout];
  [v22 baselineOffset];
  v24 = v23;
  v25 = [v16 layout];
  [v25 baselineOffset];
  v27 = v24 - v26;

  v46 = v11;
  v28 = v11 + v27;
  v29 = v14;
  v30 = round(v28);
  v48.origin.x = v4;
  v48.origin.y = v6;
  v48.size.width = v8;
  v48.size.height = rect;
  Width = CGRectGetWidth(v48);
  v49.origin.x = 0.0;
  v49.origin.y = v30;
  v49.size.width = v19;
  v49.size.height = v21;
  v32 = Width - CGRectGetWidth(v49) - v29;
  v50.origin.x = v32;
  v50.origin.y = v30;
  v50.size.width = v19;
  v50.size.height = v21;
  v51 = CGRectIntegral(v50);
  [v16 setFrame:{v51.origin.x, v51.origin.y, v51.size.width, v51.size.height}];
  v52.origin.x = v32;
  v52.origin.y = v30;
  v52.size.width = v19;
  v52.size.height = v21;
  if (CGRectGetWidth(v52) <= 2.22044605e-16)
  {
    v33 = v45;
    v34 = v8 - v45 - v29;
  }

  else
  {
    v53.origin.x = v32;
    v53.origin.y = v30;
    v53.size.width = v19;
    v53.size.height = v21;
    v33 = v45;
    v34 = CGRectGetMinX(v53) - v45 + -10.0;
  }

  v35 = [v15 layout];
  [v35 boundingSize];
  v37 = v36;
  v39 = v38;

  if (v37 >= v34)
  {
    v40 = v34;
  }

  else
  {
    v40 = v37;
  }

  v41 = v33;
  v42 = v46;
  v43 = v39;
  v54 = CGRectIntegral(*(&v40 - 2));
  [v15 setFrame:{v54.origin.x, v54.origin.y, v54.size.width, v54.size.height}];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(SKUIReviewListTitleView *)self contentInset:a3.width];
  v6 = v5;
  v7 = [(SKUIReviewListTitleView *)self titleView];
  [v7 sizeThatFits:{width, 1.79769313e308}];
  v9 = v8;

  v10 = v6 + v9;
  v11 = width;
  result.height = v10;
  result.width = v11;
  return result;
}

+ (id)_attributedStringForTitleLabel:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 style];
  v8 = SKUIViewElementFontWithStyle(v7);
  if (!v8)
  {
    v8 = SKUIFontPreferredFontForTextStyle(1);
  }

  v9 = [v6 tintColor];
  v10 = SKUIViewElementPlainColorWithStyle(v7, v9);

  if (!v10)
  {
    v10 = [MEMORY[0x277D75348] blackColor];
  }

  v11 = [v5 text];
  v12 = [v11 attributedStringWithDefaultFont:v8 foregroundColor:v10 style:v7];

  return v12;
}

+ (id)_attributedStringForDateLabel:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 style];
  v8 = SKUIViewElementFontWithStyle(v7);
  if (!v8)
  {
    v8 = SKUIFontPreferredFontForTextStyle(21);
  }

  v9 = [v6 tintColor];
  v10 = SKUIViewElementPlainColorWithStyle(v7, v9);

  if (!v10)
  {
    v10 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.3];
  }

  v11 = [v5 text];
  v12 = [v11 attributedStringWithDefaultFont:v8 foregroundColor:v10 style:v7];

  return v12;
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end