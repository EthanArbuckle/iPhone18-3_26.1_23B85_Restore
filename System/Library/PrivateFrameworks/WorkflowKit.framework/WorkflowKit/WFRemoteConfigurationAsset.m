@interface WFRemoteConfigurationAsset
+ (NSDictionary)properties;
@end

@implementation WFRemoteConfigurationAsset

+ (NSDictionary)properties
{
  v12[5] = *MEMORY[0x1E69E9840];
  v11[0] = @"shortVersion";
  v2 = [WFCloudKitItemProperty objectPropertyWithName:?];
  v12[0] = v2;
  v11[1] = @"assetType";
  v3 = [WFCloudKitItemProperty objectPropertyWithName:?];
  v12[1] = v3;
  v11[2] = @"assetData";
  v4 = [MEMORY[0x1E69E0AF8] typeWithUTType:*MEMORY[0x1E6982D60]];
  v5 = [WFCloudKitItemProperty assetPropertyWithName:@"assetDataFile" fileType:v4];
  v12[2] = v5;
  v11[3] = @"buildNumber";
  v6 = [WFCloudKitItemProperty objectPropertyWithName:?];
  v12[3] = v6;
  v11[4] = @"configuration";
  v7 = [WFCloudKitItemProperty objectPropertyWithName:?];
  v12[4] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:5];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

@end