@interface SearchUICollectionViewLayout
+ (void)applyForcedFrameToAttributes:(id)attributes frame:(CGRect)frame;
+ (void)applyForcedMaxHeightToAttributes:(id)attributes maxHeight:(double)height;
- (CGRect)sectionContentFrameFromCellAttributes:(id)attributes;
- (SearchUICollectionViewSizingDelegate)sizingDelegate;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path;
- (void)invalidateLayoutWithContext:(id)context;
- (void)prepareLayout;
@end

@implementation SearchUICollectionViewLayout

- (void)prepareLayout
{
  sizingDelegate = [(SearchUICollectionViewLayout *)self sizingDelegate];
  currentSnapshotLayoutConfiguration = [sizingDelegate currentSnapshotLayoutConfiguration];
  snapshotConfiguration = self->_snapshotConfiguration;
  self->_snapshotConfiguration = currentSnapshotLayoutConfiguration;

  v6.receiver = self;
  v6.super_class = SearchUICollectionViewLayout;
  [(SearchUICollectionViewLayout *)&v6 prepareLayout];
}

- (SearchUICollectionViewSizingDelegate)sizingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sizingDelegate);

  return WeakRetained;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  v78 = *MEMORY[0x1E69E9840];
  v74.receiver = self;
  v74.super_class = SearchUICollectionViewLayout;
  v4 = [(SearchUICollectionViewLayout *)&v74 layoutAttributesForElementsInRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  snapshotConfiguration = [(SearchUICollectionViewLayout *)self snapshotConfiguration];

  if (snapshotConfiguration)
  {
    v6 = objc_opt_new();
    v59 = objc_opt_new();
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v55 = v4;
    obj = v4;
    v7 = [obj countByEnumeratingWithState:&v70 objects:v77 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v71;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v71 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v70 + 1) + 8 * i);
          v12 = MEMORY[0x1E696AD98];
          indexPath = [v11 indexPath];
          v14 = [v12 numberWithInteger:{objc_msgSend(indexPath, "section")}];

          representedElementKind = [v11 representedElementKind];

          if (representedElementKind)
          {
            representedElementKind2 = [v11 representedElementKind];
            v17 = [representedElementKind2 isEqualToString:@"SearchUIBackgroundReuseIdentifer"];

            if (v17)
            {
              [v59 setObject:v11 forKeyedSubscript:v14];
            }
          }

          else
          {
            v18 = [v6 objectForKeyedSubscript:v14];

            if (!v18)
            {
              v19 = objc_opt_new();
              [v6 setObject:v19 forKeyedSubscript:v14];
            }

            v20 = [v6 objectForKeyedSubscript:v14];
            [v20 addObject:v11];
          }
        }

        v8 = [obj countByEnumeratingWithState:&v70 objects:v77 count:16];
      }

      while (v8);
    }

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v21 = v6;
    v58 = [v21 countByEnumeratingWithState:&v66 objects:v76 count:16];
    if (v58)
    {
      v56 = *v67;
      v57 = v21;
      do
      {
        v22 = 0;
        do
        {
          if (*v67 != v56)
          {
            objc_enumerationMutation(v21);
          }

          obja = v22;
          v23 = *(*(&v66 + 1) + 8 * v22);
          -[SearchUICollectionViewLayout _contentFrameForSection:](self, "_contentFrameForSection:", [v23 integerValue]);
          v25 = v24;
          v27 = v26;
          v29 = v28;
          v31 = v30;
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          v32 = [v21 objectForKeyedSubscript:v23];
          v33 = [v32 countByEnumeratingWithState:&v62 objects:v75 count:16];
          if (v33)
          {
            v34 = v33;
            v35 = *v63;
            do
            {
              for (j = 0; j != v34; ++j)
              {
                if (*v63 != v35)
                {
                  objc_enumerationMutation(v32);
                }

                v37 = *(*(&v62 + 1) + 8 * j);
                snapshotConfiguration2 = [(SearchUICollectionViewLayout *)self snapshotConfiguration];
                sectionIndexesForHeightMatching = [snapshotConfiguration2 sectionIndexesForHeightMatching];
                v40 = [sectionIndexesForHeightMatching containsObject:v23];

                if (v40)
                {
                  [objc_opt_class() applyForcedMaxHeightToAttributes:v37 maxHeight:v31];
                }
              }

              v34 = [v32 countByEnumeratingWithState:&v62 objects:v75 count:16];
            }

            while (v34);
          }

          v41 = [v59 objectForKeyedSubscript:v23];
          v21 = v57;
          if (v41)
          {
            v42 = v41;
            v43 = [v57 objectForKeyedSubscript:v23];

            if (v43)
            {
              v44 = [v59 objectForKeyedSubscript:v23];
              if (([MEMORY[0x1E69D9240] isMacOS] & 1) != 0 || (-[SearchUICollectionViewLayout snapshotConfiguration](self, "snapshotConfiguration"), v45 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v45, "sectionIndexesUsingListLayout"), v46 = objc_claimAutoreleasedReturnValue(), v47 = objc_msgSend(v46, "containsObject:", v23), v46, v45, v47))
              {
                v48 = [v57 objectForKeyedSubscript:v23];
                if ([v48 count])
                {
                  v49 = [v57 objectForKeyedSubscript:v23];
                  [(SearchUICollectionViewLayout *)self sectionContentFrameFromCellAttributes:v49];
                  v25 = v50;
                  v27 = v51;
                  v29 = v52;
                  v31 = v53;
                }
              }

              [objc_opt_class() applyForcedFrameToAttributes:v44 frame:{v25, v27, v29, v31}];
            }
          }

          v22 = obja + 1;
        }

        while (obja + 1 != v58);
        v58 = [v57 countByEnumeratingWithState:&v66 objects:v76 count:16];
      }

      while (v58);
    }

    v4 = v55;
  }

  return v4;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path
{
  pathCopy = path;
  v26.receiver = self;
  v26.super_class = SearchUICollectionViewLayout;
  v7 = [(SearchUICollectionViewLayout *)&v26 layoutAttributesForSupplementaryViewOfKind:kind atIndexPath:pathCopy];
  representedElementKind = [v7 representedElementKind];
  v9 = [representedElementKind isEqualToString:@"SearchUIBackgroundReuseIdentifer"];

  if (v9)
  {
    if (([MEMORY[0x1E69D9240] isMacOS] & 1) != 0 || (-[SearchUICollectionViewLayout snapshotConfiguration](self, "snapshotConfiguration"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "sectionIndexesUsingListLayout"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", objc_msgSend(pathCopy, "section")), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "containsObject:", v12), v12, v11, v10, v13))
    {
      v14 = objc_opt_new();
      collectionView = [(SearchUICollectionViewLayout *)self collectionView];
      v16 = [collectionView numberOfItemsInSection:{objc_msgSend(pathCopy, "section")}];

      if (v16 >= 1)
      {
        for (i = 0; i != v16; ++i)
        {
          v18 = [MEMORY[0x1E696AC88] indexPathForItem:i inSection:{objc_msgSend(pathCopy, "section")}];
          v19 = [(SearchUICollectionViewLayout *)self layoutAttributesForItemAtIndexPath:v18];
          [v14 addObject:v19];
        }
      }

      if ([v14 count])
      {
        [(SearchUICollectionViewLayout *)self sectionContentFrameFromCellAttributes:v14];
      }

      else
      {
        -[SearchUICollectionViewLayout _contentFrameForSection:](self, "_contentFrameForSection:", [pathCopy section]);
      }

      [objc_opt_class() applyForcedFrameToAttributes:v7 frame:{v20, v21, v22, v23}];
    }

    else
    {
      v24 = objc_opt_class();
      -[SearchUICollectionViewLayout _contentFrameForSection:](self, "_contentFrameForSection:", [pathCopy section]);
      [v24 applyForcedFrameToAttributes:v7 frame:?];
    }
  }

  return v7;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v12.receiver = self;
  v12.super_class = SearchUICollectionViewLayout;
  v5 = [(SearchUICollectionViewLayout *)&v12 layoutAttributesForItemAtIndexPath:pathCopy];
  snapshotConfiguration = [(SearchUICollectionViewLayout *)self snapshotConfiguration];
  sectionIndexesForHeightMatching = [snapshotConfiguration sectionIndexesForHeightMatching];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(pathCopy, "section")}];
  v9 = [sectionIndexesForHeightMatching containsObject:v8];

  if (v9)
  {
    -[SearchUICollectionViewLayout _contentFrameForSection:](self, "_contentFrameForSection:", [pathCopy section]);
    [objc_opt_class() applyForcedMaxHeightToAttributes:v5 maxHeight:v10];
  }

  return v5;
}

+ (void)applyForcedFrameToAttributes:(id)attributes frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  attributesCopy = attributes;
  [attributesCopy setFrame:{x, y, width, height}];
  [attributesCopy setIsForcingHeight:1];
}

