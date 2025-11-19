@interface PLDeferredPhotoPendingAssetRecord
- (PLDeferredPhotoPendingAssetRecord)initWithAssetObjectID:(id)a3 lsm:(id)a4 requestReason:(id)a5 isBackgroundPriority:(BOOL)a6 signpostId:(unint64_t)a7 expectsSecondProcessingCallback:(BOOL)a8 needsSemanticDevelopment:(BOOL)a9 fileURLForFullsizeRenderImage:(id)a10 mainFileURL:(id)a11 logDescription:(id)a12 startTimestamp:(double)a13 deferredmediadQos:(id)a14 clientBundleID:(id)a15 completionHandler:(id)a16;
@end

@implementation PLDeferredPhotoPendingAssetRecord

- (PLDeferredPhotoPendingAssetRecord)initWithAssetObjectID:(id)a3 lsm:(id)a4 requestReason:(id)a5 isBackgroundPriority:(BOOL)a6 signpostId:(unint64_t)a7 expectsSecondProcessingCallback:(BOOL)a8 needsSemanticDevelopment:(BOOL)a9 fileURLForFullsizeRenderImage:(id)a10 mainFileURL:(id)a11 logDescription:(id)a12 startTimestamp:(double)a13 deferredmediadQos:(id)a14 clientBundleID:(id)a15 completionHandler:(id)a16
{
  v46 = a3;
  v44 = a4;
  v45 = a5;
  v20 = a10;
  v21 = a11;
  v22 = a12;
  v43 = a14;
  v23 = a15;
  v24 = a16;
  v47.receiver = self;
  v47.super_class = PLDeferredPhotoPendingAssetRecord;
  v25 = [(PLDeferredPhotoPendingAssetRecord *)&v47 init];
  if (v25)
  {
    v26 = [v46 copy];
    assetObjectID = v25->_assetObjectID;
    v25->_assetObjectID = v26;

    objc_storeStrong(&v25->_lsm, a4);
    v28 = [v45 copy];
    requestReason = v25->_requestReason;
    v25->_requestReason = v28;

    v25->_isBackgroundPriority = a6;
    v25->_signpostId = a7;
    v25->_expectsSecondProcessingCallback = a8;
    v25->_needsSemanticDevelopment = a9;
    v30 = [v20 copy];
    fileURLForFullsizeRenderImage = v25->_fileURLForFullsizeRenderImage;
    v25->_fileURLForFullsizeRenderImage = v30;

    v32 = [v21 copy];
    mainFileURL = v25->_mainFileURL;
    v25->_mainFileURL = v32;

    v34 = [v22 copy];
    logDescription = v25->_logDescription;
    v25->_logDescription = v34;

    v25->_startTimestamp = a13;
    objc_storeStrong(&v25->_qosToProcess, a14);
    objc_storeStrong(&v25->_clientBundleID, a15);
    v36 = [v24 copy];
    completionHandler = v25->_completionHandler;
    v25->_completionHandler = v36;

    v38 = v25;
  }

  return v25;
}

@end