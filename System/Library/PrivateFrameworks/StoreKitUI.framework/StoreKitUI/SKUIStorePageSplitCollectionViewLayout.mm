@interface SKUIStorePageSplitCollectionViewLayout
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change;
- (CGRect)_frameForLayout:(id)layout offset:(CGPoint)offset relativeToEdges:(unint64_t)edges fromSiblingLayout:(id)siblingLayout;
- (NSArray)indexPathsForPinningItems;
- (SKUIStorePageSplitCollectionViewLayout)init;
- (id)_newStorePageCollectionViewLayout;
- (id)layoutAttributesForUnpinnedItemAtIndexPath:(id)path;
- (id)pinnedLayoutAttributesForItemsInRect:(CGRect)rect;
- (void)_createSectionsToIndexRangesMapTableIfNeededForSublayout:(id)sublayout;
- (void)addSublayout:(id)sublayout forElementKinds:(id)kinds;
- (void)addSublayout:(id)sublayout forItems:(id)items inSection:(int64_t)section offset:(CGPoint)offset relativeToEdges:(unint64_t)edges fromSiblingLayout:(id)layout;
- (void)addSublayout:(id)sublayout forSections:(id)sections offset:(CGPoint)offset relativeToEdges:(unint64_t)edges fromSiblingLayout:(id)layout;
- (void)addSublayoutsUsingSplitsDescription:(id)description;
- (void)init;
- (void)removeSublayout:(id)sublayout;
- (void)setBackdropGroupName:(id)name;
- (void)setRendersWithParallax:(BOOL)parallax;
- (void)setRendersWithPerspective:(BOOL)perspective;
@end

@implementation SKUIStorePageSplitCollectionViewLayout

- (SKUIStorePageSplitCollectionViewLayout)init
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIStorePageSplitCollectionViewLayout init];
  }

  v7.receiver = self;
  v7.super_class = SKUIStorePageSplitCollectionViewLayout;
  v3 = [(_UICollectionViewCompositionLayout *)&v7 init];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    orderedSublayouts = v3->_orderedSublayouts;
    v3->_orderedSublayouts = v4;

    [(SKUIStorePageSplitCollectionViewLayout *)v3 registerClass:objc_opt_class() forDecorationViewOfKind:0x28280D8E8];
    [(SKUIStorePageSplitCollectionViewLayout *)v3 registerClass:objc_opt_class() forDecorationViewOfKind:0x282808328];
  }

  return v3;
}

