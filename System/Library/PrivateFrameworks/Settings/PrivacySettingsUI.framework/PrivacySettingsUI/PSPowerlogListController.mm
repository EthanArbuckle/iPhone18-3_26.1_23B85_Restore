@interface PSPowerlogListController
- (id)specifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation PSPowerlogListController

- (id)specifiers
{
  v16 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = PSPowerlogListController;
  v2 = [(PSListItemsController *)&v14 specifiers];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 cellType])
        {
          [v7 setCellType:2];
          [v7 setDetailControllerClass:objc_opt_class()];
          [v7 setEditPaneClass:objc_opt_class()];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [(PSPowerlogListController *)self specifierAtIndex:[(PSPowerlogListController *)self indexForIndexPath:v6]];
  v8 = [v7 values];
  v9 = [v8 firstObject];

  v10 = [(PSPowerlogListController *)self selectSpecifier:v7];
  [v10 setTitle:v9];
  [v10 loadPane];
  v11 = [v10 pane];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PSPowerlogListController tableView:didSelectRowAtIndexPath:];
  }

  v12 = [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) propertyForKey:@"powerlogReader"];
  v13 = [v12 stringValueOfTable:v9];
  [v11 setText:v13];

  [(PSPowerlogListController *)self showController:v10 animate:1];
}

@end