@interface STUIStatusBarRegionAxisStackingLayout
- (BOOL)mayFitDisplayItems:(id)items inContainerItem:(id)item axis:(int64_t)axis;
- (id)constraintsForDisplayItems:(id)items layoutGuides:(id)guides inContainerItem:(id)item axis:(int64_t)axis;
@end

@implementation STUIStatusBarRegionAxisStackingLayout

- (id)constraintsForDisplayItems:(id)items layoutGuides:(id)guides inContainerItem:(id)item axis:(int64_t)axis
{
  itemsCopy = items;
  guidesCopy = guides;
  itemCopy = item;
  array = [MEMORY[0x277CBEB18] array];
  v13 = array;
  alignment = self->_alignment;
  if (axis == 1)
  {
    if (alignment <= 3)
    {
      v16 = 1.0;
      if (alignment == 1)
      {
        v15 = 1;
        v17 = 3;
        alignment = 10;
        v18 = 4;
        goto LABEL_38;
      }

      if (alignment == 3)
      {
        v15 = 0;
        v18 = 4;
        v17 = 3;
        goto LABEL_38;
      }

      goto LABEL_23;
    }

    if (alignment == 4)
    {
      v17 = 3;
      v18 = 4;
      goto LABEL_33;
    }

    if (alignment != 5)
    {
      goto LABEL_23;
    }

    v18 = 11;
LABEL_17:
    v15 = 0;
    if ((alignment & 0xFFFFFFFFFFFFFFFDLL) == 4)
    {
      v16 = -1.0;
    }

    else
    {
      v16 = 1.0;
    }

    goto LABEL_29;
  }

  if (axis)
  {
    if (alignment != 1)
    {
      goto LABEL_23;
    }

    v18 = 0;
    goto LABEL_17;
  }

  v15 = 0;
  v16 = 1.0;
  if (alignment <= 3)
  {
    if (alignment == 1)
    {
      v15 = 1;
      alignment = 9;
      goto LABEL_37;
    }

    if (alignment == 3)
    {
      alignment = 5;
LABEL_37:
      v17 = 5;
      v18 = 6;
      goto LABEL_38;
    }

LABEL_23:
    v18 = 0;
    if ((alignment & 0xFFFFFFFFFFFFFFFDLL) == 4)
    {
      v16 = -1.0;
    }

    else
    {
      v16 = 1.0;
    }

    if ((alignment | 2) == 6)
    {
      v40 = array;
      selfCopy2 = self;
      v19 = itemCopy;
      v20 = 0;
LABEL_34:
      reverseObjectEnumerator = [itemsCopy reverseObjectEnumerator];
      allObjects = [reverseObjectEnumerator allObjects];

      v15 = 0;
      alignment = v20;
      v17 = v20;
      itemsCopy = allObjects;
      itemCopy = v19;
      v13 = v40;
      self = selfCopy2;
      goto LABEL_38;
    }

    v15 = 0;
LABEL_29:
    alignment = v18;
    v17 = v18;
    goto LABEL_38;
  }

  if (alignment == 4)
  {
    v17 = 5;
    v18 = 6;
    goto LABEL_33;
  }

  v17 = 1;
  v18 = 2;
  if (alignment != 5)
  {
    if (alignment != 6)
    {
      goto LABEL_23;
    }

LABEL_33:
    v40 = array;
    selfCopy2 = self;
    v19 = itemCopy;
    v20 = v18;
    v16 = -1.0;
    v18 = v17;
    goto LABEL_34;
  }

  alignment = 1;
LABEL_38:
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __102__STUIStatusBarRegionAxisStackingLayout_constraintsForDisplayItems_layoutGuides_inContainerItem_axis___block_invoke;
  v45[3] = &unk_279D38B88;
  v23 = itemsCopy;
  v46 = v23;
  v24 = v13;
  v50 = v17;
  v51 = v18;
  v52 = v16;
  v47 = v24;
  selfCopy3 = self;
  v53 = v15;
  v25 = itemCopy;
  v49 = v25;
  [v23 enumerateObjectsUsingBlock:v45];
  lastObject = [v23 lastObject];
  layoutItem = [lastObject layoutItem];

  if (v15)
  {
    v28 = objc_alloc_init(MEMORY[0x277D756D0]);
    firstObject = [v23 firstObject];
    layoutItem2 = [firstObject layoutItem];

    [v23 lastObject];
    v43 = layoutItem;
    v32 = v31 = v25;
    layoutItem3 = [v32 layoutItem];

    v33 = [MEMORY[0x277CCAAD0] constraintWithItem:v28 attribute:v17 relatedBy:0 toItem:layoutItem2 attribute:v17 multiplier:1.0 constant:0.0];
    [v24 addObject:v33];

    v25 = v31;
    v34 = [MEMORY[0x277CCAAD0] constraintWithItem:v28 attribute:v18 relatedBy:0 toItem:layoutItem3 attribute:v18 multiplier:1.0 constant:0.0];
    [v24 addObject:v34];

    v35 = [MEMORY[0x277CCAAD0] constraintWithItem:v28 attribute:alignment relatedBy:0 toItem:v25 attribute:alignment multiplier:1.0 constant:0.0];
    [v24 addObject:v35];

    layoutItem = v43;
    [guidesCopy addObject:v28];
  }

  else
  {
    if (self->_hugging)
    {
      v28 = [MEMORY[0x277CCAAD0] constraintWithItem:layoutItem attribute:v18 relatedBy:0 toItem:v25 attribute:v18 multiplier:1.0 constant:0.0];
    }

    else
    {
      if (v16 == 1.0)
      {
        v36 = -1;
      }

      else
      {
        v36 = 1;
      }

      v28 = [MEMORY[0x277CCAAD0] constraintWithItem:layoutItem attribute:v18 relatedBy:v36 toItem:v25 attribute:v18 multiplier:? constant:?];
      LODWORD(v37) = 1132134400;
      [v28 setPriority:v37];
    }

    [v24 addObject:v28];
  }

  v38 = v24;
  return v24;
}

