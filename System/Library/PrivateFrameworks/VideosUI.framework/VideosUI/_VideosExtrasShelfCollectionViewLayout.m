@interface _VideosExtrasShelfCollectionViewLayout
- (CGSize)calculatedContentSize;
- (CGSize)collectionViewContentSize;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (void)_calculateSizes;
- (void)prepareLayout;
@end

@implementation _VideosExtrasShelfCollectionViewLayout

- (void)_calculateSizes
{
  if (!self->_rects)
  {
    v28 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3 = [(_VideosExtrasShelfCollectionViewLayout *)self collectionView];
    v4 = [v3 delegate];
    v5 = objc_opt_respondsToSelector();
    v6 = objc_opt_respondsToSelector() & 1;
    v7 = objc_opt_respondsToSelector() & 1;
    if (v5)
    {
      v8 = *MEMORY[0x1E695F060];
      v9 = *(MEMORY[0x1E695F060] + 8);
    }

    else
    {
      [(UICollectionViewFlowLayout *)self itemSize];
      v8 = v10;
      v9 = v11;
    }

    if (v6)
    {
      v12 = *MEMORY[0x1E69DDCE0];
      v13 = *(MEMORY[0x1E69DDCE0] + 8);
      v14 = *(MEMORY[0x1E69DDCE0] + 16);
      v15 = *(MEMORY[0x1E69DDCE0] + 24);
    }

    else
    {
      [(UICollectionViewFlowLayout *)self sectionInset];
      v12 = v16;
      v13 = v17;
      v14 = v18;
      v15 = v19;
    }

    v20 = 0;
    if ((v7 & 1) == 0)
    {
      [(UICollectionViewFlowLayout *)self minimumInteritemSpacing];
      v20 = v21;
    }

    v53 = 0;
    v54 = &v53;
    v55 = 0x4010000000;
    v56 = &unk_1E44FDE95;
    v22 = *(MEMORY[0x1E695F058] + 16);
    v57 = *MEMORY[0x1E695F058];
    v58 = v22;
    v51[0] = 0;
    v51[1] = v51;
    v51[2] = 0x3010000000;
    v51[3] = &unk_1E44FDE95;
    v52 = *MEMORY[0x1E695EFF8];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __57___VideosExtrasShelfCollectionViewLayout__calculateSizes__block_invoke;
    v41[3] = &unk_1E87304B8;
    v50 = v6;
    v45 = v51;
    v42 = v4;
    v43 = v3;
    v44 = self;
    v46 = v12;
    v47 = v13;
    v48 = v14;
    v49 = v15;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __57___VideosExtrasShelfCollectionViewLayout__calculateSizes__block_invoke_2;
    v29[3] = &unk_1E87304E0;
    v39 = v5 & 1;
    v23 = v42;
    v30 = v23;
    v24 = v43;
    v31 = v24;
    v32 = self;
    v36 = v8;
    v37 = v9;
    v34 = v51;
    v25 = v28;
    v33 = v25;
    v35 = &v53;
    v40 = v7;
    v38 = v20;
    _MPUEnumerateItemsOfCollectionView(v24, v41, v29);
    v59 = CGRectStandardize(v54[1]);
    self->_contentSize.width = v59.size.width;
    self->_contentSize.height = v59.size.height;
    rects = self->_rects;
    self->_rects = v25;
    v27 = v25;

    _Block_object_dispose(v51, 8);
    _Block_object_dispose(&v53, 8);
  }
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v24 = *MEMORY[0x1E69E9840];
  if ([(UICollectionViewFlowLayout *)self scrollDirection])
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = self->_rects;
    v10 = [(NSDictionary *)v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          v15 = [MEMORY[0x1E69DC858] layoutAttributesForCellWithIndexPath:{v14, v18}];
          v16 = [(NSDictionary *)self->_rects objectForKey:v14];
          [v16 CGRectValue];
          [v15 setFrame:?];

          [v8 addObject:v15];
        }

        v11 = [(NSDictionary *)v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v22.receiver = self;
    v22.super_class = _VideosExtrasShelfCollectionViewLayout;
    v8 = [(UICollectionViewFlowLayout *)&v22 layoutAttributesForElementsInRect:x, y, width, height];
  }

  return v8;
}

- (void)prepareLayout
{
  v3.receiver = self;
  v3.super_class = _VideosExtrasShelfCollectionViewLayout;
  [(UICollectionViewFlowLayout *)&v3 prepareLayout];
  if ([(UICollectionViewFlowLayout *)self scrollDirection]== 1)
  {
    [(_VideosExtrasShelfCollectionViewLayout *)self _calculateSizes];
  }
}

- (CGSize)collectionViewContentSize
{
  if ([(UICollectionViewFlowLayout *)self scrollDirection]== 1)
  {
    width = self->_contentSize.width;
    height = self->_contentSize.height;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = _VideosExtrasShelfCollectionViewLayout;
    [(UICollectionViewFlowLayout *)&v5 collectionViewContentSize];
  }

  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)calculatedContentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end