@interface SKUIStorePageSplitCollectionViewLayout
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3;
- (CGRect)_frameForLayout:(id)a3 offset:(CGPoint)a4 relativeToEdges:(unint64_t)a5 fromSiblingLayout:(id)a6;
- (NSArray)indexPathsForPinningItems;
- (SKUIStorePageSplitCollectionViewLayout)init;
- (id)_newStorePageCollectionViewLayout;
- (id)layoutAttributesForUnpinnedItemAtIndexPath:(id)a3;
- (id)pinnedLayoutAttributesForItemsInRect:(CGRect)a3;
- (void)_createSectionsToIndexRangesMapTableIfNeededForSublayout:(id)a3;
- (void)addSublayout:(id)a3 forElementKinds:(id)a4;
- (void)addSublayout:(id)a3 forItems:(id)a4 inSection:(int64_t)a5 offset:(CGPoint)a6 relativeToEdges:(unint64_t)a7 fromSiblingLayout:(id)a8;
- (void)addSublayout:(id)a3 forSections:(id)a4 offset:(CGPoint)a5 relativeToEdges:(unint64_t)a6 fromSiblingLayout:(id)a7;
- (void)addSublayoutsUsingSplitsDescription:(id)a3;
- (void)init;
- (void)removeSublayout:(id)a3;
- (void)setBackdropGroupName:(id)a3;
- (void)setRendersWithParallax:(BOOL)a3;
- (void)setRendersWithPerspective:(BOOL)a3;
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

- (void)addSublayoutsUsingSplitsDescription:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SKUIStorePageSplitCollectionViewLayout *)self sublayouts];
  v6 = [v5 copy];

  v7 = [v4 numberOfSplits];
  if (v7 == [v6 count])
  {
    v8 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:512 valueOptions:512 capacity:0];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __78__SKUIStorePageSplitCollectionViewLayout_addSublayoutsUsingSplitsDescription___block_invoke;
    v48[3] = &unk_2781FFE58;
    v9 = v8;
    v49 = v9;
    v50 = v6;
    [v4 enumerateSplitsUsingBlock:v48];
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

  v15 = [v4 topSplit];
  v16 = MEMORY[0x277CBF348];
  v40 = v15;
  if (v15)
  {
    v17 = v15;
    v18 = [v9 objectForKey:v15];
    if (!v18)
    {
      v18 = [(SKUIStorePageSplitCollectionViewLayout *)self _newStorePageCollectionViewLayout];
    }

    v19 = [v17 numberOfPageSections];
    v20 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, v19}];
    [(SKUIStorePageSplitCollectionViewLayout *)self addSublayout:v18 forSections:v20 offset:0 relativeToEdges:0 fromSiblingLayout:*v16, v16[1]];

    v43 = v18;
    v21 = 4;
  }

  else
  {
    v21 = 0;
    v43 = 0;
    v19 = 0;
  }

  v22 = [v4 leftSplit];
  v42 = v9;
  if (v22)
  {
    v23 = v4;
    v24 = [v9 objectForKey:v22];
    if (!v24)
    {
      v24 = [(SKUIStorePageSplitCollectionViewLayout *)self _newStorePageCollectionViewLayout];
    }

    v25 = [v22 numberOfPageSections];
    v26 = [v22 sectionContext];
    [v26 activePageWidth];
    [v24 setOverrideContentWidth:?];

    v27 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v19, v25}];
    [(SKUIStorePageSplitCollectionViewLayout *)self addSublayout:v24 forSections:v27 offset:v21 relativeToEdges:v43 fromSiblingLayout:*v16, v16[1]];

    v19 += v25;
    v28 = v24;

    v21 = 8;
    v41 = v28;
    v4 = v23;
    v9 = v42;
  }

  else
  {
    v41 = 0;
    v28 = v43;
  }

  v29 = [v4 rightSplit];
  if (v29)
  {
    v39 = v4;
    v30 = [v9 objectForKey:v29];
    if (!v30)
    {
      v30 = [(SKUIStorePageSplitCollectionViewLayout *)self _newStorePageCollectionViewLayout];
    }

    v31 = [v29 numberOfPageSections];
    v32 = [v29 sectionContext];
    [v32 activePageWidth];
    [v30 setOverrideContentWidth:?];

    v33 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v19, v31}];
    [(SKUIStorePageSplitCollectionViewLayout *)self addSublayout:v30 forSections:v33 offset:v21 relativeToEdges:v28 fromSiblingLayout:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];

    v19 += v31;
    v34 = v41;

    v28 = v34;
    v4 = v39;
    v9 = v42;
  }

  v35 = [v4 bottomSplit];
  if (v35)
  {
    v36 = [v9 objectForKey:v35];
    if (!v36)
    {
      v36 = [(SKUIStorePageSplitCollectionViewLayout *)self _newStorePageCollectionViewLayout];
    }

    v37 = [v35 numberOfPageSections];
    v38 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v19, v37}];
    [(SKUIStorePageSplitCollectionViewLayout *)self addSublayout:v36 forSections:v38 offset:4 relativeToEdges:v28 fromSiblingLayout:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];

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
  v2 = [(SKUIStorePageSplitCollectionViewLayout *)self sublayouts];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v10 + 1) + 8 * i) indexPathsForPinningItems];
        if ([v8 count])
        {
          if (!v5)
          {
            v5 = [MEMORY[0x277CBEB18] array];
          }

          [v5 addObjectsFromArray:v8];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)layoutAttributesForUnpinnedItemAtIndexPath:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 section];
  v6 = [v4 item];
  v19 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [(SKUIStorePageSplitCollectionViewLayout *)self sublayouts];
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v18 = v4;
    v10 = *v21;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [(NSMapTable *)self->_sublayoutToSectionsToIndexRanges objectForKey:v12, v18];
        v14 = v13;
        if (v13)
        {
          v15 = [v13 objectForKey:v19];
          if ([v15 containsIndex:v6])
          {
            v4 = v18;
            v16 = [v12 layoutAttributesForUnpinnedItemAtIndexPath:v18];

            goto LABEL_14;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }

    v16 = 0;
    v4 = v18;
  }

  else
  {
    v16 = 0;
  }

