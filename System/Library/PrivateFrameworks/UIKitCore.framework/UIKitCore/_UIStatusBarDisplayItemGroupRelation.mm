@interface _UIStatusBarDisplayItemGroupRelation
- (BOOL)isFulfilled;
- (id)_ui_descriptionBuilder;
- (id)itemStates;
- (id)type;
@end

@implementation _UIStatusBarDisplayItemGroupRelation

- (BOOL)isFulfilled
{
  v16 = *MEMORY[0x1E69E9840];
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
  v16 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
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

- (id)_ui_descriptionBuilder
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = _UIStatusBarDisplayItemGroupRelation;
  _ui_descriptionBuilder = [(_UIStatusBarDisplayItemRelation *)&v7 _ui_descriptionBuilder];
  v3 = NSStringFromSelector(sel_relations);
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [_ui_descriptionBuilder appendKeys:v4];

  return v5;
}

@end