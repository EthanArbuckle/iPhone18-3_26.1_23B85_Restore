@interface MPActionGroup
+ (id)actionGroup;
- (MPActionGroup)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addAction:(id)action;
- (void)addActions:(id)actions;
- (void)configureAction:(id)action atIndex:(int64_t)index;
- (void)configureTarget;
- (void)copyActions:(id)actions;
- (void)dealloc;
- (void)insertAction:(id)action atIndex:(int64_t)index;
- (void)insertActions:(id)actions atIndex:(int64_t)index;
- (void)removeActionsAtIndices:(id)indices;
- (void)removeAllActions;
- (void)setAction:(id)action;
@end

@implementation MPActionGroup

+ (id)actionGroup
{
  v2 = objc_alloc_init(MPActionGroup);

  return v2;
}

- (MPActionGroup)init
{
  v4.receiver = self;
  v4.super_class = MPActionGroup;
  v2 = [(MPAction *)&v4 init];
  if (v2)
  {
    v2->_actions = objc_alloc_init(NSMutableArray);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPActionGroup;
  [(MPAction *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = MPActionGroup;
  v4 = [(MPAction *)&v6 copyWithZone:zone];
  [v4 copyActions:{-[MPActionGroup actions](self, "actions")}];
  return v4;
}

- (void)addAction:(id)action
{
  v4 = [NSMutableArray arrayWithObject:action];
  v5 = [(NSMutableArray *)self->_actions count];

  [(MPActionGroup *)self insertActions:v4 atIndex:v5];
}

- (void)insertAction:(id)action atIndex:(int64_t)index
{
  v6 = [NSMutableArray arrayWithObject:action];

  [(MPActionGroup *)self insertActions:v6 atIndex:index];
}

- (void)addActions:(id)actions
{
  v5 = [(NSMutableArray *)self->_actions count];

  [(MPActionGroup *)self insertActions:actions atIndex:v5];
}

- (void)insertActions:(id)actions atIndex:(int64_t)index
{
  indexCopy = index;
  -[NSMutableArray insertObjects:atIndexes:](self->_actions, "insertObjects:atIndexes:", actions, +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", index, [actions count]));
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [actions countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(actions);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        [v11 setParent:self];
        [(MPActionGroup *)self configureAction:v11 atIndex:indexCopy++];
      }

      v8 = [actions countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)removeActionsAtIndices:(id)indices
{
  v5 = [(NSMutableArray *)self->_actions objectsAtIndexes:?];
  [(NSMutableArray *)self->_actions removeObjectsAtIndexes:indices];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) setParent:0];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)removeAllActions
{
  v3 = [NSIndexSet indexSetWithIndexesInRange:0, [(NSMutableArray *)self->_actions count]];

  [(MPActionGroup *)self removeActionsAtIndices:v3];
}

- (void)copyActions:(id)actions
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [actions countByEnumeratingWithState:&v10 objects:v14 count:16];
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

        v9 = [*(*(&v10 + 1) + 8 * v8) copy];
        [(MPActionGroup *)self addAction:v9];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [actions countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)configureAction:(id)action atIndex:(int64_t)index
{
  if (!self->super._action)
  {
    return;
  }

  targetObject = [action targetObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = +[MCAnimationTrigger animationTriggerForTargetPlugObjectID:withAnimationKey:](MCAnimationTrigger, "animationTriggerForTargetPlugObjectID:withAnimationKey:", [targetObject objectID], objc_msgSend(action, "animationKey"));
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = +[MCActionTrigger actionTriggerForTargetPlugObjectID:withActionKey:](MCActionTrigger, "actionTriggerForTargetPlugObjectID:withActionKey:", [targetObject objectID], objc_msgSend(action, "actionKey"));
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = +[MCStateOperationExpression stateOperationForTargetPlugObjectID:withStateKey:andExpression:](MCStateOperationExpression, "stateOperationForTargetPlugObjectID:withStateKey:andExpression:", [targetObject objectID], objc_msgSend(action, "stateKey"), objc_msgSend(action, "operation"));
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = +[MCConditionalAction conditionalActionWithPredicate:](MCConditionalAction, "conditionalActionWithPredicate:", [targetObject objectID]);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v8 = +[MCActionGroup actionGroup];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v8 = +[MCGenericAction genericActionForTargetPlugObjectID:withAttributes:](MCGenericAction, "genericActionForTargetPlugObjectID:withAttributes:", [targetObject objectID], objc_msgSend(action, "attributes"));
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v9 = 0;
                goto LABEL_18;
              }

              v8 = +[MCTransitionTrigger transitionForTargetPlugObjectID:withTransitionID:](MCTransitionTrigger, "transitionForTargetPlugObjectID:withTransitionID:", [targetObject objectID], objc_msgSend(action, "transitionID"));
            }
          }
        }
      }
    }
  }

  v9 = v8;
LABEL_18:
  [(MCAction *)self->super._action insertAction:v9 atIndex:index];

  [action setAction:v9];
}

- (void)configureTarget
{
  v12.receiver = self;
  v12.super_class = MPActionGroup;
  [(MPAction *)&v12 configureTarget];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  actions = self->_actions;
  v4 = [(NSMutableArray *)actions countByEnumeratingWithState:&v8 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(actions);
        }

        [*(*(&v8 + 1) + 8 * v7) configureTarget];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)actions countByEnumeratingWithState:&v8 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)setAction:(id)action
{
  v14.receiver = self;
  v14.super_class = MPActionGroup;
  [(MPAction *)&v14 setAction:action];
  if ([(MPAction *)self parentDocument])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    actions = self->_actions;
    v5 = [(NSMutableArray *)actions countByEnumeratingWithState:&v10 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v11;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(actions);
          }

          [(MPActionGroup *)self configureAction:*(*(&v10 + 1) + 8 * i) atIndex:v7++];
        }

        v6 = [(NSMutableArray *)actions countByEnumeratingWithState:&v10 objects:v15 count:16];
      }

      while (v6);
    }
  }
}

@end