@interface FBSDisplayIdentity(SpringBoard)
- (id)UIScreen;
- (id)currentConfiguration;
@end

@implementation FBSDisplayIdentity(SpringBoard)

- (id)currentConfiguration
{
  BSDispatchQueueAssertMain();
  windowSceneManager = [SBApp windowSceneManager];
  v3 = [windowSceneManager windowSceneForDisplayIdentity:self];

  _fbsDisplayConfiguration = [v3 _fbsDisplayConfiguration];

  return _fbsDisplayConfiguration;
}

- (id)UIScreen
{
  v30 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  screens = [MEMORY[0x277D759A0] screens];
  v3 = [screens countByEnumeratingWithState:&v24 objects:v29 count:16];
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
          objc_enumerationMutation(screens);
        }

        v7 = *(*(&v24 + 1) + 8 * i);
        displayIdentity = [v7 displayIdentity];
        v9 = [self isEqual:displayIdentity];

        if (v9)
        {
          v10 = v7;
          goto LABEL_12;
        }
      }

      v4 = [screens countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  if ([self isRootIdentity])
  {
    v10 = 0;
  }

  else
  {
    screens = [self rootIdentity];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    screens2 = [MEMORY[0x277D759A0] screens];
    v13 = [screens2 countByEnumeratingWithState:&v20 objects:v28 count:16];
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
            objc_enumerationMutation(screens2);
          }

          v17 = *(*(&v20 + 1) + 8 * j);
          displayIdentity2 = [v17 displayIdentity];
          v19 = [screens isEqual:displayIdentity2];

          if (v19)
          {
            v10 = v17;

            goto LABEL_12;
          }
        }

        v14 = [screens2 countByEnumeratingWithState:&v20 objects:v28 count:16];
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