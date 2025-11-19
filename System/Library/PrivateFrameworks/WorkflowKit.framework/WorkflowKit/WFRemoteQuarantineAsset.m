@interface WFRemoteQuarantineAsset
+ (NSDictionary)properties;
@end

@implementation WFRemoteQuarantineAsset

+ (NSDictionary)properties
{
  v11[4] = *MEMORY[0x1E69E9840];
  v10[0] = @"compatibilityVersion";
  v2 = [WFCloudKitItemProperty scalarPropertyWithName:"scalarPropertyWithName:nilValue:" nilValue:?];
  v11[0] = v2;
  v10[1] = @"contentVersion";
  v3 = [WFCloudKitItemProperty scalarPropertyWithName:"scalarPropertyWithName:nilValue:" nilValue:?];
  v11[1] = v3;
  v10[2] = @"assetData";
  v4 = [MEMORY[0x1E69E0AF8] typeWithUTType:*MEMORY[0x1E6982D60]];
  v5 = [WFCloudKitItemProperty assetPropertyWithName:@"assetDataFile" fileType:v4];
  v11[2] = v5;
  v10[3] = @"configuration";
  v6 = [WFCloudKitItemProperty objectPropertyWithName:?];
  v11[3] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

@end