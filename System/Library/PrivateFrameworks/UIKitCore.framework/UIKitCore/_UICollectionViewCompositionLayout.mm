@interface _UICollectionViewCompositionLayout
- (BOOL)shouldInvalidateLayoutForPreferredLayoutAttributes:(id)a3 withOriginalAttributes:(id)a4;
- (CGRect)_frameForLayout:(id)a3 offset:(CGPoint)a4 relativeToEdges:(unint64_t)a5 fromSiblingLayout:(id)a6;
- (CGSize)collectionViewContentSize;
- (NSArray)sublayouts;
- (_UICollectionViewCompositionLayout)init;
- (id)_originConvertedSublayoutAttributesForAttributes:(id)a3 inLayout:(id)a4;
- (id)invalidationContextForBoundsChange:(CGRect)a3;
- (id)invalidationContextForPreferredLayoutAttributes:(id)a3 withOriginalAttributes:(id)a4;
- (id)layoutAttributesForDecorationViewOfKind:(id)a3 atIndexPath:(id)a4;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4;
- (void)_prepareLayout:(id)a3;
- (void)addSublayout:(id)a3 forElementKinds:(id)a4;
- (void)addSublayout:(id)a3 forItems:(id)a4 inSection:(int64_t)a5 offset:(CGPoint)a6 relativeToEdges:(unint64_t)a7 fromSiblingLayout:(id)a8;
- (void)addSublayout:(id)a3 forRect:(CGRect)a4;
- (void)addSublayout:(id)a3 forSections:(id)a4 offset:(CGPoint)a5 relativeToEdges:(unint64_t)a6 fromSiblingLayout:(id)a7;
- (void)invalidateLayoutWithContext:(id)a3;
- (void)prepareLayout;
- (void)removeSublayout:(id)a3;
@end

@implementation _UICollectionViewCompositionLayout

- (_UICollectionViewCompositionLayout)init
{
  v7.receiver = self;
  v7.super_class = _UICollectionViewCompositionLayout;
  v2 = [(UICollectionViewLayout *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    sublayoutsDict = v2->_sublayoutsDict;
    v2->_sublayoutsDict = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [(NSMutableDictionary *)v2->_sublayoutsDict setObject:v5 forKeyedSubscript:@"UINoElementKind"];
  }

  return v2;
}

- (void)addSublayout:(id)a3 forRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  [v9 _setFrame:{x, y, width, height}];
  [v9 _setSublayoutType:1];
  [v9 _setCompositionLayout:self];
  v10 = [(NSMutableDictionary *)self->_sublayoutsDict objectForKeyedSubscript:@"UINoElementKind"];
  [v10 addObject:v9];
}

