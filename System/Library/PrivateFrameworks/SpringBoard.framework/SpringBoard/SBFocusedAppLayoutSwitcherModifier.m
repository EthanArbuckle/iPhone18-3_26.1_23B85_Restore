@interface SBFocusedAppLayoutSwitcherModifier
- (BOOL)shouldShowBackdropViewAtIndex:(unint64_t)a3;
- (SBFocusedAppLayoutSwitcherModifier)initWithFocusedAppLayout:(id)a3;
- (id)handleRemovalEvent:(id)a3;
- (id)handleUpdateFocusedAppLayoutEvent:(id)a3;
- (id)visibleAppLayouts;
@end

@implementation SBFocusedAppLayoutSwitcherModifier

- (SBFocusedAppLayoutSwitcherModifier)initWithFocusedAppLayout:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(SBFocusedAppLayoutSwitcherModifier *)a2 initWithFocusedAppLayout:?];
  }

  v10.receiver = self;
  v10.super_class = SBFocusedAppLayoutSwitcherModifier;
  v7 = [(SBSwitcherModifier *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_focusedAppLayout, a3);
  }

  return v8;
}

- (id)visibleAppLayouts
{
  v8.receiver = self;
  v8.super_class = SBFocusedAppLayoutSwitcherModifier;
  v3 = [(SBFocusedAppLayoutSwitcherModifier *)&v8 visibleAppLayouts];
  v4 = [v3 setByAddingObject:self->_focusedAppLayout];

  v5 = [(SBFocusedAppLayoutSwitcherModifier *)self neighboringAppLayoutsForFocusedAppLayout:self->_focusedAppLayout];
  if (v5)
  {
    v6 = [v4 setByAddingObjectsFromSet:v5];

    v4 = v6;
  }

  return v4;
}

- (id)handleUpdateFocusedAppLayoutEvent:(id)a3
{
  v4 = a3;
  v52.receiver = self;
  v52.super_class = SBFocusedAppLayoutSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v52 handleUpdateFocusedAppLayoutEvent:v4];
  v6 = [v4 appLayout];
  if ([v6 isOrContainsAppLayout:self->_focusedAppLayout])
  {
    if (([v4 isFocused] & 1) == 0)
    {
      [(SBChainableModifier *)self setState:1];
      v30 = [SBUpdateLayoutSwitcherEventResponse alloc];
      v31 = 64;
      v32 = 2;
LABEL_29:
      v36 = [(SBUpdateLayoutSwitcherEventResponse *)v30 initWithOptions:v31 updateMode:v32, *&v40];
      v37 = SBAppendSwitcherModifierResponse(v36, v5);

      v5 = v37;
      goto LABEL_30;
    }

    v7 = [(SBFocusedAppLayoutSwitcherModifier *)self appLayouts];
    v8 = [v7 indexOfObject:self->_focusedAppLayout];

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_30;
    }

    [(SBFocusedAppLayoutSwitcherModifier *)self switcherViewBounds];
    v10 = v9;
    rect.origin.x = v9;
    rect.origin.y = v11;
    v13 = v12;
    v15 = v14;
    v51.receiver = self;
    v51.super_class = SBFocusedAppLayoutSwitcherModifier;
    [(SBFocusedAppLayoutSwitcherModifier *)&v51 frameForIndex:v8];
    v50.receiver = self;
    v50.super_class = SBFocusedAppLayoutSwitcherModifier;
    [(SBFocusedAppLayoutSwitcherModifier *)&v50 scaleForIndex:v8];
    SBTransformedRectWithScale();
    x = v54.origin.x;
    y = v54.origin.y;
    width = v54.size.width;
    height = v54.size.height;
    CGRectGetMinX(v54);
    v55.origin.x = v10;
    v55.origin.y = v13;
    v55.size.width = v15;
    v55.size.height = rect.origin.y;
    CGRectGetMinX(v55);
    v20 = BSFloatLessThanFloat();
    v40 = x;
    v56.origin.x = x;
    v56.origin.y = y;
    v56.size.width = width;
    v56.size.height = height;
    CGRectGetMaxX(v56);
    v57.origin.x = rect.origin.x;
    v57.origin.y = v13;
    v57.size.width = v15;
    v57.size.height = rect.origin.y;
    CGRectGetMaxX(v57);
    v21 = BSFloatGreaterThanFloat();
    v22 = [(SBFocusedAppLayoutSwitcherModifier *)self isRTLEnabled];
    if (v22)
    {
      v23 = v21;
    }

    else
    {
      v23 = v20;
    }

    if (v22)
    {
      v21 = v20;
    }

    v24 = 2;
    if ((v23 & 1) == 0 && (v21 & 1) == 0)
    {
      if ([(SBFocusedAppLayoutSwitcherModifier *)self isDevicePad])
      {
        if ([(SBAppLayout *)self->_focusedAppLayout environment]!= 2 || ![(SBFocusedAppLayoutSwitcherModifier *)self canFocusableAppLayoutBeEffectivelyObscured:self->_focusedAppLayout])
        {
          v24 = 2;
LABEL_28:
          v30 = [SBUpdateLayoutSwitcherEventResponse alloc];
          v31 = 30;
          v32 = v24;
          goto LABEL_29;
        }

        v25 = [(SBFocusedAppLayoutSwitcherModifier *)self appLayouts];
        *&rect.size.width = MEMORY[0x277D85DD0];
        *&rect.size.height = 3221225472;
        v42 = __72__SBFocusedAppLayoutSwitcherModifier_handleUpdateFocusedAppLayoutEvent___block_invoke;
        v43 = &unk_2783BEC40;
        v26 = v25;
        v44 = v26;
        v45 = self;
        v46 = x;
        v47 = y;
        v48 = width;
        v49 = height;
        v27 = MEMORY[0x223D6F7F0](&rect.size);
        *&rect.origin.y = v26;
        if (v8 < [v26 count] - 1)
        {
          v28 = v8 + 1;
        }

        else
        {
          v28 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v29 = v27[2](v27, v28);
        if (v29 && v8)
        {
          v24 = 3;
        }

        else
        {
          if (v8)
          {
            v39 = v8 - 1;
          }

          else
          {
            v39 = 0x7FFFFFFFFFFFFFFFLL;
          }

          if (v27[2](v27, v39))
          {
            v24 = 3;
          }

          else
          {
            v24 = 2;
          }
        }

        if (!v29)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v24 = 2;
      }
    }

    if ([(SBFocusedAppLayoutSwitcherModifier *)self isDevicePad])
    {
      if ([(SBAppLayout *)self->_focusedAppLayout environment]== 2)
      {
        v33 = 0;
      }

      else
      {
        v33 = v21 ^ 1u;
      }
    }

    else
    {
      v33 = 2;
    }

    v34 = [[SBScrollToAppLayoutSwitcherEventResponse alloc] initWithAppLayout:self->_focusedAppLayout alignment:v33 animated:1];
    v35 = SBAppendSwitcherModifierResponse(v34, v5);

    v5 = v35;
    goto LABEL_28;
  }

