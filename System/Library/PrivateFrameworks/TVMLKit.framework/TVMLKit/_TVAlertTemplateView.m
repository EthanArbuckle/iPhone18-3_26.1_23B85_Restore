@interface _TVAlertTemplateView
- (UIEdgeInsets)padding;
- (void)layoutSubviews;
- (void)setBgImage:(id)a3;
- (void)setCollectionView:(id)a3;
- (void)setViewsAbove:(id)a3;
- (void)setViewsBelow:(id)a3;
@end

@implementation _TVAlertTemplateView

- (void)setBgImage:(id)a3
{
  v4 = a3;
  if (self->_bgImage != v4)
  {
    bgImageView = self->_bgImageView;
    if (v4)
    {
      if (bgImageView)
      {
LABEL_8:
        [(UIImageView *)bgImageView setImage:v4];
        goto LABEL_9;
      }
    }

    else if (bgImageView)
    {
      [(UIImageView *)bgImageView removeFromSuperview];
      v6 = self->_bgImageView;
      self->_bgImageView = 0;

      goto LABEL_9;
    }

    v7 = objc_alloc(MEMORY[0x277D755E8]);
    [(_TVAlertTemplateView *)self bounds];
    v8 = [v7 initWithFrame:?];
    [(_TVAlertTemplateView *)self addSubview:v8];
    [(_TVAlertTemplateView *)self sendSubviewToBack:v8];
    v9 = self->_bgImageView;
    self->_bgImageView = v8;

    bgImageView = self->_bgImageView;
    goto LABEL_8;
  }

LABEL_9:
  bgImage = self->_bgImage;
  self->_bgImage = v4;
}

- (void)setViewsAbove:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [(NSArray *)self->_viewsAbove makeObjectsPerformSelector:sel_removeFromSuperview];
  objc_storeStrong(&self->_viewsAbove, a3);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_viewsAbove;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(_TVAlertTemplateView *)self addSubview:*(*(&v11 + 1) + 8 * v10++), v11];
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)setViewsBelow:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [(NSArray *)self->_viewsBelow makeObjectsPerformSelector:sel_removeFromSuperview];
  objc_storeStrong(&self->_viewsBelow, a3);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_viewsBelow;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(_TVAlertTemplateView *)self addSubview:*(*(&v11 + 1) + 8 * v10++), v11];
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)setCollectionView:(id)a3
{
  v5 = a3;
  collectionView = self->_collectionView;
  v7 = v5;
  if (collectionView != v5)
  {
    [(UICollectionView *)collectionView removeFromSuperview];
    objc_storeStrong(&self->_collectionView, a3);
    if (self->_collectionView)
    {
      [(_TVAlertTemplateView *)self addSubview:?];
    }
  }
}

