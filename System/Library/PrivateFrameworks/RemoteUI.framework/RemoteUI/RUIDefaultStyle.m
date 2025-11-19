@interface RUIDefaultStyle
- (void)applyToObjectModel:(id)a3;
@end

@implementation RUIDefaultStyle

- (void)applyToObjectModel:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [a3 allPages];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        v10 = [(RUIStyle *)self backgroundColor];
        v11 = [v9 view];
        [v11 setBackgroundColor:v10];

        if ([v9 hasTableView])
        {
          v12 = [v9 tableViewOM];
          v13 = [v12 tableView];
          v14 = [MEMORY[0x277D75348] tableBackgroundColor];
          [v13 setBackgroundColor:v14];

          [v13 setBackgroundView:0];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }
}

@end