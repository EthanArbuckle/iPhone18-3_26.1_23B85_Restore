@interface UIStatusBarRegionAxisAligningLayout
@end

@implementation UIStatusBarRegionAxisAligningLayout

void __101___UIStatusBarRegionAxisAligningLayout_constraintsForDisplayItems_layoutGuides_inContainerItem_axis___block_invoke(uint64_t a1, void *a2)
{
  v54 = a2;
  v4 = [v54 layoutItem];
  v5 = [v54 overriddenVerticalAlignment];
  v6 = v5;
  if (*(a1 + 56) != 1 || v5 == 0)
  {
    v6 = *(*(a1 + 32) + 8);
  }

  if ((v6 & 0xFFFFFFFFFFFFFFFELL) == 6)
  {
    v8 = [v54 displayable];
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
        goto LABEL_37;
      }

      v18 = [v16 leadingAnchor];
    }

    v2 = v18;
LABEL_37:

    v26 = *(a1 + 56);
    v27 = *(a1 + 48);
    v28 = v27;
    if (v26 == 1)
    {
      v29 = [v27 topAnchor];
    }

    else
    {
      if (v26)
      {
        goto LABEL_42;
      }

      v29 = [v27 leadingAnchor];
    }

    v15 = v29;
LABEL_42:

    v30 = [v2 constraintEqualToAnchor:v15];
    LODWORD(v31) = 1112276992;
    v32 = [v30 _ui_constraintWithPriority:v31];
    [v14 addObject:v32];

    v33 = *(a1 + 40);
    v34 = *(a1 + 56);
    v35 = v17;
    v12 = v35;
    if (v34 == 1)
    {
      v36 = [v35 bottomAnchor];
    }

    else
    {
      if (v34)
      {
        goto LABEL_47;
      }

      v36 = [v35 trailingAnchor];
    }

    v2 = v36;
LABEL_47:

    v37 = *(a1 + 56);
    v38 = *(a1 + 48);
    v39 = v38;
    if (v37 == 1)
    {
      v40 = [v38 bottomAnchor];
    }

    else
    {
      if (v37)
      {
        goto LABEL_52;
      }

      v40 = [v38 trailingAnchor];
    }

    v34 = v40;
LABEL_52:

    v41 = [v2 constraintEqualToAnchor:v34];
    LODWORD(v42) = 1112276992;
    v43 = [v41 _ui_constraintWithPriority:v42];
    [v33 addObject:v43];

    v11 = *(a1 + 40);
    v44 = *(a1 + 56);
    v45 = v12;
    v46 = v45;
    if (v44 == 1)
    {
      v47 = [v45 centerYAnchor];
    }

    else
    {
      if (v44)
      {
        goto LABEL_57;
      }

      v47 = [v45 centerXAnchor];
    }

    v12 = v47;
LABEL_57:

    v48 = *(a1 + 56);
    v49 = *(a1 + 48);
    v50 = v49;
    if (v48 == 1)
    {
      v51 = [v49 centerYAnchor];
    }

    else
    {
      if (v48)
      {
LABEL_62:

        v13 = [v12 constraintEqualToAnchor:a1];
        goto LABEL_63;
      }

      v51 = [v49 centerXAnchor];
    }

    a1 = v51;
    goto LABEL_62;
  }

  if (v6 == 5)
  {
    [v54 baselineOffset];
    v10 = v9;
    v11 = *(a1 + 40);
    v12 = [v4 lastBaselineAnchor];
    a1 = [*(a1 + 48) bottomAnchor];
    v13 = [v12 constraintEqualToAnchor:a1 constant:-v10];
LABEL_63:
    v52 = v13;
    [v11 addObject:v13];

    goto LABEL_67;
  }

  v19 = *(a1 + 56);
  if (v19 == 1)
  {
    [v54 centerOffset];
    v21 = v20;
    v19 = *(a1 + 56);
  }

  else
  {
    v21 = 0.0;
  }

  if (!v19)
  {
    if (v6 < 6 && ((0x3Bu >> v6) & 1) != 0)
    {
      v22 = &unk_18A681888;
      goto LABEL_34;
    }

    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSLayoutAttribute _UIStatusBarRegionAxisLayoutAttributeForAlignmentAndAxis(_UIStatusBarRegionAxisLayoutAlignment, UILayoutConstraintAxis)"}];
    [v23 handleFailureInFunction:v24 file:@"_UIStatusBarRegionAxisLayout_Internal.h" lineNumber:83 description:{@"Vertical alignment given for horizontal axis: %ld", v6}];
LABEL_65:

    v25 = 0;
    goto LABEL_66;
  }

  if (v6 >= 6 || ((0x3Bu >> v6) & 1) == 0)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSLayoutAttribute _UIStatusBarRegionAxisLayoutAttributeForAlignmentAndAxis(_UIStatusBarRegionAxisLayoutAlignment, UILayoutConstraintAxis)"}];
    [v23 handleFailureInFunction:v24 file:@"_UIStatusBarRegionAxisLayout_Internal.h" lineNumber:105 description:{@"Horizontal alignment given for vertical axis: %ld", v6}];
    goto LABEL_65;
  }

  v22 = &unk_18A6818B8;
LABEL_34:
  v25 = v22[v6];
LABEL_66:
  v53 = *(a1 + 40);
  v12 = [MEMORY[0x1E69977A0] constraintWithItem:v4 attribute:v25 relatedBy:0 toItem:*(a1 + 48) attribute:v25 multiplier:1.0 constant:-v21];
  [v53 addObject:v12];
LABEL_67:
}

@end