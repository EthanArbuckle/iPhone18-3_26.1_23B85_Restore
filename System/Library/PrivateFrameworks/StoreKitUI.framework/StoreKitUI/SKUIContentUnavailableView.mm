@interface SKUIContentUnavailableView
+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5;
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
+ (id)_attributedStringWithButton:(id)a3 context:(id)a4;
+ (id)_attributedStringWithMessageLabel:(id)a3 context:(id)a4;
+ (id)_attributedStringWithTitleLabel:(id)a3 context:(id)a4;
+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5;
- (double)_baselineOffsetForView:(id)a3;
- (double)_firstBaselineOffsetForView:(id)a3;
- (void)_buttonAction:(id)a3;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (void)setContentInset:(UIEdgeInsets)a3;
@end

@implementation SKUIContentUnavailableView

+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    +[SKUIContentUnavailableView prefetchResourcesForViewElement:reason:context:];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__SKUIContentUnavailableView_prefetchResourcesForViewElement_reason_context___block_invoke;
  v12[3] = &unk_2781F95A0;
  v9 = v8;
  v14 = &v16;
  v15 = a4;
  v13 = v9;
  [v7 enumerateChildrenUsingBlock:v12];
  v10 = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v10;
}

uint64_t __77__SKUIContentUnavailableView_prefetchResourcesForViewElement_reason_context___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) prefetchResourcesForViewElement:a2 reason:*(a1 + 48)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    +[SKUIContentUnavailableView preferredSizeForViewElement:context:];
  }

  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v5;
  result.width = v4;
  return result;
}

+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    +[SKUIContentUnavailableView requestLayoutForViewElement:width:context:];
  }

  v10 = [v9 labelLayoutCache];
  v11 = [v8 titleLabel];
  if (v11)
  {
    v12 = [a1 _attributedStringWithTitleLabel:v11 context:v9];
    [v10 requestLayoutForLabel:v11 attributedString:v12 width:a4];
  }

  v13 = [v8 messageLabel];

  if (v13)
  {
    v14 = [a1 _attributedStringWithMessageLabel:v13 context:v9];
    [v10 requestLayoutForLabel:v13 attributedString:v14 width:a4];
  }

  v15 = [v8 button];
  if (v15)
  {
    v16 = [a1 _attributedStringWithButton:v15 context:v9];
    [v10 requestLayoutForButton:v15 attributedString:v16 width:a4];
  }
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    +[SKUIContentUnavailableView sizeThatFitsWidth:viewElement:context:];
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x3010000000;
  v30 = &unk_215F8ACD7;
  v31 = a3;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __68__SKUIContentUnavailableView_sizeThatFitsWidth_viewElement_context___block_invoke;
  v18[3] = &unk_2781FAA68;
  v9 = v8;
  v22 = a3;
  v19 = v9;
  v20 = &v23;
  v21 = &v27;
  [v7 enumerateChildrenUsingBlock:v18];
  v10 = v24[3];
  v11 = v28;
  v12 = v10 <= 1;
  v13 = v10 - 1;
  if (v12)
  {
    v14 = v28[5];
  }

  else
  {
    v14 = v28[5] + (v13 * 35.0);
    v28[5] = v14;
  }

  v15 = v11[4];

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);

  v16 = v15;
  v17 = v14;
  result.height = v17;
  result.width = v16;
  return result;
}

double __68__SKUIContentUnavailableView_sizeThatFitsWidth_viewElement_context___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) sizeForViewElement:a2 width:*(a1 + 56)];
  ++*(*(*(a1 + 40) + 8) + 24);
  v3 = *(*(a1 + 48) + 8);
  result = v4 + *(v3 + 40);
  *(v3 + 40) = result;
  return result;
}

- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
  button = self->_button;
  self->_button = 0;

  buttonElement = self->_buttonElement;
  self->_buttonElement = 0;

  imageElement = self->_imageElement;
  self->_imageElement = 0;

  imageView = self->_imageView;
  self->_imageView = 0;

  messageView = self->_messageView;
  self->_messageView = 0;

  titleView = self->_titleView;
  self->_titleView = 0;

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __66__SKUIContentUnavailableView_reloadWithViewElement_width_context___block_invoke;
  v18[3] = &unk_2781F95C8;
  v18[4] = self;
  v19 = v8;
  v20 = v9;
  v21 = a4;
  v16 = v9;
  v17 = v8;
  [(SKUIViewReuseView *)self modifyUsingBlock:v18];
}

