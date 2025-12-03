@interface _UIPhysicalButtonBSActionResponder
- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context;
@end

@implementation _UIPhysicalButtonBSActionResponder

- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context
{
  v28 = *MEMORY[0x1E69E9840];
  _physicalButtonInteractionArbiter = [iScene _physicalButtonInteractionArbiter];
  if (([iScene _hasInvalidated] & 1) != 0 || !_physicalButtonInteractionArbiter)
  {
    actionsCopy = actions;
LABEL_19:
    v18 = actionsCopy;
    v12 = 0;
    goto LABEL_20;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  actionsCopy2 = actions;
  v10 = [actionsCopy2 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v10)
  {

    actionsCopy = actionsCopy2;
    goto LABEL_19;
  }

  v11 = v10;
  v12 = 0;
  v13 = *v24;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v24 != v13)
      {
        objc_enumerationMutation(actionsCopy2);
      }

      v15 = *(*(&v23 + 1) + 8 * i);
      if ([v15 UIActionType] == 51)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = v15;
          if (!v12)
          {
            v12 = objc_opt_new();
          }

          [v12 addObject:v16];
          [(_UIPhysicalButtonInteractionArbiter *)_physicalButtonInteractionArbiter _handleBSAction:v16];
        }
      }
    }

    v11 = [actionsCopy2 countByEnumeratingWithState:&v23 objects:v27 count:16];
  }

  while (v11);

  v17 = actionsCopy2;
  v18 = v17;
  if (v12)
  {
    v19 = [v17 mutableCopy];
    [v19 minusSet:v12];
    v20 = [v19 copy];

    v18 = v20;
  }

LABEL_20:

  return v18;
}

@end