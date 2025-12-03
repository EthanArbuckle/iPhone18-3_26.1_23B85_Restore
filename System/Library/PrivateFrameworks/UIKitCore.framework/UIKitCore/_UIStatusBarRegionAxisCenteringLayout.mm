@interface _UIStatusBarRegionAxisCenteringLayout
- (_UIStatusBarRegionAxisCenteringLayout)init;
- (id)constraintsForDisplayItems:(id)items layoutGuides:(id)guides inContainerItem:(id)item axis:(int64_t)axis;
@end

@implementation _UIStatusBarRegionAxisCenteringLayout

- (_UIStatusBarRegionAxisCenteringLayout)init
{
  v8.receiver = self;
  v8.super_class = _UIStatusBarRegionAxisCenteringLayout;
  result = [(_UIStatusBarRegionAxisCenteringLayout *)&v8 init];
  __asm { FMOV            V0.2D, #-1.0 }

  *&result->_interspace = _Q0;
  result->_maxNumberOfItems = 0x7FFFFFFFFFFFFFFFLL;
  return result;
}

- (id)constraintsForDisplayItems:(id)items layoutGuides:(id)guides inContainerItem:(id)item axis:(int64_t)axis
{
  itemsCopy = items;
  guidesCopy = guides;
  itemCopy = item;
  v14 = [itemsCopy count];
  array = [MEMORY[0x1E695DF70] array];
  if (self->_margin != -1.0 && self->_interspace != -1.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIStatusBarRegionAxisCenteringLayout.m" lineNumber:35 description:@"Can't set both margin and interspace to specific values"];
  }

  if (v14 == 1)
  {
    firstObject = [itemsCopy firstObject];
    layoutItem = [firstObject layoutItem];

    v17 = layoutItem;
    v18 = v17;
    if (axis == 1)
    {
      self = [v17 centerYAnchor];
      v19 = array;
    }

    else
    {
      v19 = array;
      if (!axis)
      {
        self = [v17 centerXAnchor];
      }
    }

    v33 = itemCopy;
    v34 = v33;
    if (axis == 1)
    {
      centerYAnchor = [v33 centerYAnchor];
    }

    else
    {
      if (axis)
      {
        goto LABEL_21;
      }

      centerYAnchor = [v33 centerXAnchor];
    }

    firstObject = centerYAnchor;
LABEL_21:

    v36 = [(_UIStatusBarRegionAxisCenteringLayout *)self constraintEqualToAnchor:firstObject];
    [v19 addObject:v36];

    v37 = v18;
    v38 = v37;
    if (axis == 1)
    {
      topAnchor = [v37 topAnchor];
    }

    else
    {
      if (axis)
      {
        goto LABEL_26;
      }

      topAnchor = [v37 leadingAnchor];
    }

    self = topAnchor;
LABEL_26:

    v40 = v34;
    v41 = v40;
    if (axis == 1)
    {
      topAnchor2 = [v40 topAnchor];
    }

    else
    {
      if (axis)
      {
        goto LABEL_31;
      }

      topAnchor2 = [v40 leadingAnchor];
    }

    firstObject = topAnchor2;
LABEL_31:

    v43 = [(_UIStatusBarRegionAxisCenteringLayout *)self constraintGreaterThanOrEqualToAnchor:firstObject];
    [v19 addObject:v43];

    v44 = v38;
    v45 = v44;
    if (axis == 1)
    {
      bottomAnchor = [v44 bottomAnchor];
    }

    else
    {
      if (axis)
      {
        goto LABEL_36;
      }

      bottomAnchor = [v44 trailingAnchor];
    }

    self = bottomAnchor;
LABEL_36:

    v47 = v41;
    v48 = v47;
    if (axis == 1)
    {
      bottomAnchor2 = [v47 bottomAnchor];
    }

    else
    {
      if (axis)
      {
LABEL_41:

        v50 = [(_UIStatusBarRegionAxisCenteringLayout *)self constraintLessThanOrEqualToAnchor:firstObject];
        [v19 addObject:v50];

        goto LABEL_71;
      }

      bottomAnchor2 = [v47 trailingAnchor];
    }

    firstObject = bottomAnchor2;
    goto LABEL_41;
  }

  v20 = objc_alloc_init(UILayoutGuide);
  v71 = objc_alloc_init(UILayoutGuide);
  v21 = v84;
  v84[0] = 0;
  v84[1] = v84;
  v84[2] = 0x3032000000;
  v84[3] = __Block_byref_object_copy__176;
  v84[4] = __Block_byref_object_dispose__176;
  v85 = 0;
  v73[0] = MEMORY[0x1E69E9820];
  v73[1] = 3221225472;
  v73[2] = __102___UIStatusBarRegionAxisCenteringLayout_constraintsForDisplayItems_layoutGuides_inContainerItem_axis___block_invoke;
  v73[3] = &unk_1E711FDD8;
  v74 = array;
  v22 = v20;
  v75 = v22;
  axisCopy = axis;
  v67 = itemCopy;
  v23 = itemCopy;
  v24 = v74;
  selfCopy = self;
  v76 = v23;
  v70 = itemsCopy;
  v81 = v84;
  v77 = itemsCopy;
  selfCopy2 = self;
  v69 = guidesCopy;
  v26 = guidesCopy;
  v79 = v26;
  v83 = v14;
  v27 = v71;
  v80 = v27;
  [v77 enumerateObjectsUsingBlock:v73];
  margin = self->_margin;
  v29 = v22;
  v30 = v29;
  if (margin != -1.0)
  {
    if (axis == 1)
    {
      heightAnchor = [(UILayoutGuide *)v29 heightAnchor];
    }

    else
    {
      if (axis)
      {
        goto LABEL_63;
      }

      heightAnchor = [(UILayoutGuide *)v29 widthAnchor];
    }

    v14 = heightAnchor;
LABEL_63:

    v61 = [v14 constraintEqualToConstant:selfCopy[2]];
    [v24 addObject:v61];

    v62 = v27;
    v63 = v62;
    if (axis == 1)
    {
      heightAnchor2 = [(UILayoutGuide *)v62 heightAnchor];
    }

    else
    {
      if (axis)
      {
LABEL_68:

        selfCopy = [v14 constraintEqualToConstant:selfCopy[2]];
        [v24 addObject:selfCopy];
        goto LABEL_69;
      }

      heightAnchor2 = [(UILayoutGuide *)v62 widthAnchor];
    }

    v14 = heightAnchor2;
    goto LABEL_68;
  }

  if (axis == 1)
  {
    heightAnchor3 = [(UILayoutGuide *)v29 heightAnchor];
  }

  else
  {
    if (axis)
    {
      goto LABEL_44;
    }

    heightAnchor3 = [(UILayoutGuide *)v29 widthAnchor];
  }

  v14 = heightAnchor3;
LABEL_44:

  v51 = v27;
  v52 = v51;
  if (axis == 1)
  {
    heightAnchor4 = [(UILayoutGuide *)v51 heightAnchor];
  }

  else
  {
    if (axis)
    {
      goto LABEL_49;
    }

    heightAnchor4 = [(UILayoutGuide *)v51 widthAnchor];
  }

  v21 = heightAnchor4;
LABEL_49:

  v54 = [v14 constraintEqualToAnchor:v21];
  [v24 addObject:v54];

  if (selfCopy[1] == -1.0)
  {
    lastObject = [v26 lastObject];
    v14 = lastObject;
    if (axis == 1)
    {
      heightAnchor5 = [lastObject heightAnchor];
    }

    else
    {
      if (axis)
      {
        goto LABEL_55;
      }

      heightAnchor5 = [lastObject widthAnchor];
    }

    selfCopy = heightAnchor5;
LABEL_55:

    v57 = v30;
    v58 = v57;
    if (axis == 1)
    {
      heightAnchor6 = [(UILayoutGuide *)v57 heightAnchor];
    }

    else
    {
      if (axis)
      {
LABEL_60:

        v60 = [selfCopy constraintEqualToAnchor:v21];
        [v24 addObject:v60];

LABEL_69:
        goto LABEL_70;
      }

      heightAnchor6 = [(UILayoutGuide *)v57 widthAnchor];
    }

    v21 = heightAnchor6;
    goto LABEL_60;
  }

LABEL_70:
  [v26 addObject:{v30, v67}];
  [v26 addObject:v27];

  _Block_object_dispose(v84, 8);
  guidesCopy = v69;
  itemsCopy = v70;
  itemCopy = v68;
  v19 = array;
LABEL_71:

  return v19;
}

@end