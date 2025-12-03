@interface SBPeekToOffscreenSwitcherModifier
- (CGRect)frameForIndex:(unint64_t)index;
- (SBPeekToOffscreenSwitcherModifier)initWithTransitionID:(id)d peekingAppLayout:(id)layout peekConfiguration:(int64_t)configuration spaceConfiguration:(int64_t)spaceConfiguration;
- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (void)setState:(int64_t)state;
@end

@implementation SBPeekToOffscreenSwitcherModifier

- (SBPeekToOffscreenSwitcherModifier)initWithTransitionID:(id)d peekingAppLayout:(id)layout peekConfiguration:(int64_t)configuration spaceConfiguration:(int64_t)spaceConfiguration
{
  dCopy = d;
  layoutCopy = layout;
  if (!layoutCopy)
  {
    [SBPeekToOffscreenSwitcherModifier initWithTransitionID:a2 peekingAppLayout:self peekConfiguration:? spaceConfiguration:?];
  }

  if (!SBPeekConfigurationIsValid(configuration))
  {
    [SBPeekToOffscreenSwitcherModifier initWithTransitionID:a2 peekingAppLayout:self peekConfiguration:? spaceConfiguration:?];
  }

  v16.receiver = self;
  v16.super_class = SBPeekToOffscreenSwitcherModifier;
  v13 = [(SBTransitionSwitcherModifier *)&v16 initWithTransitionID:dCopy];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_peekingAppLayout, layout);
    v14->_peekConfiguration = configuration;
    v14->_spaceConfiguration = spaceConfiguration;
  }

  return v14;
}

- (void)setState:(int64_t)state
{
  v3.receiver = self;
  v3.super_class = SBPeekToOffscreenSwitcherModifier;
  [(SBChainableModifier *)&v3 setState:state];
}

- (CGRect)frameForIndex:(unint64_t)index
{
  v46[1] = *MEMORY[0x277D85DE8];
  appLayouts = [(SBPeekToOffscreenSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if (v6 == self->_peekingAppLayout && [(SBTransitionSwitcherModifier *)self isUpdatingLayout])
  {
    v7 = 1;
    v39 = [(SBAppLayout *)self->_peekingAppLayout itemForLayoutRole:1];
    if (self->_spaceConfiguration == 1)
    {
      v8 = [SBAppLayout alloc];
      v38 = [MEMORY[0x277CCABB0] numberWithInteger:1];
      v45 = v38;
      v46[0] = v39;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:&v45 count:1];
      v10 = [(SBAppLayout *)v8 initWithItemsForLayoutRoles:v9 configuration:1 environment:[(SBAppLayout *)self->_peekingAppLayout environment] preferredDisplayOrdinal:[(SBPeekToOffscreenSwitcherModifier *)self displayOrdinal]];
    }

    else
    {
      v23 = [[SBDisplayItem alloc] initWithType:0 bundleIdentifier:@"SBPeekToOffscreenSwitcherModifier-placeholder" uniqueIdentifier:&stru_283094718];
      v9 = [(SBAppLayout *)self->_peekingAppLayout itemForLayoutRole:1];
      peekConfiguration = self->_peekConfiguration;
      if (peekConfiguration == 2)
      {
        v25 = 2;
      }

      else
      {
        v25 = 1;
      }

      if (peekConfiguration != 2)
      {
        v7 = 2;
      }

      v36 = [SBAppLayout alloc];
      v37 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
      v43[0] = v37;
      v44[0] = v9;
      v26 = [MEMORY[0x277CCABB0] numberWithInteger:v25];
      v43[1] = v26;
      v38 = v23;
      v44[1] = v23;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
      v10 = [(SBAppLayout *)v36 initWithItemsForLayoutRoles:v27 configuration:SBAppLayoutConfigurationFromMainDisplayLayoutStateSpaceConfiguration(self->_spaceConfiguration) environment:[(SBAppLayout *)self->_peekingAppLayout environment] preferredDisplayOrdinal:[(SBPeekToOffscreenSwitcherModifier *)self displayOrdinal]];
    }

    v42.receiver = self;
    v42.super_class = SBPeekToOffscreenSwitcherModifier;
    [(SBPeekToOffscreenSwitcherModifier *)&v42 frameForIndex:index];
    SBRectWithSize();
    v41.receiver = self;
    v41.super_class = SBPeekToOffscreenSwitcherModifier;
    [(SBPeekToOffscreenSwitcherModifier *)&v41 frameForLayoutRole:v7 inAppLayout:v10 withBounds:?];
    SBRectWithSize();
    v16 = v28;
    v18 = v29;
    isRTLEnabled = [(SBPeekToOffscreenSwitcherModifier *)self isRTLEnabled];
    v31 = self->_peekConfiguration;
    if (isRTLEnabled)
    {
      if (v31 != 3)
      {
LABEL_15:
        [(SBPeekToOffscreenSwitcherModifier *)self containerViewBounds];
        v12 = v32 + v33;
LABEL_18:
        [(SBPeekToOffscreenSwitcherModifier *)self containerViewBounds];
        v14 = v35;

        goto LABEL_6;
      }
    }

    else if (v31 != 2)
    {
      goto LABEL_15;
    }

    [(SBPeekToOffscreenSwitcherModifier *)self containerViewBounds];
    v12 = v34 - v16;
    goto LABEL_18;
  }

  v40.receiver = self;
  v40.super_class = SBPeekToOffscreenSwitcherModifier;
  [(SBPeekToOffscreenSwitcherModifier *)&v40 frameForIndex:index];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
LABEL_6:

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index
{
  if (self->_peekingAppLayout == layout)
  {
    return 1.0;
  }

  v9 = v5;
  v10 = v6;
  v8.receiver = self;
  v8.super_class = SBPeekToOffscreenSwitcherModifier;
  [SBPeekToOffscreenSwitcherModifier opacityForLayoutRole:sel_opacityForLayoutRole_inAppLayout_atIndex_ inAppLayout:role atIndex:?];
  return result;
}

- (void)initWithTransitionID:(uint64_t)a1 peekingAppLayout:(uint64_t)a2 peekConfiguration:spaceConfiguration:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBPeekToOffscreenSwitcherModifier.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"peekingAppLayout"}];
}

- (void)initWithTransitionID:(uint64_t)a1 peekingAppLayout:(uint64_t)a2 peekConfiguration:spaceConfiguration:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBPeekToOffscreenSwitcherModifier.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"SBPeekConfigurationIsValid(peekConfiguration)"}];
}

@end