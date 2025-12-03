@interface UIKeyboardEmojiLayout
- (BOOL)shouldInvalidateLayoutForPreferredLayoutAttributes:(id)attributes withOriginalAttributes:(id)originalAttributes;
- (id)invalidationContextForBoundsChange:(CGRect)change;
- (id)invalidationContextForPreferredLayoutAttributes:(id)attributes withOriginalAttributes:(id)originalAttributes;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path;
- (void)_setAttributes:(id)attributes forSection:(int64_t)section;
- (void)dealloc;
- (void)invalidateLayoutWithContext:(id)context;
- (void)prepareLayout;
@end

@implementation UIKeyboardEmojiLayout

- (void)dealloc
{
  attributes = self->_attributes;
  self->_attributes = 0;

  headerWidths = self->_headerWidths;
  self->_headerWidths = 0;

  v5.receiver = self;
  v5.super_class = UIKeyboardEmojiLayout;
  [(UIKeyboardEmojiLayout *)&v5 dealloc];
}

- (void)_setAttributes:(id)attributes forSection:(int64_t)section
{
  attributesCopy = attributes;
  attributes = self->_attributes;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:section];
  v8 = [(NSMutableDictionary *)attributes objectForKeyedSubscript:v7];

  v9 = attributesCopy;
  if (v8 != attributesCopy)
  {
    v10 = self->_attributes;
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:section];
    if (attributesCopy)
    {
      [(NSMutableDictionary *)v10 setObject:attributesCopy forKeyedSubscript:v11];
    }

    else
    {
      [(NSMutableDictionary *)v10 removeObjectForKey:v11];
    }

    v9 = attributesCopy;
  }
}

- (void)prepareLayout
{
  v10.receiver = self;
  v10.super_class = UIKeyboardEmojiLayout;
  [(UICollectionViewFlowLayout *)&v10 prepareLayout];
  collectionView = [(UICollectionViewLayout *)self collectionView];
  numberOfSections = [collectionView numberOfSections];

  if (!self->_attributes)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:numberOfSections];
    attributes = self->_attributes;
    self->_attributes = v5;
  }

  if (!self->_headerWidths)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:numberOfSections];
    headerWidths = self->_headerWidths;
    self->_headerWidths = v7;
  }

  if (numberOfSections)
  {
    for (i = 0; i != numberOfSections; ++i)
    {
      [(NSMutableArray *)self->_headerWidths setObject:&unk_1EFE2E768 atIndexedSubscript:i];
    }
  }
}

