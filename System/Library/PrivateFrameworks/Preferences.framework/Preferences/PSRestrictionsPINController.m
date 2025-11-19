@interface PSRestrictionsPINController
- (PSRestrictionsPINController)init;
- (id)pinInstructionsPrompt;
- (id)pinInstructionsPromptFont;
- (id)stringsBundle;
- (id)title;
@end

@implementation PSRestrictionsPINController

- (PSRestrictionsPINController)init
{
  v5.receiver = self;
  v5.super_class = PSRestrictionsPINController;
  v2 = [(DevicePINController *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(PSSpecifier);
    [(PSSpecifier *)v3 setEditPaneClass:objc_opt_class()];
    [(DevicePINController *)v2 setSpecifier:v3];
  }

  return v2;
}

- (id)pinInstructionsPrompt
{
  v3 = [(PSViewController *)self specifier];
  v4 = [v3 propertyForKey:@"screenTimePinEntry"];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = [(PSRestrictionsPINController *)self stringsBundle];
    v7 = [(DevicePINController *)self stringsTable];
    v8 = [v6 localizedStringForKey:@"PMENTER_SC_PROMPT" value:&stru_1EFE45030 table:v7];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = PSRestrictionsPINController;
    v8 = [(DevicePINController *)&v10 pinInstructionsPrompt];
  }

  return v8;
}

- (id)title
{
  v3 = [(PSViewController *)self specifier];
  v4 = [v3 propertyForKey:@"screenTimePinEntry"];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = [(PSRestrictionsPINController *)self stringsBundle];
    v7 = [(DevicePINController *)self stringsTable];
    v8 = [v6 localizedStringForKey:@"PMENTER_SC" value:&stru_1EFE45030 table:v7];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = PSRestrictionsPINController;
    v8 = [(DevicePINController *)&v10 title];
  }

  return v8;
}

- (id)stringsBundle
{
  v2 = MEMORY[0x1E696AAE8];
  v3 = objc_opt_class();

  return [v2 bundleForClass:v3];
}

- (id)pinInstructionsPromptFont
{
  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v2 pointSize];
  v4 = v3;

  v5 = MEMORY[0x1E69DB878];

  return [v5 boldSystemFontOfSize:v4];
}

@end