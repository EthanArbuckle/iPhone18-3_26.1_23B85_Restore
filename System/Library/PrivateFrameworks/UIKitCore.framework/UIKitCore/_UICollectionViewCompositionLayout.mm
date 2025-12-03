@interface _UICollectionViewCompositionLayout
- (BOOL)shouldInvalidateLayoutForPreferredLayoutAttributes:(id)attributes withOriginalAttributes:(id)originalAttributes;
- (CGRect)_frameForLayout:(id)layout offset:(CGPoint)offset relativeToEdges:(unint64_t)edges fromSiblingLayout:(id)siblingLayout;
- (CGSize)collectionViewContentSize;
- (NSArray)sublayouts;
- (_UICollectionViewCompositionLayout)init;
- (id)_originConvertedSublayoutAttributesForAttributes:(id)attributes inLayout:(id)layout;
- (id)invalidationContextForBoundsChange:(CGRect)change;
- (id)invalidationContextForPreferredLayoutAttributes:(id)attributes withOriginalAttributes:(id)originalAttributes;
- (id)layoutAttributesForDecorationViewOfKind:(id)kind atIndexPath:(id)path;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path;
- (void)_prepareLayout:(id)layout;
- (void)addSublayout:(id)sublayout forElementKinds:(id)kinds;
- (void)addSublayout:(id)sublayout forItems:(id)items inSection:(int64_t)section offset:(CGPoint)offset relativeToEdges:(unint64_t)edges fromSiblingLayout:(id)layout;
- (void)addSublayout:(id)sublayout forRect:(CGRect)rect;
- (void)addSublayout:(id)sublayout forSections:(id)sections offset:(CGPoint)offset relativeToEdges:(unint64_t)edges fromSiblingLayout:(id)layout;
- (void)invalidateLayoutWithContext:(id)context;
- (void)prepareLayout;
- (void)removeSublayout:(id)sublayout;
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

- (void)addSublayout:(id)sublayout forRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  sublayoutCopy = sublayout;
  [sublayoutCopy _setFrame:{x, y, width, height}];
  [sublayoutCopy _setSublayoutType:1];
  [sublayoutCopy _setCompositionLayout:self];
  v10 = [(NSMutableDictionary *)self->_sublayoutsDict objectForKeyedSubscript:@"UINoElementKind"];
  [v10 addObject:sublayoutCopy];
}

