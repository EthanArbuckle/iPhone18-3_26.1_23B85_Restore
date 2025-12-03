@interface STPINListItemsController
- (void)didCancelEnteringPIN;
- (void)listItemSelected:(id)selected;
- (void)loadView;
- (void)prepareSpecifiersMetadata;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateFooter;
@end

@implementation STPINListItemsController

- (void)loadView
{
  v7.receiver = self;
  v7.super_class = STPINListItemsController;
  [(STPINListItemsController *)&v7 loadView];
  v3 = *MEMORY[0x277D3FD20];
  v4 = *MEMORY[0x277D3FED0];
  v5 = [*(&self->super.super.super.super.super.super.isa + v3) objectForKeyedSubscript:*MEMORY[0x277D3FED0]];

  if (v5)
  {
    v6 = [*(&self->super.super.super.super.super.super.isa + v3) objectForKeyedSubscript:v4];
    [(STPINListItemsController *)self setTitle:v6];
  }
}

- (void)prepareSpecifiersMetadata
{
  v3.receiver = self;
  v3.super_class = STPINListItemsController;
  [(PSListItemsController *)&v3 prepareSpecifiersMetadata];
  [(STPINListItemsController *)self updateFooter];
}

- (void)listItemSelected:(id)selected
{
  v4.receiver = self;
  v4.super_class = STPINListItemsController;
  [(PSListItemsController *)&v4 listItemSelected:selected];
  [(STPINListItemsController *)self updateFooter];
}

- (void)updateFooter
{
  properties = [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) properties];
  v11 = [properties objectForKeyedSubscript:@"STValueToGroupFootersKey"];

  if (v11)
  {
    v4 = [(STPINListItemsController *)self specifierAtIndex:*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC68])];
    values = [v4 values];
    v6 = [values count];

    if (v6)
    {
      values2 = [v4 values];
      firstObject = [values2 firstObject];
      v9 = [v11 objectForKeyedSubscript:firstObject];

      v10 = [(STPINListItemsController *)self getGroupSpecifierForSpecifier:v4];
      [v10 setObject:v9 forKeyedSubscript:*MEMORY[0x277D3FF88]];
      [(STPINListItemsController *)self reloadSpecifier:v10 animated:1];
    }
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([(PSListController *)self st_shouldShowPINSheetForPINSpecifier])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __62__STPINListItemsController_tableView_didSelectRowAtIndexPath___block_invoke;
    v9[3] = &unk_279B7CC40;
    v10 = viewCopy;
    v11 = pathCopy;
    selfCopy = self;
    [(PSListController *)self st_showPINSheetWithCompletion:v9];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = STPINListItemsController;
    [(PSListItemsController *)&v8 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  }
}

id __62__STPINListItemsController_tableView_didSelectRowAtIndexPath___block_invoke(id result, int a2)
{
  if (a2)
  {
    v2 = *(result + 5);
    v3 = *(result + 4);
    v4.receiver = *(result + 6);
    v4.super_class = STPINListItemsController;
    return objc_msgSendSuper2(&v4, sel_tableView_didSelectRowAtIndexPath_, v3, v2);
  }

  return result;
}

- (void)didCancelEnteringPIN
{
  [(PSListController *)self st_didCancelEnteringPIN];

  [(STPINListItemsController *)self reloadSpecifiers];
}

@end