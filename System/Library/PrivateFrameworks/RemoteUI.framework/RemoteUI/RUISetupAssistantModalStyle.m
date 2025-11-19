@interface RUISetupAssistantModalStyle
- (void)applyToObjectModel:(id)a3;
@end

@implementation RUISetupAssistantModalStyle

- (void)applyToObjectModel:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = RUISetupAssistantModalStyle;
  [(RUISetupAssistantStyle *)&v24 applyToObjectModel:v4];
  v5 = [v4 allPages];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [v10 view];
        v12 = [v11 superview];

        if (v12)
        {
          v13 = [v10 view];
          v14 = [v13 traitCollection];
          v15 = [v14 horizontalSizeClass];

          if (v15 == 1)
          {
            v16 = 0.0;
          }

          else
          {
            v16 = 6.0;
          }

          [v10 setCustomMargin:v16];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  v17 = [v4 defaultPages];
  v18 = [v17 firstObject];
  v19 = [v18 navigationController];
  [(RUIStyle *)self applyToNavigationController:v19];
}

@end