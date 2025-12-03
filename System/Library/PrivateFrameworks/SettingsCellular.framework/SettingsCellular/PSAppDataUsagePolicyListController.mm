@interface PSAppDataUsagePolicyListController
- (PSAppDataUsagePolicyListController)init;
- (id)specifiers;
- (void)_adjustTitle;
- (void)setSpecifier:(id)specifier;
@end

@implementation PSAppDataUsagePolicyListController

- (PSAppDataUsagePolicyListController)init
{
  v5.receiver = self;
  v5.super_class = PSAppDataUsagePolicyListController;
  v2 = [(PSAppDataUsagePolicyListController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PSAppDataUsagePolicyListController *)v2 _adjustTitle];
  }

  return v3;
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v17.receiver = self;
    v17.super_class = PSAppDataUsagePolicyListController;
    specifiers = [(PSListItemsController *)&v17 specifiers];
    firstObject = [*(&self->super.super.super.super.super.super.isa + v3) firstObject];
    v7 = firstObject;
    if (firstObject && !*(firstObject + *MEMORY[0x277D3FC90]))
    {
      appName = [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) appName];
      if ([appName length])
      {
        v9 = MEMORY[0x277CCACA8];
        v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v11 = SFLocalizableWAPIStringKeyForKey();
        v12 = [v10 localizedStringForKey:v11 value:&stru_287730CE8 table:@"WirelessData"];
        v13 = [v9 stringWithFormat:v12, appName];
      }

      else
      {
        v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v11 = SFLocalizableWAPIStringKeyForKey();
        v13 = [v10 localizedStringForKey:v11 value:&stru_287730CE8 table:@"WirelessData"];
      }

      [v7 setName:v13];
    }

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  v14 = [v4 mutableCopy];
  [SettingsCellularSharedUtils logSpecifiers:v14 origin:@"[PSAppDataUsagePolicyListController specifiers] end"];

  v15 = *(&self->super.super.super.super.super.super.isa + v3);

  return v15;
}

- (void)setSpecifier:(id)specifier
{
  v4.receiver = self;
  v4.super_class = PSAppDataUsagePolicyListController;
  [(PSAppDataUsagePolicyListController *)&v4 setSpecifier:specifier];
  [(PSAppDataUsagePolicyListController *)self _adjustTitle];
}

- (void)_adjustTitle
{
  v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FD20]);
  if (v3)
  {
    displayName = [v3 displayName];
    if ([displayName length])
    {
      [(PSAppDataUsagePolicyListController *)self setTitle:displayName];
    }
  }
}

@end