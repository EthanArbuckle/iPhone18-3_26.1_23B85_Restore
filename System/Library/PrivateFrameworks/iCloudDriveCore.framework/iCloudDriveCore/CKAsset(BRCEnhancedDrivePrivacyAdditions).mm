@interface CKAsset(BRCEnhancedDrivePrivacyAdditions)
+ (id)br_assetWithAssetReferece:()BRCEnhancedDrivePrivacyAdditions boundaryKey:;
+ (id)br_assetWithDeviceID:()BRCEnhancedDrivePrivacyAdditions fileID:generationID:boundaryKey:;
+ (id)br_assetWithDeviceID:()BRCEnhancedDrivePrivacyAdditions fileID:generationID:useMMCSEncryptionV2:;
+ (id)br_assetWithFileURL:()BRCEnhancedDrivePrivacyAdditions boundaryKey:;
+ (id)br_assetWithFileURL:()BRCEnhancedDrivePrivacyAdditions useMMCSEncryptionV2:;
+ (id)transferOptionsWithMMCSV2:()BRCEnhancedDrivePrivacyAdditions;
@end

@implementation CKAsset(BRCEnhancedDrivePrivacyAdditions)

+ (id)transferOptionsWithMMCSV2:()BRCEnhancedDrivePrivacyAdditions
{
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [v4 setUseMMCSEncryptionV2:v5];

  return v4;
}

+ (id)br_assetWithFileURL:()BRCEnhancedDrivePrivacyAdditions boundaryKey:
{
  v6 = a4 != 0;
  v7 = a4;
  v8 = [a1 br_assetWithFileURL:a3 useMMCSEncryptionV2:v6];
  [v8 setBoundaryKey:v7];

  return v8;
}

+ (id)br_assetWithFileURL:()BRCEnhancedDrivePrivacyAdditions useMMCSEncryptionV2:
{
  v6 = MEMORY[0x277CBC190];
  v7 = a3;
  v8 = [[v6 alloc] initWithFileURL:v7];

  v9 = [a1 transferOptionsWithMMCSV2:a4];
  [v8 setAssetTransferOptions:v9];

  return v8;
}

+ (id)br_assetWithDeviceID:()BRCEnhancedDrivePrivacyAdditions fileID:generationID:boundaryKey:
{
  v10 = a6 != 0;
  v11 = a6;
  v12 = [a1 br_assetWithDeviceID:a3 fileID:a4 generationID:a5 useMMCSEncryptionV2:v10];
  [v12 setBoundaryKey:v11];

  return v12;
}

+ (id)br_assetWithDeviceID:()BRCEnhancedDrivePrivacyAdditions fileID:generationID:useMMCSEncryptionV2:
{
  v10 = MEMORY[0x277CBC190];
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[v10 alloc] initWithDeviceID:v13 fileID:v12 generationID:v11];

  v15 = [a1 transferOptionsWithMMCSV2:a6];
  [v14 setAssetTransferOptions:v15];

  return v14;
}

+ (id)br_assetWithAssetReferece:()BRCEnhancedDrivePrivacyAdditions boundaryKey:
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x277CBC190]) initWithAssetReference:v6];
  v9 = [a1 transferOptionsWithMMCSV2:v7 != 0];
  [v8 setAssetTransferOptions:v9];

  [v8 setBoundaryKey:v7];
  v10 = v8;

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end