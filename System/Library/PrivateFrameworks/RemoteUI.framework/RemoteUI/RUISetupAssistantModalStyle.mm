@interface RUISetupAssistantModalStyle
- (void)applyToObjectModel:(id)model;
@end

@implementation RUISetupAssistantModalStyle

- (void)applyToObjectModel:(id)model
{
  v26 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v24.receiver = self;
  v24.super_class = RUISetupAssistantModalStyle;
  [(RUISetupAssistantStyle *)&v24 applyToObjectModel:modelCopy];
  allPages = [modelCopy allPages];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [allPages countByEnumeratingWithState:&v20 objects:v25 count:16];
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
          objc_enumerationMutation(allPages);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        view = [v10 view];
        superview = [view superview];

        if (superview)
        {
          view2 = [v10 view];
          traitCollection = [view2 traitCollection];
          horizontalSizeClass = [traitCollection horizontalSizeClass];

          if (horizontalSizeClass == 1)
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

      v7 = [allPages countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  defaultPages = [modelCopy defaultPages];
  firstObject = [defaultPages firstObject];
  navigationController = [firstObject navigationController];
  [(RUIStyle *)self applyToNavigationController:navigationController];
}

@end