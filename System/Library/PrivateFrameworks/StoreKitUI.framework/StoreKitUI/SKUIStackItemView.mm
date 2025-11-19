@interface SKUIStackItemView
+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5;
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5 numberOfLines:(unint64_t *)a6;
+ (id)_attributedStringForLabel:(id)a3 context:(id)a4;
+ (id)_textViewLayoutWithWidth:(double)a3 string:(id)a4;
+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIEdgeInsets)contentInset;
- (unint64_t)numberOfLines;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
@end

@implementation SKUIStackItemView

- (unint64_t)numberOfLines
{
  v2 = [(SKUIStackItemView *)self textView];
  v3 = [v2 layout];
  v4 = [v3 numberOfLines];

  return v4;
}

+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v9)
      {
        [(SKUIStackItemView *)v9 prefetchResourcesForViewElement:v10 reason:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  v17 = [v7 children];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = [v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    v21 = *v25;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v20 |= [v8 prefetchResourcesForViewElement:*(*(&v24 + 1) + 8 * i) reason:a4];
      }

      v19 = [v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v19);
  }

  else
  {
    LOBYTE(v20) = 0;
  }

  return v20 & 1;
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
        [(SKUIStackItemView *)v4 preferredSizeForViewElement:v5 context:v6, v7, v8, v9, v10, v11];
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
  v8 = a5;
  v9 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v10)
      {
        [(SKUIStackItemView *)v10 requestLayoutForViewElement:v11 width:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  v18 = [v8 labelLayoutCache];
  v19 = [v9 textElement];

  if (v19)
  {
    v20 = [a1 _attributedStringForLabel:v19 context:v8];
    [v18 requestLayoutForLabel:v19 attributedString:v20 width:a4];
  }
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v10)
      {
        [(SKUIStackItemView *)v10 sizeThatFitsWidth:v11 viewElement:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  [a1 sizeThatFitsWidth:v8 viewElement:v9 context:0 numberOfLines:a3];
  v19 = v18;
  v21 = v20;

  v22 = v19;
  v23 = v21;
  result.height = v23;
  result.width = v22;
  return result;
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5 numberOfLines:(unint64_t *)a6
{
  v10 = a4;
  v11 = a5;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v12 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v12)
      {
        [(SKUIStackItemView *)v12 sizeThatFitsWidth:v13 viewElement:v14 context:v15 numberOfLines:v16, v17, v18, v19];
      }
    }
  }

  v36 = 0;
  v37 = &v36;
  v38 = 0x3010000000;
  v39 = &unk_215F8ACD7;
  v40 = *MEMORY[0x277CBF3A8];
  v20 = [v10 imageElements];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __73__SKUIStackItemView_sizeThatFitsWidth_viewElement_context_numberOfLines___block_invoke;
  v35[3] = &unk_2782000B8;
  v35[4] = &v36;
  [v20 enumerateObjectsUsingBlock:v35];

  v37[4] = v37[4] + -4.0;
  v21 = [v10 textElement];
  if (v21)
  {
    v22 = v37[4] + 7.0;
    v37[4] = v22;
    v23 = [a1 _attributedStringForLabel:v21 context:v11];
    v24 = [a1 _textViewLayoutWithWidth:v23 string:a3 - v22];

    v25 = v37[4];
    [v24 boundingSize];
    v27 = v37;
    v37[4] = v25 + v26;
    v28 = v27[5];
    [v24 boundingSize];
    if (v28 >= v29)
    {
      v30 = v28;
    }

    else
    {
      v30 = v29;
    }

    v37[5] = v30;
    if (a6)
    {
      *a6 = [v24 numberOfLines];
    }
  }

  v31 = v37[4];
  v32 = v37[5];

  _Block_object_dispose(&v36, 8);
  v33 = v31;
  v34 = v32;
  result.height = v34;
  result.width = v33;
  return result;
}

void __73__SKUIStackItemView_sizeThatFitsWidth_viewElement_context_numberOfLines___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 size];
  *(*(*(a1 + 32) + 8) + 32) = v4 + 4.0;
  v5 = *(*(*(a1 + 32) + 8) + 40);
  [v3 size];
  v7 = v6;

  if (v5 >= v7)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  *(*(*(a1 + 32) + 8) + 40) = v8;
}

- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(SKUIStackItemView *)self imageViewToImageResourceCacheKey];
  [v10 removeAllObjects];

  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __57__SKUIStackItemView_reloadWithViewElement_width_context___block_invoke;
  v16 = &unk_2781F95C8;
  v17 = v8;
  v18 = self;
  v20 = a4;
  v19 = v9;
  v11 = v9;
  v12 = v8;
  [(SKUIViewReuseView *)self modifyUsingBlock:&v13];
  [(SKUIStackItemView *)self setViewElement:v12, v13, v14, v15, v16];
  [(SKUIStackItemView *)self setLastContext:v11];
}

