@interface SBBlurthroughSwitcherEventResponse
- (SBBlurthroughSwitcherEventResponse)initWithFromLeafAppLayout:(id)a3 throughLeafAppLayout:(id)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
@end

@implementation SBBlurthroughSwitcherEventResponse

- (SBBlurthroughSwitcherEventResponse)initWithFromLeafAppLayout:(id)a3 throughLeafAppLayout:(id)a4
{
  v8 = a3;
  v9 = a4;
  v12.receiver = self;
  v12.super_class = SBBlurthroughSwitcherEventResponse;
  v10 = [(SBChainableModifierEventResponse *)&v12 init];
  if (v10)
  {
    if (v8)
    {
      if (v9)
      {
LABEL_4:
        objc_storeStrong(&v10->_fromLeafAppLayout, a3);
        objc_storeStrong(&v10->_throughLeafAppLayout, a4);
        goto LABEL_5;
      }
    }

    else
    {
      [SBBlurthroughSwitcherEventResponse initWithFromLeafAppLayout:a2 throughLeafAppLayout:v10];
      if (v9)
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

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v10.receiver = self;
  v10.super_class = SBBlurthroughSwitcherEventResponse;
  v4 = [(SBChainableModifierEventResponse *)&v10 descriptionBuilderWithMultilinePrefix:a3];
  v5 = [(SBAppLayout *)self->_fromLeafAppLayout succinctDescription];
  v6 = [v4 appendObject:v5 withName:@"fromLeafAppLayout"];

  v7 = [(SBAppLayout *)self->_throughLeafAppLayout succinctDescription];
  v8 = [v4 appendObject:v7 withName:@"throughLeafAppLayout"];

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