- (void)invalidateLayoutWithContext:(id)context
{
  v22 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v20.receiver = self;
  v20.super_class = UIKeyboardEmojiLayout;
  [(UICollectionViewFlowLayout *)&v20 invalidateLayoutWithContext:contextCopy];
  if (([contextCopy invalidateDataSourceCounts] & 1) != 0 || objc_msgSend(contextCopy, "invalidateEverything"))
  {
    if (self->_attributes)
    {
      headerWidths = self->_headerWidths;
      if (headerWidths)
      {
        if ([(NSMutableArray *)headerWidths count])
        {
          v6 = 0;
          do
          {
            [(UIKeyboardEmojiLayout *)self _setAttributes:0 forSection:v6];
            [(NSMutableArray *)self->_headerWidths setObject:&unk_1EFE2E768 atIndexedSubscript:v6++];
          }

          while (v6 < [(NSMutableArray *)self->_headerWidths count]);
        }
      }
    }
  }

  else
  {
    [contextCopy invalidatedSupplementaryIndexPaths];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = v19 = 0u;
    v7 = [v15 objectForKeyedSubscript:@"UICollectionElementKindSectionHeader"];
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          section = [*(*(&v16 + 1) + 8 * v11) section];
          [(UIKeyboardEmojiLayout *)self _setAttributes:0 forSection:section];
          [contextCopy preferredWidthForHeaderInSection:section];
          if (v13 > 0.0)
          {
            v14 = [MEMORY[0x1E696AD98] numberWithDouble:?];
            [(NSMutableArray *)self->_headerWidths setObject:v14 atIndexedSubscript:section];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v9);
    }
  }
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v41.receiver = self;
  v41.super_class = UIKeyboardEmojiLayout;
  v8 = [(UICollectionViewFlowLayout *)&v41 layoutAttributesForElementsInRect:?];
  v9 = [v8 mutableCopy];

  collectionView = [(UICollectionViewLayout *)self collectionView];
  numberOfSections = [collectionView numberOfSections];

  if (numberOfSections >= 1)
  {
    v12 = 0;
    v38 = *(MEMORY[0x1E695F058] + 8);
    v39 = *MEMORY[0x1E695F058];
    v36 = *(MEMORY[0x1E695F058] + 24);
    v37 = *(MEMORY[0x1E695F058] + 16);
    do
    {
      attributes = self->_attributes;
      v14 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
      v15 = [(NSMutableDictionary *)attributes objectForKeyedSubscript:v14];

      if (!v15)
      {
        v16 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:v12];
        v17 = [(UIKeyboardEmojiLayout *)self layoutAttributesForSupplementaryViewOfKind:@"UICollectionElementKindSectionHeader" atIndexPath:v16];
        [(UIKeyboardEmojiLayout *)self _setAttributes:v17 forSection:v12];
      }

      v18 = self->_attributes;
      v19 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
      v20 = [(NSMutableDictionary *)v18 objectForKeyedSubscript:v19];

      if (v20)
      {
        v21 = self->_attributes;
        v22 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
        v23 = [(NSMutableDictionary *)v21 objectForKeyedSubscript:v22];

        v25 = v38;
        v24 = v39;
        v27 = v36;
        v26 = v37;
        if (v23)
        {
          [v23 frame];
        }

        v28 = v24;
        v29 = v25;
        v30 = v26;
        v31 = v27;
        MinX = CGRectGetMinX(*&v24);
        v43.origin.x = x;
        v43.origin.y = y;
        v43.size.width = width;
        v43.size.height = height;
        if (MinX >= CGRectGetMaxX(v43))
        {

          break;
        }

        v44.origin.x = x;
        v44.origin.y = y;
        v44.size.width = width;
        v44.size.height = height;
        v45.origin.x = v28;
        v45.origin.y = v29;
        v45.size.width = v30;
        v45.size.height = v31;
        if (CGRectIntersectsRect(v44, v45))
        {
          v32 = self->_attributes;
          v33 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
          v34 = [(NSMutableDictionary *)v32 objectForKeyedSubscript:v33];
          [v9 addObject:v34];
        }
      }

      ++v12;
    }

    while (numberOfSections != v12);
  }

  return v9;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path
{
  v112[1] = *MEMORY[0x1E69E9840];
  kindCopy = kind;
  pathCopy = path;
  if ([(UICollectionViewFlowLayout *)self scrollDirection])
  {
    collectionView = [(UICollectionViewLayout *)self collectionView];
    [collectionView bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    section = [pathCopy section];
    collectionView2 = [(UICollectionViewLayout *)self collectionView];
    v19 = [collectionView2 numberOfItemsInSection:section];

    if (!v19)
    {
      v83 = *MEMORY[0x1E695F058];
      v84 = *(MEMORY[0x1E695F058] + 8);
      v86 = *(MEMORY[0x1E695F058] + 16);
      v85 = *(MEMORY[0x1E695F058] + 24);
LABEL_22:
      v73 = [UICollectionViewLayoutAttributes layoutAttributesForSupplementaryViewOfKind:kindCopy withIndexPath:pathCopy];
      [v73 setFrame:{v83, v84, v86, v85}];
      goto LABEL_23;
    }

    collectionView3 = [(UICollectionViewLayout *)self collectionView];
    emojiGraphicsTraits = [collectionView3 emojiGraphicsTraits];

    v22 = [(NSMutableArray *)self->_headerWidths objectAtIndexedSubscript:section];
    [v22 doubleValue];
    v24 = v23;

    if (v24 == 0.0)
    {
      v25 = [UIKeyboardEmojiCategory displayName:[UIKeyboardEmojiCategory categoryTypeForCategoryIndex:section]];
      currentLocale = [MEMORY[0x1E695DF58] currentLocale];
      v27 = [v25 uppercaseStringWithLocale:currentLocale];

      [emojiGraphicsTraits categoryHeaderFontSize];
      v28 = MEMORY[0x1E696AD98];
      v111 = *off_1E70EC918;
      v29 = [off_1E70ECC18 boldSystemFontOfSize:?];
      v112[0] = v29;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v112 forKeys:&v111 count:1];
      v31 = v30 = kindCopy;
      v108 = pathCopy;
      v32 = v27;
      [v27 sizeWithAttributes:v31];
      collectionView4 = [(UICollectionViewLayout *)self collectionView];
      UICeilToViewScale(collectionView4);
      v34 = [v28 numberWithDouble:?];
      [(NSMutableArray *)self->_headerWidths setObject:v34 atIndexedSubscript:section];

      kindCopy = v30;
      pathCopy = v108;
    }

    v106 = v16;
    v107 = v10;
    v102 = v14;
    v103 = v12;
    [(UICollectionViewFlowLayout *)self _calculateAttributesForRect:v10, v12, v14, v16];
    collectionView5 = [(UICollectionViewLayout *)self collectionView];
    v36 = [collectionView5 layoutAttributesForItemAtIndexPath:pathCopy];
    [v36 frame];
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;

    collectionView6 = [(UICollectionViewLayout *)self collectionView];
    v46 = [collectionView6 numberOfItemsInSection:section] - 1;

    collectionView7 = [(UICollectionViewLayout *)self collectionView];
    v48 = [MEMORY[0x1E696AC88] indexPathForItem:v46 inSection:section];
    v49 = [collectionView7 layoutAttributesForItemAtIndexPath:v48];
    [v49 frame];
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;

    v114.origin.x = v38;
    v114.origin.y = v40;
    v101 = v42;
    v114.size.width = v42;
    v58 = v44;
    v114.size.height = v44;
    v123.origin.x = v51;
    v123.origin.y = v53;
    v123.size.width = v55;
    v123.size.height = v57;
    v115 = CGRectUnion(v114, v123);
    x = v115.origin.x;
    y = v115.origin.y;
    width = v115.size.width;
    height = v115.size.height;
    v62 = [(NSMutableArray *)self->_headerWidths objectAtIndexedSubscript:section];
    [v62 doubleValue];
    v64 = v63;

    [emojiGraphicsTraits categoryHeaderHeight];
    v105 = v65;
    [emojiGraphicsTraits columnOffset];
    v67 = v66;
    [emojiGraphicsTraits inputViewLeftMostPadding];
    v104 = v64;
    v99 = height;
    v100 = width;
    if (v68 <= 50.0)
    {
      [emojiGraphicsTraits categoryHeaderLeftPadding];
      v97 = v87 + v87;
      v72 = v67;
      if (section)
      {
LABEL_16:
        v109 = v72;
        v116.origin.x = v38;
        v116.origin.y = v40;
        v116.size.width = v101;
        v116.size.height = v58;
        MinX = CGRectGetMinX(v116);
        v117.origin.x = v107;
        v117.origin.y = v103;
        v117.size.width = v102;
        v117.size.height = v106;
        if (MinX >= v109 + CGRectGetMinX(v117))
        {
          v121.origin.x = v38;
          v121.origin.y = v40;
          v121.size.width = v101;
          v121.size.height = v58;
          v92 = CGRectGetMinX(v121);
          [emojiGraphicsTraits categoryHeaderLeftPadding];
          v83 = v92 + v93;
          v86 = v104;
        }

        else
        {
          v118.origin.x = x;
          v118.origin.y = y;
          v118.size.height = v99;
          v118.size.width = width;
          MaxX = CGRectGetMaxX(v118);
          v119.origin.x = v107;
          v119.origin.y = v103;
          v119.size.width = v102;
          v119.size.height = v106;
          v86 = v104;
          if (MaxX - CGRectGetMinX(v119) >= v104 + v67 + v97)
          {
            v122.origin.x = v107;
            v122.origin.y = v103;
            v122.size.width = v102;
            v122.size.height = v106;
            v94 = v109 + CGRectGetMinX(v122);
            [emojiGraphicsTraits categoryHeaderLeftPadding];
            v83 = v94 + v95;
          }

          else
          {
            v120.origin.x = x;
            v120.origin.y = y;
            v120.size.height = v99;
            v120.size.width = v100;
            v90 = CGRectGetMaxX(v120) - v104;
            [emojiGraphicsTraits categoryHeaderLeftPadding];
            v83 = v90 - v91;
          }
        }

        v84 = 0.0;
        v85 = v105;
        goto LABEL_22;
      }
    }

    else
    {
      [emojiGraphicsTraits inputViewLeftMostPadding];
      v70 = v69;
      [emojiGraphicsTraits categoryHeaderLeftPadding];
      v72 = v70 - (v71 + v71);
      v97 = v72;
    }

    [emojiGraphicsTraits inputViewLeftMostPadding];
    goto LABEL_16;
  }

  v110.receiver = self;
  v110.super_class = UIKeyboardEmojiLayout;
  v73 = [(UICollectionViewFlowLayout *)&v110 layoutAttributesForSupplementaryViewOfKind:kindCopy atIndexPath:pathCopy];
  if (![pathCopy item] && !objc_msgSend(pathCopy, "section"))
  {
    collectionView8 = [(UICollectionViewLayout *)self collectionView];
    emojiGraphicsTraits2 = [collectionView8 emojiGraphicsTraits];
    v76 = emojiGraphicsTraits2;
    if (emojiGraphicsTraits2 && (emojiGraphicsTraits2[8] & 1) != 0)
    {
      v77 = [kindCopy isEqualToString:@"UICollectionElementKindSectionHeader"];

      if (v77)
      {
        collectionView9 = [(UICollectionViewLayout *)self collectionView];
        superview = [collectionView9 superview];
        [superview frame];
        [UIKBResizableKeyplaneTransformation estimatedProgressForHeight:v80];
        v82 = v81;

        [v73 setAlpha:v82];
      }
    }

    else
    {
    }
  }

LABEL_23:

  return v73;
}