- (void)layoutSubviews
{
  v78 = *MEMORY[0x277D85DE8];
  [(_TVAlertTemplateView *)self bounds];
  top = self->_padding.top;
  bottom = self->_padding.bottom;
  v57 = v4;
  v59 = v6;
  v60 = v5;
  v58 = v7;
  [(UIImageView *)self->_bgImageView setFrame:?];
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v8 = self->_viewsAbove;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v72 objects:v77 count:16];
  if (v9)
  {
    v10 = *v73;
    v11 = 0.0;
    v12 = 0.0;
    do
    {
      v13 = 0;
      v14 = v11;
      do
      {
        if (*v73 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v72 + 1) + 8 * v13);
        [v15 tv_margin];
        v17 = v16;
        v11 = v18;
        [v15 tv_maxWidth];
        [v15 tv_sizeThatFits:?];
        v20 = fmax(v17, v14);
        if (v12 == 0.0)
        {
          v20 = 0.0;
        }

        v12 = v19 + v12 + v20;
        ++v13;
        v14 = v11;
      }

      while (v9 != v13);
      v9 = [(NSArray *)v8 countByEnumeratingWithState:&v72 objects:v77 count:16];
    }

    while (v9);
  }

  else
  {
    v12 = 0.0;
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v21 = self->_viewsBelow;
  v22 = [(NSArray *)v21 countByEnumeratingWithState:&v68 objects:v76 count:16];
  if (v22)
  {
    v23 = *v69;
    v24 = 0.0;
    v25 = 0.0;
    do
    {
      v26 = 0;
      v27 = v24;
      do
      {
        if (*v69 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v28 = *(*(&v68 + 1) + 8 * v26);
        [v28 tv_margin];
        v24 = v29;
        v31 = v30;
        [v28 tv_maxWidth];
        [v28 tv_sizeThatFits:?];
        v33 = fmax(v31, v27);
        if (v25 == 0.0)
        {
          v33 = 0.0;
        }

        v25 = v32 + v25 + v33;
        ++v26;
        v27 = v24;
      }

      while (v22 != v26);
      v22 = [(NSArray *)v21 countByEnumeratingWithState:&v68 objects:v76 count:16];
    }

    while (v22);
  }

  else
  {
    v25 = 0.0;
  }

  v34 = [(UICollectionView *)self->_collectionView collectionViewLayout];
  [v34 itemSize];
  v54 = v35;
  v37 = v36;

  v38 = [(UICollectionView *)self->_collectionView numberOfItemsInSection:0];
  v39 = [(UICollectionView *)self->_collectionView collectionViewLayout];
  [v39 minimumLineSpacing];
  v41 = v40;
  v42 = [(UICollectionView *)self->_collectionView numberOfItemsInSection:0];

  if (v12 == 0.0)
  {
    v43 = 0.0;
  }

  else
  {
    v43 = 50.0;
  }

  v64 = 0;
  v65 = &v64;
  if (v25 == 0.0)
  {
    v44 = 0.0;
  }

  else
  {
    v44 = 50.0;
  }

  v66 = 0x2020000000;
  v67 = 0;
  v79.origin.y = v59;
  v79.origin.x = v60;
  v79.size.height = v57;
  v79.size.width = v58;
  Height = CGRectGetHeight(v79);
  v46 = v37 * v38 + v41 * (v42 - 1);
  v47 = bottom;
  if (v25 == 0.0)
  {
    v47 = 0.0;
  }

  if (v47 + v25 + v44 + top + v12 + v43 + v46 <= Height)
  {
    [(UICollectionView *)self->_collectionView _setGradientMaskInsets:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    [(UICollectionView *)self->_collectionView setClipsToBounds:0];
    [(UICollectionView *)self->_collectionView setContentInset:v43, 90.0, v44, 90.0];
    [(_TVAlertTemplateView *)self bounds];
    v51 = v44 + v43 + v46;
    v52 = (CGRectGetHeight(v81) - (v25 + v12 + v51)) * 0.5;
    v65[3] = floorf(v52);
  }

  else
  {
    v65[3] = top;
    [(UICollectionView *)self->_collectionView setClipsToBounds:1];
    if (v25 == 0.0)
    {
      v48 = 90.0;
    }

    else
    {
      v48 = 50.0;
    }

    [(UICollectionView *)self->_collectionView setContentInset:50.0, 90.0, v48, 90.0, v54];
    [(UICollectionView *)self->_collectionView _setGradientMaskInsets:90.0, 0.0, 90.0, 0.0];
    v80.origin.y = v59;
    v80.origin.x = v60;
    v80.size.height = v57;
    v80.size.width = v58;
    v49 = CGRectGetHeight(v80) - top - v12;
    v50 = bottom + v25;
    if (v25 == 0.0)
    {
      v50 = 0.0;
    }

    v51 = v49 - v50;
  }

  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x3032000000;
  v62[3] = __Block_byref_object_copy__1;
  v62[4] = __Block_byref_object_dispose__1;
  v63 = 0;
  v53 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(NSArray *)self->_viewsAbove count])
  {
    [v53 addObjectsFromArray:self->_viewsAbove];
  }

  [v53 addObject:{self->_collectionView, v54}];
  if ([(NSArray *)self->_viewsBelow count])
  {
    [v53 addObjectsFromArray:self->_viewsBelow];
  }

  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __38___TVAlertTemplateView_layoutSubviews__block_invoke;
  v61[3] = &unk_279D6F0B8;
  v61[5] = v62;
  v61[6] = &v64;
  v61[4] = self;
  v61[7] = v55;
  *&v61[8] = v37;
  *&v61[9] = v51;
  *&v61[10] = v60;
  *&v61[11] = v59;
  *&v61[12] = v58;
  *&v61[13] = v57;
  [v53 enumerateObjectsUsingBlock:v61];

  _Block_object_dispose(v62, 8);
  _Block_object_dispose(&v64, 8);
}

- (UIEdgeInsets)padding
{
  top = self->_padding.top;
  left = self->_padding.left;
  bottom = self->_padding.bottom;
  right = self->_padding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end