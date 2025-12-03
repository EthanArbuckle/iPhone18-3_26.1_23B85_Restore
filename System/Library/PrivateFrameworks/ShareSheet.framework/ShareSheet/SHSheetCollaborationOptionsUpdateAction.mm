@interface SHSheetCollaborationOptionsUpdateAction
- (SHSheetCollaborationOptionsUpdateAction)initWithCollaborationOptions:(id)options;
- (_SWCollaborationShareOptions)collaborationOptions;
@end

@implementation SHSheetCollaborationOptionsUpdateAction

- (SHSheetCollaborationOptionsUpdateAction)initWithCollaborationOptions:(id)options
{
  v4 = MEMORY[0x1E698E700];
  optionsCopy = options;
  v6 = objc_alloc_init(v4);
  v7 = [[_WrapperForNonBSXPCCodingConformingClass alloc] initWithObject:optionsCopy];

  [v6 setObject:v7 forSetting:5];
  v8 = [(SHSheetCollaborationOptionsUpdateAction *)self initWithInfo:v6 responder:0];

  return v8;
}

- (_SWCollaborationShareOptions)collaborationOptions
{
  info = [(SHSheetCollaborationOptionsUpdateAction *)self info];
  v3 = [info objectForSetting:5];

  object = [v3 object];

  return object;
}

@end