@interface SHSheetOptionsUpdateAction
- (SHSheetOptionsUpdateAction)initWithCustomization:(id)a3;
- (_UIActivityItemCustomization)customization;
@end

@implementation SHSheetOptionsUpdateAction

- (SHSheetOptionsUpdateAction)initWithCustomization:(id)a3
{
  v4 = MEMORY[0x1E698E700];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [[_WrapperForNonBSXPCCodingConformingClass alloc] initWithObject:v5];

  [v6 setObject:v7 forSetting:4];
  v8 = [(SHSheetOptionsUpdateAction *)self initWithInfo:v6 responder:0];

  return v8;
}

- (_UIActivityItemCustomization)customization
{
  v2 = [(SHSheetOptionsUpdateAction *)self info];
  v3 = [v2 objectForSetting:4];

  v4 = [v3 object];

  return v4;
}

@end