- (CGRect)_frameForLayout:(id)a3 offset:(CGPoint)a4 relativeToEdges:(unint64_t)a5 fromSiblingLayout:(id)a6
{
  y = a4.y;
  x = a4.x;
  v11 = *MEMORY[0x1E695F058];
  v10 = *(MEMORY[0x1E695F058] + 8);
  v12 = a6;
  [a3 collectionViewContentSize];
  v14 = v13;
  v16 = v15;
  [v12 _frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  rect = v23;

  if ((*(&self->super._collectionView->super.super._viewFlags + 18) & 0x40) != 0)
  {
    [(_UICollectionViewCompositionLayout *)self collectionViewContentSize];
    v27 = v26;
    v40.origin.x = v11;
    v40.origin.y = v10;
    v40.size.width = v14;
    v40.size.height = v16;
    v11 = v27 - CGRectGetWidth(v40);
    v24 = 8;
    v25 = 2;
    if ((a5 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v24 = 2;
    v25 = 8;
    if ((a5 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if ((a5 & 4) != 0)
  {
    v36 = [MEMORY[0x1E696AAA8] currentHandler];
    [v36 handleFailureInMethod:a2 object:self file:@"UICollectionViewCompositionLayout.m" lineNumber:79 description:@"UICollectionViewCompositionLayout cannot place a sublayout relative to both the top and bottom edge of a sibling layout"];
  }

  v41.origin.x = v18;
  v41.origin.y = v20;
  v41.size.width = v22;
  v41.size.height = rect;
  MinY = CGRectGetMinY(v41);
  v42.origin.x = v11;
  v42.origin.y = v10;
  v42.size.width = v14;
  v42.size.height = v16;
  v10 = MinY - (y + CGRectGetHeight(v42));
LABEL_8:
  if ((a5 & 4) != 0)
  {
    v43.origin.x = v18;
    v43.origin.y = v20;
    v43.size.width = v22;
    v43.size.height = rect;
    v10 = y + CGRectGetMaxY(v43);
  }

  v29 = v25 & a5;
  if ((v24 & a5) != 0)
  {
    if (v29)
    {
      v35 = [MEMORY[0x1E696AAA8] currentHandler];
      [v35 handleFailureInMethod:a2 object:self file:@"UICollectionViewCompositionLayout.m" lineNumber:86 description:@"UICollectionViewCompositionLayout cannot place a sublayout relative to both the leading and trailing edge of a sibling layout"];
    }

    v44.origin.x = v18;
    v44.origin.y = v20;
    v44.size.width = v22;
    v44.size.height = rect;
    MinX = CGRectGetMinX(v44);
    v45.origin.x = v11;
    v45.origin.y = v10;
    v45.size.width = v14;
    v45.size.height = v16;
    v11 = MinX - (x + CGRectGetWidth(v45));
  }

  if (v29)
  {
    v46.origin.x = v18;
    v46.origin.y = v20;
    v46.size.width = v22;
    v46.size.height = rect;
    v11 = x + CGRectGetMaxX(v46);
  }

  v31 = v11;
  v32 = v10;
  v33 = v14;
  v34 = v16;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (void)addSublayout:(id)a3 forSections:(id)a4 offset:(CGPoint)a5 relativeToEdges:(unint64_t)a6 fromSiblingLayout:(id)a7
{
  y = a5.y;
  x = a5.x;
  v19 = a3;
  v14 = a7;
  [v19 _setSections:a4];
  [v19 _setSublayoutType:2];
  [v19 _setCompositionLayout:self];
  if (v14)
  {
    v15 = [(_UICollectionViewCompositionLayout *)self sublayouts];
    v16 = [v15 containsObject:v14];

    if ((v16 & 1) == 0)
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      [v17 handleFailureInMethod:a2 object:self file:@"UICollectionViewCompositionLayout.m" lineNumber:101 description:{@"attempt to add layout (%@) to composition layout with sibling (%@) where the sibling does not have the same parent", v19, v14}];
    }
  }

  [v19 _setLayoutOffset:{x, y}];
  [v19 _setLayoutOffsetEdges:a6];
  [v19 _setSiblingLayout:v14];
  v18 = [(NSMutableDictionary *)self->_sublayoutsDict objectForKeyedSubscript:@"UINoElementKind"];
  [v18 addObject:v19];
}

- (void)addSublayout:(id)a3 forItems:(id)a4 inSection:(int64_t)a5 offset:(CGPoint)a6 relativeToEdges:(unint64_t)a7 fromSiblingLayout:(id)a8
{
  y = a6.y;
  x = a6.x;
  v24 = a3;
  v16 = a8;
  v17 = MEMORY[0x1E696AC90];
  v18 = a4;
  v19 = [v17 indexSetWithIndex:a5];
  [v24 _setSections:v19];

  [v24 _setItems:v18];
  [v24 _setSublayoutType:3];
  [v24 _setCompositionLayout:self];
  if (v16)
  {
    v20 = [(_UICollectionViewCompositionLayout *)self sublayouts];
    v21 = [v20 containsObject:v16];

    if ((v21 & 1) == 0)
    {
      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      [v22 handleFailureInMethod:a2 object:self file:@"UICollectionViewCompositionLayout.m" lineNumber:114 description:{@"attempt to add layout (%@) to composition layout with sibling (%@) where the sibling does not have the same parent", v24, v16}];
    }
  }

  [v24 _setLayoutOffset:{x, y}];
  [v24 _setLayoutOffsetEdges:a7];
  [v24 _setSiblingLayout:v16];
  v23 = [(NSMutableDictionary *)self->_sublayoutsDict objectForKeyedSubscript:@"UINoElementKind"];
  [v23 addObject:v24];
}

- (void)addSublayout:(id)a3 forElementKinds:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [v6 _setElementKinds:v7];
  [v6 _setSublayoutType:4];
  [v6 _setCompositionLayout:self];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(NSMutableDictionary *)self->_sublayoutsDict setObject:v6 forKeyedSubscript:*(*(&v13 + 1) + 8 * v12++), v13];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)removeSublayout:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  sublayoutsDict = self->_sublayoutsDict;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __54___UICollectionViewCompositionLayout_removeSublayout___block_invoke;
  v13 = &unk_1E70FFDB0;
  v14 = v4;
  v15 = v5;
  v7 = v5;
  v8 = v4;
  [(NSMutableDictionary *)sublayoutsDict enumerateKeysAndObjectsUsingBlock:&v10];
  [(NSMutableDictionary *)self->_sublayoutsDict removeObjectsForKeys:v7, v10, v11, v12, v13];
  v9 = [(NSMutableDictionary *)self->_sublayoutsDict objectForKeyedSubscript:@"UINoElementKind"];
  [v9 removeObject:v8];
}

- (NSArray)sublayouts
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v4 = [(NSMutableDictionary *)self->_sublayoutsDict valueForKey:@"UINoElementKind"];
  v5 = [v4 allObjects];
  v6 = [v3 initWithArray:v5];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [(NSMutableDictionary *)self->_sublayoutsDict objectEnumerator];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v6;
}

- (CGSize)collectionViewContentSize
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695F058];
  width = *(MEMORY[0x1E695F058] + 16);
  height = *(MEMORY[0x1E695F058] + 24);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [(_UICollectionViewCompositionLayout *)self sublayouts];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    x = *v2;
    y = v2[1];
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v18 + 1) + 8 * v11) _frame];
        v27.origin.x = v12;
        v27.origin.y = v13;
        v27.size.width = v14;
        v27.size.height = v15;
        v25.origin.x = x;
        v25.origin.y = y;
        v25.size.width = width;
        v25.size.height = height;
        v26 = CGRectUnion(v25, v27);
        x = v26.origin.x;
        y = v26.origin.y;
        width = v26.size.width;
        height = v26.size.height;
        ++v11;
      }

      while (v7 != v11);
      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v16 = width;
  v17 = height;
  result.height = v17;
  result.width = v16;
  return result;
}

