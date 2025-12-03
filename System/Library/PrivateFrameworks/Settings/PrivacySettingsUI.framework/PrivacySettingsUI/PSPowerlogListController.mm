@interface PSPowerlogListController
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation PSPowerlogListController

- (id)specifiers
{
  v16 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = PSPowerlogListController;
  specifiers = [(PSListItemsController *)&v14 specifiers];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [specifiers countByEnumeratingWithState:&v10 objects:v15 count:16];
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
          objc_enumerationMutation(specifiers);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 cellType])
        {
          [v7 setCellType:2];
          [v7 setDetailControllerClass:objc_opt_class()];
          [v7 setEditPaneClass:objc_opt_class()];
        }
      }

      v4 = [specifiers countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];

  return specifiers;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = [(PSPowerlogListController *)self specifierAtIndex:[(PSPowerlogListController *)self indexForIndexPath:pathCopy]];
  values = [v7 values];
  firstObject = [values firstObject];

  v10 = [(PSPowerlogListController *)self selectSpecifier:v7];
  [v10 setTitle:firstObject];
  [v10 loadPane];
  pane = [v10 pane];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PSPowerlogListController tableView:didSelectRowAtIndexPath:];
  }

  v12 = [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) propertyForKey:@"powerlogReader"];
  v13 = [v12 stringValueOfTable:firstObject];
  [pane setText:v13];

  [(PSPowerlogListController *)self showController:v10 animate:1];
}

@end