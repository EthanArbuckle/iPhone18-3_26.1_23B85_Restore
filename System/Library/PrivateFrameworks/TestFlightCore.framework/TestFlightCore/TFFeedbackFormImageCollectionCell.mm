@interface TFFeedbackFormImageCollectionCell
+ (CGSize)_sizeForImage:(id)a3 constrainedToWidth:(double)a4;
+ (CGSize)_sizeForImages:(id)a3 fittingSize:(CGSize)a4 inTraitEnvironment:(id)a5;
+ (CGSize)sizeForEntry:(id)a3 dataSource:(id)a4 fittingSize:(CGSize)a5 inTraitEnvironment:(id)a6;
+ (UIEdgeInsets)_imageViewInsetsInTraitEnvironment:(id)a3;
- (TFFeedbackFormImageCollectionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)_createImageView;
- (void)_setupImagesViewsForImages:(id)a3;
- (void)applyContentsOfEntry:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setDisplayedDataImageCollection:(id)a3;
@end

@implementation TFFeedbackFormImageCollectionCell

- (TFFeedbackFormImageCollectionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = TFFeedbackFormImageCollectionCell;
  v4 = [(TFFeedbackFormBaseCell *)&v8 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    imageViews = v4->_imageViews;
    v4->_imageViews = v5;
  }

  return v4;
}

- (void)layoutSubviews
{
  v45 = *MEMORY[0x277D85DE8];
  v43.receiver = self;
  v43.super_class = TFFeedbackFormImageCollectionCell;
  [(TFFeedbackFormBaseCell *)&v43 layoutSubviews];
  [TFFeedbackFormImageCollectionCell _imageViewInsetsInTraitEnvironment:self];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(TFFeedbackFormImageCollectionCell *)self traitCollection];
  v12 = [v11 layoutDirection];

  v13 = [(TFFeedbackFormImageCollectionCell *)self contentView];
  [v13 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v22 = [(TFFeedbackFormImageCollectionCell *)self imageViews];
  v23 = [v22 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = v21 - (v4 + v8);
    v26 = v19 - (v6 + v10);
    v27 = v4 + v17;
    v28 = v6 + v15;
    v29 = *v40;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v40 != v29)
        {
          objc_enumerationMutation(v22);
        }

        v31 = *(*(&v39 + 1) + 8 * i);
        v32 = [v31 image];
        v46.origin.x = v28;
        v46.origin.y = v27;
        v46.size.width = v26;
        v46.size.height = v25;
        [TFFeedbackFormImageCollectionCell _sizeForImage:v32 constrainedToWidth:CGRectGetWidth(v46)];
        v34 = v33;
        v36 = v35;
        v47.origin.x = v28;
        v47.origin.y = v27;
        v47.size.width = v26;
        v47.size.height = v25;
        MinX = CGRectGetMinX(v47);
        if (v12 == 1)
        {
          v48.origin.x = v28;
          v48.origin.y = v27;
          v48.size.width = v26;
          v48.size.height = v25;
          v38 = CGRectGetMaxX(v48) - v34;
        }

        else
        {
          v38 = MinX;
        }

        [v31 setFrame:{v38, v4, v34, v36}];
        v49.origin.x = v38;
        v49.origin.y = v4;
        v49.size.width = v34;
        v49.size.height = v36;
        v4 = v4 + CGRectGetHeight(v49) + 16.0;
      }

      v24 = [v22 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v24);
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = TFFeedbackFormImageCollectionCell;
  [(TFFeedbackFormImageCollectionCell *)&v3 prepareForReuse];
  [(TFFeedbackFormImageCollectionCell *)self setImageCollectionEntry:0];
}

- (void)applyContentsOfEntry:(id)a3
{
  v4 = a3;
  if ([v4 type] == 3)
  {
    [(TFFeedbackFormImageCollectionCell *)self setImageCollectionEntry:v4];
  }
}