- (void)addSublayoutsUsingSplitsDescription:(id)description
{
  v52 = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  sublayouts = [(SKUIStorePageSplitCollectionViewLayout *)self sublayouts];
  v6 = [sublayouts copy];

  numberOfSplits = [descriptionCopy numberOfSplits];
  if (numberOfSplits == [v6 count])
  {
    v8 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:512 valueOptions:512 capacity:0];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __78__SKUIStorePageSplitCollectionViewLayout_addSublayoutsUsingSplitsDescription___block_invoke;
    v48[3] = &unk_2781FFE58;
    v9 = v8;
    v49 = v9;
    v50 = v6;
    [descriptionCopy enumerateSplitsUsingBlock:v48];
  }

  else
  {
    v9 = 0;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v44 objects:v51 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v45;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v45 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(SKUIStorePageSplitCollectionViewLayout *)self removeSublayout:*(*(&v44 + 1) + 8 * i)];
      }

      v12 = [v10 countByEnumeratingWithState:&v44 objects:v51 count:16];
    }

    while (v12);
  }

  topSplit = [descriptionCopy topSplit];
  v16 = MEMORY[0x277CBF348];
  v40 = topSplit;
  if (topSplit)
  {
    v17 = topSplit;
    _newStorePageCollectionViewLayout = [v9 objectForKey:topSplit];
    if (!_newStorePageCollectionViewLayout)
    {
      _newStorePageCollectionViewLayout = [(SKUIStorePageSplitCollectionViewLayout *)self _newStorePageCollectionViewLayout];
    }

    numberOfPageSections = [v17 numberOfPageSections];
    v20 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, numberOfPageSections}];
    [(SKUIStorePageSplitCollectionViewLayout *)self addSublayout:_newStorePageCollectionViewLayout forSections:v20 offset:0 relativeToEdges:0 fromSiblingLayout:*v16, v16[1]];

    v43 = _newStorePageCollectionViewLayout;
    v21 = 4;
  }

  else
  {
    v21 = 0;
    v43 = 0;
    numberOfPageSections = 0;
  }

  leftSplit = [descriptionCopy leftSplit];
  v42 = v9;
  if (leftSplit)
  {
    v23 = descriptionCopy;
    _newStorePageCollectionViewLayout2 = [v9 objectForKey:leftSplit];
    if (!_newStorePageCollectionViewLayout2)
    {
      _newStorePageCollectionViewLayout2 = [(SKUIStorePageSplitCollectionViewLayout *)self _newStorePageCollectionViewLayout];
    }

    numberOfPageSections2 = [leftSplit numberOfPageSections];
    sectionContext = [leftSplit sectionContext];
    [sectionContext activePageWidth];
    [_newStorePageCollectionViewLayout2 setOverrideContentWidth:?];

    v27 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{numberOfPageSections, numberOfPageSections2}];
    [(SKUIStorePageSplitCollectionViewLayout *)self addSublayout:_newStorePageCollectionViewLayout2 forSections:v27 offset:v21 relativeToEdges:v43 fromSiblingLayout:*v16, v16[1]];

    numberOfPageSections += numberOfPageSections2;
    v28 = _newStorePageCollectionViewLayout2;

    v21 = 8;
    v41 = v28;
    descriptionCopy = v23;
    v9 = v42;
  }

  else
  {
    v41 = 0;
    v28 = v43;
  }

  rightSplit = [descriptionCopy rightSplit];
  if (rightSplit)
  {
    v39 = descriptionCopy;
    _newStorePageCollectionViewLayout3 = [v9 objectForKey:rightSplit];
    if (!_newStorePageCollectionViewLayout3)
    {
      _newStorePageCollectionViewLayout3 = [(SKUIStorePageSplitCollectionViewLayout *)self _newStorePageCollectionViewLayout];
    }

    numberOfPageSections3 = [rightSplit numberOfPageSections];
    sectionContext2 = [rightSplit sectionContext];
    [sectionContext2 activePageWidth];
    [_newStorePageCollectionViewLayout3 setOverrideContentWidth:?];

    v33 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{numberOfPageSections, numberOfPageSections3}];
    [(SKUIStorePageSplitCollectionViewLayout *)self addSublayout:_newStorePageCollectionViewLayout3 forSections:v33 offset:v21 relativeToEdges:v28 fromSiblingLayout:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];

    numberOfPageSections += numberOfPageSections3;
    v34 = v41;

    v28 = v34;
    descriptionCopy = v39;
    v9 = v42;
  }

  bottomSplit = [descriptionCopy bottomSplit];
  if (bottomSplit)
  {
    _newStorePageCollectionViewLayout4 = [v9 objectForKey:bottomSplit];
    if (!_newStorePageCollectionViewLayout4)
    {
      _newStorePageCollectionViewLayout4 = [(SKUIStorePageSplitCollectionViewLayout *)self _newStorePageCollectionViewLayout];
    }

    numberOfPageSections4 = [bottomSplit numberOfPageSections];
    v38 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{numberOfPageSections, numberOfPageSections4}];
    [(SKUIStorePageSplitCollectionViewLayout *)self addSublayout:_newStorePageCollectionViewLayout4 forSections:v38 offset:4 relativeToEdges:v28 fromSiblingLayout:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];

    v9 = v42;
  }
}

