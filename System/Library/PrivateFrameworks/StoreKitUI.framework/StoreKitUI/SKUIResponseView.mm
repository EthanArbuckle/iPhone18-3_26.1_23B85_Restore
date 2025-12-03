@interface SKUIResponseView
+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context;
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
+ (id)_attributedStringForSubtitleLabel:(id)label context:(id)context;
+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SKUIResponseView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)contentInset;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context;
@end

@implementation SKUIResponseView

- (SKUIResponseView)initWithFrame:(CGRect)frame
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
        [(SKUIResponseView *)v8 initWithFrame:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v23.receiver = self;
  v23.super_class = SKUIResponseView;
  height = [(SKUIViewReuseView *)&v23 initWithFrame:x, y, width, height];
  if (height)
  {
    v17 = MEMORY[0x277D755B8];
    v18 = SKUIBundle();
    v19 = [v17 imageNamed:@"Reply" inBundle:v18];

    v20 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v19];
    replyImageView = height->_replyImageView;
    height->_replyImageView = v20;

    [(SKUIResponseView *)height addSubview:height->_replyImageView];
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
        [(SKUIResponseView *)v5 prefetchResourcesForViewElement:v6 reason:v7 context:v8, v9, v10, v11, v12];
      }
    }
  }

  return 0;
}

+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUIResponseView *)v8 preferredSizeForViewElement:v9 context:v10, v11, v12, v13, v14, v15];
      }
    }
  }

  [contextCopy defaultItemWidthForViewElement:elementCopy];
  [self sizeThatFitsWidth:elementCopy viewElement:contextCopy context:?];
  v17 = v16;
  v19 = v18;

  v20 = v17;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v10)
      {
        [(SKUIResponseView *)v10 requestLayoutForViewElement:v11 width:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __62__SKUIResponseView_requestLayoutForViewElement_width_context___block_invoke;
  v19[3] = &unk_2781FF580;
  widthCopy = width;
  v20 = contextCopy;
  selfCopy = self;
  v18 = contextCopy;
  [elementCopy enumerateChildrenUsingBlock:v19];
}

void __62__SKUIResponseView_requestLayoutForViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 elementType];
  if (v3 != 138)
  {
    v4 = v3 == 105;
    v5 = v10;
    if (!v4)
    {
      goto LABEL_11;
    }

    [SKUIReviewListTitleView requestLayoutForViewElement:v10 width:*(a1 + 32) context:*(a1 + 40)];
LABEL_10:
    v5 = v10;
    goto LABEL_11;
  }

  v6 = [v10 labelViewStyle];
  if (v6 == 4)
  {
    v8 = [*(a1 + 48) _attributedStringForSubtitleLabel:v10 context:*(a1 + 32)];
    v9 = [*(a1 + 32) labelLayoutCache];
    [v9 requestLayoutForLabel:v10 attributedString:v8 width:(*(a1 + 40) + -17.5)];

    goto LABEL_10;
  }

  v4 = v6 == 1;
  v5 = v10;
  if (v4)
  {
    v7 = [*(a1 + 32) editorialLayoutForLabelElement:v10 width:*(a1 + 40) + -17.5];
    [v7 enqueueLayoutRequests];

    goto LABEL_10;
  }