- (id)_originConvertedSublayoutAttributesForAttributes:(id)a3 inLayout:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v7 _frame];
  if (v9 == *MEMORY[0x1E695EFF8] && v8 == *(MEMORY[0x1E695EFF8] + 8))
  {
    v11 = v6;
  }

  else
  {
    v11 = [v6 copy];
    [v6 frame];
    [(UICollectionViewLayout *)self convertRect:v7 fromLayout:?];
    [v11 setFrame:?];
  }

  return v11;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v50 = *MEMORY[0x1E69E9840];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = [(_UICollectionViewCompositionLayout *)self sublayouts];
  v9 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v45;
    do
    {
      v12 = 0;
      v38 = v10;
      do
      {
        if (*v45 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v44 + 1) + 8 * v12);
        [v13 _frame];
        v54.origin.x = v14;
        v54.origin.y = v15;
        v54.size.width = v16;
        v54.size.height = v17;
        v52.origin.x = x;
        v52.origin.y = y;
        v52.size.width = width;
        v52.size.height = height;
        if (CGRectIntersectsRect(v52, v54))
        {
          [(UICollectionViewLayout *)self convertRect:v13 toLayout:x, y, width, height];
          v19 = v18;
          v21 = v20;
          v23 = v22;
          v25 = v24;
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v26 = [v13 layoutAttributesForElementsInRect:v18];
          v27 = [v26 countByEnumeratingWithState:&v40 objects:v48 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v41;
            do
            {
              for (i = 0; i != v28; ++i)
              {
                if (*v41 != v29)
                {
                  objc_enumerationMutation(v26);
                }

                v31 = *(*(&v40 + 1) + 8 * i);
                [v31 frame];
                v55.origin.x = v32;
                v55.origin.y = v33;
                v55.size.width = v34;
                v55.size.height = v35;
                v53.origin.x = v19;
                v53.origin.y = v21;
                v53.size.width = v23;
                v53.size.height = v25;
                if (CGRectIntersectsRect(v53, v55))
                {
                  v36 = [(_UICollectionViewCompositionLayout *)self _originConvertedSublayoutAttributesForAttributes:v31 inLayout:v13];
                  [v8 addObject:v36];
                }
              }

              v28 = [v26 countByEnumeratingWithState:&v40 objects:v48 count:16];
            }

            while (v28);
          }

          v10 = v38;
        }

        ++v12;
      }

      while (v12 != v10);
      v10 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v10);
  }

  return v8;
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(NSMutableDictionary *)self->_sublayoutsDict objectForKeyedSubscript:0x1EFB32ED0];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 layoutAttributesForItemAtIndexPath:v5];
    v9 = [(_UICollectionViewCompositionLayout *)self _originConvertedSublayoutAttributesForAttributes:v8 inLayout:v7];
  }

  else
  {
    v22 = a2;
    v23 = v5;
    v10 = [v5 section];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = [(NSMutableDictionary *)self->_sublayoutsDict objectForKeyedSubscript:@"UINoElementKind"];
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
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
          v17 = [v16 _sections];
          v18 = [v17 containsIndex:v10];

          if (v18)
          {
            v5 = v23;
            v20 = [v16 layoutAttributesForItemAtIndexPath:v23];
            v9 = [(_UICollectionViewCompositionLayout *)self _originConvertedSublayoutAttributesForAttributes:v20 inLayout:v16];

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
    }

    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:v22 object:self file:@"UICollectionViewCompositionLayout.m" lineNumber:208 description:{@"composition layout (%@) does not have a sublayout for UICollectionElementKindCell or for section %ld", self, v10}];

    v9 = 0;
    v5 = v23;
  }

