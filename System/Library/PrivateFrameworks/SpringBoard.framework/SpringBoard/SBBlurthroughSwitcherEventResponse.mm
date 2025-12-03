@interface SBBlurthroughSwitcherEventResponse
- (SBBlurthroughSwitcherEventResponse)initWithFromLeafAppLayout:(id)layout throughLeafAppLayout:(id)appLayout;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
@end

@implementation SBBlurthroughSwitcherEventResponse

- (SBBlurthroughSwitcherEventResponse)initWithFromLeafAppLayout:(id)layout throughLeafAppLayout:(id)appLayout
{
  layoutCopy = layout;
  appLayoutCopy = appLayout;
  v12.receiver = self;
  v12.super_class = SBBlurthroughSwitcherEventResponse;
  v10 = [(SBChainableModifierEventResponse *)&v12 init];
  if (v10)
  {
    if (layoutCopy)
    {
      if (appLayoutCopy)
      {
LABEL_4:
        objc_storeStrong(&v10->_fromLeafAppLayout, layout);
        objc_storeStrong(&v10->_throughLeafAppLayout, appLayout);
        goto LABEL_5;
      }
    }

    else
    {
      [SBBlurthroughSwitcherEventResponse initWithFromLeafAppLayout:a2 throughLeafAppLayout:v10];
      if (appLayoutCopy)
      {
        goto LABEL_4;
      }
    }

    [SBBlurthroughSwitcherEventResponse initWithFromLeafAppLayout:a2 throughLeafAppLayout:v10];
    goto LABEL_4;
  }

LABEL_5:

  return v10;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v10.receiver = self;
  v10.super_class = SBBlurthroughSwitcherEventResponse;
  v4 = [(SBChainableModifierEventResponse *)&v10 descriptionBuilderWithMultilinePrefix:prefix];
  succinctDescription = [(SBAppLayout *)self->_fromLeafAppLayout succinctDescription];
  v6 = [v4 appendObject:succinctDescription withName:@"fromLeafAppLayout"];

  succinctDescription2 = [(SBAppLayout *)self->_throughLeafAppLayout succinctDescription];
  v8 = [v4 appendObject:succinctDescription2 withName:@"throughLeafAppLayout"];

  return v4;
}

- (void)initWithFromLeafAppLayout:(uint64_t)a1 throughLeafAppLayout:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBBlurthroughSwitcherEventResponse.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"fromLeafAppLayout"}];
}

- (void)initWithFromLeafAppLayout:(uint64_t)a1 throughLeafAppLayout:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBBlurthroughSwitcherEventResponse.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"throughLeafAppLayout"}];
}

@end