LABEL_11:
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v9)
      {
        [(SKUIResponseView *)v9 sizeThatFitsWidth:v10 viewElement:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x3010000000;
  v33 = &unk_215F8ACD7;
  v34 = *MEMORY[0x277CBF3A8];
  *&v34 = width;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v29[3] = 0;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v28[3] = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __58__SKUIResponseView_sizeThatFitsWidth_viewElement_context___block_invoke;
  v22[3] = &unk_2781FD320;
  widthCopy = width;
  v17 = contextCopy;
  v23 = v17;
  v24 = &v30;
  v25 = v29;
  v26 = v28;
  [elementCopy enumerateChildrenUsingBlock:v22];
  v18 = v31[4];
  v19 = v31[5];

  _Block_object_dispose(v28, 8);
  _Block_object_dispose(v29, 8);
  _Block_object_dispose(&v30, 8);

  v20 = v18;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

void __58__SKUIResponseView_sizeThatFitsWidth_viewElement_context___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  if ([v10 elementType] == 105)
  {
    [SKUIReviewListTitleView sizeThatFitsWidth:v10 viewElement:*(a1 + 32) context:*(a1 + 64)];
    v3 = v10;
    *(*(*(a1 + 40) + 8) + 40) = v4 + 3.0 + *(*(*(a1 + 40) + 8) + 40);
  }

  else
  {
    [*(a1 + 32) sizeForViewElement:v10 width:*(a1 + 64) + -17.5];
    *(*(*(a1 + 40) + 8) + 40) = v5 + *(*(*(a1 + 40) + 8) + 40);
    v6 = [*(a1 + 32) textPropertiesForViewElement:v10 width:*(a1 + 64) + -17.5];
    v7 = v6;
    if (*(*(*(a1 + 48) + 8) + 24) >= 1)
    {
      [v6 desiredOffsetTop];
      *&v8 = v8 - *(*(*(a1 + 56) + 8) + 24);
      *(*(*(a1 + 40) + 8) + 40) = *(*(*(a1 + 40) + 8) + 40) + fmax(roundf(*&v8), 0.0);
    }

    [v7 baselineOffsetFromBottom];
    *(*(*(a1 + 56) + 8) + 24) = v9;

    v3 = v10;
  }

  ++*(*(*(a1 + 48) + 8) + 24);
}

- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__SKUIResponseView_reloadWithViewElement_width_context___block_invoke;
  v12[3] = &unk_2781F95C8;
  v12[4] = self;
  v13 = elementCopy;
  widthCopy = width;
  v14 = contextCopy;
  v10 = contextCopy;
  v11 = elementCopy;
  [(SKUIViewReuseView *)self modifyUsingBlock:v12];
}

void __56__SKUIResponseView_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 allViewTextProperties];
  [*(a1 + 32) setAllViewTextProperties:v4];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__SKUIResponseView_reloadWithViewElement_width_context___block_invoke_2;
  v9[3] = &unk_2781FC898;
  v10 = v3;
  v13 = *(a1 + 56);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 32);
  v11 = v6;
  v12 = v7;
  v8 = v3;
  [v5 enumerateChildrenUsingBlock:v9];
}

void __56__SKUIResponseView_reloadWithViewElement_width_context___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 elementType];
  if (v3 != 138)
  {
    if (v3 != 105)
    {
      goto LABEL_9;
    }

    v4 = [*(a1 + 32) addReviewListTitleViewWithViewElement:v7 width:*(a1 + 40) context:*(a1 + 56)];
    if (!v4)
    {
      goto LABEL_9;
    }

LABEL_8:
    v6 = [*(a1 + 40) textPropertiesForViewElement:v7 width:*(a1 + 56) + -17.5];
    [*(a1 + 32) setTextProperties:v6 forView:v4];

    goto LABEL_9;
  }

  v5 = [v7 labelViewStyle];
  if (v5 == 4)
  {
    v4 = [*(a1 + 32) addLabelViewWithElement:v7 width:*(a1 + 40) context:*(a1 + 56) + -17.5];
    [*(a1 + 48) setSubtitleView:v4];
    if (!v4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v5 == 1)
  {
    v4 = [*(a1 + 32) addTextViewWithElement:v7 width:*(a1 + 40) context:*(a1 + 56) + -17.5];
    [*(a1 + 48) setDescriptionView:v4];
    if (v4)
    {
      goto LABEL_8;
    }
  }

LABEL_9:
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(SKUIResponseView *)self contentInset:fits.width];
  v6 = v5;
  v9 = width - (v7 + 17.5) - v8;
  allExistingViews = [(SKUIViewReuseView *)self allExistingViews];
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v19[3] = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = v6;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __33__SKUIResponseView_sizeThatFits___block_invoke;
  v14[3] = &unk_2782006D8;
  v14[4] = self;
  v14[5] = &v15;
  v14[6] = v19;
  *&v14[7] = v9;
  [allExistingViews enumerateObjectsUsingBlock:v14];
  v11 = v16[3];
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(v19, 8);

  v12 = width;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

void __33__SKUIResponseView_sizeThatFits___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = a2;
  v5 = [*(a1 + 32) allViewTextProperties];
  v6 = [v5 objectForKey:v20];

  v7 = *(*(*(a1 + 40) + 8) + 24);
  if (a3)
  {
    [v6 desiredOffsetTop];
    *&v8 = v8 - *(*(*(a1 + 48) + 8) + 24);
    v7 = v7 + fmax(roundf(*&v8), 0.0);
  }

  [v20 sizeThatFits:{*(a1 + 56), 1.79769313e308}];
  v11 = v10;
  if (v9 >= *(a1 + 56))
  {
    v12 = *(a1 + 56);
  }

  else
  {
    v12 = v9;
  }

  v13 = 0;
  v14 = v7;
  v22 = CGRectIntegral(*(&v11 - 3));
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;
  [v6 baselineOffsetFromBottom];
  *(*(*(a1 + 48) + 8) + 24) = v19;
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  *(*(*(a1 + 40) + 8) + 24) = CGRectGetMaxY(v23);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) + 3.0;
  }
}