LABEL_13:

  return v9;
}

- (BOOL)shouldInvalidateLayoutForPreferredLayoutAttributes:(id)a3 withOriginalAttributes:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  sublayoutsDict = self->_sublayoutsDict;
  v10 = [(_UILabelConfiguration *)v8 _content];
  v11 = [(NSMutableDictionary *)sublayoutsDict objectForKeyedSubscript:v10];

  if (v11)
  {
    v12 = [v11 shouldInvalidateLayoutForPreferredLayoutAttributes:v7 withOriginalAttributes:v8];
  }

  else
  {
    v25 = a2;
    v27 = v7;
    v13 = [v8 indexPath];
    v14 = [v13 section];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = self;
    v15 = [(NSMutableDictionary *)self->_sublayoutsDict objectForKeyedSubscript:@"UINoElementKind"];
    v16 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v29;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v29 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v28 + 1) + 8 * i);
          v21 = [v20 _sections];
          v22 = [v21 containsIndex:v14];

          if (v22)
          {
            v7 = v27;
            v12 = [v20 shouldInvalidateLayoutForPreferredLayoutAttributes:v27 withOriginalAttributes:v8];

            goto LABEL_13;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:v25 object:v26 file:v14 lineNumber:? description:?];

    v12 = 0;
    v7 = v27;
  }

LABEL_13:

  return v12;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [(NSMutableDictionary *)self->_sublayoutsDict objectForKeyedSubscript:v7];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 layoutAttributesForSupplementaryViewOfKind:v7 atIndexPath:v8];
  }

  else
  {
    v23 = a2;
    v25 = v8;
    v12 = [v8 section];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v24 = self;
    v13 = [(NSMutableDictionary *)self->_sublayoutsDict objectForKeyedSubscript:@"UINoElementKind"];
    v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v27;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v26 + 1) + 8 * i);
          v19 = [v18 _sections];
          v20 = [v19 containsIndex:v12];

          if (v20)
          {
            v8 = v25;
            v11 = [v18 layoutAttributesForSupplementaryViewOfKind:v7 atIndexPath:v25];

            goto LABEL_13;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:v23 object:v24 file:v7 lineNumber:v12 description:?];

    v11 = 0;
    v8 = v25;
  }

LABEL_13:

  return v11;
}

- (id)layoutAttributesForDecorationViewOfKind:(id)a3 atIndexPath:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [(NSMutableDictionary *)self->_sublayoutsDict objectForKeyedSubscript:v7];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 layoutAttributesForDecorationViewOfKind:v7 atIndexPath:v8];
  }

  else
  {
    v23 = a2;
    v25 = v8;
    v12 = [v8 section];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v24 = self;
    v13 = [(NSMutableDictionary *)self->_sublayoutsDict objectForKeyedSubscript:@"UINoElementKind"];
    v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v27;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v26 + 1) + 8 * i);
          v19 = [v18 _sections];
          v20 = [v19 containsIndex:v12];

          if (v20)
          {
            v8 = v25;
            v11 = [v18 layoutAttributesForDecorationViewOfKind:v7 atIndexPath:v25];

            goto LABEL_13;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:v23 object:v24 file:v7 lineNumber:v12 description:?];

    v11 = 0;
    v8 = v25;
  }

LABEL_13:

  return v11;
}