void __66__SKUIContentUnavailableView_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v25 = a2;
  v3 = [*(a1 + 40) image];
  v4 = *(a1 + 32);
  v5 = *(v4 + 480);
  *(v4 + 480) = v3;

  v6 = *(*(a1 + 32) + 480);
  if (v6)
  {
    v7 = [v25 addImageViewWithElement:v6 context:*(a1 + 48)];
    v8 = *(a1 + 32);
    v9 = *(v8 + 472);
    *(v8 + 472) = v7;
  }

  v10 = [*(a1 + 40) titleLabel];
  if (v10)
  {
    v11 = [v25 addLabelViewWithElement:v10 width:*(a1 + 48) context:*(a1 + 56)];
    v12 = *(a1 + 32);
    v13 = *(v12 + 496);
    *(v12 + 496) = v11;
  }

  v14 = [*(a1 + 40) messageLabel];

  if (v14)
  {
    v15 = [v25 addLabelViewWithElement:v14 width:*(a1 + 48) context:*(a1 + 56)];
    v16 = *(a1 + 32);
    v17 = *(v16 + 488);
    *(v16 + 488) = v15;
  }

  v18 = [*(a1 + 40) button];
  v19 = *(a1 + 32);
  v20 = *(v19 + 432);
  *(v19 + 432) = v18;

  v21 = *(*(a1 + 32) + 432);
  if (v21)
  {
    v22 = [v25 addButtonWithElement:v21 width:*(a1 + 48) context:*(a1 + 56)];
    v23 = *(a1 + 32);
    v24 = *(v23 + 424);
    *(v23 + 424) = v22;

    [*(*(a1 + 32) + 424) addTarget:*(a1 + 32) action:sel__buttonAction_ forControlEvents:64];
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
    [(SKUIContentUnavailableView *)self setNeedsLayout];
  }
}

- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (self->_imageElement && ([v10 requestIdentifierForViewElement:?], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "unsignedIntegerValue"), v14 = objc_msgSend(v9, "requestIdentifier"), v12, v13 == v14))
  {
    [(SKUIImageView *)self->_imageView setImage:v8];
    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)layoutSubviews
{
  v30 = *MEMORY[0x277D85DE8];
  [(SKUIContentUnavailableView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(SKUIViewReuseView *)self allExistingViews];
  if ([v11 count])
  {
    v12 = v8 - self->_contentInset.left - self->_contentInset.right;
    v26 = &v25 + 8;
    v27 = 0x2020000000;
    v28 = 0;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __44__SKUIContentUnavailableView_layoutSubviews__block_invoke;
    v24[3] = &unk_2781FAA90;
    *&v24[6] = floorf(v12);
    v24[7] = v4;
    v24[8] = v6;
    *&v24[9] = v8;
    v25 = v10;
    v24[4] = self;
    v24[5] = &v25 + 8;
    [v11 enumerateObjectsUsingBlock:v24];
    v13 = [v11 firstObject];
    v14 = [v11 lastObject];
    [v13 frame];
    CGRectGetHeight(v31);
    [(SKUIContentUnavailableView *)self _baselineOffsetForView:v13];
    if (v14)
    {
      [v14 frame];
      CGRectGetHeight(v32);
      [(SKUIContentUnavailableView *)self _baselineOffsetForView:v14];
    }

    [v14 frame];
    CGRectGetMaxY(v33);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v15 = v11;
    v16 = [v15 countByEnumeratingWithState:&v20 objects:v29 count:16];
    if (v16)
    {
      v17 = *v21;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v20 + 1) + 8 * i);
          [v19 frame];
          [v19 setFrame:?];
        }

        v16 = [v15 countByEnumeratingWithState:&v20 objects:v29 count:16];
      }

      while (v16);
    }

    _Block_object_dispose(&v25 + 8, 8);
  }
}

void __44__SKUIContentUnavailableView_layoutSubviews__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = a2;
  [v15 frame];
  [v15 sizeThatFits:{*(a1 + 48), 1.79769313e308}];
  v6 = v5;
  v8 = v7;
  *&v5 = (*(a1 + 72) - v5) * 0.5;
  v9 = floorf(*&v5);
  v10 = *(*(*(a1 + 40) + 8) + 24);
  if (a3)
  {
    [*(a1 + 32) _firstBaselineOffsetForView:v15];
    *&v11 = v10 + 35.0 - v11;
    v10 = floorf(*&v11);
  }

  [v15 setFrame:{v9, v10, v6, v8}];
  [*(a1 + 32) _baselineOffsetForView:v15];
  if (v12 <= 0.00000011920929)
  {
    v17.origin.x = v9;
    v17.origin.y = v10;
    v17.size.width = v6;
    v17.size.height = v8;
    MaxY = CGRectGetMaxY(v17);
  }

  else
  {
    v13 = v10 + v12;
    MaxY = floorf(v13);
  }

  *(*(*(a1 + 40) + 8) + 24) = MaxY;
}