void __57__SKUIStackItemView_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) textElement];
  v5 = [*(a1 + 32) textElement];

  if (v5)
  {
    v6 = [v3 addLabelViewWithElement:v4 width:*(a1 + 48) context:*(a1 + 56)];
    [*(a1 + 40) setTextView:v6];
  }

  v7 = [MEMORY[0x277CBEB18] array];
  v8 = [*(a1 + 32) imageElements];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __57__SKUIStackItemView_reloadWithViewElement_width_context___block_invoke_2;
  v14 = &unk_2782000E0;
  v15 = v3;
  v16 = *(a1 + 48);
  v17 = v7;
  v18 = *(a1 + 40);
  v9 = v7;
  v10 = v3;
  [v8 enumerateObjectsUsingBlock:&v11];

  [*(a1 + 40) setImageViews:{v9, v11, v12, v13, v14}];
}

void __57__SKUIStackItemView_reloadWithViewElement_width_context___block_invoke_2(id *a1, void *a2)
{
  v8 = a2;
  v3 = [a1[4] addImageViewWithElement:? context:?];
  if (v3)
  {
    [a1[6] addObject:v3];
    v4 = [a1[5] imageResourceCacheKeyForViewElement:v8];
    if (v4)
    {
      v5 = [a1[7] imageViewToImageResourceCacheKey];

      if (!v5)
      {
        v6 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:1];
        [a1[7] setImageViewToImageResourceCacheKey:v6];
      }

      v7 = [a1[7] imageViewToImageResourceCacheKey];
      [v7 setObject:v4 forKey:v3];
    }
  }
}

- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [a4 requestIdentifier];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = [(SKUIStackItemView *)self imageViewToImageResourceCacheKey];
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v23 = v8;
    v14 = *v25;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        v17 = [(SKUIStackItemView *)self imageViewToImageResourceCacheKey];
        v18 = [v17 objectForKey:v16];

        v19 = [v9 requestIdentifierForResourceCacheKey:v18];
        v20 = v19;
        if (v19 && [v19 unsignedIntegerValue] == v10)
        {
          v8 = v23;
          [v16 setImage:v23];

          v21 = 1;
          goto LABEL_13;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }

    v21 = 0;
    v8 = v23;
  }

  else
  {
    v21 = 0;
  }

LABEL_13:

  return v21;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(SKUIStackItemView *)self contentInset:a3.width];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3010000000;
  v36 = &unk_215F8ACD7;
  v37 = v5;
  v38 = v11;
  v12 = [(SKUIStackItemView *)self imageViews];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __34__SKUIStackItemView_sizeThatFits___block_invoke;
  v32[3] = &unk_278200108;
  v32[4] = &v33;
  *&v32[5] = width - v6 - v10;
  [v12 enumerateObjectsUsingBlock:v32];

  v40.size.width = *(MEMORY[0x277CBF3A0] + 16);
  v40.size.height = *(MEMORY[0x277CBF3A0] + 24);
  v13 = v34[5];
  v14 = v34[4] + -4.0 + 7.0;
  v40.origin.x = v14;
  v40.origin.y = v13;
  MinX = CGRectGetMinX(v40);
  v16 = objc_opt_class();
  v17 = [(SKUIStackItemView *)self textView];
  v18 = [v17 layout];
  v19 = [v18 attributedString];
  v20 = width - MinX - v10;
  v21 = [v16 _textViewLayoutWithWidth:v19 string:v20];
  v22 = [(SKUIStackItemView *)self textView];
  [v22 setLayout:v21];

  v23 = [(SKUIStackItemView *)self textView];
  [v23 sizeThatFits:{v20, 1.79769313e308}];
  v25 = v24;
  v27 = v26;

  v41.origin.x = v14;
  v41.origin.y = v13;
  v41.size.width = v25;
  v41.size.height = v27;
  MaxX = CGRectGetMaxX(v41);
  v42.origin.x = v14;
  v42.origin.y = v13;
  v42.size.width = v25;
  v42.size.height = v27;
  v29 = v8 + CGRectGetMaxY(v42);
  _Block_object_dispose(&v33, 8);
  v30 = v10 + MaxX;
  v31 = v29;
  result.height = v31;
  result.width = v30;
  return result;
}

CGFloat __34__SKUIStackItemView_sizeThatFits___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  [a2 sizeThatFits:{*(a1 + 40) - v4, 1.79769313e308}];
  v9.size.width = v6;
  v9.size.height = v7;
  v9.origin.x = v4;
  v9.origin.y = v5;
  result = CGRectGetMaxX(v9) + 4.0;
  *(*(*(a1 + 32) + 8) + 32) = result;
  return result;
}

