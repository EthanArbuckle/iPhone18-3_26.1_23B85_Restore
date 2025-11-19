@interface SKUIFilterBarView
+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5;
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
+ (id)_attributedStringForButton:(id)a3 context:(id)a4;
+ (id)_attributedStringForButtonText:(id)a3 style:(id)a4 context:(id)a5;
+ (id)_attributedStringForLabel:(id)a3 context:(id)a4;
+ (id)_attributedStringForMenuItem:(id)a3 context:(id)a4;
+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SKUIFilterBarView)initWithFrame:(CGRect)a3;
- (void)_buttonAction:(id)a3;
- (void)_cancelConfirmationAction:(id)a3;
- (void)_destroyMenuPopover;
- (void)_imageTapAction:(id)a3;
- (void)_menuButtonAction:(id)a3;
- (void)_showConfirmationAction:(id)a3;
- (void)dealloc;
- (void)itemOfferButtonWillAnimateTransition:(id)a3;
- (void)layoutSubviews;
- (void)menuPopover:(id)a3 didSelectMenuItemAtIndex:(int64_t)a4;
- (void)menuPopover:(id)a3 willRepositionToRect:(CGRect *)a4 inView:(id *)a5;
- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (void)setContentInset:(UIEdgeInsets)a3;
@end

@implementation SKUIFilterBarView

- (SKUIFilterBarView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIFilterBarView initWithFrame:];
  }

  v18.receiver = self;
  v18.super_class = SKUIFilterBarView;
  v8 = [(SKUIViewReuseView *)&v18 initWithFrame:x, y, width, height];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    centerElementViews = v8->_centerElementViews;
    v8->_centerElementViews = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    leftElementViews = v8->_leftElementViews;
    v8->_leftElementViews = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    rightElementViews = v8->_rightElementViews;
    v8->_rightElementViews = v13;

    v15 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
    viewElementViews = v8->_viewElementViews;
    v8->_viewElementViews = v15;
  }

  return v8;
}

- (void)dealloc
{
  [(SKUIMenuPopoverController *)self->_popoverController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SKUIFilterBarView;
  [(SKUIViewReuseView *)&v3 dealloc];
}

+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5
{
  v7 = a3;
  v8 = a5;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__SKUIFilterBarView_prefetchResourcesForViewElement_reason_context___block_invoke;
  v11[3] = &unk_2781F95A0;
  v9 = v8;
  v13 = &v15;
  v14 = a4;
  v12 = v9;
  [v7 enumerateChildrenUsingBlock:v11];
  LOBYTE(a4) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return a4;
}

uint64_t __68__SKUIFilterBarView_prefetchResourcesForViewElement_reason_context___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) prefetchResourcesForViewElement:a2 reason:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = (*(*(*(a1 + 40) + 8) + 24) | result) & 1;
  return result;
}

+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4
{
  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v5;
  result.width = v4;
  return result;
}

+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [v8 labelLayoutCache];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__SKUIFilterBarView_requestLayoutForViewElement_width_context___block_invoke;
  v13[3] = &unk_2781FAEB8;
  v16 = a4;
  v17 = a1;
  v14 = v10;
  v15 = v8;
  v11 = v8;
  v12 = v10;
  [v9 enumerateChildrenUsingBlock:v13];
}

