@interface STUIStatusBarRegionAxisSquishyLayout
- (STUIStatusBarRegionAxisSquishyLayout)init;
- (STUIStatusBarRegionAxisSquishyLayoutDynamicHidingDelegate)dynamicHidingDelegate;
- (id)constraintsForDisplayItems:(id)items layoutGuides:(id)guides inContainerItem:(id)item axis:(int64_t)axis;
- (void)setMinInterspaceDynamicScale:(double)scale;
- (void)setMinItemDynamicScale:(double)scale;
@end

@implementation STUIStatusBarRegionAxisSquishyLayout

- (STUIStatusBarRegionAxisSquishyLayout)init
{
  v8.receiver = self;
  v8.super_class = STUIStatusBarRegionAxisSquishyLayout;
  result = [(STUIStatusBarRegionAxisSquishyLayout *)&v8 init];
  __asm { FMOV            V0.2D, #1.0 }

  *&result->_itemDynamicScale = _Q0;
  result->_minInterspaceDynamicScale = 0.0;
  result->_interspace = -1.0;
  return result;
}

- (void)setMinItemDynamicScale:(double)scale
{
  v3 = fmax(fmin(scale, 1.0), 0.0);
  if (v3 != self->_minItemDynamicScale)
  {
    self->_minItemDynamicScale = v3;
  }
}

- (void)setMinInterspaceDynamicScale:(double)scale
{
  v3 = fmax(fmin(scale, 1.0), 0.0);
  if (v3 != self->_minInterspaceDynamicScale)
  {
    self->_minInterspaceDynamicScale = v3;
  }
}

- (id)constraintsForDisplayItems:(id)items layoutGuides:(id)guides inContainerItem:(id)item axis:(int64_t)axis
{
  itemsCopy = items;
  guidesCopy = guides;
  itemCopy = item;
  array = [MEMORY[0x277CBEB18] array];
  alignment = self->_alignment;
  v50 = array;
  if (axis == 1)
  {
    v13 = 0;
    if (alignment <= 3)
    {
      if (alignment == 1)
      {
        v13 = 10;
      }

      else if (alignment == 3)
      {
        v55 = 4;
        v49 = 8;
        v13 = 3;
        goto LABEL_27;
      }

      goto LABEL_24;
    }

    if (alignment != 4)
    {
      if (alignment == 5)
      {
        v13 = 11;
      }

      goto LABEL_24;
    }

LABEL_15:
    v49 = 8 * (axis == 1);
    v55 = 3;
    v13 = 4;
    goto LABEL_27;
  }

  if (axis)
  {
    goto LABEL_15;
  }

  v13 = 0;
  if (alignment <= 3)
  {
    if (alignment == 1)
    {
      v13 = 9;
    }

    else if (alignment == 3)
    {
      v55 = 6;
      v13 = 5;
      goto LABEL_22;
    }
  }

  else
  {
    switch(alignment)
    {
      case 4:
        v55 = 5;
        v13 = 6;
        goto LABEL_22;
      case 5:
        v55 = 2;
        v13 = 1;
        goto LABEL_22;
      case 6:
        v55 = 1;
        v13 = 2;
LABEL_22:
        v49 = 7;
        goto LABEL_27;
    }
  }

LABEL_24:
  v14 = 8 * (axis == 1);
  if (!axis)
  {
    v14 = 7;
  }

  v49 = v14;
  v55 = v13;
LABEL_27:
  v15 = 1.0;
  if ((alignment & 0xFFFFFFFFFFFFFFFDLL) == 4)
  {
    v16 = -1.0;
  }

  else
  {
    v16 = 1.0;
  }

  minItemDynamicScale = self->_minItemDynamicScale;
  if (self->_itemDynamicScale >= minItemDynamicScale)
  {
    itemDynamicScale = self->_itemDynamicScale;
  }

  else
  {
    itemDynamicScale = self->_minItemDynamicScale;
  }

  if (minItemDynamicScale < 1.0)
  {
    v15 = self->_minInterspaceDynamicScale + (1.0 - self->_minInterspaceDynamicScale) * ((itemDynamicScale - minItemDynamicScale) / (1.0 - minItemDynamicScale));
  }

  if ((alignment | 2) == 6)
  {
    reverseObjectEnumerator = [itemsCopy reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];

    itemsCopy = allObjects;
  }

  v21 = itemsCopy;
  if ([(NSSet *)self->_dynamicallyHiddenIdentifiers count])
  {
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = __101__STUIStatusBarRegionAxisSquishyLayout_constraintsForDisplayItems_layoutGuides_inContainerItem_axis___block_invoke;
    v75[3] = &unk_279D38290;
    v75[4] = self;
    v22 = [v21 indexesOfObjectsPassingTest:v75];
    v23 = [v21 objectsAtIndexes:v22];
    v24 = [v21 arrayByExcludingObjectsInArray:v23];
  }

  else
  {
    v23 = MEMORY[0x277CBEBF8];
    v24 = v21;
  }

  maxNumberOfVisibleItems = self->_maxNumberOfVisibleItems;
  if (maxNumberOfVisibleItems >= [v24 count])
  {
    v48 = v23;
  }

  else
  {
    v26 = STUIStatusBarGetPriorityComparator();
    v27 = [v24 sortedArrayUsingComparator:v26];

    v28 = [v27 subarrayWithRange:{self->_maxNumberOfVisibleItems, objc_msgSend(v27, "count") - self->_maxNumberOfVisibleItems}];

    v29 = [v24 arrayByExcludingObjectsInArray:v28];

    v48 = v28;
    v24 = v29;
  }

  v73[0] = 0;
  v73[1] = v73;
  v73[2] = 0x3032000000;
  v73[3] = __Block_byref_object_copy_;
  v73[4] = __Block_byref_object_dispose_;
  v74 = 0;
  v72[0] = 0;
  v72[1] = v72;
  v72[2] = 0x2020000000;
  v72[3] = 0;
  v71[0] = 0;
  v71[1] = v71;
  v71[2] = 0x2020000000;
  v71[3] = 0;
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __101__STUIStatusBarRegionAxisSquishyLayout_constraintsForDisplayItems_layoutGuides_inContainerItem_axis___block_invoke_1;
  v56[3] = &unk_279D382B8;
  v30 = v24;
  v65 = v16;
  v57 = v30;
  selfCopy = self;
  v62 = v72;
  v63 = v71;
  v31 = v50;
  v66 = v13;
  v67 = v55;
  v68 = v15;
  v69 = v49;
  v59 = v31;
  v64 = v73;
  v32 = guidesCopy;
  v60 = v32;
  v33 = itemCopy;
  v61 = v33;
  v70 = itemDynamicScale;
  [v21 enumerateObjectsUsingBlock:v56];
  if ([v30 count])
  {
    firstObject = [v30 firstObject];
    layoutItem = [firstObject layoutItem];
    v52 = v32;

    lastObject = [v30 lastObject];
    layoutItem2 = [lastObject layoutItem];

    if (axis == 1)
    {
      v37 = 10;
    }

    else
    {
      v37 = 9;
    }

    v38 = objc_alloc_init(MEMORY[0x277D756D0]);
    v39 = [MEMORY[0x277CCAAD0] constraintWithItem:v38 attribute:v13 relatedBy:0 toItem:layoutItem attribute:v13 multiplier:1.0 constant:0.0];
    [v31 addObject:v39];

    v40 = [MEMORY[0x277CCAAD0] constraintWithItem:v38 attribute:v55 relatedBy:0 toItem:layoutItem2 attribute:v55 multiplier:1.0 constant:0.0];
    [v31 addObject:v40];

    v41 = [MEMORY[0x277CCAAD0] constraintWithItem:v38 attribute:v37 relatedBy:0 toItem:v33 attribute:v37 multiplier:1.0 constant:(1.0 - v15) * (v16 * self->_interspace)];
    [v31 addObject:v41];

    [v52 addObject:v38];
    if (v16 == 1.0)
    {
      v42 = -1;
    }

    else
    {
      v42 = 1;
    }

    v43 = [MEMORY[0x277CCAAD0] constraintWithItem:layoutItem2 attribute:v55 relatedBy:v42 toItem:v33 attribute:v55 multiplier:? constant:?];
    LODWORD(v44) = 1111752704;
    [v43 setPriority:v44];
    [v31 addObject:v43];

    v32 = v52;
  }

  v45 = v61;
  v46 = v31;

  _Block_object_dispose(v71, 8);
  _Block_object_dispose(v72, 8);
  _Block_object_dispose(v73, 8);

  return v46;
}

uint64_t __101__STUIStatusBarRegionAxisSquishyLayout_constraintsForDisplayItems_layoutGuides_inContainerItem_axis___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 48);
  v3 = [a2 identifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

void __101__STUIStatusBarRegionAxisSquishyLayout_constraintsForDisplayItems_layoutGuides_inContainerItem_axis___block_invoke_1(uint64_t a1, void *a2)
{
  v44 = a2;
  v3 = [v44 layoutItem];
  v4 = [*(a1 + 32) containsObject:v44];
  v5 = *(*(*(a1 + 72) + 8) + 24);
  if (v5 && ([*(a1 + 32) objectAtIndexedSubscript:v5 - 1], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "layoutItem"), v7 = objc_claimAutoreleasedReturnValue(), v6, v7))
  {
    v8 = *(*(a1 + 40) + 24);
    if (v8 == -1.0)
    {
      goto LABEL_20;
    }

    [v44 additionalDynamicPadding];
    v10 = *(*(a1 + 80) + 8);
    if (v9 == 0.0)
    {
      v11 = *(v10 + 24);
      *(v10 + 24) = 0;
    }

    else
    {
      *(v10 + 24) = v9;
      v11 = *(*(*(a1 + 80) + 8) + 24);
    }

    v17 = v8 + v11;
    v18 = objc_alloc_init(MEMORY[0x277D756D0]);
    v19 = *(a1 + 48);
    v20 = MEMORY[0x277CCAAD0];
    v22 = *(a1 + 104);
    v21 = *(a1 + 112);
    v23 = 0.0;
    if ((v4 & 1) == 0)
    {
      v24 = *(a1 + 96);
      [v3 _ui_bounds];
      v23 = v17 * 0.5 * *(a1 + 120) - v24 * (v25 * 0.5);
    }

    v26 = [v20 constraintWithItem:v3 attribute:v22 relatedBy:0 toItem:v18 attribute:v21 multiplier:1.0 constant:v23];
    [v19 addObject:v26];

    v27 = *(a1 + 48);
    v28 = [MEMORY[0x277CCAAD0] constraintWithItem:v18 attribute:*(a1 + 104) relatedBy:0 toItem:v7 attribute:*(a1 + 112) multiplier:1.0 constant:0.0];
    [v27 addObject:v28];

    v29 = *(a1 + 48);
    v30 = [MEMORY[0x277CCAAD0] constraintWithItem:v18 attribute:*(a1 + 128) relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v17 * *(a1 + 120)];
    [v29 addObject:v30];

    v31 = *(*(a1 + 88) + 8);
    v32 = *(v31 + 40);
    if (v32)
    {
      v33 = *(a1 + 48);
      v34 = [MEMORY[0x277CCAAD0] constraintWithItem:v18 attribute:*(a1 + 128) relatedBy:0 toItem:v32 attribute:*(a1 + 128) multiplier:1.0 constant:0.0];
      [v33 addObject:v34];

      v31 = *(*(a1 + 88) + 8);
      v35 = *(v31 + 40);
    }

    else
    {
      v35 = 0;
    }

    *(v31 + 40) = v18;
    v14 = v18;

    [*(a1 + 56) addObject:v14];
  }

  else
  {
    if (*(a1 + 96) == 1.0)
    {
      v12 = 1;
    }

    else
    {
      v12 = -1;
    }

    v13 = [MEMORY[0x277CCAAD0] constraintWithItem:v3 attribute:*(a1 + 104) relatedBy:v12 toItem:*(a1 + 64) attribute:*(a1 + 104) multiplier:1.0 constant:0.0];
    v14 = v13;
    LODWORD(v15) = 1111752704;
    if (*(*(a1 + 40) + 8))
    {
      *&v15 = 749.0;
    }

    [v13 setPriority:v15];
    [*(a1 + 48) addObject:v14];
    [v44 additionalDynamicPadding];
    v7 = 0;
    *(*(*(a1 + 80) + 8) + 24) = v16;
  }

LABEL_20:
  if (v4)
  {
    ++*(*(*(a1 + 72) + 8) + 24);
    if (![v44 dynamicallyHidden])
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 80));

      if (!WeakRetained)
      {
        goto LABEL_31;
      }

      v38 = objc_loadWeakRetained((*(a1 + 40) + 80));
      [v38 updateDisplayItem:v44 toScale:*(a1 + 136)];
      goto LABEL_30;
    }

    [v44 setDynamicallyHidden:0];
    v36 = objc_loadWeakRetained((*(a1 + 40) + 80));

    if (!v36)
    {
      goto LABEL_31;
    }

    v37 = objc_loadWeakRetained((*(a1 + 40) + 80));
    v38 = v37;
    v39 = *(a1 + 136);
    v40 = v44;
    v41 = 0;
LABEL_27:
    [v37 updateDisplayItem:v40 toDynamicallyHidden:v41 scale:v39];
LABEL_30:

    goto LABEL_31;
  }

  if (([v44 dynamicallyHidden] & 1) == 0)
  {
    [v44 setDynamicallyHidden:1];
    v42 = objc_loadWeakRetained((*(a1 + 40) + 80));

    if (v42)
    {
      v37 = objc_loadWeakRetained((*(a1 + 40) + 80));
      v38 = v37;
      v39 = *(a1 + 136);
      v40 = v44;
      v41 = 1;
      goto LABEL_27;
    }
  }

LABEL_31:
}

- (STUIStatusBarRegionAxisSquishyLayoutDynamicHidingDelegate)dynamicHidingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dynamicHidingDelegate);

  return WeakRetained;
}

@end