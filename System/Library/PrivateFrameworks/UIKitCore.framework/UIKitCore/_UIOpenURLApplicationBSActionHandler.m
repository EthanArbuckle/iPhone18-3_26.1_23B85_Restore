@interface _UIOpenURLApplicationBSActionHandler
- (id)_respondToApplicationActions:(id)a3 fromTransitionContext:(id)a4;
@end

@implementation _UIOpenURLApplicationBSActionHandler

- (id)_respondToApplicationActions:(id)a3 fromTransitionContext:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v18 = v5;
  v7 = [v5 objectsPassingTest:&__block_literal_global_736];
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
          v14 = [v6 originatingProcess];
          if (!v14)
          {
            v14 = [v12 workspaceOriginatingProcess];
          }

          if ([v6 isUISubclass])
          {
            v15 = [v6 payload];
          }

          else
          {
            v15 = 0;
          }

          [UIApp _applicationOpenURLAction:v12 payload:v15 origin:v14];
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