@interface _UIStatusBarRegionAxisCenteringLayout
- (_UIStatusBarRegionAxisCenteringLayout)init;
- (id)constraintsForDisplayItems:(id)a3 layoutGuides:(id)a4 inContainerItem:(id)a5 axis:(int64_t)a6;
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

- (id)constraintsForDisplayItems:(id)a3 layoutGuides:(id)a4 inContainerItem:(id)a5 axis:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = [v11 count];
  v72 = [MEMORY[0x1E695DF70] array];
  if (self->_margin != -1.0 && self->_interspace != -1.0)
  {
    v66 = [MEMORY[0x1E696AAA8] currentHandler];
    [v66 handleFailureInMethod:a2 object:self file:@"_UIStatusBarRegionAxisCenteringLayout.m" lineNumber:35 description:@"Can't set both margin and interspace to specific values"];
  }

  if (v14 == 1)
  {
    v15 = [v11 firstObject];
    v16 = [v15 layoutItem];

    v17 = v16;
    v18 = v17;
    if (a6 == 1)
    {
      self = [v17 centerYAnchor];
      v19 = v72;
    }

    else
    {
      v19 = v72;
      if (!a6)
      {
        self = [v17 centerXAnchor];
      }
    }

    v33 = v13;
    v34 = v33;
    if (a6 == 1)
    {
      v35 = [v33 centerYAnchor];
    }

    else
    {
      if (a6)
      {
        goto LABEL_21;
      }

      v35 = [v33 centerXAnchor];
    }

    v15 = v35;
LABEL_21:

    v36 = [(_UIStatusBarRegionAxisCenteringLayout *)self constraintEqualToAnchor:v15];
    [v19 addObject:v36];

    v37 = v18;
    v38 = v37;
    if (a6 == 1)
    {
      v39 = [v37 topAnchor];
    }

    else
    {
      if (a6)
      {
        goto LABEL_26;
      }

      v39 = [v37 leadingAnchor];
    }

    self = v39;
LABEL_26:

    v40 = v34;
    v41 = v40;
    if (a6 == 1)
    {
      v42 = [v40 topAnchor];
    }

    else
    {
      if (a6)
      {
        goto LABEL_31;
      }

      v42 = [v40 leadingAnchor];
    }

    v15 = v42;
LABEL_31:

    v43 = [(_UIStatusBarRegionAxisCenteringLayout *)self constraintGreaterThanOrEqualToAnchor:v15];
    [v19 addObject:v43];

    v44 = v38;
    v45 = v44;
    if (a6 == 1)
    {
      v46 = [v44 bottomAnchor];
    }

    else
    {
      if (a6)
      {
        goto LABEL_36;
      }

      v46 = [v44 trailingAnchor];
    }

    self = v46;
LABEL_36:

    v47 = v41;
    v48 = v47;
    if (a6 == 1)
    {
      v49 = [v47 bottomAnchor];
    }

    else
    {
      if (a6)
      {
LABEL_41:

        v50 = [(_UIStatusBarRegionAxisCenteringLayout *)self constraintLessThanOrEqualToAnchor:v15];
        [v19 addObject:v50];

        goto LABEL_71;
      }

      v49 = [v47 trailingAnchor];
    }

    v15 = v49;
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
  v74 = v72;
  v22 = v20;
  v75 = v22;
  v82 = a6;
  v67 = v13;
  v23 = v13;
  v24 = v74;
  v25 = self;
  v76 = v23;
  v70 = v11;
  v81 = v84;
  v77 = v11;
  v78 = self;
  v69 = v12;
  v26 = v12;
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
    if (a6 == 1)
    {
      v32 = [(UILayoutGuide *)v29 heightAnchor];
    }

    else
    {
      if (a6)
      {
        goto LABEL_63;
      }

      v32 = [(UILayoutGuide *)v29 widthAnchor];
    }

    v14 = v32;
LABEL_63:

    v61 = [v14 constraintEqualToConstant:v25[2]];
    [v24 addObject:v61];

    v62 = v27;
    v63 = v62;
    if (a6 == 1)
    {
      v64 = [(UILayoutGuide *)v62 heightAnchor];
    }

    else
    {
      if (a6)
      {
LABEL_68:

        v25 = [v14 constraintEqualToConstant:v25[2]];
        [v24 addObject:v25];
        goto LABEL_69;
      }

      v64 = [(UILayoutGuide *)v62 widthAnchor];
    }

    v14 = v64;
    goto LABEL_68;
  }

  if (a6 == 1)
  {
    v31 = [(UILayoutGuide *)v29 heightAnchor];
  }

  else
  {
    if (a6)
    {
      goto LABEL_44;
    }

    v31 = [(UILayoutGuide *)v29 widthAnchor];
  }

  v14 = v31;
LABEL_44:

  v51 = v27;
  v52 = v51;
  if (a6 == 1)
  {
    v53 = [(UILayoutGuide *)v51 heightAnchor];
  }

  else
  {
    if (a6)
    {
      goto LABEL_49;
    }

    v53 = [(UILayoutGuide *)v51 widthAnchor];
  }

  v21 = v53;
LABEL_49:

  v54 = [v14 constraintEqualToAnchor:v21];
  [v24 addObject:v54];

  if (v25[1] == -1.0)
  {
    v55 = [v26 lastObject];
    v14 = v55;
    if (a6 == 1)
    {
      v56 = [v55 heightAnchor];
    }

    else
    {
      if (a6)
      {
        goto LABEL_55;
      }

      v56 = [v55 widthAnchor];
    }

    v25 = v56;
LABEL_55:

    v57 = v30;
    v58 = v57;
    if (a6 == 1)
    {
      v59 = [(UILayoutGuide *)v57 heightAnchor];
    }

    else
    {
      if (a6)
      {
LABEL_60:

        v60 = [v25 constraintEqualToAnchor:v21];
        [v24 addObject:v60];

LABEL_69:
        goto LABEL_70;
      }

      v59 = [(UILayoutGuide *)v57 widthAnchor];
    }

    v21 = v59;
    goto LABEL_60;
  }

LABEL_70:
  [v26 addObject:{v30, v67}];
  [v26 addObject:v27];

  _Block_object_dispose(v84, 8);
  v12 = v69;
  v11 = v70;
  v13 = v68;
  v19 = v72;
LABEL_71:

  return v19;
}

@end