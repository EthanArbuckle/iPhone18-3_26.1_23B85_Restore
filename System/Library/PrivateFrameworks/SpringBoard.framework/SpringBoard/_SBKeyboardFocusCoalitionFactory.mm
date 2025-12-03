@interface _SBKeyboardFocusCoalitionFactory
- (id)newCoalitionForSceneControllers:(id)controllers;
@end

@implementation _SBKeyboardFocusCoalitionFactory

- (id)newCoalitionForSceneControllers:(id)controllers
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = controllers;
  v3 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v3)
  {
    v6 = 0;
    v5 = 0;
    v4 = 0;
    goto LABEL_25;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = *v19;
  do
  {
    for (i = 0; i != v3; i = i + 1)
    {
      if (*v19 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v18 + 1) + 8 * i);
      sbWindowScene = [v9 sbWindowScene];
      if ([sbWindowScene isEmbeddedScene])
      {
        v11 = v6;
        v12 = v4;
        v6 = v9;
      }

      else if ([sbWindowScene isContinuityScene])
      {
        v11 = v5;
        v12 = v4;
        v5 = v9;
      }

      else
      {
        v11 = v4;
        v12 = v9;
        if (![sbWindowScene isExternalDisplayScene])
        {
          goto LABEL_12;
        }
      }

      v13 = v9;

      v4 = v12;
LABEL_12:
    }

    v3 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v3);
  if (v6 && v4)
  {
    v14 = off_27839FC50;
    goto LABEL_24;
  }

  if (v5)
  {
    v15 = v6 == 0;
  }

  else
  {
    v15 = 1;
  }

  v14 = off_27839FC80;
  if (!v15)
  {
    v14 = off_27839FC58;
  }

  if (v6)
  {
LABEL_24:
    v3 = objc_alloc_init(*v14);
  }

  else
  {
    v3 = 0;
  }

LABEL_25:

  return v3;
}

@end