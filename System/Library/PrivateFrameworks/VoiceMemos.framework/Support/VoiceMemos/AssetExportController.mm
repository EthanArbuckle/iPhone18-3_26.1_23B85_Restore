@interface AssetExportController
- (AssetExportController)init;
- (void)finalizeAssetWithComposition:(id)composition completionBlock:(id)block;
@end

@implementation AssetExportController

- (AssetExportController)init
{
  v5.receiver = self;
  v5.super_class = AssetExportController;
  v2 = [(AssetExportController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_completionQueue, &_dispatch_main_q);
  }

  return v3;
}

- (void)finalizeAssetWithComposition:(id)composition completionBlock:(id)block
{
  compositionCopy = composition;
  blockCopy = block;
  decomposedFragments = [compositionCopy decomposedFragments];
  v9 = [decomposedFragments count];

  if (v9)
  {
    composedAVURL = [compositionCopy composedAVURL];
    v11 = OSLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_100034A90(composedAVURL, v11);
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100007850;
    v17[3] = &unk_100055480;
    v17[4] = self;
    v18 = blockCopy;
    v12 = blockCopy;
    [RCComposition rcs_composeToFinalDestination:compositionCopy completionBlock:v17];
  }

  else
  {
    completionQueue = self->_completionQueue;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100007958;
    v14[3] = &unk_1000554A8;
    v16 = blockCopy;
    v15 = compositionCopy;
    composedAVURL = blockCopy;
    dispatch_async(completionQueue, v14);

    v12 = v16;
  }
}

@end