LABEL_14:

  return v16;
}

- (id)pinnedLayoutAttributesForItemsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)setBackdropGroupName:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  backdropGroupName = self->_backdropGroupName;
  if (backdropGroupName != v4 && ![(NSString *)backdropGroupName isEqualToString:v4])
  {
    v6 = [(NSString *)v4 copy];
    v7 = self->_backdropGroupName;
    self->_backdropGroupName = v6;

    v8 = [(SKUIStorePageSplitCollectionViewLayout *)self sublayouts];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
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

          [*(*(&v13 + 1) + 8 * v12++) setBackdropGroupName:v4];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

- (void)setRendersWithPerspective:(BOOL)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_rendersWithPerspective != a3)
  {
    v3 = a3;
    self->_rendersWithPerspective = a3;
    v4 = [(SKUIStorePageSplitCollectionViewLayout *)self sublayouts];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * i) setRendersWithPerspective:v3];
        }

        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)setRendersWithParallax:(BOOL)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_rendersWithParallax != a3)
  {
    self->_rendersWithParallax = a3;
    v4 = [(SKUIStorePageSplitCollectionViewLayout *)self sublayouts];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8++) setRendersWithParallax:self->_rendersWithParallax];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)addSublayout:(id)a3 forElementKinds:(id)a4
{
  rendersWithPerspective = self->_rendersWithPerspective;
  v7 = a4;
  v8 = a3;
  [v8 setRendersWithPerspective:rendersWithPerspective];
  [v8 setRendersWithParallax:self->_rendersWithParallax];
  [(NSMutableArray *)self->_orderedSublayouts addObject:v8];
  v9.receiver = self;
  v9.super_class = SKUIStorePageSplitCollectionViewLayout;
  [(_UICollectionViewCompositionLayout *)&v9 addSublayout:v8 forElementKinds:v7];
}

