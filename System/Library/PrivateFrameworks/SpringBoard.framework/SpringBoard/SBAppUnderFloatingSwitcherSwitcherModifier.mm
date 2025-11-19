@interface SBAppUnderFloatingSwitcherSwitcherModifier
- (SBAppUnderFloatingSwitcherSwitcherModifier)initWithActiveAppLayout:(id)a3;
- (id)appLayoutsToResignActive;
@end

@implementation SBAppUnderFloatingSwitcherSwitcherModifier

- (SBAppUnderFloatingSwitcherSwitcherModifier)initWithActiveAppLayout:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBAppUnderFloatingSwitcherSwitcherModifier;
  v6 = [(SBSwitcherModifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appLayout, a3);
  }

  return v7;
}

- (id)appLayoutsToResignActive
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = MEMORY[0x277CBEB98];
  v4 = [(SBAppUnderFloatingSwitcherSwitcherModifier *)self appLayouts];
  v5 = [v3 setWithArray:v4];
  v6 = [v2 dictionaryWithObject:v5 forKey:&unk_283371150];

  return v6;
}

@end