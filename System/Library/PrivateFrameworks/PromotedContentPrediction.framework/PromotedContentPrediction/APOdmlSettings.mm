@interface APOdmlSettings
+ (void)prewarmModelWithPlacementType:(unint64_t)type assetManagerType:(unint64_t)managerType;
- (APOdmlSettings)initWithPlacementType:(unint64_t)type assetManagerType:(unint64_t)managerType;
- (NSString)experimentID;
- (NSString)odmlNamespace;
- (NSString)treatmentID;
- (id)serverRequestDictionary;
- (int)deploymentID;
- (int)odmlVersion;
@end

@implementation APOdmlSettings

+ (void)prewarmModelWithPlacementType:(unint64_t)type assetManagerType:(unint64_t)managerType
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_260EE6304;
  v4[3] = &unk_279AC6358;
  v4[4] = type;
  v4[5] = managerType;
  if (qword_280CCF610 != -1)
  {
    dispatch_once(&qword_280CCF610, v4);
  }
}

- (APOdmlSettings)initWithPlacementType:(unint64_t)type assetManagerType:(unint64_t)managerType
{
  v15.receiver = self;
  v15.super_class = APOdmlSettings;
  v8 = [(APOdmlSettings *)&v15 init];
  if (v8)
  {
    v9 = objc_msgSend_sharedAssetManagerCoordinator(APOdmlAssetManagerCoordinator, v6, v7);
    objc_msgSend_prewarmModelWithPlacementType_assetManagerType_(APOdmlSettings, v10, type, managerType);
    v13 = objc_msgSend_sharedInstance(APOdmlAllowList, v11, v12);
    v8->_assetManagerType = managerType;
    v8->_placementType = type;
  }

  return v8;
}

- (int)deploymentID
{
  v4 = objc_msgSend_sharedAssetManagerCoordinator(APOdmlAssetManagerCoordinator, a2, v2);
  v7 = objc_msgSend_placementType(self, v5, v6);
  v10 = objc_msgSend_assetManagerType(self, v8, v9);
  v12 = objc_msgSend_assetManagerForPlacementType_assetManagerType_(v4, v11, v7, v10);
  LODWORD(v7) = objc_msgSend_deploymentID(v12, v13, v14);

  return v7;
}

- (NSString)experimentID
{
  v4 = objc_msgSend_sharedAssetManagerCoordinator(APOdmlAssetManagerCoordinator, a2, v2);
  v7 = objc_msgSend_placementType(self, v5, v6);
  v10 = objc_msgSend_assetManagerType(self, v8, v9);
  v12 = objc_msgSend_assetManagerForPlacementType_assetManagerType_(v4, v11, v7, v10);
  v15 = objc_msgSend_experimentID(v12, v13, v14);

  return v15;
}

- (NSString)treatmentID
{
  v4 = objc_msgSend_sharedAssetManagerCoordinator(APOdmlAssetManagerCoordinator, a2, v2);
  v7 = objc_msgSend_placementType(self, v5, v6);
  v10 = objc_msgSend_assetManagerType(self, v8, v9);
  v12 = objc_msgSend_assetManagerForPlacementType_assetManagerType_(v4, v11, v7, v10);
  v15 = objc_msgSend_treatmentID(v12, v13, v14);

  return v15;
}

- (NSString)odmlNamespace
{
  v4 = objc_msgSend_sharedAssetManagerCoordinator(APOdmlAssetManagerCoordinator, a2, v2);
  v7 = objc_msgSend_placementType(self, v5, v6);
  v10 = objc_msgSend_assetManagerType(self, v8, v9);
  v12 = objc_msgSend_assetManagerForPlacementType_assetManagerType_(v4, v11, v7, v10);
  v15 = objc_msgSend_odmlNamespace(v12, v13, v14);

  return v15;
}

- (int)odmlVersion
{
  v4 = objc_msgSend_sharedAssetManagerCoordinator(APOdmlAssetManagerCoordinator, a2, v2);
  v7 = objc_msgSend_placementType(self, v5, v6);
  v10 = objc_msgSend_assetManagerType(self, v8, v9);
  v12 = objc_msgSend_assetManagerForPlacementType_assetManagerType_(v4, v11, v7, v10);
  LODWORD(v7) = objc_msgSend_odmlVersion(v12, v13, v14);

  return v7;
}

- (id)serverRequestDictionary
{
  v27[6] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_experimentID(self, a2, v2);
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = &stru_2873677E0;
  }

  v8 = objc_msgSend_treatmentID(self, v5, v6);
  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = &stru_2873677E0;
  }

  v26[0] = @"supportedODMLVersion";
  v12 = MEMORY[0x277CCABB0];
  v13 = objc_msgSend_odmlVersion(self, v9, v10);
  v15 = objc_msgSend_numberWithInt_(v12, v14, v13);
  v27[0] = v15;
  v27[1] = v7;
  v26[1] = @"experimentID";
  v26[2] = @"treatmentID";
  v27[2] = v11;
  v26[3] = @"deploymentID";
  v16 = MEMORY[0x277CCABB0];
  v19 = objc_msgSend_deploymentID(self, v17, v18);
  v21 = objc_msgSend_numberWithInt_(v16, v20, v19);
  v27[3] = v21;
  v27[4] = MEMORY[0x277CBEC28];
  v26[4] = @"inAllocation";
  v26[5] = @"clientExclusive";
  v27[5] = MEMORY[0x277CBEC28];
  v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v22, v27, v26, 6);

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

@end