uint64_t __63__SKUIFilterBarView_requestLayoutForViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 elementType];
  if (v3 <= 68)
  {
    if (v3 == 8)
    {
      v3 = [*(a1 + 32) requestLayoutForBadge:v8 width:*(a1 + 48)];
      goto LABEL_12;
    }

    v4 = v8;
    if (v3 != 12)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (v3 == 69)
  {
    v5 = [v8 titleItem];
    v6 = [*(a1 + 56) _attributedStringForMenuItem:v5 context:*(a1 + 40)];
    [*(a1 + 32) requestLayoutForViewElement:v5 attributedString:v6 width:*(a1 + 48)];

    goto LABEL_11;
  }

  v4 = v8;
  if (v3 == 138)
  {
    v5 = [*(a1 + 56) _attributedStringForLabel:v8 context:*(a1 + 40)];
    [*(a1 + 32) requestLayoutForLabel:v8 attributedString:v5 width:*(a1 + 48)];
    goto LABEL_11;
  }

  if (v3 == 141)
  {
LABEL_8:
    v5 = [*(a1 + 56) _attributedStringForButton:v8 context:*(a1 + 40)];
    [*(a1 + 32) requestLayoutForButton:v8 attributedString:v5 width:*(a1 + 48)];
LABEL_11:

LABEL_12:
    v4 = v8;
  }

LABEL_13:

  return MEMORY[0x2821F96F8](v3, v4);
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  v7 = a4;
  v8 = a5;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3010000000;
  v21 = &unk_215F8ACD7;
  v22 = a3;
  v23 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59__SKUIFilterBarView_sizeThatFitsWidth_viewElement_context___block_invoke;
  v14[3] = &unk_2781F95A0;
  v9 = v8;
  v17 = a3;
  v15 = v9;
  v16 = &v18;
  [v7 enumerateChildrenUsingBlock:v14];
  v10 = v19[4];
  if (v19[5] >= 29.0)
  {
    v11 = v19[5];
  }

  else
  {
    v11 = 29.0;
  }

  v19[5] = v11;

  _Block_object_dispose(&v18, 8);
  v12 = v10;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

uint64_t __59__SKUIFilterBarView_sizeThatFitsWidth_viewElement_context___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) sizeForViewElement:a2 width:*(a1 + 48)];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  if (v6 < v4)
  {
    v6 = v4;
  }

  *(v5 + 40) = v6;
  return result;
}

- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
  [(NSMutableArray *)self->_centerElementViews removeAllObjects];
  [(NSMutableArray *)self->_leftElementViews removeAllObjects];
  [(NSMutableArray *)self->_rightElementViews removeAllObjects];
  [(NSMapTable *)self->_viewElementViews removeAllObjects];
  bottomDividerView = self->_bottomDividerView;
  self->_bottomDividerView = 0;

  elementControllers = self->_elementControllers;
  self->_elementControllers = 0;

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__SKUIFilterBarView_reloadWithViewElement_width_context___block_invoke;
  v14[3] = &unk_2781F95C8;
  v14[4] = self;
  v15 = v8;
  v17 = a4;
  v16 = v9;
  v12 = v9;
  v13 = v8;
  [(SKUIViewReuseView *)self modifyUsingBlock:v14];
}