- (CGRect)_frameForLayout:(id)layout offset:(CGPoint)offset relativeToEdges:(unint64_t)edges fromSiblingLayout:(id)siblingLayout
{
  y = offset.y;
  x = offset.x;
  v11 = *MEMORY[0x1E695F058];
  v10 = *(MEMORY[0x1E695F058] + 8);
  siblingLayoutCopy = siblingLayout;
  [layout collectionViewContentSize];
  v14 = v13;
  v16 = v15;
  [siblingLayoutCopy _frame];
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
    if ((edges & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v24 = 2;
    v25 = 8;
    if ((edges & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if ((edges & 4) != 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UICollectionViewCompositionLayout.m" lineNumber:79 description:@"UICollectionViewCompositionLayout cannot place a sublayout relative to both the top and bottom edge of a sibling layout"];
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
  if ((edges & 4) != 0)
  {
    v43.origin.x = v18;
    v43.origin.y = v20;
    v43.size.width = v22;
    v43.size.height = rect;
    v10 = y + CGRectGetMaxY(v43);
  }

  v29 = v25 & edges;
  if ((v24 & edges) != 0)
  {
    if (v29)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"UICollectionViewCompositionLayout.m" lineNumber:86 description:@"UICollectionViewCompositionLayout cannot place a sublayout relative to both the leading and trailing edge of a sibling layout"];
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

- (void)addSublayout:(id)sublayout forSections:(id)sections offset:(CGPoint)offset relativeToEdges:(unint64_t)edges fromSiblingLayout:(id)layout
{
  y = offset.y;
  x = offset.x;
  sublayoutCopy = sublayout;
  layoutCopy = layout;
  [sublayoutCopy _setSections:sections];
  [sublayoutCopy _setSublayoutType:2];
  [sublayoutCopy _setCompositionLayout:self];
  if (layoutCopy)
  {
    sublayouts = [(_UICollectionViewCompositionLayout *)self sublayouts];
    v16 = [sublayouts containsObject:layoutCopy];

    if ((v16 & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UICollectionViewCompositionLayout.m" lineNumber:101 description:{@"attempt to add layout (%@) to composition layout with sibling (%@) where the sibling does not have the same parent", sublayoutCopy, layoutCopy}];
    }
  }

  [sublayoutCopy _setLayoutOffset:{x, y}];
  [sublayoutCopy _setLayoutOffsetEdges:edges];
  [sublayoutCopy _setSiblingLayout:layoutCopy];
  v18 = [(NSMutableDictionary *)self->_sublayoutsDict objectForKeyedSubscript:@"UINoElementKind"];
  [v18 addObject:sublayoutCopy];
}

- (void)addSublayout:(id)sublayout forItems:(id)items inSection:(int64_t)section offset:(CGPoint)offset relativeToEdges:(unint64_t)edges fromSiblingLayout:(id)layout
{
  y = offset.y;
  x = offset.x;
  sublayoutCopy = sublayout;
  layoutCopy = layout;
  v17 = MEMORY[0x1E696AC90];
  itemsCopy = items;
  v19 = [v17 indexSetWithIndex:section];
  [sublayoutCopy _setSections:v19];

  [sublayoutCopy _setItems:itemsCopy];
  [sublayoutCopy _setSublayoutType:3];
  [sublayoutCopy _setCompositionLayout:self];
  if (layoutCopy)
  {
    sublayouts = [(_UICollectionViewCompositionLayout *)self sublayouts];
    v21 = [sublayouts containsObject:layoutCopy];

    if ((v21 & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UICollectionViewCompositionLayout.m" lineNumber:114 description:{@"attempt to add layout (%@) to composition layout with sibling (%@) where the sibling does not have the same parent", sublayoutCopy, layoutCopy}];
    }
  }

  [sublayoutCopy _setLayoutOffset:{x, y}];
  [sublayoutCopy _setLayoutOffsetEdges:edges];
  [sublayoutCopy _setSiblingLayout:layoutCopy];
  v23 = [(NSMutableDictionary *)self->_sublayoutsDict objectForKeyedSubscript:@"UINoElementKind"];
  [v23 addObject:sublayoutCopy];
}

- (void)addSublayout:(id)sublayout forElementKinds:(id)kinds
{
  v18 = *MEMORY[0x1E69E9840];
  sublayoutCopy = sublayout;
  kindsCopy = kinds;
  [sublayoutCopy _setElementKinds:kindsCopy];
  [sublayoutCopy _setSublayoutType:4];
  [sublayoutCopy _setCompositionLayout:self];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = kindsCopy;
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

        [(NSMutableDictionary *)self->_sublayoutsDict setObject:sublayoutCopy forKeyedSubscript:*(*(&v13 + 1) + 8 * v12++), v13];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)removeSublayout:(id)sublayout
{
  sublayoutCopy = sublayout;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  sublayoutsDict = self->_sublayoutsDict;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __54___UICollectionViewCompositionLayout_removeSublayout___block_invoke;
  v13 = &unk_1E70FFDB0;
  v14 = sublayoutCopy;
  v15 = v5;
  v7 = v5;
  v8 = sublayoutCopy;
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
  allObjects = [v4 allObjects];
  v6 = [v3 initWithArray:allObjects];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  objectEnumerator = [(NSMutableDictionary *)self->_sublayoutsDict objectEnumerator];
  v8 = [objectEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v6 addObject:v12];
        }
      }

      v9 = [objectEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  sublayouts = [(_UICollectionViewCompositionLayout *)self sublayouts];
  v6 = [sublayouts countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(sublayouts);
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
      v7 = [sublayouts countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v16 = width;
  v17 = height;
  result.height = v17;
  result.width = v16;
  return result;
}

- (id)_originConvertedSublayoutAttributesForAttributes:(id)attributes inLayout:(id)layout
{
  attributesCopy = attributes;
  layoutCopy = layout;
  [layoutCopy _frame];
  if (v9 == *MEMORY[0x1E695EFF8] && v8 == *(MEMORY[0x1E695EFF8] + 8))
  {
    v11 = attributesCopy;
  }

  else
  {
    v11 = [attributesCopy copy];
    [attributesCopy frame];
    [(UICollectionViewLayout *)self convertRect:layoutCopy fromLayout:?];
    [v11 setFrame:?];
  }

  return v11;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
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

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  v29 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v6 = [(NSMutableDictionary *)self->_sublayoutsDict objectForKeyedSubscript:0x1EFB32ED0];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 layoutAttributesForItemAtIndexPath:pathCopy];
    v9 = [(_UICollectionViewCompositionLayout *)self _originConvertedSublayoutAttributesForAttributes:v8 inLayout:v7];
  }

  else
  {
    v22 = a2;
    v23 = pathCopy;
    section = [pathCopy section];
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
          _sections = [v16 _sections];
          v18 = [_sections containsIndex:section];

          if (v18)
          {
            pathCopy = v23;
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

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:v22 object:self file:@"UICollectionViewCompositionLayout.m" lineNumber:208 description:{@"composition layout (%@) does not have a sublayout for UICollectionElementKindCell or for section %ld", self, section}];

    v9 = 0;
    pathCopy = v23;
  }

LABEL_13:

  return v9;
}

- (BOOL)shouldInvalidateLayoutForPreferredLayoutAttributes:(id)attributes withOriginalAttributes:(id)originalAttributes
{
  v33 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  originalAttributesCopy = originalAttributes;
  sublayoutsDict = self->_sublayoutsDict;
  _content = [(_UILabelConfiguration *)originalAttributesCopy _content];
  v11 = [(NSMutableDictionary *)sublayoutsDict objectForKeyedSubscript:_content];

  if (v11)
  {
    v12 = [v11 shouldInvalidateLayoutForPreferredLayoutAttributes:attributesCopy withOriginalAttributes:originalAttributesCopy];
  }

  else
  {
    v25 = a2;
    v27 = attributesCopy;
    indexPath = [originalAttributesCopy indexPath];
    section = [indexPath section];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    selfCopy = self;
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
          _sections = [v20 _sections];
          v22 = [_sections containsIndex:section];

          if (v22)
          {
            attributesCopy = v27;
            v12 = [v20 shouldInvalidateLayoutForPreferredLayoutAttributes:v27 withOriginalAttributes:originalAttributesCopy];

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

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:v25 object:selfCopy file:section lineNumber:? description:?];

    v12 = 0;
    attributesCopy = v27;
  }

LABEL_13:

  return v12;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path
{
  v31 = *MEMORY[0x1E69E9840];
  kindCopy = kind;
  pathCopy = path;
  v9 = [(NSMutableDictionary *)self->_sublayoutsDict objectForKeyedSubscript:kindCopy];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 layoutAttributesForSupplementaryViewOfKind:kindCopy atIndexPath:pathCopy];
  }

  else
  {
    v23 = a2;
    v25 = pathCopy;
    section = [pathCopy section];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    selfCopy = self;
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
          _sections = [v18 _sections];
          v20 = [_sections containsIndex:section];

          if (v20)
          {
            pathCopy = v25;
            v11 = [v18 layoutAttributesForSupplementaryViewOfKind:kindCopy atIndexPath:v25];

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

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:v23 object:selfCopy file:kindCopy lineNumber:section description:?];

    v11 = 0;
    pathCopy = v25;
  }

LABEL_13:

  return v11;
}

- (id)layoutAttributesForDecorationViewOfKind:(id)kind atIndexPath:(id)path
{
  v31 = *MEMORY[0x1E69E9840];
  kindCopy = kind;
  pathCopy = path;
  v9 = [(NSMutableDictionary *)self->_sublayoutsDict objectForKeyedSubscript:kindCopy];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 layoutAttributesForDecorationViewOfKind:kindCopy atIndexPath:pathCopy];
  }

  else
  {
    v23 = a2;
    v25 = pathCopy;
    section = [pathCopy section];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    selfCopy = self;
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
          _sections = [v18 _sections];
          v20 = [_sections containsIndex:section];

          if (v20)
          {
            pathCopy = v25;
            v11 = [v18 layoutAttributesForDecorationViewOfKind:kindCopy atIndexPath:v25];

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

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:v23 object:selfCopy file:kindCopy lineNumber:section description:?];

    v11 = 0;
    pathCopy = v25;
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
  sublayouts = [(_UICollectionViewCompositionLayout *)self sublayouts];
  v4 = [sublayouts countByEnumeratingWithState:&v8 objects:v13 count:16];
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
          objc_enumerationMutation(sublayouts);
        }

        [(_UICollectionViewCompositionLayout *)self _prepareLayout:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [sublayouts countByEnumeratingWithState:&v8 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_prepareLayout:(id)layout
{
  layoutCopy = layout;
  _siblingLayout = [layoutCopy _siblingLayout];
  if (_siblingLayout && ([_siblingLayout _isPrepared] & 1) == 0)
  {
    [(_UICollectionViewCompositionLayout *)self _prepareLayout:_siblingLayout];
  }

  [layoutCopy prepareLayout];
  [layoutCopy _layoutOffset];
  v6 = v5;
  v8 = v7;
  _layoutOffsetEdges = [layoutCopy _layoutOffsetEdges];
  _siblingLayout2 = [layoutCopy _siblingLayout];
  [(_UICollectionViewCompositionLayout *)self _frameForLayout:layoutCopy offset:_layoutOffsetEdges relativeToEdges:_siblingLayout2 fromSiblingLayout:v6, v8];
  [layoutCopy _setFrame:?];
}

- (void)invalidateLayoutWithContext:(id)context
{
  v31 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v28.receiver = self;
  v28.super_class = _UICollectionViewCompositionLayout;
  [(UICollectionViewLayout *)&v28 invalidateLayoutWithContext:contextCopy];
  _invalidationContextTable = [contextCopy _invalidationContextTable];
  v6 = _invalidationContextTable;
  if (_invalidationContextTable)
  {
    v26 = 0uLL;
    v27 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    keyEnumerator = [_invalidationContextTable keyEnumerator];
    v8 = [keyEnumerator countByEnumeratingWithState:&v24 objects:v30 count:16];
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
            objc_enumerationMutation(keyEnumerator);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          v13 = [v6 objectForKey:v12];
          [v12 invalidateLayoutWithContext:v13];
        }

        v9 = [keyEnumerator countByEnumeratingWithState:&v24 objects:v30 count:16];
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
    keyEnumerator = [(_UICollectionViewCompositionLayout *)self sublayouts];
    v14 = [keyEnumerator countByEnumeratingWithState:&v20 objects:v29 count:16];
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
            objc_enumerationMutation(keyEnumerator);
          }

          v18 = *(*(&v20 + 1) + 8 * j);
          v19 = objc_alloc_init([objc_opt_class() invalidationContextClass]);
          [v19 _setInvalidateEverything:{objc_msgSend(contextCopy, "invalidateEverything")}];
          [v19 _setInvalidateDataSourceCounts:{objc_msgSend(contextCopy, "invalidateDataSourceCounts")}];
          [v18 invalidateLayoutWithContext:v19];
        }

        v15 = [keyEnumerator countByEnumeratingWithState:&v20 objects:v29 count:16];
      }

      while (v15);
    }
  }
}

- (id)invalidationContextForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
  v23 = *MEMORY[0x1E69E9840];
  v8 = objc_alloc_init([objc_opt_class() invalidationContextClass]);
  v9 = objc_alloc_init(MEMORY[0x1E696AD18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  sublayouts = [(_UICollectionViewCompositionLayout *)self sublayouts];
  v11 = [sublayouts countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(sublayouts);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        v16 = [v15 invalidationContextForBoundsChange:{x, y, width, height}];
        [v9 setObject:v16 forKey:v15];
      }

      v12 = [sublayouts countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  [v8 _setInvalidationContextTable:v9];

  return v8;
}

- (id)invalidationContextForPreferredLayoutAttributes:(id)attributes withOriginalAttributes:(id)originalAttributes
{
  v35 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  originalAttributesCopy = originalAttributes;
  v33.receiver = self;
  v33.super_class = _UICollectionViewCompositionLayout;
  v8 = [(UICollectionViewLayout *)&v33 invalidationContextForPreferredLayoutAttributes:attributesCopy withOriginalAttributes:originalAttributesCopy];
  v9 = objc_alloc_init(MEMORY[0x1E696AD18]);
  sublayoutsDict = self->_sublayoutsDict;
  _content = [(_UILabelConfiguration *)originalAttributesCopy _content];
  v12 = [(NSMutableDictionary *)sublayoutsDict objectForKeyedSubscript:_content];

  if (!v12)
  {
    indexPath = [originalAttributesCopy indexPath];
    section = [indexPath section];

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
      v28 = attributesCopy;
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
          _sections = [v20 _sections];
          v22 = [_sections containsIndex:section];

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
      attributesCopy = v28;
    }

    else
    {
      v12 = 0;
    }
  }

  v23 = [v12 invalidationContextForPreferredLayoutAttributes:attributesCopy withOriginalAttributes:originalAttributesCopy];
  v24 = v23;
  if (v23)
  {
    invalidatedItemIndexPaths = [v23 invalidatedItemIndexPaths];
    [v8 invalidateItemsAtIndexPaths:invalidatedItemIndexPaths];

    [v9 setObject:v24 forKey:v12];
  }

  [v8 _setInvalidationContextTable:v9];

  return v8;
}

@end