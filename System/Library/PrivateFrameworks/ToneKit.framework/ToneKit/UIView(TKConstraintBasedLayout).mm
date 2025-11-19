@interface UIView(TKConstraintBasedLayout)
+ (id)_tk_viewForItem:()TKConstraintBasedLayout;
- (id)_tk_autolayoutTrace;
- (id)_tk_recursiveAutolayoutTraceAtLevel:()TKConstraintBasedLayout anyDescendantHasAmbiguousLayout:;
- (id)tk_addedConstraintForItem:()TKConstraintBasedLayout layoutAttribute:relatedBy:toItem:attribute:multiplier:constant:;
- (id)tk_firstCommonAncestorWithView:()TKConstraintBasedLayout;
- (uint64_t)_tk_depth;
@end

@implementation UIView(TKConstraintBasedLayout)

- (id)tk_addedConstraintForItem:()TKConstraintBasedLayout layoutAttribute:relatedBy:toItem:attribute:multiplier:constant:
{
  v16 = a5;
  v17 = a8;
  v18 = [MEMORY[0x277CCAAD0] constraintWithItem:v16 attribute:a6 relatedBy:a7 toItem:v17 attribute:a9 multiplier:a2 constant:a3];
  if (v18)
  {
    v19 = [objc_opt_class() _tk_viewForItem:v16];
    v20 = [objc_opt_class() _tk_viewForItem:v17];
    v21 = v20;
    if (v19 && v20)
    {
      v22 = [v19 tk_firstCommonAncestorWithView:v20];
      [v22 addConstraint:v18];
    }

    else
    {
      [a1 addConstraint:v18];
    }
  }

  return v18;
}

- (uint64_t)_tk_depth
{
  v1 = a1;
  if (!v1)
  {
    return -1;
  }

  v2 = v1;
  v3 = -1;
  do
  {
    v4 = [v2 superview];

    ++v3;
    v2 = v4;
  }

  while (v4);
  return v3;
}

- (id)tk_firstCommonAncestorWithView:()TKConstraintBasedLayout
{
  v4 = a3;
  v5 = a1;
  v6 = v4;
  v7 = [v5 _tk_depth];
  v8 = [v6 _tk_depth];
  if (v8 < v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (v8 < v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  if (v8 < v7)
  {
    v11 = v5;
  }

  else
  {
    v11 = v6;
  }

  if (v8 < v7)
  {
    v12 = v6;
  }

  else
  {
    v12 = v5;
  }

  if (v9 >= v10)
  {
    v13 = v11;
  }

  else
  {
    do
    {
      v13 = [v11 superview];

      --v10;
      v11 = v13;
    }

    while (v9 < v10);
  }

  v14 = 0;
  if (v12 && v13)
  {
    while (v12 != v13)
    {
      v15 = [v12 superview];

      v16 = [v13 superview];

      v14 = 0;
      if (v15)
      {
        v12 = v15;
        v13 = v16;
        if (v16)
        {
          continue;
        }
      }

      goto LABEL_25;
    }

    v15 = v12;
    v16 = v13;
    v14 = v15;
  }

  else
  {
    v16 = v13;
    v15 = v12;
  }

LABEL_25:

  return v14;
}

+ (id)_tk_viewForItem:()TKConstraintBasedLayout
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 owningView];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (id)_tk_recursiveAutolayoutTraceAtLevel:()TKConstraintBasedLayout anyDescendantHasAmbiguousLayout:
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CCAB68] stringWithFormat:@"\n"];
  if (a3 >= 1)
  {
    v8 = a3;
    do
    {
      [v7 appendString:@"|   "];
      --v8;
    }

    while (v8);
  }

  v9 = [a1 hasAmbiguousLayout];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = v11;
  v13 = &stru_282E32280;
  if (v9)
  {
    v13 = @" - AMBIGUOUS LAYOUT";
  }

  [v7 appendFormat:@"<%@: %p>%@", v11, a1, v13];

  if (a4 && (v9 & 1) != 0)
  {
    *a4 = 1;
  }

  v14 = [a1 subviews];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v22 + 1) + 8 * i) _tk_recursiveAutolayoutTraceAtLevel:a3 + 1 anyDescendantHasAmbiguousLayout:a4];
        [v7 appendString:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_tk_autolayoutTrace
{
  v6 = 0;
  v1 = [a1 _tk_recursiveAutolayoutTraceAtLevel:0 anyDescendantHasAmbiguousLayout:&v6];
  v2 = v1;
  if (v6)
  {
    v3 = @"\nAMBIGUOUS LAYOUT IN SUBTREE";
  }

  else
  {
    v3 = @"\nNo views in subtree have an ambiguous layout. Good job!";
  }

  v4 = [v1 stringByAppendingString:v3];

  return v4;
}

@end