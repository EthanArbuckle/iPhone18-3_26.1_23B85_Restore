@interface SHSheetCloudShareResultAction
- (SFCollaborationCloudSharingResult)result;
- (SHSheetCloudShareResultAction)initWithResult:(id)result;
@end

@implementation SHSheetCloudShareResultAction

- (SHSheetCloudShareResultAction)initWithResult:(id)result
{
  v4 = MEMORY[0x1E698E700];
  resultCopy = result;
  v6 = objc_alloc_init(v4);
  v7 = [[_WrapperForNonBSXPCCodingConformingClass alloc] initWithObject:resultCopy];

  [v6 setObject:v7 forSetting:6];
  v8 = [(SHSheetCloudShareResultAction *)self initWithInfo:v6 responder:0];

  return v8;
}

- (SFCollaborationCloudSharingResult)result
{
  info = [(SHSheetCloudShareResultAction *)self info];
  v3 = [info objectForSetting:6];

  object = [v3 object];

  return object;
}

@end