void __78__SKUIStorePageSplitCollectionViewLayout_addSublayoutsUsingSplitsDescription___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 objectAtIndex:a3];
  [v4 setObject:v7 forKey:v6];
}

- (NSArray)indexPathsForPinningItems
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sublayouts = [(SKUIStorePageSplitCollectionViewLayout *)self sublayouts];
  v3 = [sublayouts countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    array = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(sublayouts);
        }

        indexPathsForPinningItems = [*(*(&v10 + 1) + 8 * i) indexPathsForPinningItems];
        if ([indexPathsForPinningItems count])
        {
          if (!array)
          {
            array = [MEMORY[0x277CBEB18] array];
          }

          [array addObjectsFromArray:indexPathsForPinningItems];
        }
      }

      v4 = [sublayouts countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    array = 0;
  }

  return array;
}

- (id)layoutAttributesForUnpinnedItemAtIndexPath:(id)path
{
  v25 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  section = [pathCopy section];
  item = [pathCopy item];
  v19 = [MEMORY[0x277CCABB0] numberWithInteger:section];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  sublayouts = [(SKUIStorePageSplitCollectionViewLayout *)self sublayouts];
  v8 = [sublayouts countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v18 = pathCopy;
    v10 = *v21;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(sublayouts);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [(NSMapTable *)self->_sublayoutToSectionsToIndexRanges objectForKey:v12, v18];
        v14 = v13;
        if (v13)
        {
          v15 = [v13 objectForKey:v19];
          if ([v15 containsIndex:item])
          {
            pathCopy = v18;
            v16 = [v12 layoutAttributesForUnpinnedItemAtIndexPath:v18];

            goto LABEL_14;
          }
        }
      }

      v9 = [sublayouts countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }

    v16 = 0;
    pathCopy = v18;
  }

  else
  {
    v16 = 0;
  }

LABEL_14:

  return v16;
}

- (id)pinnedLayoutAttributesForItemsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = self->_orderedSublayouts;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        [(SKUIStorePageSplitCollectionViewLayout *)self convertRect:v14 toLayout:x, y, width, height, v17];
        v15 = [v14 pinnedLayoutAttributesForItemsInRect:?];
        if ([v15 count])
        {
          if (v11)
          {
            [v11 addObjectsFromArray:v15];
          }

          else
          {
            v11 = [v15 mutableCopy];
          }
        }
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)setBackdropGroupName:(id)name
{
  v18 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  backdropGroupName = self->_backdropGroupName;
  if (backdropGroupName != nameCopy && ![(NSString *)backdropGroupName isEqualToString:nameCopy])
  {
    v6 = [(NSString *)nameCopy copy];
    v7 = self->_backdropGroupName;
    self->_backdropGroupName = v6;

    sublayouts = [(SKUIStorePageSplitCollectionViewLayout *)self sublayouts];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = [sublayouts countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(sublayouts);
          }

          [*(*(&v13 + 1) + 8 * v12++) setBackdropGroupName:nameCopy];
        }

        while (v10 != v12);
        v10 = [sublayouts countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

- (void)setRendersWithPerspective:(BOOL)perspective
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_rendersWithPerspective != perspective)
  {
    perspectiveCopy = perspective;
    self->_rendersWithPerspective = perspective;
    sublayouts = [(SKUIStorePageSplitCollectionViewLayout *)self sublayouts];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [sublayouts countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(sublayouts);
          }

          [*(*(&v9 + 1) + 8 * i) setRendersWithPerspective:perspectiveCopy];
        }

        v6 = [sublayouts countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)setRendersWithParallax:(BOOL)parallax
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_rendersWithParallax != parallax)
  {
    self->_rendersWithParallax = parallax;
    sublayouts = [(SKUIStorePageSplitCollectionViewLayout *)self sublayouts];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [sublayouts countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(sublayouts);
          }

          [*(*(&v9 + 1) + 8 * v8++) setRendersWithParallax:self->_rendersWithParallax];
        }

        while (v6 != v8);
        v6 = [sublayouts countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)addSublayout:(id)sublayout forElementKinds:(id)kinds
{
  rendersWithPerspective = self->_rendersWithPerspective;
  kindsCopy = kinds;
  sublayoutCopy = sublayout;
  [sublayoutCopy setRendersWithPerspective:rendersWithPerspective];
  [sublayoutCopy setRendersWithParallax:self->_rendersWithParallax];
  [(NSMutableArray *)self->_orderedSublayouts addObject:sublayoutCopy];
  v9.receiver = self;
  v9.super_class = SKUIStorePageSplitCollectionViewLayout;
  [(_UICollectionViewCompositionLayout *)&v9 addSublayout:sublayoutCopy forElementKinds:kindsCopy];
}