void __57__SKUIFilterBarView_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v41[3] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v41[0] = *(*(a1 + 32) + 488);
  v41[1] = *(*(a1 + 32) + 432);
  v4 = 0;
  v41[2] = *(*(a1 + 32) + 504);
  do
  {
    v5 = [*(a1 + 40) childViewElementsForAlignment:qword_215F3EF88[v4]];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v5;
    v6 = [v5 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (!v6)
    {
      goto LABEL_44;
    }

    v7 = v6;
    v8 = *v37;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v36 + 1) + 8 * i);
        v11 = [v10 elementType];
        if (v11 <= 68)
        {
          if (v11 > 12)
          {
            if (v11 == 13)
            {
              goto LABEL_29;
            }

            if (v11 != 49)
            {
              if (v11 != 50)
              {
                continue;
              }

              goto LABEL_27;
            }

            v13 = [v3 addImageViewWithElement:v10 context:*(a1 + 48)];
            v23 = [v13 tapRecognizer];
            [(SKUISearchBarController *)v23 addTarget:*(a1 + 32) action:sel__imageTapAction_];
            goto LABEL_37;
          }

          if (v11 != 8)
          {
            if (v11 != 12)
            {
              continue;
            }

LABEL_27:
            v13 = [v3 addButtonWithElement:v10 width:*(a1 + 48) context:*(a1 + 56)];
            [v13 removeTarget:*(a1 + 32) action:0 forControlEvents:0xFFFFFFFFLL];
            [v13 addTarget:*(a1 + 32) action:sel__buttonAction_ forControlEvents:64];
            if (v13)
            {
              goto LABEL_41;
            }

            continue;
          }

          v21 = [v3 addBadgeViewWithElement:v10 width:*(a1 + 48) context:*(a1 + 56)];
LABEL_40:
          v13 = v21;
          if (!v21)
          {
            continue;
          }

LABEL_41:
          [v41[v4] addObject:v13];
          [*(*(a1 + 32) + 512) setObject:v10 forKey:v13];

          continue;
        }

        if (v11 > 137)
        {
          switch(v11)
          {
            case 138:
              v21 = [v3 addLabelViewWithElement:v10 width:*(a1 + 48) context:*(a1 + 56)];
              break;
            case 141:
LABEL_29:
              v13 = [v3 addButtonWithElement:v10 width:*(a1 + 48) context:*(a1 + 56)];
              [v13 addTarget:*(a1 + 32) action:sel__buttonAction_ forControlEvents:0x20000];
              [v13 addTarget:*(a1 + 32) action:sel__cancelConfirmationAction_ forControlEvents:0x10000];
              [v13 addTarget:*(a1 + 32) action:sel__showConfirmationAction_ forControlEvents:0x40000];
              LODWORD(v22) = -0.5;
              [v13 setCharge:v22];
              [v13 setItemOfferDelegate:*(a1 + 32)];
              if (v13)
              {
                goto LABEL_41;
              }

              continue;
            case 152:
              v21 = [v3 addImageViewWithVideoElement:v10 context:*(a1 + 48)];
              break;
            default:
              continue;
          }

          goto LABEL_40;
        }

        switch(v11)
        {
          case 'E':
            v23 = [v10 titleItem];
            v13 = [v3 addMenuButtonWithTitleItem:v23 width:*(a1 + 48) context:*(a1 + 56)];
            [v13 removeTarget:*(a1 + 32) action:0 forControlEvents:0xFFFFFFFFLL];
            [v13 addTarget:*(a1 + 32) action:sel__menuButtonAction_ forControlEvents:64];
            goto LABEL_37;
          case 'j':
            v23 = [[SKUISearchBarController alloc] initWithSearchBarViewElement:v10];
            v24 = [*(a1 + 48) clientContext];
            [(SKUISearchBarController *)v23 setClientContext:v24];

            v25 = [*(a1 + 48) parentViewController];
            [(SKUISearchBarController *)v23 setParentViewController:v25];

            v26 = *(*(a1 + 32) + 472);
            if (!v26)
            {
              v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
              v28 = *(a1 + 32);
              v29 = *(v28 + 472);
              *(v28 + 472) = v27;

              v26 = *(*(a1 + 32) + 472);
            }

            [v26 addObject:v23];
            v13 = [(SKUISearchBarController *)v23 searchBar];
            [v3 addView:v13];
LABEL_37:

            if (v13)
            {
              goto LABEL_41;
            }

            continue;
          case 'm':
            v12 = v4;
            v13 = [v3 addReusableViewWithReuseIdentifier:0x2828069E8];
            v14 = [[SKUISegmentedControlViewElementController alloc] initWithViewElement:v10 segmentedControl:v13];
            v15 = [*(a1 + 48) clientContext];
            [(SKUISegmentedControlViewElementController *)v14 setClientContext:v15];

            v16 = [*(a1 + 48) parentViewController];
            [(SKUISegmentedControlViewElementController *)v14 setParentViewController:v16];

            v17 = *(*(a1 + 32) + 472);
            if (!v17)
            {
              v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
              v19 = *(a1 + 32);
              v20 = *(v19 + 472);
              *(v19 + 472) = v18;

              v17 = *(*(a1 + 32) + 472);
            }

            [v17 addObject:v14];

            v4 = v12;
            if (v13)
            {
              goto LABEL_41;
            }

            break;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v7);
