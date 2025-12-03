@interface SBFilteringSwitcherModifier
- (CGRect)routingModifier:(id)modifier containerViewBoundsForModifier:(id)forModifier;
- (CGRect)routingModifier:(id)modifier switcherViewBoundsForModifier:(id)forModifier;
- (SBFilteringSwitcherModifier)initWithAppLayouts:(id)layouts modifier:(id)modifier;
- (id)routingModifier:(id)modifier animationAttributesModifierForLayoutElement:(id)element;
- (id)routingModifier:(id)modifier event:(id)event forModifier:(id)forModifier;
- (id)routingModifier:(id)modifier filteredAppLayouts:(id)layouts forModifier:(id)forModifier;
- (id)routingModifier:(id)modifier modifierForAppLayout:(id)layout;
- (void)didMoveToParentModifier:(id)modifier;
- (void)setState:(int64_t)state;
@end

@implementation SBFilteringSwitcherModifier

- (SBFilteringSwitcherModifier)initWithAppLayouts:(id)layouts modifier:(id)modifier
{
  v24[2] = *MEMORY[0x277D85DE8];
  layoutsCopy = layouts;
  modifierCopy = modifier;
  v23.receiver = self;
  v23.super_class = SBFilteringSwitcherModifier;
  v9 = [(SBSwitcherModifier *)&v23 init];
  if (v9)
  {
    if (layoutsCopy)
    {
      if (modifierCopy)
      {
LABEL_4:
        v10 = [layoutsCopy copy];
        appLayoutsToFilter = v9->_appLayoutsToFilter;
        v9->_appLayoutsToFilter = v10;

        objc_storeStrong(&v9->_modifier, modifier);
        v12 = objc_alloc_init(_SBFilteringPassthroughTargetSwitcherModifier);
        passthroughModifier = v9->_passthroughModifier;
        v9->_passthroughModifier = v12;

        v14 = [SBRoutingSwitcherModifier alloc];
        v24[0] = v9->_modifier;
        v24[1] = v9->_passthroughModifier;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
        v16 = [(SBRoutingSwitcherModifier *)v14 initWithModifiers:v15 delegate:v9];

        [(SBChainableModifier *)v9 addChildModifier:v16 atLevel:0 key:0];
        v17 = MEMORY[0x277CBEB98];
        v18 = [layoutsCopy bs_compactMap:&__block_literal_global_312];
        bs_flatten = [v18 bs_flatten];
        v20 = [v17 setWithArray:bs_flatten];
        displayItemsToFilter = v9->_displayItemsToFilter;
        v9->_displayItemsToFilter = v20;

        goto LABEL_5;
      }
    }

    else
    {
      [SBFilteringSwitcherModifier initWithAppLayouts:a2 modifier:v9];
      if (modifierCopy)
      {
        goto LABEL_4;
      }
    }

    [SBFilteringSwitcherModifier initWithAppLayouts:a2 modifier:v9];
    goto LABEL_4;
  }

LABEL_5:

  return v9;
}

- (void)didMoveToParentModifier:(id)modifier
{
  v6.receiver = self;
  v6.super_class = SBFilteringSwitcherModifier;
  [(SBChainableModifier *)&v6 didMoveToParentModifier:?];
  if (modifier)
  {
    delegate = [(SBChainableModifier *)self->_passthroughModifier delegate];

    if (delegate)
    {
      [(SBChainableModifier *)self->_passthroughModifier setDelegate:0];
      [(SBChainableModifier *)self addChildModifier:self->_passthroughModifier atLevel:1 key:0];
      [(SBFilteringSwitcherModifier *)self newAppLayoutsGenCount];
    }
  }
}

- (void)setState:(int64_t)state
{
  state = [(SBChainableModifier *)self state];
  if (state == 1 && state != 1)
  {
    [(SBFilteringSwitcherModifier *)self newAppLayoutsGenCount];
  }

  v6.receiver = self;
  v6.super_class = SBFilteringSwitcherModifier;
  [(SBChainableModifier *)&v6 setState:state];
}

