@interface STUIStatusBarDisplayItemGroupRelation
- (BOOL)isFulfilled;
- (id)_descriptionBuilderWithMultilinePrefix:(id)prefix forDebug:(BOOL)debug;
- (id)itemStates;
- (id)type;
@end

@implementation STUIStatusBarDisplayItemGroupRelation

- (BOOL)isFulfilled
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_relations;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 isFulfilled] && !self->_requiresAll)
        {
          v9 = 1;
LABEL_15:

          return v9;
        }

        if (([v8 isFulfilled] & 1) == 0 && self->_requiresAll)
        {
          v9 = 0;
          goto LABEL_15;
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return self->_requiresAll;
}

- (id)itemStates
{
  v16 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_relations;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        itemStates = [*(*(&v11 + 1) + 8 * i) itemStates];
        [array addObjectsFromArray:itemStates];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (id)type
{
  if (self->_requiresAll)
  {
    return @"all";
  }

  else
  {
    return @"any";
  }
}

- (id)_descriptionBuilderWithMultilinePrefix:(id)prefix forDebug:(BOOL)debug
{
  v8.receiver = self;
  v8.super_class = STUIStatusBarDisplayItemGroupRelation;
  v5 = [(STUIStatusBarDisplayItemRelation *)&v8 _descriptionBuilderWithMultilinePrefix:prefix forDebug:debug];
  relations = [(STUIStatusBarDisplayItemGroupRelation *)self relations];
  [v5 appendArraySection:relations withName:@"relations" skipIfEmpty:1];

  return v5;
}

@end