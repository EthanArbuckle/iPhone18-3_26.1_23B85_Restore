@interface APOdmlTrainingRowBiomeEvent
+ (id)featureForKey:(id)key;
+ (void)removeAll;
+ (void)sendEvent:(id)event;
+ (void)updateWithRecordID:(id)d adamID:(id)iD event:(int64_t)event;
@end

@implementation APOdmlTrainingRowBiomeEvent

+ (void)updateWithRecordID:(id)d adamID:(id)iD event:(int64_t)event
{
  HIBYTE(v6) = event == 2;
  LOBYTE(v6) = event == 1;
  v7 = objc_msgSend_makeEventWithRecordID_adamID_odmlResponse_appInstalled_isDupe_rerankingError_impressed_tapped_(APOdmlTrainingRowBiomeEvent, a2, d, iD, 0, 0, 0, 0, v6);
  objc_msgSend_sendEvent_(APOdmlTrainingRowBiomeEvent, v5, v7);
}

+ (void)sendEvent:(id)event
{
  eventCopy = event;
  v4 = BiomeLibrary();
  v7 = objc_msgSend_AdPlatforms(v4, v5, v6);
  v10 = objc_msgSend_ODML(v7, v8, v9);
  v17 = objc_msgSend_TrainingRows(v10, v11, v12);

  v15 = objc_msgSend_source(v17, v13, v14);
  objc_msgSend_sendEvent_(v15, v16, eventCopy);
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

+ (id)featureForKey:(id)key
{
  keyCopy = key;
  v6 = objc_msgSend_sharedAssetManagerCoordinator(APOdmlAssetManagerCoordinator, v4, v5);
  v8 = objc_msgSend_assetManagerForPlacementType_assetManagerType_(v6, v7, 0, 0);
  v10 = objc_msgSend_featureForName_(v8, v9, keyCopy);

  v13 = objc_msgSend_arrayOfNumbers(v10, v11, v12);

  return v13;
}

@end