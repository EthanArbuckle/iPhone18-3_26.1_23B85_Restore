@interface APOdmlTrainingRowBiomeEvent
+ (id)featureForKey:(id)a3;
+ (void)removeAll;
+ (void)sendEvent:(id)a3;
+ (void)updateWithRecordID:(id)a3 adamID:(id)a4 event:(int64_t)a5;
@end

@implementation APOdmlTrainingRowBiomeEvent

+ (void)updateWithRecordID:(id)a3 adamID:(id)a4 event:(int64_t)a5
{
  HIBYTE(v6) = a5 == 2;
  LOBYTE(v6) = a5 == 1;
  v7 = objc_msgSend_makeEventWithRecordID_adamID_odmlResponse_appInstalled_isDupe_rerankingError_impressed_tapped_(APOdmlTrainingRowBiomeEvent, a2, a3, a4, 0, 0, 0, 0, v6);
  objc_msgSend_sendEvent_(APOdmlTrainingRowBiomeEvent, v5, v7);
}

+ (void)sendEvent:(id)a3
{
  v3 = a3;
  v4 = BiomeLibrary();
  v7 = objc_msgSend_AdPlatforms(v4, v5, v6);
  v10 = objc_msgSend_ODML(v7, v8, v9);
  v17 = objc_msgSend_TrainingRows(v10, v11, v12);

  v15 = objc_msgSend_source(v17, v13, v14);
  objc_msgSend_sendEvent_(v15, v16, v3);
}

+ (void)removeAll
{
  v2 = BiomeLibrary();
  v5 = objc_msgSend_AdPlatforms(v2, v3, v4);
  v8 = objc_msgSend_ODML(v5, v6, v7);
  v15 = objc_msgSend_TrainingRows(v8, v9, v10);

  v13 = objc_msgSend_pruner(v15, v11, v12);
  objc_msgSend_deleteWithPolicy_eventsPassingTest_(v13, v14, @"personalized-ads-on", &unk_287367680);
}

+ (id)featureForKey:(id)a3
{
  v3 = a3;
  v6 = objc_msgSend_sharedAssetManagerCoordinator(APOdmlAssetManagerCoordinator, v4, v5);
  v8 = objc_msgSend_assetManagerForPlacementType_assetManagerType_(v6, v7, 0, 0);
  v10 = objc_msgSend_featureForName_(v8, v9, v3);

  v13 = objc_msgSend_arrayOfNumbers(v10, v11, v12);

  return v13;
}

@end