- (void)addSublayout:(id)a3 forItems:(id)a4 inSection:(int64_t)a5 offset:(CGPoint)a6 relativeToEdges:(unint64_t)a7 fromSiblingLayout:(id)a8
{
  y = a6.y;
  x = a6.x;
  v15 = a3;
  v16 = a4;
  v17 = a8;
  [v15 setRendersWithPerspective:self->_rendersWithPerspective];
  [v15 setRendersWithParallax:self->_rendersWithParallax];
  [(NSMutableArray *)self->_orderedSublayouts addObject:v15];
  [(SKUIStorePageSplitCollectionViewLayout *)self _createSectionsToIndexRangesMapTableIfNeededForSublayout:v15];
  v18 = [(NSMapTable *)self->_sublayoutToSectionsToIndexRanges objectForKey:v15];
  v19 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
  v20 = [v18 objectForKey:v19];
  if (v20)
  {
    v21 = v20;
    [v20 addIndexes:v16];
LABEL_5:

    goto LABEL_6;
  }

  v22 = [v16 mutableCopy];
  if (v22)
  {
    v21 = v22;
    [v18 setObject:v22 forKey:v19];
    goto LABEL_5;
  }

LABEL_6:
  v23.receiver = self;
  v23.super_class = SKUIStorePageSplitCollectionViewLayout;
  [(_UICollectionViewCompositionLayout *)&v23 addSublayout:v15 forItems:v16 inSection:a5 offset:a7 relativeToEdges:v17 fromSiblingLayout:x, y];
}

- (void)addSublayout:(id)a3 forSections:(id)a4 offset:(CGPoint)a5 relativeToEdges:(unint64_t)a6 fromSiblingLayout:(id)a7
{
  y = a5.y;
  x = a5.x;
  rendersWithPerspective = self->_rendersWithPerspective;
  v14 = a7;
  v15 = a4;
  v16 = a3;
  [v16 setRendersWithPerspective:rendersWithPerspective];
  [v16 setRendersWithParallax:self->_rendersWithParallax];
  [(NSMutableArray *)self->_orderedSublayouts addObject:v16];
  [(SKUIStorePageSplitCollectionViewLayout *)self _createSectionsToIndexRangesMapTableIfNeededForSublayout:v16];
  v17 = [(NSMapTable *)self->_sublayoutToSectionsToIndexRanges objectForKey:v16];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __108__SKUIStorePageSplitCollectionViewLayout_addSublayout_forSections_offset_relativeToEdges_fromSiblingLayout___block_invoke;
  v20[3] = &unk_2781FC790;
  v21 = v17;
  v18 = v17;
  [v15 enumerateIndexesUsingBlock:v20];
  v19.receiver = self;
  v19.super_class = SKUIStorePageSplitCollectionViewLayout;
  [(_UICollectionViewCompositionLayout *)&v19 addSublayout:v16 forSections:v15 offset:a6 relativeToEdges:v14 fromSiblingLayout:x, y];
}

void __108__SKUIStorePageSplitCollectionViewLayout_addSublayout_forSections_offset_relativeToEdges_fromSiblingLayout___block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCAB58] indexSetWithIndexesInRange:{0, 0x7FFFFFFFFFFFFFFFLL}];
  [v3 setObject:v4 forKey:v5];
}

- (CGRect)_frameForLayout:(id)a3 offset:(CGPoint)a4 relativeToEdges:(unint64_t)a5 fromSiblingLayout:(id)a6
{
  y = a4.y;
  x = a4.x;
  v11 = a6;
  v25.receiver = self;
  v25.super_class = SKUIStorePageSplitCollectionViewLayout;
  [(_UICollectionViewCompositionLayout *)&v25 _frameForLayout:a3 offset:a5 relativeToEdges:v11 fromSiblingLayout:x, y];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  if (a5 & 8) != 0 && (objc_opt_respondsToSelector())
  {
    [v11 _frame];
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

- (void)removeSublayout:(id)a3
{
  orderedSublayouts = self->_orderedSublayouts;
  v5 = a3;
  [(NSMutableArray *)orderedSublayouts removeObjectIdenticalTo:v5];
  v6.receiver = self;
  v6.super_class = SKUIStorePageSplitCollectionViewLayout;
  [(_UICollectionViewCompositionLayout *)&v6 removeSublayout:v5];
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

          v13 = 1;
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
  v13 = [(SKUIStorePageSplitCollectionViewLayout *)&v15 shouldInvalidateLayoutForBoundsChange:x, y, width, height];
LABEL_11:

  return v13;
}

- (void)_createSectionsToIndexRangesMapTableIfNeededForSublayout:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v10 = v4;
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

  MEMORY[0x2821F96F8](v4, v5);
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