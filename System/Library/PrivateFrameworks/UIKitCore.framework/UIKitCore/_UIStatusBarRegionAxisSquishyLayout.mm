@interface _UIStatusBarRegionAxisSquishyLayout
- (_UIStatusBarRegionAxisSquishyLayout)init;
- (_UIStatusBarRegionAxisSquishyLayoutDynamicHidingDelegate)dynamicHidingDelegate;
- (id)constraintsForDisplayItems:(id)items layoutGuides:(id)guides inContainerItem:(id)item axis:(int64_t)axis;
- (void)setMinInterspaceDynamicScale:(double)scale;
- (void)setMinItemDynamicScale:(double)scale;
@end

@implementation _UIStatusBarRegionAxisSquishyLayout

- (_UIStatusBarRegionAxisSquishyLayout)init
{
  v8.receiver = self;
  v8.super_class = _UIStatusBarRegionAxisSquishyLayout;
  result = [(_UIStatusBarRegionAxisSquishyLayout *)&v8 init];
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
  array = [MEMORY[0x1E695DF70] array];
  alignment = self->_alignment;
  v56 = itemCopy;
  v58 = guidesCopy;
  v55 = array;
  if (axis == 1)
  {
    if (alignment > 3)
    {
      if ((alignment - 6) < 2)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSLayoutAttribute _UIStatusBarRegionAxisLayoutAttributeForAlignmentAndAxis(_UIStatusBarRegionAxisLayoutAlignment, UILayoutConstraintAxis)"}];
        v20 = @"Mixed alignments must be resolved before getting the attribute";
        v21 = currentHandler;
        v22 = v19;
        v23 = 102;
LABEL_30:
        [v21 handleFailureInFunction:v22 file:@"_UIStatusBarRegionAxisLayout_Internal.h" lineNumber:v23 description:{v20, v53}];
        goto LABEL_31;
      }

      if (alignment == 4)
      {
        goto LABEL_21;
      }

      if (alignment == 5)
      {
        alignment = 11;
        goto LABEL_32;
      }
    }

    else
    {
      switch(alignment)
      {
        case 0:
          goto LABEL_32;
        case 1:
          alignment = 10;
          goto LABEL_32;
        case 3:
          v15 = 1;
          v60 = 4;
          v17 = 8;
          v16 = 3;
          goto LABEL_36;
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSLayoutAttribute _UIStatusBarRegionAxisLayoutAttributeForAlignmentAndAxis(_UIStatusBarRegionAxisLayoutAlignment, UILayoutConstraintAxis)"}];
    v20 = @"Horizontal alignment given for vertical axis: %ld";
    v53 = alignment;
    v21 = currentHandler;
    v22 = v19;
    v23 = 105;
    goto LABEL_30;
  }

  if (axis)
  {
LABEL_21:
    v15 = axis == 1;
    v17 = 8 * (axis == 1);
    v60 = 3;
    v16 = 4;
    goto LABEL_36;
  }

  if (alignment > 3)
  {
    switch(alignment)
    {
      case 4:
        v15 = 0;
        v60 = 5;
        v16 = 6;
        goto LABEL_28;
      case 5:
        v15 = 0;
        v60 = 2;
        v16 = 1;
        goto LABEL_28;
      case 6:
        v15 = 0;
        v60 = 1;
        v16 = 2;
        goto LABEL_28;
    }

    goto LABEL_25;
  }

  if (alignment)
  {
    if (alignment != 1)
    {
      if (alignment == 3)
      {
        v15 = 0;
        v60 = 6;
        v16 = 5;
LABEL_28:
        v17 = 7;
        goto LABEL_36;
      }

LABEL_25:
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSLayoutAttribute _UIStatusBarRegionAxisLayoutAttributeForAlignmentAndAxis(_UIStatusBarRegionAxisLayoutAlignment, UILayoutConstraintAxis)"}];
      [currentHandler handleFailureInFunction:v19 file:@"_UIStatusBarRegionAxisLayout_Internal.h" lineNumber:83 description:{@"Vertical alignment given for horizontal axis: %ld", alignment}];
LABEL_31:

      alignment = 0;
      goto LABEL_32;
    }

    alignment = 9;
  }

LABEL_32:
  v16 = alignment;
  v15 = axis == 1;
  if (axis)
  {
    v17 = 8 * (axis == 1);
  }

  else
  {
    v17 = 7;
  }

  alignment = self->_alignment;
  v60 = v16;
LABEL_36:
  v24 = 1.0;
  if ((alignment & 0xFFFFFFFFFFFFFFFDLL) == 4)
  {
    v25 = -1.0;
  }

  else
  {
    v25 = 1.0;
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
    v24 = self->_minInterspaceDynamicScale + (itemDynamicScale - minItemDynamicScale) / (1.0 - minItemDynamicScale) * (1.0 - self->_minInterspaceDynamicScale);
  }

  if ((alignment | 2) == 6)
  {
    reverseObjectEnumerator = [itemsCopy reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];

    itemsCopy = allObjects;
  }

  v30 = itemsCopy;
  maxNumberOfVisibleItems = self->_maxNumberOfVisibleItems;
  if (maxNumberOfVisibleItems >= [v30 count])
  {
    v54 = MEMORY[0x1E695E0F0];
    v34 = v30;
  }

  else
  {
    v32 = _UIStatusBarGetPriorityComparator();
    v33 = [v30 sortedArrayUsingComparator:v32];

    v54 = [v33 subarrayWithRange:{self->_maxNumberOfVisibleItems, objc_msgSend(v30, "count") - self->_maxNumberOfVisibleItems}];
    v34 = [v30 arrayByExcludingObjectsInArray:?];
  }

  v77[0] = 0;
  v77[1] = v77;
  v77[2] = 0x3032000000;
  v77[3] = __Block_byref_object_copy__163;
  v77[4] = __Block_byref_object_dispose__163;
  v78 = 0;
  v76[0] = 0;
  v76[1] = v76;
  v76[2] = 0x2020000000;
  v76[3] = 0;
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __100___UIStatusBarRegionAxisSquishyLayout_constraintsForDisplayItems_layoutGuides_inContainerItem_axis___block_invoke;
  v61[3] = &unk_1E711BE80;
  v35 = v34;
  v62 = v35;
  v36 = v30;
  v68 = v76;
  v70 = v25;
  v63 = v36;
  selfCopy = self;
  v37 = v55;
  v71 = v16;
  v72 = v60;
  v73 = v24;
  v74 = v17;
  v65 = v37;
  v69 = v77;
  v59 = v58;
  v66 = v59;
  v38 = v56;
  v67 = v38;
  v75 = itemDynamicScale;
  [v36 enumerateObjectsUsingBlock:v61];
  if ([v35 count])
  {
    firstObject = [v35 firstObject];
    layoutItem = [firstObject layoutItem];

    lastObject = [v35 lastObject];
    layoutItem2 = [lastObject layoutItem];

    if (v15)
    {
      v42 = 10;
    }

    else
    {
      v42 = 9;
    }

    v43 = objc_alloc_init(UILayoutGuide);
    v44 = [MEMORY[0x1E69977A0] constraintWithItem:v43 attribute:v16 relatedBy:0 toItem:layoutItem attribute:v16 multiplier:1.0 constant:0.0];
    [v37 addObject:v44];

    v45 = [MEMORY[0x1E69977A0] constraintWithItem:v43 attribute:v60 relatedBy:0 toItem:layoutItem2 attribute:v60 multiplier:1.0 constant:0.0];
    [v37 addObject:v45];

    v46 = [MEMORY[0x1E69977A0] constraintWithItem:v43 attribute:v42 relatedBy:0 toItem:v38 attribute:v42 multiplier:1.0 constant:(1.0 - v24) * (v25 * self->_interspace)];
    [v37 addObject:v46];

    [v59 addObject:v43];
    if (v25 == 1.0)
    {
      v47 = -1;
    }

    else
    {
      v47 = 1;
    }

    v48 = [MEMORY[0x1E69977A0] constraintWithItem:layoutItem2 attribute:v60 relatedBy:v47 toItem:v38 attribute:v60 multiplier:? constant:?];
    LODWORD(v49) = 1111752704;
    [v48 setPriority:v49];
    [v37 addObject:v48];
  }

  v50 = v67;
  v51 = v37;

  _Block_object_dispose(v76, 8);
  _Block_object_dispose(v77, 8);

  return v51;
}

- (_UIStatusBarRegionAxisSquishyLayoutDynamicHidingDelegate)dynamicHidingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dynamicHidingDelegate);

  return WeakRetained;
}

@end