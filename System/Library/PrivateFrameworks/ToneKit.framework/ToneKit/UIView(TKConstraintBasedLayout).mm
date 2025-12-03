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
      [self addConstraint:v18];
    }
  }

  return v18;
}

- (uint64_t)_tk_depth
{
  selfCopy = self;
  if (!selfCopy)
  {
    return -1;
  }

  v2 = selfCopy;
  v3 = -1;
  do
  {
    superview = [v2 superview];

    ++v3;
    v2 = superview;
  }

  while (superview);
  return v3;
}

- (id)tk_firstCommonAncestorWithView:()TKConstraintBasedLayout
{
  v4 = a3;
  selfCopy = self;
  v6 = v4;
  _tk_depth = [selfCopy _tk_depth];
  _tk_depth2 = [v6 _tk_depth];
  if (_tk_depth2 < _tk_depth)
  {
    v9 = _tk_depth2;
  }

  else
  {
    v9 = _tk_depth;
  }

  if (_tk_depth2 < _tk_depth)
  {
    v10 = _tk_depth;
  }

  else
  {
    v10 = _tk_depth2;
  }

  if (_tk_depth2 < _tk_depth)
  {
    v11 = selfCopy;
  }

  else
  {
    v11 = v6;
  }

  if (_tk_depth2 < _tk_depth)
  {
    v12 = v6;
  }

  else
  {
    v12 = selfCopy;
  }

  if (v9 >= v10)
  {
    superview = v11;
  }

  else
  {
    do
    {
      superview = [v11 superview];

      --v10;
      v11 = superview;
    }

    while (v9 < v10);
  }

  v14 = 0;
  if (v12 && superview)
  {
    while (v12 != superview)
    {
      superview2 = [v12 superview];

      v13Superview = [superview superview];

      v14 = 0;
      if (superview2)
      {
        v12 = superview2;
        superview = v13Superview;
        if (v13Superview)
        {
          continue;
        }
      }

      goto LABEL_25;
    }

    superview2 = v12;
    v13Superview = superview;
    v14 = superview2;
  }

  else
  {
    v13Superview = superview;
    superview2 = v12;
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
    owningView = v3;
LABEL_5:
    v5 = owningView;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    owningView = [v3 owningView];
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

  hasAmbiguousLayout = [self hasAmbiguousLayout];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = v11;
  v13 = &stru_282E32280;
  if (hasAmbiguousLayout)
  {
    v13 = @" - AMBIGUOUS LAYOUT";
  }

  [v7 appendFormat:@"<%@: %p>%@", v11, self, v13];

  if (a4 && (hasAmbiguousLayout & 1) != 0)
  {
    *a4 = 1;
  }

  subviews = [self subviews];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = [subviews countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(subviews);
        }

        v19 = [*(*(&v22 + 1) + 8 * i) _tk_recursiveAutolayoutTraceAtLevel:a3 + 1 anyDescendantHasAmbiguousLayout:a4];
        [v7 appendString:v19];
      }

      v16 = [subviews countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_tk_autolayoutTrace
{
  v6 = 0;
  v1 = [self _tk_recursiveAutolayoutTraceAtLevel:0 anyDescendantHasAmbiguousLayout:&v6];
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