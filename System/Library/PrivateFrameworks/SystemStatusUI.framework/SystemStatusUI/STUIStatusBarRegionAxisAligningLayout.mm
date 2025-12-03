@interface STUIStatusBarRegionAxisAligningLayout
+ (id)aligningLayoutWithAlignment:(int64_t)alignment;
- (id)constraintsForDisplayItems:(id)items layoutGuides:(id)guides inContainerItem:(id)item axis:(int64_t)axis;
@end

@implementation STUIStatusBarRegionAxisAligningLayout

+ (id)aligningLayoutWithAlignment:(int64_t)alignment
{
  v4 = objc_alloc_init(STUIStatusBarRegionAxisAligningLayout);
  [(STUIStatusBarRegionAxisAligningLayout *)v4 setAlignment:alignment];

  return v4;
}

- (id)constraintsForDisplayItems:(id)items layoutGuides:(id)guides inContainerItem:(id)item axis:(int64_t)axis
{
  itemCopy = item;
  v10 = MEMORY[0x277CBEB18];
  itemsCopy = items;
  array = [v10 array];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __102__STUIStatusBarRegionAxisAligningLayout_constraintsForDisplayItems_layoutGuides_inContainerItem_axis___block_invoke;
  v18[3] = &unk_279D38968;
  axisCopy = axis;
  v18[4] = self;
  v13 = array;
  v19 = v13;
  v20 = itemCopy;
  v14 = itemCopy;
  [itemsCopy enumerateObjectsUsingBlock:v18];

  v15 = v20;
  v16 = v13;

  return v13;
}

void __102__STUIStatusBarRegionAxisAligningLayout_constraintsForDisplayItems_layoutGuides_inContainerItem_axis___block_invoke(uint64_t a1, void *a2)
{
  v51 = a2;
  v4 = [v51 layoutItem];
  v5 = [v51 overriddenVerticalAlignment];
  v6 = v5;
  if (*(a1 + 56) != 1 || v5 == 0)
  {
    v6 = *(*(a1 + 32) + 8);
  }

  if ((v6 & 0xFFFFFFFFFFFFFFFELL) == 6)
  {
    v8 = [v51 displayable];
    if (v6 == 7)
    {
      if (objc_opt_respondsToSelector() & 1) != 0 && ([v8 prefersCenterVerticalAlignment])
      {
LABEL_15:
        v6 = 1;
        goto LABEL_16;
      }
    }

    else if ((objc_opt_respondsToSelector() & 1) == 0 || ([v8 prefersBaselineAlignment] & 1) == 0)
    {
      goto LABEL_15;
    }

    v6 = 5;
LABEL_16:
  }

  if (v6 == 2)
  {
    v14 = *(a1 + 40);
    v15 = *(a1 + 56);
    v16 = v4;
    v17 = v16;
    if (v15 == 1)
    {
      v18 = [v16 topAnchor];
    }

    else
    {
      if (v15)
      {
        goto LABEL_35;
      }

      v18 = [v16 leadingAnchor];
    }

    v2 = v18;
LABEL_35:

    v24 = *(a1 + 56);
    v25 = *(a1 + 48);
    v26 = v25;
    if (v24 == 1)
    {
      v27 = [v25 topAnchor];
    }

    else
    {
      if (v24)
      {
        goto LABEL_40;
      }

      v27 = [v25 leadingAnchor];
    }

    v15 = v27;
LABEL_40:

    v28 = [v2 constraintEqualToAnchor:v15];
    LODWORD(v29) = 1112276992;
    v30 = [v28 _ui_constraintWithPriority:v29];
    [v14 addObject:v30];

    v31 = *(a1 + 40);
    v32 = *(a1 + 56);
    v33 = v17;
    v12 = v33;
    if (v32 == 1)
    {
      v34 = [v33 bottomAnchor];
    }

    else
    {
      if (v32)
      {
        goto LABEL_45;
      }

      v34 = [v33 trailingAnchor];
    }

    v2 = v34;
LABEL_45:

    v35 = *(a1 + 56);
    v36 = *(a1 + 48);
    v37 = v36;
    if (v35 == 1)
    {
      v38 = [v36 bottomAnchor];
    }

    else
    {
      if (v35)
      {
        goto LABEL_50;
      }

      v38 = [v36 trailingAnchor];
    }

    v32 = v38;
LABEL_50:

    v39 = [v2 constraintEqualToAnchor:v32];
    LODWORD(v40) = 1112276992;
    v41 = [v39 _ui_constraintWithPriority:v40];
    [v31 addObject:v41];

    v11 = *(a1 + 40);
    v42 = *(a1 + 56);
    v43 = v12;
    v44 = v43;
    if (v42 == 1)
    {
      v45 = [v43 centerYAnchor];
    }

    else
    {
      if (v42)
      {
        goto LABEL_55;
      }

      v45 = [v43 centerXAnchor];
    }

    v12 = v45;
LABEL_55:

    v46 = *(a1 + 56);
    v47 = *(a1 + 48);
    v48 = v47;
    if (v46 == 1)
    {
      v49 = [v47 centerYAnchor];
    }

    else
    {
      if (v46)
      {
LABEL_60:

        v13 = [v12 constraintEqualToAnchor:a1];
        goto LABEL_61;
      }

      v49 = [v47 centerXAnchor];
    }

    a1 = v49;
    goto LABEL_60;
  }

  if (v6 != 5)
  {
    v19 = *(a1 + 56);
    if (v19 == 1)
    {
      [v51 centerOffset];
      v19 = *(a1 + 56);
    }

    else
    {
      v20 = 0.0;
    }

    if ((v6 - 1) > 4)
    {
      v22 = 0;
    }

    else
    {
      if (v19)
      {
        v21 = &unk_26C582040;
      }

      else
      {
        v21 = &unk_26C582018;
      }

      v22 = v21[v6 - 1];
    }

    v23 = *(a1 + 40);
    v12 = [MEMORY[0x277CCAAD0] constraintWithItem:v4 attribute:v22 relatedBy:0 toItem:*(a1 + 48) attribute:v22 multiplier:1.0 constant:-v20];
    [v23 addObject:v12];
    goto LABEL_62;
  }

  [v51 baselineOffset];
  v10 = v9;
  v11 = *(a1 + 40);
  v12 = [v4 lastBaselineAnchor];
  a1 = [*(a1 + 48) bottomAnchor];
  v13 = [v12 constraintEqualToAnchor:a1 constant:-v10];
LABEL_61:
  v50 = v13;
  [v11 addObject:v13];

LABEL_62:
}

@end