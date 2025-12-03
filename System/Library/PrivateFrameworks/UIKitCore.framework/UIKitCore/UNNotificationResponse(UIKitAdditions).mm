@interface UNNotificationResponse(UIKitAdditions)
- (id)targetScene;
@end

@implementation UNNotificationResponse(UIKitAdditions)

- (id)targetScene
{
  v18 = *MEMORY[0x1E69E9840];
  connectedScenes = [UIApp connectedScenes];
  targetSceneIdentifier = [self targetSceneIdentifier];
  if (targetSceneIdentifier)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = connectedScenes;
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
          session = [v8 session];
          persistentIdentifier = [session persistentIdentifier];
          v11 = [persistentIdentifier isEqualToString:targetSceneIdentifier];

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