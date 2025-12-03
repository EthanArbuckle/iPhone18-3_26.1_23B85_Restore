@interface TFFeedbackFormImageCollectionCell
+ (CGSize)_sizeForImage:(id)image constrainedToWidth:(double)width;
+ (CGSize)_sizeForImages:(id)images fittingSize:(CGSize)size inTraitEnvironment:(id)environment;
+ (CGSize)sizeForEntry:(id)entry dataSource:(id)source fittingSize:(CGSize)size inTraitEnvironment:(id)environment;
+ (UIEdgeInsets)_imageViewInsetsInTraitEnvironment:(id)environment;
- (TFFeedbackFormImageCollectionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)_createImageView;
- (void)_setupImagesViewsForImages:(id)images;
- (void)applyContentsOfEntry:(id)entry;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setDisplayedDataImageCollection:(id)collection;
@end

@implementation TFFeedbackFormImageCollectionCell

- (TFFeedbackFormImageCollectionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = TFFeedbackFormImageCollectionCell;
  v4 = [(TFFeedbackFormBaseCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
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
  traitCollection = [(TFFeedbackFormImageCollectionCell *)self traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  contentView = [(TFFeedbackFormImageCollectionCell *)self contentView];
  [contentView bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  imageViews = [(TFFeedbackFormImageCollectionCell *)self imageViews];
  v23 = [imageViews countByEnumeratingWithState:&v39 objects:v44 count:16];
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
          objc_enumerationMutation(imageViews);
        }

        v31 = *(*(&v39 + 1) + 8 * i);
        image = [v31 image];
        v46.origin.x = v28;
        v46.origin.y = v27;
        v46.size.width = v26;
        v46.size.height = v25;
        [TFFeedbackFormImageCollectionCell _sizeForImage:image constrainedToWidth:CGRectGetWidth(v46)];
        v34 = v33;
        v36 = v35;
        v47.origin.x = v28;
        v47.origin.y = v27;
        v47.size.width = v26;
        v47.size.height = v25;
        MinX = CGRectGetMinX(v47);
        if (layoutDirection == 1)
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

      v24 = [imageViews countByEnumeratingWithState:&v39 objects:v44 count:16];
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

- (void)applyContentsOfEntry:(id)entry
{
  entryCopy = entry;
  if ([entryCopy type] == 3)
  {
    [(TFFeedbackFormImageCollectionCell *)self setImageCollectionEntry:entryCopy];
  }
}

+ (CGSize)sizeForEntry:(id)entry dataSource:(id)source fittingSize:(CGSize)size inTraitEnvironment:(id)environment
{
  height = size.height;
  width = size.width;
  entryCopy = entry;
  sourceCopy = source;
  environmentCopy = environment;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [entryCopy identifier];
    v15 = [sourceCopy imageCollectionForIdentifer:identifier];

    [self _sizeForImages:v15 fittingSize:environmentCopy inTraitEnvironment:{width, height}];
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

- (void)setDisplayedDataImageCollection:(id)collection
{
  collectionCopy = collection;
  [(TFFeedbackFormImageCollectionCell *)self _setupImagesViewsForImages:collectionCopy];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__TFFeedbackFormImageCollectionCell_setDisplayedDataImageCollection___block_invoke;
  v5[3] = &unk_279D98538;
  v5[4] = self;
  [collectionCopy enumerateObjectsUsingBlock:v5];

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

- (void)_setupImagesViewsForImages:(id)images
{
  imagesCopy = images;
  v20 = imagesCopy;
  if (imagesCopy)
  {
    v5 = [imagesCopy count];
  }

  else
  {
    v5 = 0;
  }

  imageViews = [(TFFeedbackFormImageCollectionCell *)self imageViews];
  v7 = [imageViews count];

  if (v7 != v5)
  {
    imageViews2 = [(TFFeedbackFormImageCollectionCell *)self imageViews];
    v9 = [imageViews2 count];

    imageViews3 = [(TFFeedbackFormImageCollectionCell *)self imageViews];
    v11 = [imageViews3 count];

    if (v9 >= v5)
    {
      v16 = v11 - v5;
      if ((v11 - v5) >= 1)
      {
        do
        {
          imageViews4 = [(TFFeedbackFormImageCollectionCell *)self imageViews];
          lastObject = [imageViews4 lastObject];

          [lastObject removeFromSuperview];
          imageViews5 = [(TFFeedbackFormImageCollectionCell *)self imageViews];
          [imageViews5 removeObject:lastObject];

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
          _createImageView = [(TFFeedbackFormImageCollectionCell *)self _createImageView];
          contentView = [(TFFeedbackFormImageCollectionCell *)self contentView];
          [contentView addSubview:_createImageView];

          imageViews6 = [(TFFeedbackFormImageCollectionCell *)self imageViews];
          [imageViews6 addObject:_createImageView];

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
  contentView = [(TFFeedbackFormImageCollectionCell *)self contentView];
  [contentView addSubview:v3];

  return v3;
}

+ (UIEdgeInsets)_imageViewInsetsInTraitEnvironment:(id)environment
{
  [TFFeedbackFormViewSpecification formCellInsetsInTraitEnvironment:environment];

  MEMORY[0x2821DE498](15);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

+ (CGSize)_sizeForImages:(id)images fittingSize:(CGSize)size inTraitEnvironment:(id)environment
{
  width = size.width;
  v29 = *MEMORY[0x277D85DE8];
  imagesCopy = images;
  if (imagesCopy)
  {
    [TFFeedbackFormImageCollectionCell _imageViewInsetsInTraitEnvironment:environment];
    v10 = v9;
    v12 = v11;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = imagesCopy;
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

          [self _sizeForImage:*(*(&v24 + 1) + 8 * i) constrainedToWidth:{v16, v24}];
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

+ (CGSize)_sizeForImage:(id)image constrainedToWidth:(double)width
{
  imageCopy = image;
  v6 = imageCopy;
  if (imageCopy)
  {
    [imageCopy size];
    v8 = v7;
    [v6 size];
    if (v8 <= width)
    {
      v13 = v10;
      width = v9;
    }

    else
    {
      v11 = width / v9;
      [v6 size];
      v13 = v11 * v12;
    }
  }

  else
  {
    width = *MEMORY[0x277CBF3A8];
    v13 = *(MEMORY[0x277CBF3A8] + 8);
  }

  widthCopy = width;
  v15 = v13;
  result.height = v15;
  result.width = widthCopy;
  return result;
}

@end