@interface UIApplication(PhotoLibrary)
- (void)pl_firstKeyWindow;
@end

@implementation UIApplication(PhotoLibrary)

- (void)pl_firstKeyWindow
{
  v24 = *MEMORY[0x277D85DE8];
  connectedScenes = [self connectedScenes];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = [connectedScenes countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v19;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v19 != v4)
        {
          objc_enumerationMutation(connectedScenes);
        }

        v6 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ![v6 activationState])
        {
          windows = [v6 windows];
          v14 = 0u;
          v15 = 0u;
          v16 = 0u;
          v17 = 0u;
          v8 = [windows countByEnumeratingWithState:&v14 objects:v22 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v15;
LABEL_10:
            v11 = 0;
            while (1)
            {
              if (*v15 != v10)
              {
                objc_enumerationMutation(windows);
              }

              v12 = *(*(&v14 + 1) + 8 * v11);
              if ([v12 isKeyWindow])
              {
                break;
              }

              if (v9 == ++v11)
              {
                v9 = [windows countByEnumeratingWithState:&v14 objects:v22 count:16];
                if (v9)
                {
                  goto LABEL_10;
                }

                goto LABEL_18;
              }
            }

            if (v12)
            {
              return v12;
            }
          }
        }

LABEL_18:
        ;
      }

      v3 = [connectedScenes countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v3);
  }

  return 0;
}

@end