+ (void)applyForcedMaxHeightToAttributes:(id)attributes maxHeight:(double)height
{
  attributesCopy = attributes;
  [attributesCopy frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if (v11 != 1.0 || ([attributesCopy representedElementKind], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", @"SearchUIBackgroundReuseIdentifer"), v13, v14))
  {
    if (v12 >= height)
    {
      heightCopy = v12;
    }

    else
    {
      heightCopy = height;
    }

    [attributesCopy setFrame:{v6, v8, v10, heightCopy}];
    [attributesCopy setIsForcingHeight:1];
  }
}

- (CGRect)sectionContentFrameFromCellAttributes:(id)attributes
{
  v31 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = [attributesCopy countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      v11 = 0;
      do
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(attributesCopy);
        }

        v12 = *(*(&v26 + 1) + 8 * v11);
        firstObject = [attributesCopy firstObject];

        [v12 frame];
        v18 = v14;
        v19 = v15;
        v20 = v16;
        v21 = v17;
        if (v12 != firstObject)
        {
          v32.origin.x = v4;
          v32.origin.y = v5;
          v32.size.width = v6;
          v32.size.height = v7;
          *&v14 = CGRectUnion(v32, *&v18);
        }

        v4 = v14;
        v5 = v15;
        v6 = v16;
        v7 = v17;
        ++v11;
      }

      while (v9 != v11);
      v9 = [attributesCopy countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  v22 = v4;
  v23 = v5;
  v24 = v6;
  v25 = v7;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (void)invalidateLayoutWithContext:(id)context
{
  v6.receiver = self;
  v6.super_class = SearchUICollectionViewLayout;
  [(SearchUICollectionViewLayout *)&v6 invalidateLayoutWithContext:context];
  [(SearchUICollectionViewLayout *)self collectionViewContentSize];
  if (v4 > 0.0)
  {
    sizingDelegate = [(SearchUICollectionViewLayout *)self sizingDelegate];
    [(SearchUICollectionViewLayout *)self collectionViewContentSize];
    [sizingDelegate contentSizeDidChange:?];
  }
}

@end