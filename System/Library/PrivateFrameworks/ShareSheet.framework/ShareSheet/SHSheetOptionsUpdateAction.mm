@interface SHSheetOptionsUpdateAction
- (SHSheetOptionsUpdateAction)initWithCustomization:(id)customization;
- (_UIActivityItemCustomization)customization;
@end

@implementation SHSheetOptionsUpdateAction

- (SHSheetOptionsUpdateAction)initWithCustomization:(id)customization
{
  v4 = MEMORY[0x1E698E700];
  customizationCopy = customization;
  v6 = objc_alloc_init(v4);
  v7 = [[_WrapperForNonBSXPCCodingConformingClass alloc] initWithObject:customizationCopy];

  [v6 setObject:v7 forSetting:4];
  v8 = [(SHSheetOptionsUpdateAction *)self initWithInfo:v6 responder:0];

  return v8;
}

- (_UIActivityItemCustomization)customization
{
  info = [(SHSheetOptionsUpdateAction *)self info];
  v3 = [info objectForSetting:4];

  object = [v3 object];

  return object;
}

@end