- (void)layoutSubviews
{
  v54.receiver = self;
  v54.super_class = SKUIStackItemView;
  [(SKUIStackItemView *)&v54 layoutSubviews];
  [(SKUIStackItemView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SKUIStackItemView *)self contentInset];
  v12 = v11;
  v14 = v13;
  v44 = v15;
  v17 = v16;
  v55.origin.x = v4;
  v55.origin.y = v6;
  v55.size.width = v8;
  v55.size.height = v10;
  Width = CGRectGetWidth(v55);
  v48 = 0;
  v49 = &v48;
  v50 = 0x3010000000;
  v51 = &unk_215F8ACD7;
  v52 = v14;
  v53 = v12;
  v45 = v12;
  v19 = [(SKUIStackItemView *)self imageViews];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __35__SKUIStackItemView_layoutSubviews__block_invoke;
  v47[3] = &unk_278200108;
  v20 = Width - v14 - v17;
  v47[4] = &v48;
  *&v47[5] = v20;
  [v19 enumerateObjectsUsingBlock:v47];

  v21 = v49[4];
  v22 = v49[5];
  v56.origin.x = v4;
  v56.origin.y = v6;
  v56.size.width = v8;
  v56.size.height = v10;
  Height = CGRectGetHeight(v56);
  v24 = objc_opt_class();
  v25 = v21 + -4.0 + 7.0;
  v26 = v20 - v21;
  v27 = Height - v45 - v44;
  v57.origin.x = v25;
  v57.origin.y = v22;
  v57.size.width = v20 - v21;
  v57.size.height = v27;
  v28 = CGRectGetWidth(v57);
  v29 = [(SKUIStackItemView *)self textView];
  v30 = [v29 layout];
  v31 = [v30 attributedString];
  v32 = [v24 _textViewLayoutWithWidth:v31 string:v28];
  v33 = [(SKUIStackItemView *)self textView];
  [v33 setLayout:v32];

  if ([(SKUIStackItemView *)self numberOfLines]< 2)
  {
    v36 = [(SKUIStackItemView *)self textView];
    v37 = [v36 layout];
    [v37 boundingSize];
    v39 = v38;

    v35 = [(SKUIStackItemView *)self textView];
    v40 = [v35 layout];
    [v40 boundingSize];
    v42 = v41;
    v22 = (v27 - v39) * 0.5;

    v27 = v42;
  }

  else
  {
    v58.origin.x = v21 + -4.0 + 7.0;
    v58.origin.y = v22;
    v58.size.width = v20 - v21;
    v58.size.height = v27;
    MidY = CGRectGetMidY(v58);
    v35 = [(SKUIStackItemView *)self imageViews];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __35__SKUIStackItemView_layoutSubviews__block_invoke_2;
    v46[3] = &__block_descriptor_40_e23_v32__0__UIView_8Q16_B24l;
    *&v46[4] = MidY;
    [v35 enumerateObjectsUsingBlock:v46];
  }

  v43 = [(SKUIStackItemView *)self textView];
  v59.origin.x = v25;
  v59.origin.y = v22;
  v59.size.width = v26;
  v59.size.height = v27;
  v60 = CGRectIntegral(v59);
  [v43 setFrame:{v60.origin.x, v60.origin.y, v60.size.width, v60.size.height}];

  _Block_object_dispose(&v48, 8);
}

CGFloat __35__SKUIStackItemView_layoutSubviews__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v6 = *(a1 + 40) - v4;
  v7 = a2;
  [v7 sizeThatFits:{v6, 1.79769313e308}];
  v9 = v8;
  v11 = v10;
  [v7 setFrame:{v4, v5, v8, v10}];

  v13.origin.x = v4;
  v13.origin.y = v5;
  v13.size.width = v9;
  v13.size.height = v11;
  result = CGRectGetMaxX(v13) + 4.0;
  *(*(*(a1 + 32) + 8) + 32) = result;
  return result;
}

void __35__SKUIStackItemView_layoutSubviews__block_invoke_2(uint64_t a1, void *a2)
{
  v13 = a2;
  [v13 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = *(a1 + 32);
  [v13 frame];
  v12 = v11 - CGRectGetMidY(v15);
  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  v17 = CGRectOffset(v16, 0.0, v12);
  [v13 setFrame:{v17.origin.x, v17.origin.y, v17.size.width, v17.size.height}];
}

+ (id)_attributedStringForLabel:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 style];
  v8 = SKUIViewElementFontWithStyle(v7);
  if (!v8)
  {
    v8 = SKUIFontPreferredFontForTextStyle(5);
  }

  v9 = [v6 tintColor];
  v10 = SKUIViewElementPlainColorWithStyle(v7, v9);

  if (!v10)
  {
    v11 = [v5 labelViewStyle] == 5;
    v10 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:dbl_215F3FDA0[v11]];
  }

  v12 = [v5 text];
  v13 = [v12 attributedStringWithDefaultFont:v8 foregroundColor:v10 style:v7];

  return v13;
}

+ (id)_textViewLayoutWithWidth:(double)a3 string:(id)a4
{
  v5 = [a4 mutableCopy];
  v6 = objc_alloc_init(MEMORY[0x277D74240]);
  [v6 setLineSpacing:-2.0];
  [v5 addAttribute:*MEMORY[0x277D74118] value:v6 range:{0, objc_msgSend(v5, "length")}];
  v7 = [[SKUIAttributedStringLayoutRequest alloc] initWithAttributedString:v5];
  [(SKUIAttributedStringLayoutRequest *)v7 setWidth:a3];
  v8 = [[SKUIAttributedStringLayout alloc] initWithLayoutRequest:v7];

  return v8;
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