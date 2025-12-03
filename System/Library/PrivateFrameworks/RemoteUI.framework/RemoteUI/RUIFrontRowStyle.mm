@interface RUIFrontRowStyle
- (RUIFrontRowStyle)init;
- (void)applyToObjectModel:(id)model;
@end

@implementation RUIFrontRowStyle

- (RUIFrontRowStyle)init
{
  v7.receiver = self;
  v7.super_class = RUIFrontRowStyle;
  v2 = [(RUIStyle *)&v7 init];
  if (v2)
  {
    labelColor = [MEMORY[0x277D75348] labelColor];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(RUIStyle *)v2 setBackgroundColor:clearColor];

    [(RUIStyle *)v2 setRadioGroupSelectedColor:labelColor];
    [(RUIStyle *)v2 setSelectPageDetailTextColor:labelColor];
    [(RUIStyle *)v2 setButtonRowTextColor:labelColor];
    [(RUIStyle *)v2 setLabelRowTextColor:labelColor];
    v5 = [MEMORY[0x277D75348] colorWithDynamicProvider:&__block_literal_global_319];
    [(RUIStyle *)v2 setFocusedRowTextColor:v5];

    [(RUIStyle *)v2 setLabelRowTextAlignment:1];
    [(RUIStyle *)v2 setFooterLabelAlignment:1];
    [(RUIStyle *)v2 setTitleLabelTextColor:labelColor];
    [(RUIStyle *)v2 setFooterLabelTextColor:labelColor];
    [(RUIStyle *)v2 setHeaderLabelAlignment:1];
    [(RUIStyle *)v2 setHeaderLabelTextColor:labelColor];
  }

  return v2;
}

id __24__RUIFrontRowStyle_init__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    [MEMORY[0x277D75348] labelColor];
  }
  v2 = ;

  return v2;
}

- (void)applyToObjectModel:(id)model
{
  v17 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v15.receiver = self;
  v15.super_class = RUIFrontRowStyle;
  [(RUIStyle *)&v15 applyToObjectModel:modelCopy];
  allPages = [modelCopy allPages];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [allPages countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(allPages);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        [v10 setShowsTitlesAsHeaderViews:1];
        [v10 setCustomMargin:550.0];
      }

      v7 = [allPages countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }
}

@end