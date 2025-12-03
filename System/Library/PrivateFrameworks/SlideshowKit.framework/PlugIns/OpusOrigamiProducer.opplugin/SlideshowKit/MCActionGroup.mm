@interface MCActionGroup
+ (id)actionGroup;
- (MCActionGroup)init;
- (MCActionGroup)initWithImprint:(id)imprint;
- (NSArray)actions;
- (id)actionAtIndex:(unint64_t)index;
- (id)description;
- (id)imprint;
- (unint64_t)countOfActions;
- (void)_copySelfToSnapshot:(id)snapshot;
- (void)addAction:(id)action;
- (void)addActions:(id)actions;
- (void)demolish;
- (void)insertAction:(id)action atIndex:(unint64_t)index;
- (void)insertActions:(id)actions atIndex:(unint64_t)index;
- (void)moveActionsAtIndices:(id)indices toIndex:(unint64_t)index;
- (void)removeActionsAtIndices:(id)indices;
- (void)removeAllActions;
@end

@implementation MCActionGroup

+ (id)actionGroup
{
  v2 = objc_alloc_init(MCActionGroup);

  return v2;
}

- (MCActionGroup)init
{
  v4.receiver = self;
  v4.super_class = MCActionGroup;
  v2 = [(MCActionGroup *)&v4 init];
  if (v2)
  {
    v2->_actions = objc_alloc_init(NSMutableArray);
  }

  return v2;
}

- (MCActionGroup)initWithImprint:(id)imprint
{
  v16.receiver = self;
  v16.super_class = MCActionGroup;
  v4 = [(MCAction *)&v16 initWithImprint:?];
  if (v4)
  {
    v5 = [imprint objectForKey:@"actions"];
    if (v5)
    {
      v6 = v5;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v13;
        do
        {
          v10 = 0;
          do
          {
            if (*v13 != v9)
            {
              objc_enumerationMutation(v6);
            }

            [(NSMutableArray *)v4->_actions addObject:[MCObjectLight objectWithImprint:*(*(&v12 + 1) + 8 * v10)]];
            v10 = v10 + 1;
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
        }

        while (v8);
      }
    }
  }

  return v4;
}

- (void)demolish
{
  actions = self->_actions;
  objc_sync_enter(actions);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_actions;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * i) demolish];
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  self->_actions = 0;
  objc_sync_exit(actions);
  v8.receiver = self;
  v8.super_class = MCActionGroup;
  [(MCAction *)&v8 demolish];
}

- (id)imprint
{
  v15.receiver = self;
  v15.super_class = MCActionGroup;
  imprint = [(MCAction *)&v15 imprint];
  actions = [(MCActionGroup *)self actions];
  if ([(NSArray *)actions count])
  {
    v5 = +[NSMutableArray array];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [(NSArray *)actions countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(actions);
          }

          [v5 addObject:{objc_msgSend(*(*(&v11 + 1) + 8 * v9), "imprint")}];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [(NSArray *)actions countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v7);
    }

    [imprint setObject:v5 forKey:@"actions"];
  }

  return imprint;
}

- (NSArray)actions
{
  isSnapshot = [(MCAction *)self isSnapshot];
  actions = self->_actions;
  if ((isSnapshot & 1) == 0)
  {
    objc_sync_enter(self->_actions);
    v5 = [NSArray arrayWithArray:self->_actions];
    objc_sync_exit(actions);
    return v5;
  }

  return &actions->super;
}

- (unint64_t)countOfActions
{
  isSnapshot = [(MCAction *)self isSnapshot];
  actions = self->_actions;
  if (isSnapshot)
  {
    v5 = self->_actions;

    return [(NSMutableArray *)v5 count];
  }

  else
  {
    objc_sync_enter(self->_actions);
    v7 = [(NSMutableArray *)self->_actions count];
    objc_sync_exit(actions);
    return v7;
  }
}

- (id)actionAtIndex:(unint64_t)index
{
  isSnapshot = [(MCAction *)self isSnapshot];
  actions = self->_actions;
  if (isSnapshot)
  {
    v7 = self->_actions;

    return [(NSMutableArray *)v7 objectAtIndex:index];
  }

  else
  {
    objc_sync_enter(self->_actions);
    v9 = [(NSMutableArray *)self->_actions objectAtIndex:index];
    objc_sync_exit(actions);
    return v9;
  }
}

- (void)addAction:(id)action
{
  v4 = [NSArray arrayWithObject:action];
  countOfActions = [(MCActionGroup *)self countOfActions];

  [(MCActionGroup *)self insertActions:v4 atIndex:countOfActions];
}

- (void)addActions:(id)actions
{
  countOfActions = [(MCActionGroup *)self countOfActions];

  [(MCActionGroup *)self insertActions:actions atIndex:countOfActions];
}

- (void)insertAction:(id)action atIndex:(unint64_t)index
{
  v6 = [NSArray arrayWithObject:action];

  [(MCActionGroup *)self insertActions:v6 atIndex:index];
}

- (void)insertActions:(id)actions atIndex:(unint64_t)index
{
  actions = self->_actions;
  objc_sync_enter(actions);
  -[NSMutableArray insertObjects:atIndexes:](self->_actions, "insertObjects:atIndexes:", actions, +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", index, [actions count]));

  objc_sync_exit(actions);
}

- (void)removeActionsAtIndices:(id)indices
{
  actions = self->_actions;
  objc_sync_enter(actions);
  [(NSMutableArray *)self->_actions removeObjectsAtIndexes:indices];

  objc_sync_exit(actions);
}

- (void)removeAllActions
{
  actions = self->_actions;
  objc_sync_enter(actions);
  [(NSMutableArray *)self->_actions removeAllObjects];

  objc_sync_exit(actions);
}

- (void)moveActionsAtIndices:(id)indices toIndex:(unint64_t)index
{
  actions = self->_actions;
  objc_sync_enter(actions);
  v8 = [(NSMutableArray *)self->_actions objectsAtIndexes:indices];
  [(NSMutableArray *)self->_actions removeObjectsAtIndexes:indices];
  -[NSMutableArray insertObjects:atIndexes:](self->_actions, "insertObjects:atIndexes:", v8, +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", index, [indices count]));

  objc_sync_exit(actions);
}

- (void)_copySelfToSnapshot:(id)snapshot
{
  v14.receiver = self;
  v14.super_class = MCActionGroup;
  [(MCAction *)&v14 _copySelfToSnapshot:?];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  actions = [(MCActionGroup *)self actions];
  v6 = [(NSArray *)actions countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(actions);
        }

        [*(snapshot + 3) addObject:{objc_msgSend(*(*(&v10 + 1) + 8 * v9), "snapshot")}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSArray *)actions countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (id)description
{
  v14.receiver = self;
  v14.super_class = MCActionGroup;
  v3 = [-[MCAction description](&v14 "description")];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  actions = self->_actions;
  v5 = [(NSMutableArray *)actions countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(actions);
        }

        v3 = [v3 stringByAppendingFormat:@"\t\t%@\n", *(*(&v10 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)actions countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }

  return [v3 stringByAppendingString:@"\t}"];
}

@end