- (void)prepareLayout
{
  v14 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = _UICollectionViewCompositionLayout;
  [(UICollectionViewLayout *)&v12 prepareLayout];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [(_UICollectionViewCompositionLayout *)self sublayouts];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(_UICollectionViewCompositionLayout *)self _prepareLayout:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_prepareLayout:(id)a3
{
  v4 = a3;
  v11 = [v4 _siblingLayout];
  if (v11 && ([v11 _isPrepared] & 1) == 0)
  {
    [(_UICollectionViewCompositionLayout *)self _prepareLayout:v11];
  }

  [v4 prepareLayout];
  [v4 _layoutOffset];
  v6 = v5;
  v8 = v7;
  v9 = [v4 _layoutOffsetEdges];
  v10 = [v4 _siblingLayout];
  [(_UICollectionViewCompositionLayout *)self _frameForLayout:v4 offset:v9 relativeToEdges:v10 fromSiblingLayout:v6, v8];
  [v4 _setFrame:?];
}

- (void)invalidateLayoutWithContext:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v28.receiver = self;
  v28.super_class = _UICollectionViewCompositionLayout;
  [(UICollectionViewLayout *)&v28 invalidateLayoutWithContext:v4];
  v5 = [v4 _invalidationContextTable];
  v6 = v5;
  if (v5)
  {
    v26 = 0uLL;
    v27 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    v7 = [v5 keyEnumerator];
    v8 = [v7 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          v13 = [v6 objectForKey:v12];
          [v12 invalidateLayoutWithContext:v13];
        }

        v9 = [v7 countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v22 = 0uLL;
    v23 = 0uLL;
    *(&v20 + 1) = 0;
    v21 = 0uLL;
    v7 = [(_UICollectionViewCompositionLayout *)self sublayouts];
    v14 = [v7 countByEnumeratingWithState:&v20 objects:v29 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v7);
          }

          v18 = *(*(&v20 + 1) + 8 * j);
          v19 = objc_alloc_init([objc_opt_class() invalidationContextClass]);
          [v19 _setInvalidateEverything:{objc_msgSend(v4, "invalidateEverything")}];
          [v19 _setInvalidateDataSourceCounts:{objc_msgSend(v4, "invalidateDataSourceCounts")}];
          [v18 invalidateLayoutWithContext:v19];
        }

        v15 = [v7 countByEnumeratingWithState:&v20 objects:v29 count:16];
      }

      while (v15);
    }
  }
}

- (id)invalidationContextForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v23 = *MEMORY[0x1E69E9840];
  v8 = objc_alloc_init([objc_opt_class() invalidationContextClass]);
  v9 = objc_alloc_init(MEMORY[0x1E696AD18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [(_UICollectionViewCompositionLayout *)self sublayouts];
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        v16 = [v15 invalidationContextForBoundsChange:{x, y, width, height}];
        [v9 setObject:v16 forKey:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  [v8 _setInvalidationContextTable:v9];

  return v8;
}

- (id)invalidationContextForPreferredLayoutAttributes:(id)a3 withOriginalAttributes:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v33.receiver = self;
  v33.super_class = _UICollectionViewCompositionLayout;
  v8 = [(UICollectionViewLayout *)&v33 invalidationContextForPreferredLayoutAttributes:v6 withOriginalAttributes:v7];
  v9 = objc_alloc_init(MEMORY[0x1E696AD18]);
  sublayoutsDict = self->_sublayoutsDict;
  v11 = [(_UILabelConfiguration *)v7 _content];
  v12 = [(NSMutableDictionary *)sublayoutsDict objectForKeyedSubscript:v11];

  if (!v12)
  {
    v13 = [v7 indexPath];
    v14 = [v13 section];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v15 = [(NSMutableDictionary *)self->_sublayoutsDict objectForKeyedSubscript:@"UINoElementKind"];
    v16 = [v15 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v16)
    {
      v17 = v16;
      v27 = v8;
      v28 = v6;
      v18 = *v30;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v30 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v29 + 1) + 8 * i);
          v21 = [v20 _sections];
          v22 = [v21 containsIndex:v14];

          if (v22)
          {
            v12 = v20;
            goto LABEL_12;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }

      v12 = 0;
LABEL_12:
      v8 = v27;
      v6 = v28;
    }

    else
    {
      v12 = 0;
    }
  }

  v23 = [v12 invalidationContextForPreferredLayoutAttributes:v6 withOriginalAttributes:v7];
  v24 = v23;
  if (v23)
  {
    v25 = [v23 invalidatedItemIndexPaths];
    [v8 invalidateItemsAtIndexPaths:v25];

    [v9 setObject:v24 forKey:v12];
  }

  [v8 _setInvalidationContextTable:v9];

  return v8;
}

@end