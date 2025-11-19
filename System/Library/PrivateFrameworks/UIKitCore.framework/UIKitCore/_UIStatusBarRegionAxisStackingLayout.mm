@interface _UIStatusBarRegionAxisStackingLayout
- (id)constraintsForDisplayItems:(id)a3 layoutGuides:(id)a4 inContainerItem:(id)a5 axis:(int64_t)a6;
@end

@implementation _UIStatusBarRegionAxisStackingLayout

- (id)constraintsForDisplayItems:(id)a3 layoutGuides:(id)a4 inContainerItem:(id)a5 axis:(int64_t)a6
{
  v10 = a3;
  v47 = a4;
  v11 = a5;
  v12 = [MEMORY[0x1E695DF70] array];
  alignment = self->_alignment;
  if (a6 == 1)
  {
    v16 = 3;
    if (alignment > 3)
    {
      if ((alignment - 6) < 2)
      {
        v19 = [MEMORY[0x1E696AAA8] currentHandler];
        v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSLayoutAttribute _UIStatusBarRegionAxisLayoutAttributeForAlignmentAndAxis(_UIStatusBarRegionAxisLayoutAlignment, UILayoutConstraintAxis)"}];
        v21 = @"Mixed alignments must be resolved before getting the attribute";
        v22 = v19;
        v23 = v20;
        v24 = 102;
LABEL_27:
        [v22 handleFailureInFunction:v23 file:@"_UIStatusBarRegionAxisLayout_Internal.h" lineNumber:v24 description:{v21, v45}];
        goto LABEL_28;
      }

      if (alignment == 4)
      {
        v17 = -1.0;
        v14 = 3;
        v18 = 4;
        goto LABEL_39;
      }

      if (alignment == 5)
      {
        alignment = 11;
        goto LABEL_40;
      }
    }

    else
    {
      if (!alignment)
      {
        goto LABEL_40;
      }

      v17 = 1.0;
      if (alignment == 1)
      {
        v15 = 1;
        v46 = 10;
LABEL_33:
        v18 = 4;
        goto LABEL_43;
      }

      if (alignment == 3)
      {
        v15 = 0;
        v46 = 3;
        v18 = 4;
        v16 = 3;
        goto LABEL_43;
      }
    }

    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSLayoutAttribute _UIStatusBarRegionAxisLayoutAttributeForAlignmentAndAxis(_UIStatusBarRegionAxisLayoutAlignment, UILayoutConstraintAxis)"}];
    v21 = @"Horizontal alignment given for vertical axis: %ld";
    v45 = alignment;
    v22 = v19;
    v23 = v20;
    v24 = 105;
    goto LABEL_27;
  }

  if (a6)
  {
    goto LABEL_29;
  }

  v14 = 1;
  if (alignment > 3)
  {
    v17 = -1.0;
    if (alignment == 4)
    {
      v18 = 6;
      v14 = 5;
LABEL_39:
      v16 = v18;
      v18 = v14;
      v25 = [v10 reverseObjectEnumerator];
      v26 = [v25 allObjects];

      v15 = 0;
      v46 = v16;
      v10 = v26;
      goto LABEL_43;
    }

    v18 = 2;
    if (alignment == 5)
    {
      v46 = 1;
      v15 = 0;
      v17 = 1.0;
      v16 = 1;
      goto LABEL_43;
    }

    if (alignment == 6)
    {
      goto LABEL_39;
    }
  }

  else
  {
    switch(alignment)
    {
      case 0:
        goto LABEL_40;
      case 1:
        a6 = 9;
        v15 = 1;
        goto LABEL_41;
      case 3:
        v15 = 0;
        a6 = 5;
LABEL_41:
        v17 = 1.0;
        v16 = 5;
        v18 = 6;
        v46 = a6;
        goto LABEL_43;
    }
  }

  v19 = [MEMORY[0x1E696AAA8] currentHandler];
  v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSLayoutAttribute _UIStatusBarRegionAxisLayoutAttributeForAlignmentAndAxis(_UIStatusBarRegionAxisLayoutAlignment, UILayoutConstraintAxis)"}];
  [v19 handleFailureInFunction:v20 file:@"_UIStatusBarRegionAxisLayout_Internal.h" lineNumber:83 description:{@"Vertical alignment given for horizontal axis: %ld", alignment}];
LABEL_28:

  alignment = self->_alignment;
LABEL_29:
  if (alignment == 1)
  {
    v15 = 1;
    if (!a6)
    {
      goto LABEL_41;
    }

    alignment = 0;
    if (a6 == 1)
    {
      v46 = 0;
      v17 = 1.0;
      v16 = 3;
      goto LABEL_33;
    }

LABEL_40:
    v15 = 0;
    v17 = 1.0;
    v18 = alignment;
    v46 = alignment;
    v16 = alignment;
    goto LABEL_43;
  }

  v18 = 0;
  if ((alignment & 0xFFFFFFFFFFFFFFFDLL) == 4)
  {
    v17 = -1.0;
  }

  else
  {
    v17 = 1.0;
  }

  if ((alignment | 2) == 6)
  {
    v14 = 0;
    goto LABEL_39;
  }

  v15 = 0;
  v46 = 0;
  v16 = 0;
LABEL_43:
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __101___UIStatusBarRegionAxisStackingLayout_constraintsForDisplayItems_layoutGuides_inContainerItem_axis___block_invoke;
  v48[3] = &unk_1E711FE28;
  v27 = v10;
  v49 = v27;
  v28 = v12;
  v53 = v16;
  v54 = v18;
  v55 = v17;
  v50 = v28;
  v51 = self;
  v56 = v15;
  v29 = v11;
  v52 = v29;
  [v27 enumerateObjectsUsingBlock:v48];
  v30 = [v27 lastObject];
  v31 = [v30 layoutItem];

  if (v15)
  {
    v32 = objc_alloc_init(UILayoutGuide);
    v33 = [v27 firstObject];
    v34 = [v33 layoutItem];

    v35 = [v27 lastObject];
    v36 = [v35 layoutItem];

    v37 = [MEMORY[0x1E69977A0] constraintWithItem:v32 attribute:v16 relatedBy:0 toItem:v34 attribute:v16 multiplier:1.0 constant:0.0];
    [v28 addObject:v37];

    v38 = [MEMORY[0x1E69977A0] constraintWithItem:v32 attribute:v18 relatedBy:0 toItem:v36 attribute:v18 multiplier:1.0 constant:0.0];
    [v28 addObject:v38];

    v39 = [MEMORY[0x1E69977A0] constraintWithItem:v32 attribute:v46 relatedBy:0 toItem:v29 attribute:v46 multiplier:1.0 constant:0.0];
    [v28 addObject:v39];

    v40 = v47;
    [v47 addObject:v32];
  }

  else
  {
    if (self->_hugging)
    {
      v32 = [MEMORY[0x1E69977A0] constraintWithItem:v31 attribute:v18 relatedBy:0 toItem:v29 attribute:v18 multiplier:1.0 constant:0.0];
    }

    else
    {
      if (v17 == 1.0)
      {
        v41 = -1;
      }

      else
      {
        v41 = 1;
      }

      v32 = [MEMORY[0x1E69977A0] constraintWithItem:v31 attribute:v18 relatedBy:v41 toItem:v29 attribute:v18 multiplier:? constant:?];
      LODWORD(v42) = 1132134400;
      [(UILayoutGuide *)v32 setPriority:v42];
    }

    [v28 addObject:v32];
    v40 = v47;
  }

  v43 = v28;
  return v28;
}

@end