- (void)_buttonAction:(id)a3
{
  v9 = SKUICollectionViewCellForView(self);
  v4 = SKUICollectionViewForView(v9);
  v5 = [v4 delegate];
  v6 = objc_opt_respondsToSelector();
  buttonElement = self->_buttonElement;
  if (v6)
  {
    v8 = [v4 indexPathForCell:v9];
    [v5 collectionView:v4 didConfirmButtonElement:buttonElement withClickInfo:0 forItemAtIndexPath:v8];
  }

  else
  {
    [(SKUIButtonViewElement *)buttonElement dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
  }
}

+ (id)_attributedStringWithButton:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 buttonTitleStyle];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [v5 style];
  }

  v10 = v9;

  v11 = SKUIViewElementFontWithStyle(v10);
  if (!v11)
  {
    v11 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
  }

  v12 = [v6 tintColor];
  v13 = SKUIViewElementPlainColorWithStyle(v10, v12);

  v14 = SKUIViewElementAlignmentForStyle(v10);
  if (v14)
  {
    v15 = SKUIViewElementNSTextAlignmentForIKElementAlignment(v14);
  }

  else
  {
    v15 = 1;
  }

  v16 = [v5 buttonText];
  v17 = [v16 attributedStringWithDefaultFont:v11 foregroundColor:v13 textAlignment:v15 style:v10];

  return v17;
}

+ (id)_attributedStringWithMessageLabel:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 style];
  v8 = SKUIViewElementFontWithStyle(v7);
  if (!v8)
  {
    v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  }

  v9 = [v6 tintColor];
  v10 = SKUIViewElementPlainColorWithStyle(v7, v9);

  if (!v10)
  {
    v10 = [MEMORY[0x277D75348] secondaryLabelColor];
  }

  v11 = SKUIViewElementAlignmentForStyle(v7);
  if (v11)
  {
    v12 = SKUIViewElementNSTextAlignmentForIKElementAlignment(v11);
  }

  else
  {
    v12 = 1;
  }

  v13 = [v5 text];
  v14 = [v13 attributedStringWithDefaultFont:v8 foregroundColor:v10 textAlignment:v12 style:v7];

  return v14;
}

+ (id)_attributedStringWithTitleLabel:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 style];
  v8 = SKUIViewElementFontWithStyle(v7);
  if (!v8)
  {
    v8 = [MEMORY[0x277D74300] systemFontOfSize:27.0];
  }

  v9 = [v6 tintColor];
  v10 = SKUIViewElementPlainColorWithStyle(v7, v9);

  if (!v10)
  {
    v10 = [MEMORY[0x277D75348] secondaryLabelColor];
  }

  v11 = SKUIViewElementAlignmentForStyle(v7);
  if (v11)
  {
    v12 = SKUIViewElementNSTextAlignmentForIKElementAlignment(v11);
  }

  else
  {
    v12 = 1;
  }

  v13 = [v5 text];
  v14 = [v13 attributedStringWithDefaultFont:v8 foregroundColor:v10 textAlignment:v12 style:v7];

  return v14;
}

- (double)_baselineOffsetForView:(id)a3
{
  v4 = a3;
  messageView = self->_messageView;
  if (messageView == v4)
  {
    goto LABEL_6;
  }

  messageView = self->_titleView;
  if (messageView == v4)
  {
    goto LABEL_6;
  }

  v6 = 0.0;
  if (self->_button == v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      messageView = self->_button;
LABEL_6:
      [(UIControl *)messageView baselineOffset];
      v6 = v7;
    }
  }

  return v6;
}

- (double)_firstBaselineOffsetForView:(id)a3
{
  v4 = a3;
  messageView = self->_messageView;
  if (messageView == v4)
  {
    goto LABEL_6;
  }

  messageView = self->_titleView;
  if (messageView == v4)
  {
    goto LABEL_6;
  }

  v6 = 0.0;
  if (self->_button == v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      messageView = self->_button;
LABEL_6:
      [(UIControl *)messageView firstBaselineOffset];
      v6 = v7;
    }
  }

  return v6;
}

+ (void)prefetchResourcesForViewElement:reason:context:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUIContentUnavailableView prefetchResourcesForViewElement:reason:context:]";
}

+ (void)preferredSizeForViewElement:context:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUIContentUnavailableView preferredSizeForViewElement:context:]";
}

+ (void)requestLayoutForViewElement:width:context:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUIContentUnavailableView requestLayoutForViewElement:width:context:]";
}

+ (void)sizeThatFitsWidth:viewElement:context:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUIContentUnavailableView sizeThatFitsWidth:viewElement:context:]";
}

@end