LABEL_30:

  return v5;
}

BOOL __72__SBFocusedAppLayoutSwitcherModifier_handleUpdateFocusedAppLayoutEvent___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v19 = v7;
  v20 = v6;
  v21 = v5;
  v22 = v4;
  v23 = v2;
  v24 = v3;
  v11 = [*(a1 + 32) objectAtIndex:a2];
  v12 = [v11 environment];

  if (v12 != 2)
  {
    return 0;
  }

  v18.receiver = *(a1 + 40);
  v18.super_class = SBFocusedAppLayoutSwitcherModifier;
  objc_msgSendSuper2(&v18, sel_frameForIndex_, a2);
  v17.receiver = *(a1 + 40);
  v17.super_class = SBFocusedAppLayoutSwitcherModifier;
  objc_msgSendSuper2(&v17, sel_scaleForIndex_, a2);
  SBTransformedRectWithScale();
  v25.origin.x = v13;
  v25.origin.y = v14;
  v25.size.width = v15;
  v25.size.height = v16;
  return CGRectIntersectsRect(*(a1 + 48), v25);
}

- (id)handleRemovalEvent:(id)a3
{
  v10.receiver = self;
  v10.super_class = SBFocusedAppLayoutSwitcherModifier;
  v4 = a3;
  v5 = [(SBSwitcherModifier *)&v10 handleRemovalEvent:v4];
  v6 = [v4 appLayout];

  if (v6 == self->_focusedAppLayout)
  {
    [(SBChainableModifier *)self setState:1];
    v7 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:30 updateMode:3];
    v8 = SBAppendSwitcherModifierResponse(v7, v5);

    v5 = v8;
  }

  return v5;
}

- (BOOL)shouldShowBackdropViewAtIndex:(unint64_t)a3
{
  v4 = self;
  v9.receiver = self;
  v9.super_class = SBFocusedAppLayoutSwitcherModifier;
  v5 = [(SBFocusedAppLayoutSwitcherModifier *)&v9 shouldShowBackdropViewAtIndex:?];
  v6 = [(SBFocusedAppLayoutSwitcherModifier *)v4 appLayouts];
  v7 = [v6 objectAtIndex:a3];

  LOBYTE(v4) = [v7 isOrContainsAppLayout:v4->_focusedAppLayout] | v5;
  return v4 & 1;
}

- (void)initWithFocusedAppLayout:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFocusedAppLayoutSwitcherModifier.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"focusedAppLayout"}];
}

@end