- (id)invalidationContextForBoundsChange:(CGRect)change
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = UIKeyboardEmojiLayout;
  v4 = [(UICollectionViewFlowLayout *)&v11 invalidationContextForBoundsChange:change.origin.x, change.origin.y, change.size.width, change.size.height];
  collectionView = [(UICollectionViewLayout *)self collectionView];
  numberOfSections = [collectionView numberOfSections];

  if (numberOfSections >= 1)
  {
    for (i = 0; i != numberOfSections; ++i)
    {
      v8 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:i];
      v12[0] = v8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
      [v4 invalidateSupplementaryElementsOfKind:@"UICollectionElementKindSectionHeader" atIndexPaths:v9];
    }
  }

  return v4;
}

- (BOOL)shouldInvalidateLayoutForPreferredLayoutAttributes:(id)attributes withOriginalAttributes:(id)originalAttributes
{
  originalAttributesCopy = originalAttributes;
  [attributes frame];
  Width = CGRectGetWidth(v16);
  [originalAttributesCopy frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v17.origin.x = v8;
  v17.origin.y = v10;
  v17.size.width = v12;
  v17.size.height = v14;
  return Width != CGRectGetWidth(v17);
}

- (id)invalidationContextForPreferredLayoutAttributes:(id)attributes withOriginalAttributes:(id)originalAttributes
{
  v23 = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = UIKeyboardEmojiLayout;
  v5 = [(UICollectionViewFlowLayout *)&v20 invalidationContextForPreferredLayoutAttributes:attributes withOriginalAttributes:originalAttributes];
  collectionView = [(UICollectionViewLayout *)self collectionView];
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = indexPathsForVisibleItems;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:{objc_msgSend(*(*(&v16 + 1) + 8 * i), "section", v16)}];
        v21 = v13;
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
        [v5 invalidateSupplementaryElementsOfKind:@"UICollectionElementKindSectionHeader" atIndexPaths:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v10);
  }

  return v5;
}

@end