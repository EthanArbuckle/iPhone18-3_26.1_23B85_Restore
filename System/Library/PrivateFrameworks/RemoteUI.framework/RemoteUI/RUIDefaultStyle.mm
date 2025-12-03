@interface RUIDefaultStyle
- (void)applyToObjectModel:(id)model;
@end

@implementation RUIDefaultStyle

- (void)applyToObjectModel:(id)model
{
  v20 = *MEMORY[0x277D85DE8];
  allPages = [model allPages];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [allPages countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(allPages);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        backgroundColor = [(RUIStyle *)self backgroundColor];
        view = [v9 view];
        [view setBackgroundColor:backgroundColor];

        if ([v9 hasTableView])
        {
          tableViewOM = [v9 tableViewOM];
          tableView = [tableViewOM tableView];
          tableBackgroundColor = [MEMORY[0x277D75348] tableBackgroundColor];
          [tableView setBackgroundColor:tableBackgroundColor];

          [tableView setBackgroundView:0];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [allPages countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }
}

@end