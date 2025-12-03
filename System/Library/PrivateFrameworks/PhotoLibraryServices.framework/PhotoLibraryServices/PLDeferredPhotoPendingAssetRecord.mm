@interface PLDeferredPhotoPendingAssetRecord
- (PLDeferredPhotoPendingAssetRecord)initWithAssetObjectID:(id)d lsm:(id)lsm requestReason:(id)reason isBackgroundPriority:(BOOL)priority signpostId:(unint64_t)id expectsSecondProcessingCallback:(BOOL)callback needsSemanticDevelopment:(BOOL)development fileURLForFullsizeRenderImage:(id)self0 mainFileURL:(id)self1 logDescription:(id)self2 startTimestamp:(double)self3 deferredmediadQos:(id)self4 clientBundleID:(id)self5 completionHandler:(id)self6;
@end

@implementation PLDeferredPhotoPendingAssetRecord

- (PLDeferredPhotoPendingAssetRecord)initWithAssetObjectID:(id)d lsm:(id)lsm requestReason:(id)reason isBackgroundPriority:(BOOL)priority signpostId:(unint64_t)id expectsSecondProcessingCallback:(BOOL)callback needsSemanticDevelopment:(BOOL)development fileURLForFullsizeRenderImage:(id)self0 mainFileURL:(id)self1 logDescription:(id)self2 startTimestamp:(double)self3 deferredmediadQos:(id)self4 clientBundleID:(id)self5 completionHandler:(id)self6
{
  dCopy = d;
  lsmCopy = lsm;
  reasonCopy = reason;
  imageCopy = image;
  lCopy = l;
  descriptionCopy = description;
  qosCopy = qos;
  iDCopy = iD;
  handlerCopy = handler;
  v47.receiver = self;
  v47.super_class = PLDeferredPhotoPendingAssetRecord;
  v25 = [(PLDeferredPhotoPendingAssetRecord *)&v47 init];
  if (v25)
  {
    v26 = [dCopy copy];
    assetObjectID = v25->_assetObjectID;
    v25->_assetObjectID = v26;

    objc_storeStrong(&v25->_lsm, lsm);
    v28 = [reasonCopy copy];
    requestReason = v25->_requestReason;
    v25->_requestReason = v28;

    v25->_isBackgroundPriority = priority;
    v25->_signpostId = id;
    v25->_expectsSecondProcessingCallback = callback;
    v25->_needsSemanticDevelopment = development;
    v30 = [imageCopy copy];
    fileURLForFullsizeRenderImage = v25->_fileURLForFullsizeRenderImage;
    v25->_fileURLForFullsizeRenderImage = v30;

    v32 = [lCopy copy];
    mainFileURL = v25->_mainFileURL;
    v25->_mainFileURL = v32;

    v34 = [descriptionCopy copy];
    logDescription = v25->_logDescription;
    v25->_logDescription = v34;

    v25->_startTimestamp = timestamp;
    objc_storeStrong(&v25->_qosToProcess, qos);
    objc_storeStrong(&v25->_clientBundleID, iD);
    v36 = [handlerCopy copy];
    completionHandler = v25->_completionHandler;
    v25->_completionHandler = v36;

    v38 = v25;
  }

  return v25;
}

@end