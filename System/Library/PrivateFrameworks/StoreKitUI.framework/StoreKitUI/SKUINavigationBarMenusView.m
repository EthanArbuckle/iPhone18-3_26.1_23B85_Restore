@interface SKUINavigationBarMenusView
+ (id)_attributedStringWithMenuItem:(id)a3 context:(id)a4;
+ (void)requestLayoutWithMenus:(id)a3 width:(int64_t)a4 context:(id)a5;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIEdgeInsets)contentInset;
- (void)layoutSubviews;
- (void)reloadWithMenus:(id)a3 width:(int64_t)a4 context:(id)a5;
- (void)setButtonTarget:(id)a3 action:(SEL)a4;
- (void)setContentInset:(UIEdgeInsets)a3;
@end

@implementation SKUINavigationBarMenusView

+ (void)requestLayoutWithMenus:(id)a3 width:(int64_t)a4 context:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    +[SKUINavigationBarMenusView requestLayoutWithMenus:width:context:];
  }

  v10 = [v9 labelLayoutCache];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v18 + 1) + 8 * v15) titleItem];
        v17 = [a1 _attributedStringWithMenuItem:v16 context:v9];
        [v10 requestLayoutForViewElement:v16 attributedString:v17 width:a4];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }
}

- (void)reloadWithMenus:(id)a3 width:(int64_t)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 copy];
  menuViewElements = self->_menuViewElements;
  self->_menuViewElements = v10;

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__SKUINavigationBarMenusView_reloadWithMenus_width_context___block_invoke;
  v14[3] = &unk_2781F95C8;
  v15 = v8;
  v16 = v9;
  v17 = self;
  v18 = a4;
  v12 = v9;
  v13 = v8;
  [(SKUIViewReuseView *)self modifyUsingBlock:v14];
}

void __60__SKUINavigationBarMenusView_reloadWithMenus_width_context___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [*(*(&v13 + 1) + 8 * i) titleItem];
        v9 = [v3 addMenuButtonWithTitleItem:v8 width:*(a1 + 40) context:*(a1 + 56)];
        WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 432));
        if (*(*(a1 + 48) + 424))
        {
          v11 = *(*(a1 + 48) + 424);
        }

        else
        {
          v11 = 0;
        }

        [v9 addTarget:WeakRetained action:v11 forControlEvents:64];
      }

      v5 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

- (void)setButtonTarget:(id)a3 action:(SEL)a4
{
  if (a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = 0;
  }

  self->_buttonAction = v4;
  objc_storeWeak(&self->_buttonTarget, a3);
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
    [(SKUINavigationBarMenusView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v62 = *MEMORY[0x277D85DE8];
  [(SKUINavigationBarMenusView *)self bounds];
  v4 = v3;
  v6 = v5;
  p_contentInset = &self->_contentInset;
  v8 = self->_contentInset.left + self->_contentInset.right;
  v9 = [(SKUIViewReuseView *)self allExistingViews];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v56 objects:v61 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v57;
    v13 = *MEMORY[0x277CBF3A0];
    v14 = *(MEMORY[0x277CBF3A0] + 8);
    v15 = 0.0;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v57 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v56 + 1) + 8 * i);
        [v17 sizeThatFits:{v4, v6}];
        v19 = v18;
        v21 = v20;
        [v17 setFrame:{v13, v14, v18, v20}];
        [v17 setHidden:0];
        if (v15 < v21)
        {
          v15 = v21;
        }

        v8 = v8 + v19;
      }

      v11 = [v9 countByEnumeratingWithState:&v56 objects:v61 count:16];
    }

    while (v11);
  }

  else
  {
    v15 = 0.0;
  }

  v22 = [v9 count];
  if (v22 < 2)
  {
    v26 = 40.0;
  }

  else
  {
    v23 = v22;
    v24 = v22 - 1;
    v25 = (v22 - 1);
    v26 = 40.0;
    v8 = v8 + v25 * 40.0;
    if (v8 > v4)
    {
      v26 = 40.0;
      do
      {
        v26 = v26 + -1.0;
        v8 = v8 - v25;
      }

      while (v26 > 20.0 && v8 > v4);
      if (v8 > v4)
      {
        v28 = [v9 sortedArrayWithOptions:0 usingComparator:&__block_literal_global_20];
        v29 = 1;
        do
        {
          v30 = [v28 objectAtIndex:v29 - 1];
          [v30 frame];
          v32 = v31 * 0.2;
          v33 = floorf(v32);
          [v30 setFrame:?];
          v8 = v8 - v33;

          if (v29 >= v23)
          {
            break;
          }

          ++v29;
        }

        while (v8 > v4);
      }
    }

    while (v8 > v4)
    {
      v34 = [v9 objectAtIndex:v24];
      [v34 setHidden:1];
      [v34 frame];
      v8 = v8 - (v26 + v35);

      if (v24 < 2)
      {
        break;
      }

      --v24;
    }
  }

  left = p_contentInset->left;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v37 = v9;
  v38 = [v37 countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = (v4 - v8) * 0.5;
    v41 = floorf(v40);
    if (left < v41)
    {
      left = v41;
    }

    v42 = *v53;
    do
    {
      for (j = 0; j != v39; ++j)
      {
        if (*v53 != v42)
        {
          objc_enumerationMutation(v37);
        }

        v44 = *(*(&v52 + 1) + 8 * j);
        [v44 frame];
        v47 = v46;
        v48 = (v15 - v46) * 0.5;
        v49 = floorf(v48);
        v50 = p_contentInset->top + v49;
        if (v45 >= v4)
        {
          v51 = v4;
        }

        else
        {
          v51 = v45;
        }

        [v44 setFrame:{left, p_contentInset->top + v49, v51}];
        v63.origin.x = left;
        v63.origin.y = v50;
        v63.size.width = v51;
        v63.size.height = v47;
        left = v26 + CGRectGetMaxX(v63);
      }

      v39 = [v37 countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v39);
  }
}

uint64_t __44__SKUINavigationBarMenusView_layoutSubviews__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 frame];
  v6 = v5;
  [v4 frame];
  v8 = v7;

  if (v6 <= v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  if (v6 < v8)
  {
    return 1;
  }

  else
  {
    return v9;
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v26 = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CBF3A8];
  v7 = *(MEMORY[0x277CBF3A8] + 8);
  v8 = [(SKUIViewReuseView *)self allExistingViews];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      v12 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v21 + 1) + 8 * v12) sizeThatFits:{width, height}];
        if (v7 < v14)
        {
          v7 = v14;
        }

        v6 = v6 + v13;
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  if ([v8 count] >= 2)
  {
    v6 = v6 + (([v8 count] - 1) * 40.0);
  }

  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;

  v19 = v7 + top + bottom;
  v20 = v6 + left + right;
  result.height = v19;
  result.width = v20;
  return result;
}

+ (id)_attributedStringWithMenuItem:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 style];
  v8 = SKUIViewElementFontWithStyle(v7);
  if (!v8)
  {
    v8 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
  }

  v9 = [v6 tintColor];
  v10 = SKUIViewElementPlainColorWithStyle(v7, v9);

  if (!v10)
  {
    v10 = [MEMORY[0x277D75348] blackColor];
  }

  v11 = [v5 itemText];
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

+ (void)requestLayoutWithMenus:width:context:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUINavigationBarMenusView requestLayoutWithMenus:width:context:]";
}

@end