- (id)routingModifier:(id)modifier event:(id)event forModifier:(id)forModifier
{
  v32[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  forModifierCopy = forModifier;
  if ([eventCopy type] == 17)
  {
    if (self->_modifier != forModifierCopy || (v9 = self->_appLayoutsToFilter, [eventCopy appLayout], v10 = objc_claimAutoreleasedReturnValue(), LODWORD(v9) = -[NSArray containsObject:](v9, "containsObject:", v10), v10, !v9))
    {
      if (self->_passthroughModifier != forModifierCopy || (appLayoutsToFilter = self->_appLayoutsToFilter, [eventCopy appLayout], v12 = objc_claimAutoreleasedReturnValue(), LOBYTE(appLayoutsToFilter) = -[NSArray containsObject:](appLayoutsToFilter, "containsObject:", v12), v12, (appLayoutsToFilter & 1) != 0))
      {
        v13 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_17;
  }

  if ([eventCopy type] != 1)
  {
LABEL_17:
    v13 = eventCopy;
    goto LABEL_28;
  }

  v13 = [eventCopy copy];
  fromAppLayout = [v13 fromAppLayout];
  toAppLayout = [v13 toAppLayout];
  if (fromAppLayout)
  {
    routingModifier = self->_routingModifier;
    v32[0] = fromAppLayout;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
    v18 = [(SBFilteringSwitcherModifier *)self routingModifier:routingModifier filteredAppLayouts:v17 forModifier:forModifierCopy];
    firstObject = [v18 firstObject];
    [v13 setFromAppLayout:firstObject];
  }

  if (toAppLayout)
  {
    v20 = self->_routingModifier;
    v31 = toAppLayout;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
    v22 = [(SBFilteringSwitcherModifier *)self routingModifier:v20 filteredAppLayouts:v21 forModifier:forModifierCopy];
    firstObject2 = [v22 firstObject];
    [v13 setToAppLayout:firstObject2];
  }

  if ([v13 fromEnvironmentMode] == 3)
  {
    fromAppLayout2 = [v13 fromAppLayout];

    if (!fromAppLayout2)
    {
      v26 = 1;
      goto LABEL_19;
    }
  }

  if ([v13 fromEnvironmentMode] == 1)
  {
    fromAppLayout3 = [v13 fromAppLayout];

    if (fromAppLayout3)
    {
      v26 = 3;
LABEL_19:
      [v13 setFromEnvironmentMode:v26];
    }
  }

  if ([v13 toEnvironmentMode] == 3 && (objc_msgSend(v13, "toAppLayout"), v27 = objc_claimAutoreleasedReturnValue(), v27, !v27))
  {
    v29 = 1;
  }

  else
  {
    if ([v13 toEnvironmentMode] != 1)
    {
      goto LABEL_27;
    }

    toAppLayout2 = [v13 toAppLayout];

    if (!toAppLayout2)
    {
      goto LABEL_27;
    }

    v29 = 3;
  }

  [v13 setToEnvironmentMode:v29];
LABEL_27:

LABEL_28:

  return v13;
}

- (id)routingModifier:(id)modifier filteredAppLayouts:(id)layouts forModifier:(id)forModifier
{
  if (self->_modifier == forModifier)
  {
    v5 = v11;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v6 = __78__SBFilteringSwitcherModifier_routingModifier_filteredAppLayouts_forModifier___block_invoke;
  }

  else
  {
    v5 = &v9;
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v6 = __78__SBFilteringSwitcherModifier_routingModifier_filteredAppLayouts_forModifier___block_invoke_3;
  }

  v5[2] = v6;
  v5[3] = &unk_2783AE218;
  v5[4] = self;
  v7 = [layouts bs_compactMap:{v9, v10}];

  return v7;
}

id __78__SBFilteringSwitcherModifier_routingModifier_filteredAppLayouts_forModifier___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __78__SBFilteringSwitcherModifier_routingModifier_filteredAppLayouts_forModifier___block_invoke_2;
  v4[3] = &unk_2783A8C90;
  v4[4] = *(a1 + 32);
  v2 = [a2 appLayoutWithItemsPassingTest:v4];

  return v2;
}

id __78__SBFilteringSwitcherModifier_routingModifier_filteredAppLayouts_forModifier___block_invoke_3(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __78__SBFilteringSwitcherModifier_routingModifier_filteredAppLayouts_forModifier___block_invoke_4;
  v4[3] = &unk_2783A8C90;
  v4[4] = *(a1 + 32);
  v2 = [a2 appLayoutWithItemsPassingTest:v4];

  return v2;
}

- (id)routingModifier:(id)modifier modifierForAppLayout:(id)layout
{
  v5 = [layout containsAnyItemFromSet:self->_displayItemsToFilter];
  v6 = &OBJC_IVAR___SBFilteringSwitcherModifier__passthroughModifier;
  if (v5)
  {
    v6 = &OBJC_IVAR___SBFilteringSwitcherModifier__modifier;
  }

  v7 = *(&self->super.super.super.super.isa + *v6);

  return v7;
}

- (CGRect)routingModifier:(id)modifier containerViewBoundsForModifier:(id)forModifier
{
  v8.receiver = self;
  v8.super_class = SBFilteringSwitcherModifier;
  [(SBFilteringSwitcherModifier *)&v8 containerViewBounds:modifier];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)routingModifier:(id)modifier switcherViewBoundsForModifier:(id)forModifier
{
  v8.receiver = self;
  v8.super_class = SBFilteringSwitcherModifier;
  [(SBFilteringSwitcherModifier *)&v8 switcherViewBounds:modifier];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (id)routingModifier:(id)modifier animationAttributesModifierForLayoutElement:(id)element
{
  elementCopy = element;
  if ([elementCopy switcherLayoutElementType] || !-[NSArray containsObject:](self->_appLayoutsToFilter, "containsObject:", elementCopy))
  {
    v6 = &OBJC_IVAR___SBFilteringSwitcherModifier__passthroughModifier;
  }

  else
  {
    v6 = &OBJC_IVAR___SBFilteringSwitcherModifier__modifier;
  }

  v7 = *(&self->super.super.super.super.isa + *v6);
  v8 = v7;

  return v7;
}

- (void)initWithAppLayouts:(uint64_t)a1 modifier:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFilteringSwitcherModifier.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"appLayoutsToFilter"}];
}

- (void)initWithAppLayouts:(uint64_t)a1 modifier:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFilteringSwitcherModifier.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"modifier"}];
}

@end