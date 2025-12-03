@interface SBOverrideParentAppLayoutSwitcherModifier
- (SBOverrideParentAppLayoutSwitcherModifier)initWithChildAppLayout:(id)layout newParentAppLayout:(id)appLayout;
- (id)appLayoutContainingAppLayout:(id)layout;
- (id)appLayoutsContainedWithinAppLayout:(id)layout;
@end

@implementation SBOverrideParentAppLayoutSwitcherModifier

- (SBOverrideParentAppLayoutSwitcherModifier)initWithChildAppLayout:(id)layout newParentAppLayout:(id)appLayout
{
  layoutCopy = layout;
  appLayoutCopy = appLayout;
  v12.receiver = self;
  v12.super_class = SBOverrideParentAppLayoutSwitcherModifier;
  v10 = [(SBSwitcherModifier *)&v12 init];
  if (v10)
  {
    if (layoutCopy)
    {
      if (appLayoutCopy)
      {
LABEL_4:
        objc_storeStrong(&v10->_childAppLayout, layout);
        objc_storeStrong(&v10->_parentAppLayout, appLayout);
        goto LABEL_5;
      }
    }

    else
    {
      [SBOverrideParentAppLayoutSwitcherModifier initWithChildAppLayout:a2 newParentAppLayout:v10];
      if (appLayoutCopy)
      {
        goto LABEL_4;
      }
    }

    [SBOverrideParentAppLayoutSwitcherModifier initWithChildAppLayout:a2 newParentAppLayout:v10];
    goto LABEL_4;
  }

LABEL_5:

  return v10;
}

- (id)appLayoutContainingAppLayout:(id)layout
{
  layoutCopy = layout;
  if ([layoutCopy isEqual:self->_childAppLayout])
  {
    v5 = self->_parentAppLayout;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBOverrideParentAppLayoutSwitcherModifier;
    v5 = [(SBOverrideParentAppLayoutSwitcherModifier *)&v8 appLayoutContainingAppLayout:layoutCopy];
  }

  v6 = v5;

  return v6;
}

- (id)appLayoutsContainedWithinAppLayout:(id)layout
{
  v11.receiver = self;
  v11.super_class = SBOverrideParentAppLayoutSwitcherModifier;
  layoutCopy = layout;
  v5 = [(SBOverrideParentAppLayoutSwitcherModifier *)&v11 appLayoutsContainedWithinAppLayout:layoutCopy];
  v6 = [v5 containsObject:{self->_childAppLayout, v11.receiver, v11.super_class}];
  v7 = [layoutCopy isEqual:self->_parentAppLayout];

  if (v6)
  {
    if (v7)
    {
      goto LABEL_8;
    }

    v8 = [v5 sb_arrayByRemovingObject:self->_childAppLayout];
    goto LABEL_7;
  }

  if (v7 && ([v5 containsObject:self->_childAppLayout] & 1) == 0)
  {
    v8 = [v5 arrayByAddingObject:self->_childAppLayout];
LABEL_7:
    v9 = v8;

    v5 = v9;
  }

LABEL_8:

  return v5;
}

- (void)initWithChildAppLayout:(uint64_t)a1 newParentAppLayout:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBOverrideParentAppLayoutSwitcherModifier.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"childAppLayout"}];
}

- (void)initWithChildAppLayout:(uint64_t)a1 newParentAppLayout:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBOverrideParentAppLayoutSwitcherModifier.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"parentAppLayout"}];
}

@end