LABEL_44:

    ++v4;
  }

  while (v4 != 3);
  v30 = [*(a1 + 40) bottomDivider];
  if (v30)
  {
    v31 = [v3 addDividerWithElement:v30 context:*(a1 + 48)];
    v32 = *(a1 + 32);
    v33 = *(v32 + 424);
    *(v32 + 424) = v31;

    [*(*(a1 + 32) + 424) setDividerOrientation:0];
    [*(*(a1 + 32) + 424) setDividerSize:0.0];
  }

  for (j = 2; j != -1; --j)
  {
  }
}

- (void)setContentInset:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_contentInset.top), vceqq_f64(v4, *&self->_contentInset.bottom)))) & 1) == 0)
  {
    self->_contentInset = a3;
    [(SKUIFilterBarView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v74[3] = *MEMORY[0x277D85DE8];
  [(SKUIFilterBarView *)self bounds];
  v4 = v3;
  v6 = v5;
  v74[0] = self->_leftElementViews;
  v74[1] = self->_centerElementViews;
  v54 = self;
  v7 = 0;
  v8 = 0;
  v74[2] = self->_rightElementViews;
  v71 = 0.0;
  v72 = 0.0;
  v73 = 0.0;
  v9 = 0.0;
  do
  {
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v10 = v74[v8];
    v11 = [v10 countByEnumeratingWithState:&v65 objects:v70 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v66;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v66 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v65 + 1) + 8 * i);
          [v15 frame];
          v17 = v16;
          v19 = v18;
          [v15 sizeThatFits:{v4, v6}];
          v21 = v20;
          [v15 setFrame:{v17, v19, v20, v22}];
          *(&v71 + v8) = v21 + *(&v71 + v8);
        }

        v12 = [v10 countByEnumeratingWithState:&v65 objects:v70 count:16];
      }

      while (v12);
    }

    v23 = [v10 count];
    if (v23 > 0)
    {
      ++v7;
    }

    if (v23 <= 1)
    {
      v24 = *(&v71 + v8);
    }

    else
    {
      v24 = *(&v71 + v8) + ((v23 - 1) * 9.0);
      *(&v71 + v8) = v24;
    }

    v9 = v9 + v24;
    ++v8;
  }

  while (v8 != 3);
  if (v7 > 1)
  {
    v9 = v9 + ((v7 - 1) * 9.0);
  }

  right = v54->_contentInset.right;
  for (j = v4 - v54->_contentInset.left - right; v9 > j; v9 = v9 + -5.0)
  {
    v27 = 0;
    v28 = 0.0;
    v29 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      if (*(&v71 + v27) > v28)
      {
        v28 = *(&v71 + v27);
        v29 = v27;
      }

      ++v27;
    }

    while (v27 != 3);
    *(&v71 + v29) = *(&v71 + v29) + -5.0;
  }

  v30 = 0;
  v59 = v73;
  v53 = v4;
  v31 = (v4 - v72) * 0.5;
  v57 = floorf(v31);
  v58 = v71;
  v60 = v4 - right - v73;
  v55 = v60 - v72 + -9.0;
  v56 = v60 - v72;
  do
  {
    left = v60;
    if (v30 != 2)
    {
      if (v30 == 1)
      {
        v33 = v58 + v54->_contentInset.left;
        if (v58 > 0.00000011920929)
        {
          v33 = v33 + 9.0;
        }

        if (v33 < v57)
        {
          v33 = v57;
        }

        if (v59 <= 0.00000011920929)
        {
          v34 = v56;
        }

        else
        {
          v34 = v55;
        }

        if (v33 >= v34)
        {
          left = v34;
        }

        else
        {
          left = v33;
        }
      }

      else
      {
        left = v54->_contentInset.left;
      }
    }

    v35 = *(&v71 + v30);
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v36 = v74[v30];
    v37 = [v36 countByEnumeratingWithState:&v61 objects:v69 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = left + v35;
      v40 = *v62;
      do
      {
        for (k = 0; k != v38; ++k)
        {
          if (*v62 != v40)
          {
            objc_enumerationMutation(v36);
          }

          v42 = *(*(&v61 + 1) + 8 * k);
          [v42 frame];
          v45 = v44;
          v46 = (v6 - v44) * 0.5;
          v47 = floorf(v46);
          if (v43 >= v39 - left)
          {
            v48 = v39 - left;
          }

          else
          {
            v48 = v43;
          }

          [v42 setFrame:{left, v47, v48}];
          [v42 setHidden:left > v39];
          v75.origin.x = left;
          v75.origin.y = v47;
          v75.size.width = v48;
          v75.size.height = v45;
          left = CGRectGetMaxX(v75) + 9.0;
        }

        v38 = [v36 countByEnumeratingWithState:&v61 objects:v69 count:16];
      }

      while (v38);
    }

    ++v30;
  }

  while (v30 != 3);
  if (v54->_bottomDividerView)
  {
    v49 = [MEMORY[0x277D759A0] mainScreen];
    [v49 scale];
    v51 = 1.0 / v50;

    [(SKUIDividerView *)v54->_bottomDividerView setFrame:0.0, v6 - v51, v53, v51];
  }

  for (m = 2; m != -1; --m)
  {
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_viewElementViews;
  v5 = [(NSMapTable *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    v8 = 29.0;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v13 + 1) + 8 * i) sizeThatFits:{width, v8, v13}];
        if (v8 < v10)
        {
          v8 = v10;
        }
      }

      v6 = [(NSMapTable *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 29.0;
  }

  v11 = width;
  v12 = v8;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)itemOfferButtonWillAnimateTransition:(id)a3
{
  v15 = a3;
  [v15 frame];
  x = v17.origin.x;
  y = v17.origin.y;
  width = v17.size.width;
  MaxX = CGRectGetMaxX(v17);
  [v15 sizeThatFits:{*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)}];
  v9 = v8;
  v11 = v10;
  if ([(NSMutableArray *)self->_centerElementViews containsObject:v15])
  {
    v12 = (v9 - width) * 0.5;
    v13 = x - floorf(v12);
  }

  else
  {
    v14 = [(NSMutableArray *)self->_rightElementViews containsObject:v15];
    v13 = MaxX - v9;
    if (!v14)
    {
      v13 = x;
    }
  }

  [v15 setFrame:{v13, y, v9, v11}];
}

