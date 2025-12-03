@interface STFooterListItemsController
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation STFooterListItemsController

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = *MEMORY[0x277D3FD20];
    v6 = [*(&self->super.super.super.super.super.super.super.isa + v5) objectForKeyedSubscript:@"STFooterListItemsSwitchRestrictionKey"];

    v7 = [*(&self->super.super.super.super.super.super.super.isa + v5) objectForKeyedSubscript:@"STFooterListItems"];
    v23.receiver = self;
    v23.super_class = STFooterListItemsController;
    specifiers = [(PSListItemsController *)&v23 specifiers];
    v9 = [*(&self->super.super.super.super.super.super.super.isa + v5) objectForKeyedSubscript:@"STDisabledRadioGroupIDKey"];

    if (v9)
    {
      v10 = [*(&self->super.super.super.super.super.super.super.isa + v5) objectForKeyedSubscript:@"STDisabledRadioGroupIDKey"];
      v11 = [(STFooterListItemsController *)self specifierForID:v10];

      [v11 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
    }

    v12 = *(&self->super.super.super.super.super.super.super.isa + v5);
    v13 = *(&self->super.super.super.super.super.super.super.isa + v3);
    v14 = v12;
    v15 = [v14 objectForKeyedSubscript:@"STTitleSectionFooterTextKey"];
    if (v15)
    {
      firstObject = [v13 firstObject];
      titleDictionary = [v14 titleDictionary];

      if (titleDictionary)
      {
        v18 = firstObject == 0;
      }

      else
      {
        v18 = 1;
      }

      if (!v18)
      {
        [firstObject setObject:v15 forKeyedSubscript:*MEMORY[0x277D3FF88]];
      }
    }

    if (v7)
    {
      v19 = v6 == 0;
    }

    else
    {
      v19 = 0;
    }

    if (v19)
    {
      v20 = [*(&self->super.super.super.super.super.super.super.isa + v3) arrayByAddingObjectsFromArray:v7];
      v21 = *(&self->super.super.super.super.super.super.super.isa + v3);
      *(&self->super.super.super.super.super.super.super.isa + v3) = v20;
    }

    v4 = *(&self->super.super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  specifier = [(STFooterListItemsController *)self specifier];
  v9 = [specifier objectForKeyedSubscript:@"STFooterListItems"];

  v10 = [(STFooterListItemsController *)self specifierAtIndexPath:pathCopy];
  if (([v9 containsObject:v10] & 1) == 0)
  {
    v11.receiver = self;
    v11.super_class = STFooterListItemsController;
    [(STPINListItemsController *)&v11 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  }
}

@end