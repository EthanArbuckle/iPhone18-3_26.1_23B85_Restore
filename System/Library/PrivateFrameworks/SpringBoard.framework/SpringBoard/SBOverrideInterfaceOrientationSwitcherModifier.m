@interface SBOverrideInterfaceOrientationSwitcherModifier
- (CGRect)containerViewBounds;
- (CGRect)switcherViewBounds;
- (SBOverrideInterfaceOrientationSwitcherModifier)initWithInterfaceOrientation:(int64_t)a3;
@end

@implementation SBOverrideInterfaceOrientationSwitcherModifier

- (CGRect)containerViewBounds
{
  v17.receiver = self;
  v17.super_class = SBOverrideInterfaceOrientationSwitcherModifier;
  [(SBOverrideInterfaceOrientationSwitcherModifier *)&v17 containerViewBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v16.receiver = self;
  v16.super_class = SBOverrideInterfaceOrientationSwitcherModifier;
  v11 = ([(SBOverrideInterfaceOrientationSwitcherModifier *)&v16 switcherInterfaceOrientation]- 1 < 2) ^ ((self->_orientation - 1) < 2);
  if (v11)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v11)
  {
    v13 = v10;
  }

  else
  {
    v13 = v8;
  }

  v14 = v4;
  v15 = v6;
  result.size.height = v12;
  result.size.width = v13;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (SBOverrideInterfaceOrientationSwitcherModifier)initWithInterfaceOrientation:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = SBOverrideInterfaceOrientationSwitcherModifier;
  result = [(SBSwitcherModifier *)&v5 init];
  if (result)
  {
    result->_orientation = a3;
  }

  return result;
}

- (CGRect)switcherViewBounds
{
  v17.receiver = self;
  v17.super_class = SBOverrideInterfaceOrientationSwitcherModifier;
  [(SBOverrideInterfaceOrientationSwitcherModifier *)&v17 switcherViewBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v16.receiver = self;
  v16.super_class = SBOverrideInterfaceOrientationSwitcherModifier;
  v11 = ([(SBOverrideInterfaceOrientationSwitcherModifier *)&v16 switcherInterfaceOrientation]- 1 < 2) ^ ((self->_orientation - 1) < 2);
  if (v11)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v11)
  {
    v13 = v10;
  }

  else
  {
    v13 = v8;
  }

  v14 = v4;
  v15 = v6;
  result.size.height = v12;
  result.size.width = v13;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

@end