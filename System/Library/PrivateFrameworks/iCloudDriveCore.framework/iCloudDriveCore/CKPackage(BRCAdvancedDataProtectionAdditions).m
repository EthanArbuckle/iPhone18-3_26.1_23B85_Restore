@interface CKPackage(BRCAdvancedDataProtectionAdditions)
+ (id)br_clonedPackageWithRecordID:()BRCAdvancedDataProtectionAdditions databaseScope:fieldName:boundaryKey:error:;
+ (id)br_packageWithBoundaryKey:()BRCAdvancedDataProtectionAdditions error:;
+ (id)br_packageWithPackage:()BRCAdvancedDataProtectionAdditions error:;
@end

@implementation CKPackage(BRCAdvancedDataProtectionAdditions)

+ (id)br_packageWithBoundaryKey:()BRCAdvancedDataProtectionAdditions error:
{
  v5 = a3;
  v6 = [MEMORY[0x277CBC538] packageWithError:a4];
  v7 = [MEMORY[0x277CBC190] transferOptionsWithMMCSV2:v5 != 0];
  [v6 setAssetTransferOptions:v7];

  v8 = [v6 setBoundaryKey:v5];

  return v6;
}

+ (id)br_packageWithPackage:()BRCAdvancedDataProtectionAdditions error:
{
  v5 = MEMORY[0x277CBC538];
  v6 = a3;
  v7 = [v5 packageWithPackage:v6 error:a4];
  v8 = [v6 boundaryKey];

  v9 = [MEMORY[0x277CBC190] transferOptionsWithMMCSV2:v8 != 0];
  [v7 setAssetTransferOptions:v9];

  v10 = [v7 setBoundaryKey:v8];

  return v7;
}

+ (id)br_clonedPackageWithRecordID:()BRCAdvancedDataProtectionAdditions databaseScope:fieldName:boundaryKey:error:
{
  v11 = a6;
  v12 = [MEMORY[0x277CBC538] clonedPackageWithRecordID:a3 databaseScope:a4 fieldName:a5 error:a7];
  v13 = [v12 setBoundaryKey:v11];

  return v12;
}

@end