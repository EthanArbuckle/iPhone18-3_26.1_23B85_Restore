@interface _UIPhysicalButtonBSActionResponder
- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6;
@end

@implementation _UIPhysicalButtonBSActionResponder

- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = [a5 _physicalButtonInteractionArbiter];
  if (([a5 _hasInvalidated] & 1) != 0 || !v8)
  {
    v21 = a3;
LABEL_19:
    v18 = v21;
    v12 = 0;
    goto LABEL_20;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = a3;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v10)
  {

    v21 = v9;
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
        objc_enumerationMutation(v9);
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
          [(_UIPhysicalButtonInteractionArbiter *)v8 _handleBSAction:v16];
        }
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  }

  while (v11);

  v17 = v9;
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