@interface SBOverrideParentAppLayoutSwitcherModifier
- (SBOverrideParentAppLayoutSwitcherModifier)initWithChildAppLayout:(id)a3 newParentAppLayout:(id)a4;
- (id)appLayoutContainingAppLayout:(id)a3;
- (id)appLayoutsContainedWithinAppLayout:(id)a3;
@end

@implementation SBOverrideParentAppLayoutSwitcherModifier

- (SBOverrideParentAppLayoutSwitcherModifier)initWithChildAppLayout:(id)a3 newParentAppLayout:(id)a4
{
  v8 = a3;
  v9 = a4;
  v12.receiver = self;
  v12.super_class = SBOverrideParentAppLayoutSwitcherModifier;
  v10 = [(SBSwitcherModifier *)&v12 init];
  if (v10)
  {
    if (v8)
    {
      if (v9)
      {
LABEL_4:
        objc_storeStrong(&v10->_childAppLayout, a3);
        objc_storeStrong(&v10->_parentAppLayout, a4);
        goto LABEL_5;
      }
    }

    else
    {
      [SBOverrideParentAppLayoutSwitcherModifier initWithChildAppLayout:a2 newParentAppLayout:v10];
      if (v9)
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

- (id)appLayoutContainingAppLayout:(id)a3
{
  v4 = a3;
  if ([v4 isEqual:self->_childAppLayout])
  {
    v5 = self->_parentAppLayout;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBOverrideParentAppLayoutSwitcherModifier;
    v5 = [(SBOverrideParentAppLayoutSwitcherModifier *)&v8 appLayoutContainingAppLayout:v4];
  }

  v6 = v5;

  return v6;
}

- (id)appLayoutsContainedWithinAppLayout:(id)a3
{
  v11.receiver = self;
  v11.super_class = SBOverrideParentAppLayoutSwitcherModifier;
  v4 = a3;
  v5 = [(SBOverrideParentAppLayoutSwitcherModifier *)&v11 appLayoutsContainedWithinAppLayout:v4];
  v6 = [v5 containsObject:{self->_childAppLayout, v11.receiver, v11.super_class}];
  v7 = [v4 isEqual:self->_parentAppLayout];

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