+ (CGSize)sizeForEntry:(id)a3 dataSource:(id)a4 fittingSize:(CGSize)a5 inTraitEnvironment:(id)a6
{
  height = a5.height;
  width = a5.width;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [v11 identifier];
    v15 = [v12 imageCollectionForIdentifer:v14];

    [a1 _sizeForImages:v15 fittingSize:v13 inTraitEnvironment:{width, height}];
    v17 = v16;
    v19 = v18;
  }

  else
  {
    v17 = *MEMORY[0x277CBF3A8];
    v19 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v20 = v17;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

- (void)setDisplayedDataImageCollection:(id)a3
{
  v4 = a3;
  [(TFFeedbackFormImageCollectionCell *)self _setupImagesViewsForImages:v4];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__TFFeedbackFormImageCollectionCell_setDisplayedDataImageCollection___block_invoke;
  v5[3] = &unk_279D98538;
  v5[4] = self;
  [v4 enumerateObjectsUsingBlock:v5];

  [(TFFeedbackFormImageCollectionCell *)self setNeedsLayout];
}

void __69__TFFeedbackFormImageCollectionCell_setDisplayedDataImageCollection___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 imageViews];
  v7 = [v6 objectAtIndexedSubscript:a3];

  [v7 setImage:v5];
}

- (void)_setupImagesViewsForImages:(id)a3
{
  v4 = a3;
  v20 = v4;
  if (v4)
  {
    v5 = [v4 count];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(TFFeedbackFormImageCollectionCell *)self imageViews];
  v7 = [v6 count];

  if (v7 != v5)
  {
    v8 = [(TFFeedbackFormImageCollectionCell *)self imageViews];
    v9 = [v8 count];

    v10 = [(TFFeedbackFormImageCollectionCell *)self imageViews];
    v11 = [v10 count];

    if (v9 >= v5)
    {
      v16 = v11 - v5;
      if ((v11 - v5) >= 1)
      {
        do
        {
          v17 = [(TFFeedbackFormImageCollectionCell *)self imageViews];
          v18 = [v17 lastObject];

          [v18 removeFromSuperview];
          v19 = [(TFFeedbackFormImageCollectionCell *)self imageViews];
          [v19 removeObject:v18];

          --v16;
        }

        while (v16);
      }
    }

    else
    {
      v12 = v5 - v11;
      if ((v5 - v11) >= 1)
      {
        do
        {
          v13 = [(TFFeedbackFormImageCollectionCell *)self _createImageView];
          v14 = [(TFFeedbackFormImageCollectionCell *)self contentView];
          [v14 addSubview:v13];

          v15 = [(TFFeedbackFormImageCollectionCell *)self imageViews];
          [v15 addObject:v13];

          --v12;
        }

        while (v12);
      }
    }
  }
}

- (id)_createImageView
{
  v3 = objc_alloc_init(MEMORY[0x277D755E8]);
  [v3 setContentMode:1];
  v4 = [(TFFeedbackFormImageCollectionCell *)self contentView];
  [v4 addSubview:v3];

  return v3;
}

+ (UIEdgeInsets)_imageViewInsetsInTraitEnvironment:(id)a3
{
  [TFFeedbackFormViewSpecification formCellInsetsInTraitEnvironment:a3];

  MEMORY[0x2821DE498](15);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

+ (CGSize)_sizeForImages:(id)a3 fittingSize:(CGSize)a4 inTraitEnvironment:(id)a5
{
  width = a4.width;
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (v8)
  {
    [TFFeedbackFormImageCollectionCell _imageViewInsetsInTraitEnvironment:a5];
    v10 = v9;
    v12 = v11;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = v8;
    v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = width - v10 - v12;
      v17 = *v25;
      v18 = 0.0;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v13);
          }

          [a1 _sizeForImage:*(*(&v24 + 1) + 8 * i) constrainedToWidth:{v16, v24}];
          v18 = v18 + v20;
        }

        v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v15);
    }

    else
    {
      v18 = 0.0;
    }

    v21 = v18 + ([v13 count] - 1) * 16.0 + 15.0 + 30.0;
  }

  else
  {
    width = *MEMORY[0x277CBF3A8];
    v21 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v22 = width;
  v23 = v21;
  result.height = v23;
  result.width = v22;
  return result;
}

+ (CGSize)_sizeForImage:(id)a3 constrainedToWidth:(double)a4
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    [v5 size];
    v8 = v7;
    [v6 size];
    if (v8 <= a4)
    {
      v13 = v10;
      a4 = v9;
    }

    else
    {
      v11 = a4 / v9;
      [v6 size];
      v13 = v11 * v12;
    }
  }

  else
  {
    a4 = *MEMORY[0x277CBF3A8];
    v13 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v14 = a4;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

@end