uint64_t __102__STUIStatusBarRegionAxisStackingLayout_constraintsForDisplayItems_layoutGuides_inContainerItem_axis___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 layoutItem];
  v6 = v5;
  v13 = v5;
  if (a3 && ([*(a1 + 32) objectAtIndexedSubscript:a3 - 1], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "layoutItem"), v8 = objc_claimAutoreleasedReturnValue(), v7, v6 = v13, v8))
  {
    v9 = *(a1 + 40);
    v10 = [MEMORY[0x277CCAAD0] constraintWithItem:v13 attribute:*(a1 + 64) relatedBy:0 toItem:v8 attribute:*(a1 + 72) multiplier:1.0 constant:*(a1 + 80) * *(*(a1 + 48) + 24)];
    [v9 addObject:v10];
  }

  else
  {
    if (*(a1 + 88))
    {
      goto LABEL_7;
    }

    v11 = *(a1 + 40);
    v8 = [MEMORY[0x277CCAAD0] constraintWithItem:v6 attribute:*(a1 + 64) relatedBy:0 toItem:*(a1 + 56) attribute:*(a1 + 64) multiplier:1.0 constant:0.0];
    [v11 addObject:v8];
  }

  v6 = v13;
LABEL_7:

  return MEMORY[0x2821F96F8](v5, v6);
}

- (BOOL)mayFitDisplayItems:(id)items inContainerItem:(id)item axis:(int64_t)axis
{
  if (!self->_constrainDisplayItemsToRegionBounds)
  {
    return 1;
  }

  itemCopy = item;
  v7 = [items bs_reduce:&unk_287D1B360 block:&__block_literal_global_8];
  [v7 doubleValue];
  v9 = v8;

  [itemCopy _ui_bounds];
  v11 = v10;

  return v9 <= v11;
}

id __81__STUIStatusBarRegionAxisStackingLayout_mayFitDisplayItems_inContainerItem_axis___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 doubleValue];
  v7 = v6;
  v8 = [v5 view];

  [v8 bounds];
  v10 = [v4 numberWithDouble:v7 + v9];

  return v10;
}

@end