- (void)addSublayout:(id)sublayout forItems:(id)items inSection:(int64_t)section offset:(CGPoint)offset relativeToEdges:(unint64_t)edges fromSiblingLayout:(id)layout
{
  y = offset.y;
  x = offset.x;
  sublayoutCopy = sublayout;
  itemsCopy = items;
  layoutCopy = layout;
  [sublayoutCopy setRendersWithPerspective:self->_rendersWithPerspective];
  [sublayoutCopy setRendersWithParallax:self->_rendersWithParallax];
  [(NSMutableArray *)self->_orderedSublayouts addObject:sublayoutCopy];
  [(SKUIStorePageSplitCollectionViewLayout *)self _createSectionsToIndexRangesMapTableIfNeededForSublayout:sublayoutCopy];
  v18 = [(NSMapTable *)self->_sublayoutToSectionsToIndexRanges objectForKey:sublayoutCopy];
  v19 = [MEMORY[0x277CCABB0] numberWithInteger:section];
  v20 = [v18 objectForKey:v19];
  if (v20)
  {
    v21 = v20;
    [v20 addIndexes:itemsCopy];
LABEL_5:

    goto LABEL_6;
  }

  v22 = [itemsCopy mutableCopy];
  if (v22)
  {
    v21 = v22;
    [v18 setObject:v22 forKey:v19];
    goto LABEL_5;
  }

LABEL_6:
  v23.receiver = self;
  v23.super_class = SKUIStorePageSplitCollectionViewLayout;
  [(_UICollectionViewCompositionLayout *)&v23 addSublayout:sublayoutCopy forItems:itemsCopy inSection:section offset:edges relativeToEdges:layoutCopy fromSiblingLayout:x, y];
}

- (void)addSublayout:(id)sublayout forSections:(id)sections offset:(CGPoint)offset relativeToEdges:(unint64_t)edges fromSiblingLayout:(id)layout
{
  y = offset.y;
  x = offset.x;
  rendersWithPerspective = self->_rendersWithPerspective;
  layoutCopy = layout;
  sectionsCopy = sections;
  sublayoutCopy = sublayout;
  [sublayoutCopy setRendersWithPerspective:rendersWithPerspective];
  [sublayoutCopy setRendersWithParallax:self->_rendersWithParallax];
  [(NSMutableArray *)self->_orderedSublayouts addObject:sublayoutCopy];
  [(SKUIStorePageSplitCollectionViewLayout *)self _createSectionsToIndexRangesMapTableIfNeededForSublayout:sublayoutCopy];
  v17 = [(NSMapTable *)self->_sublayoutToSectionsToIndexRanges objectForKey:sublayoutCopy];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __108__SKUIStorePageSplitCollectionViewLayout_addSublayout_forSections_offset_relativeToEdges_fromSiblingLayout___block_invoke;
  v20[3] = &unk_2781FC790;
  v21 = v17;
  v18 = v17;
  [sectionsCopy enumerateIndexesUsingBlock:v20];
  v19.receiver = self;
  v19.super_class = SKUIStorePageSplitCollectionViewLayout;
  [(_UICollectionViewCompositionLayout *)&v19 addSublayout:sublayoutCopy forSections:sectionsCopy offset:edges relativeToEdges:layoutCopy fromSiblingLayout:x, y];
}

