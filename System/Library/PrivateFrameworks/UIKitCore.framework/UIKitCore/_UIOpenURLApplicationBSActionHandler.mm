@interface _UIOpenURLApplicationBSActionHandler
- (id)_respondToApplicationActions:(id)actions fromTransitionContext:(id)context;
@end

@implementation _UIOpenURLApplicationBSActionHandler

- (id)_respondToApplicationActions:(id)actions fromTransitionContext:(id)context
{
  v24 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  contextCopy = context;
  v18 = actionsCopy;
  v7 = [actionsCopy objectsPassingTest:&__block_literal_global_736];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v12 url];
        if ([UIApp _shouldHandleTestURL:v13])
        {
          [UIApp handleTestURL:v13];
        }

        else
        {
          [UIApp _setHandlingURL:objc_msgSend(v13 url:{"isInternalUIKitURL") ^ 1, v13}];
          originatingProcess = [contextCopy originatingProcess];
          if (!originatingProcess)
          {
            originatingProcess = [v12 workspaceOriginatingProcess];
          }

          if ([contextCopy isUISubclass])
          {
            payload = [contextCopy payload];
          }

          else
          {
            payload = 0;
          }

          [UIApp _applicationOpenURLAction:v12 payload:payload origin:originatingProcess];
          [UIApp _setHandlingURL:0 url:0];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v16 = [v18 mutableCopy];
  [v16 minusSet:v7];

  return v16;
}

@end