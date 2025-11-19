@interface UNNotificationResponse(UIKitAdditions)
- (id)targetScene;
@end

@implementation UNNotificationResponse(UIKitAdditions)

- (id)targetScene
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [UIApp connectedScenes];
  v3 = [a1 targetSceneIdentifier];
  if (v3)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = *v14;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v13 + 1) + 8 * i);
          v9 = [v8 session];
          v10 = [v9 persistentIdentifier];
          v11 = [v10 isEqualToString:v3];

          if (v11)
          {
            v5 = v8;
            goto LABEL_12;
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end