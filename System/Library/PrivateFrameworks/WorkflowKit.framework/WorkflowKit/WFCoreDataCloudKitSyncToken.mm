@interface WFCoreDataCloudKitSyncToken
- (id)descriptor;
@end

@implementation WFCoreDataCloudKitSyncToken

- (id)descriptor
{
  v3 = objc_alloc(MEMORY[0x1E69E0A68]);
  identifier = [(WFCoreDataCloudKitSyncToken *)self identifier];
  v5 = [v3 initWithIdentifier:identifier objectType:3];

  return v5;
}

@end