- (void)layoutSubviews
{
  v29.receiver = self;
  v29.super_class = SKUIResponseView;
  [(SKUIResponseView *)&v29 layoutSubviews];
  v3 = storeShouldReverseLayoutDirection() ^ 1;
  [(SKUIResponseView *)self bounds];
  v24 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SKUIResponseView *)self contentInset];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17 + 17.5;
  v19 = v8 - (v17 + 17.5) - v15;
  allExistingViews = [(SKUIViewReuseView *)self allExistingViews];
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v28[3] = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  *&v27[3] = v12;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __34__SKUIResponseView_layoutSubviews__block_invoke;
  v25[3] = &unk_2781FD348;
  v25[4] = self;
  v25[5] = v27;
  v25[6] = v28;
  v26 = v3;
  *&v25[7] = v19;
  *&v25[8] = v12;
  *&v25[9] = v18;
  v25[10] = v14;
  *&v25[11] = v16;
  v25[12] = v24;
  v25[13] = v6;
  *&v25[14] = v8;
  v25[15] = v10;
  [allExistingViews enumerateObjectsUsingBlock:v25];
  replyImageView = [(SKUIResponseView *)self replyImageView];
  [replyImageView sizeThatFits:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  [replyImageView setFrame:{0.0, v12, v22, v23}];

  _Block_object_dispose(v27, 8);
  _Block_object_dispose(v28, 8);
}

void __34__SKUIResponseView_layoutSubviews__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v29 = a2;
  v5 = [*(a1 + 32) allViewTextProperties];
  v6 = [v5 objectForKey:v29];

  v7 = *(*(*(a1 + 40) + 8) + 24);
  if (a3)
  {
    [v6 desiredOffsetTop];
    *&v8 = v8 - *(*(*(a1 + 48) + 8) + 24);
    v7 = v7 + fmax(roundf(*&v8), 0.0);
  }

  v9 = [*(a1 + 32) subtitleView];

  if (v9 == v29)
  {
    v7 = v7 + -2.0;
    v14 = [*(a1 + 32) subtitleView];
    v15 = [v14 layout];
    [v15 boundingSize];
    v11 = v16;
    v18 = v17;

    v13 = v18 + 2.0;
  }

  else
  {
    [v29 sizeThatFits:{*(a1 + 56), 1.79769313e308}];
    v11 = v10;
    v13 = v12;
  }

  if (v11 >= *(a1 + 56))
  {
    v11 = *(a1 + 56);
  }

  if (*(a1 + 128) == 1)
  {
    v19 = *(a1 + 72);
  }

  else
  {
    Width = CGRectGetWidth(*(a1 + 96));
    v31.origin.x = 0.0;
    v31.origin.y = v7;
    v31.size.width = v11;
    v31.size.height = v13;
    v19 = Width - CGRectGetWidth(v31) - *(a1 + 72);
  }

  v21 = v7;
  v22 = v11;
  v23 = v13;
  v32 = CGRectIntegral(*&v19);
  x = v32.origin.x;
  y = v32.origin.y;
  v26 = v32.size.width;
  height = v32.size.height;
  [v29 setFrame:?];
  [v6 baselineOffsetFromBottom];
  *(*(*(a1 + 48) + 8) + 24) = v28;
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = v26;
  v33.size.height = height;
  *(*(*(a1 + 40) + 8) + 24) = CGRectGetMaxY(v33);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) + 3.0;
  }
}

+ (id)_attributedStringForSubtitleLabel:(id)label context:(id)context
{
  labelCopy = label;
  contextCopy = context;
  style = [labelCopy style];
  v8 = SKUIViewElementFontWithStyle(style);
  if (!v8)
  {
    v8 = SKUIFontPreferredFontForTextStyle(21);
  }

  tintColor = [contextCopy tintColor];
  v10 = SKUIViewElementPlainColorWithStyle(style, tintColor);

  if (!v10)
  {
    v10 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.3];
  }

  text = [labelCopy text];
  v12 = [text attributedStringWithDefaultFont:v8 foregroundColor:v10 style:style];

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