- (void)menuPopover:(id)a3 didSelectMenuItemAtIndex:(int64_t)a4
{
  if (self->_focusedMenuButton)
  {
    v8 = [(NSMapTable *)self->_viewElementViews objectForKey:?];
    objc_opt_class();
    v6 = (objc_opt_isKindOfClass() & 1) == 0;
    v7 = v8;
    if (v6)
    {
      v7 = 0;
    }

    [v7 dispatchEventOfType:2 forItemAtIndex:a4];
    [(SKUIFilterBarView *)self _destroyMenuPopover];
  }
}

- (void)menuPopover:(id)a3 willRepositionToRect:(CGRect *)a4 inView:(id *)a5
{
  [(UIControl *)self->_focusedMenuButton frame:a3];
  a4->origin.x = v6;
  a4->origin.y = v7;
  a4->size.width = v8;
  a4->size.height = v9;
}

- (void)_buttonAction:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SKUICollectionViewCellForView(self);
  v6 = SKUICollectionViewForView(self);
  v7 = [v6 delegate];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = self->_viewElementViews;
  v9 = [(NSMapTable *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if (*(*(&v15 + 1) + 8 * i) == v4)
        {
          v13 = [(NSMapTable *)self->_viewElementViews objectForKey:v15];
          if (objc_opt_respondsToSelector())
          {
            v14 = [v6 indexPathForCell:v5];
            [v7 collectionView:v6 didConfirmButtonElement:v13 withClickInfo:0 forItemAtIndexPath:v14];
          }

          else
          {
            [v13 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
          }

          goto LABEL_14;
        }
      }

      v10 = [(NSMapTable *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
}

- (void)_cancelConfirmationAction:(id)a3
{
  v4 = a3;
  [(SKUIFilterBarView *)self bringSubviewToFront:v4];
  [v4 setShowingConfirmation:0 animated:1];
}

- (void)_imageTapAction:(id)a3
{
  viewElementViews = self->_viewElementViews;
  v4 = [a3 view];
  v5 = [(NSMapTable *)viewElementViews objectForKey:v4];

  [v5 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
}

- (void)_menuButtonAction:(id)a3
{
  v23 = a3;
  popoverController = self->_popoverController;
  if (popoverController)
  {
    [(SKUIMenuPopoverController *)popoverController setDelegate:0];
    [(SKUIMenuPopoverController *)self->_popoverController dismissAnimated:1];
    focusedMenuButton = self->_focusedMenuButton;
    self->_focusedMenuButton = 0;

    v7 = self->_popoverController;
    self->_popoverController = 0;
  }

  v8 = [(NSMapTable *)self->_viewElementViews objectForKey:v23];
  if (v8)
  {
    objc_storeStrong(&self->_focusedMenuButton, a3);
    v9 = [SKUIMenuPopoverController alloc];
    v10 = [v8 menuItemTitles];
    v11 = -[SKUIMenuPopoverController initWithMenuTitles:selectedIndex:](v9, "initWithMenuTitles:selectedIndex:", v10, [v8 selectedItemIndex]);
    v12 = self->_popoverController;
    self->_popoverController = v11;

    [(SKUIMenuPopoverController *)self->_popoverController setDelegate:self];
    v13 = self->_popoverController;
    [(UIControl *)self->_focusedMenuButton frame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = [(UIControl *)self->_focusedMenuButton superview];
    [(SKUIMenuPopoverController *)v13 presentFromRect:v22 inView:15 permittedArrowDirections:1 animated:v15, v17, v19, v21];
  }
}

- (void)_showConfirmationAction:(id)a3
{
  v4 = a3;
  [(SKUIFilterBarView *)self bringSubviewToFront:v4];
  [v4 setShowingConfirmation:1 animated:1];
}

+ (id)_attributedStringForButton:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 buttonText];
  v9 = [v6 buttonTitleStyle];
  if (v9)
  {
    v10 = [a1 _attributedStringForButtonText:v8 style:v9 context:v7];
  }

  else
  {
    v11 = [v6 style];
    v10 = [a1 _attributedStringForButtonText:v8 style:v11 context:v7];
  }

  return v10;
}

+ (id)_attributedStringForButtonText:(id)a3 style:(id)a4 context:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = SKUIViewElementFontWithStyle(v8);
  if (!v10)
  {
    v10 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
  }

  v11 = [v9 tintColor];
  v12 = SKUIViewElementPlainColorWithStyle(v8, v11);

  if (!v12)
  {
    v12 = [MEMORY[0x277D75348] labelColor];
  }

  v13 = [v7 attributedStringWithDefaultFont:v10 foregroundColor:v12 style:v8];

  return v13;
}

+ (id)_attributedStringForLabel:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 style];
  v8 = SKUIViewElementFontWithStyle(v7);
  if (!v8)
  {
    v8 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
  }

  v9 = [v6 tintColor];
  v10 = SKUIViewElementPlainColorWithStyle(v7, v9);

  if (!v10)
  {
    v10 = [MEMORY[0x277D75348] labelColor];
  }

  v11 = [v5 text];
  v12 = [v11 attributedStringWithDefaultFont:v8 foregroundColor:v10 style:v7];

  return v12;
}

+ (id)_attributedStringForMenuItem:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 itemText];
  v9 = [v7 style];

  v10 = [a1 _attributedStringForButtonText:v8 style:v9 context:v6];

  return v10;
}

- (void)_destroyMenuPopover
{
  [(SKUIMenuPopoverController *)self->_popoverController setDelegate:0];
  focusedMenuButton = self->_focusedMenuButton;
  self->_focusedMenuButton = 0;

  popoverController = self->_popoverController;
  self->_popoverController = 0;
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIFilterBarView initWithFrame:]";
}

@end