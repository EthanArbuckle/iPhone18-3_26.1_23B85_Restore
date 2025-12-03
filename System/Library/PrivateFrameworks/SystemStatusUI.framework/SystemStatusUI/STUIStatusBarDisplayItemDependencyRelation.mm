@interface STUIStatusBarDisplayItemDependencyRelation
- (BOOL)isFulfilled;
- (STUIStatusBarDisplayItemState)itemState;
- (id)_descriptionBuilderWithMultilinePrefix:(id)prefix forDebug:(BOOL)debug;
- (id)itemStates;
- (id)type;
@end

@implementation STUIStatusBarDisplayItemDependencyRelation

- (id)itemStates
{
  v5[1] = *MEMORY[0x277D85DE8];
  itemState = [(STUIStatusBarDisplayItemDependencyRelation *)self itemState];
  v5[0] = itemState;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

- (STUIStatusBarDisplayItemState)itemState
{
  WeakRetained = objc_loadWeakRetained(&self->_itemState);

  return WeakRetained;
}

- (BOOL)isFulfilled
{
  WeakRetained = objc_loadWeakRetained(&self->_itemState);
  v4 = [WeakRetained isCurrentPlacement:self->_placement];

  return ((v4 ^ self->_requirement) & 1) == 0;
}

- (id)type
{
  if (self->_requirement)
  {
    return @"requirement";
  }

  else
  {
    return @"exclusion";
  }
}

- (id)_descriptionBuilderWithMultilinePrefix:(id)prefix forDebug:(BOOL)debug
{
  v11.receiver = self;
  v11.super_class = STUIStatusBarDisplayItemDependencyRelation;
  v5 = [(STUIStatusBarDisplayItemRelation *)&v11 _descriptionBuilderWithMultilinePrefix:prefix forDebug:debug];
  itemState = [(STUIStatusBarDisplayItemDependencyRelation *)self itemState];
  v7 = [v5 appendObject:itemState withName:@"itemState" skipIfNil:1];

  placement = [(STUIStatusBarDisplayItemDependencyRelation *)self placement];
  v9 = [v5 appendObject:placement withName:@"placement" skipIfNil:1];

  return v5;
}

@end