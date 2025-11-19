@interface FBSDisplayIdentity(SpringBoard)
- (id)UIScreen;
- (id)currentConfiguration;
@end

@implementation FBSDisplayIdentity(SpringBoard)

- (id)currentConfiguration
{
  BSDispatchQueueAssertMain();
  v2 = [SBApp windowSceneManager];
  v3 = [v2 windowSceneForDisplayIdentity:a1];

  v4 = [v3 _fbsDisplayConfiguration];

  return v4;
}

- (id)UIScreen
{
  v30 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v2 = [MEMORY[0x277D759A0] screens];
  v3 = [v2 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v25;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v25 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v24 + 1) + 8 * i);
        v8 = [v7 displayIdentity];
        v9 = [a1 isEqual:v8];

        if (v9)
        {
          v10 = v7;
          goto LABEL_12;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  if ([a1 isRootIdentity])
  {
    v10 = 0;
  }

  else
  {
    v2 = [a1 rootIdentity];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = [MEMORY[0x277D759A0] screens];
    v13 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      while (2)
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v20 + 1) + 8 * j);
          v18 = [v17 displayIdentity];
          v19 = [v2 isEqual:v18];

          if (v19)
          {
            v10 = v17;

            goto LABEL_12;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v10 = 0;
LABEL_12:
  }

  return v10;
}

@end