void __108__SKUIStorePageSplitCollectionViewLayout_addSublayout_forSections_offset_relativeToEdges_fromSiblingLayout___block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCAB58] indexSetWithIndexesInRange:{0, 0x7FFFFFFFFFFFFFFFLL}];
  [v3 setObject:v4 forKey:v5];
}

- (CGRect)_frameForLayout:(id)layout offset:(CGPoint)offset relativeToEdges:(unint64_t)edges fromSiblingLayout:(id)siblingLayout
{
  y = offset.y;
  x = offset.x;
  siblingLayoutCopy = siblingLayout;
  v25.receiver = self;
  v25.super_class = SKUIStorePageSplitCollectionViewLayout;
  [(_UICollectionViewCompositionLayout *)&v25 _frameForLayout:layout offset:edges relativeToEdges:siblingLayoutCopy fromSiblingLayout:x, y];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  if (edges & 8) != 0 && (objc_opt_respondsToSelector())
  {
    [siblingLayoutCopy _frame];
    v15 = v20;
  }

  v21 = v13;
  v22 = v15;
  v23 = v17;
  v24 = v19;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (void)removeSublayout:(id)sublayout
{
  orderedSublayouts = self->_orderedSublayouts;
  sublayoutCopy = sublayout;
  [(NSMutableArray *)orderedSublayouts removeObjectIdenticalTo:sublayoutCopy];
  v6.receiver = self;
  v6.super_class = SKUIStorePageSplitCollectionViewLayout;
  [(_UICollectionViewCompositionLayout *)&v6 removeSublayout:sublayoutCopy];
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
  v21 = *MEMORY[0x277D85DE8];
  [(SKUIStorePageSplitCollectionViewLayout *)self sublayouts];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v19 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if ([*(*(&v16 + 1) + 8 * i) shouldInvalidateLayoutForBoundsChange:{x, y, width, height}])
        {

          height = 1;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v15.receiver = self;
  v15.super_class = SKUIStorePageSplitCollectionViewLayout;
  height = [(SKUIStorePageSplitCollectionViewLayout *)&v15 shouldInvalidateLayoutForBoundsChange:x, y, width, height];
LABEL_11:

  return height;
}

- (void)_createSectionsToIndexRangesMapTableIfNeededForSublayout:(id)sublayout
{
  sublayoutCopy = sublayout;
  v5 = sublayoutCopy;
  if (sublayoutCopy)
  {
    v10 = sublayoutCopy;
    if (self->_sublayoutToSectionsToIndexRanges)
    {
      v6 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
      sublayoutToSectionsToIndexRanges = self->_sublayoutToSectionsToIndexRanges;
      self->_sublayoutToSectionsToIndexRanges = v6;

      v5 = v10;
      v8 = self->_sublayoutToSectionsToIndexRanges;
    }

    else
    {
      v8 = 0;
    }

    v9 = [(NSMapTable *)v8 objectForKey:v5];
    if (!v9)
    {
      v9 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
      [(NSMapTable *)self->_sublayoutToSectionsToIndexRanges setObject:v9 forKey:v10];
    }

    v5 = v10;
  }

  MEMORY[0x2821F96F8](sublayoutCopy, v5);
}

- (id)_newStorePageCollectionViewLayout
{
  v3 = objc_alloc_init(SKUIStorePageCollectionViewLayout);
  [(SKUIStorePageCollectionViewLayout *)v3 setBackdropGroupName:self->_backdropGroupName];
  [(SKUIStorePageCollectionViewLayout *)v3 setRendersWithPerspective:self->_rendersWithPerspective];
  [(SKUIStorePageCollectionViewLayout *)v3 setRendersWithParallax:self->_rendersWithParallax];
  return v3;
}

- (void)init
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIStorePageSplitCollectionViewLayout init]";
}

@end