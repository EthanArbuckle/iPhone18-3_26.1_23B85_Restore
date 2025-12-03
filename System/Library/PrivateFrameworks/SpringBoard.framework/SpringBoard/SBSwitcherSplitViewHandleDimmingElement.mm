@interface SBSwitcherSplitViewHandleDimmingElement
- (BOOL)isEqual:(id)equal;
- (SBSwitcherSplitViewHandleDimmingElement)initWithDisplayItems:(id)items;
@end

@implementation SBSwitcherSplitViewHandleDimmingElement

- (SBSwitcherSplitViewHandleDimmingElement)initWithDisplayItems:(id)items
{
  itemsCopy = items;
  v12.receiver = self;
  v12.super_class = SBSwitcherSplitViewHandleDimmingElement;
  v6 = [(SBSwitcherSplitViewHandleDimmingElement *)&v12 init];
  if (v6)
  {
    if ([itemsCopy count] != 2)
    {
      [(SBSwitcherSplitViewHandleDimmingElement *)a2 initWithDisplayItems:v6];
    }

    v7 = [itemsCopy copy];
    displayItems = v6->_displayItems;
    v6->_displayItems = v7;
  }

  v9 = objc_alloc_init(MEMORY[0x277CF0C40]);
  v10 = [v9 appendObject:v6->_displayItems];
  v6->_hash = [v9 hash];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = equalCopy;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = v7;

    if (v9)
    {
      displayItems = [(SBSwitcherSplitViewHandleDimmingElement *)v9 displayItems];
      v8 = BSEqualArrays();
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)initWithDisplayItems:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSwitcherSplitViewHandleDimmingElement.m" lineNumber:21 description:@"A split view handle can only be between exactly two items"];
}

@end