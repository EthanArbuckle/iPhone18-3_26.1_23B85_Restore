@interface NRFMonitor
+ (id)sharedInstance;
- (NRFMonitor)init;
- (void)addInstance;
- (void)releaseAllNRFSingletons;
- (void)removeInstance;
@end

@implementation NRFMonitor

+ (id)sharedInstance
{
  if (qword_2A18C2220 != -1)
  {
    sub_2958B3310();
  }

  v3 = qword_2A18C2218;

  return v3;
}

- (NRFMonitor)init
{
  v7.receiver = self;
  v7.super_class = NRFMonitor;
  v2 = [(NRFMonitor *)&v7 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_instanceCount = 0;
    TargetingPThreadRootQueueWithPriority = FigDispatchQueueCreateTargetingPThreadRootQueueWithPriority();
    workerQueue = v3->_workerQueue;
    v3->_workerQueue = TargetingPThreadRootQueueWithPriority;
  }

  return v3;
}

- (void)addInstance
{
  os_unfair_lock_lock(&self->_instanceCountlock);
  ++self->_instanceCount;
  currentBlock = self->_currentBlock;
  if (currentBlock)
  {
    dispatch_block_cancel(currentBlock);
    v4 = self->_currentBlock;
    self->_currentBlock = 0;
  }

  if (!self->_NRFSingletonsAllocated)
  {
    getpid();
    v5 = FigOSTransactionCreate();
    NRFSingletonsOSTransaction = self->_NRFSingletonsOSTransaction;
    self->_NRFSingletonsOSTransaction = v5;

    self->_NRFSingletonsAllocated = 1;
  }

  os_unfair_lock_unlock(&self->_instanceCountlock);
}

- (void)removeInstance
{
  os_unfair_lock_lock(&self->_instanceCountlock);
  instanceCount = self->_instanceCount;
  if (instanceCount)
  {
    v4 = instanceCount - 1;
    self->_instanceCount = v4;
    if (!v4)
    {
      currentBlock = self->_currentBlock;
      if (currentBlock)
      {
        dispatch_block_cancel(currentBlock);
        v6 = self->_currentBlock;
        self->_currentBlock = 0;
      }

      objc_initWeak(&location, self);
      v10[0] = MEMORY[0x29EDCA5F8];
      v10[1] = 3221225472;
      v10[2] = sub_295846BD0;
      v10[3] = &unk_29EDDC358;
      objc_copyWeak(&v11, &location);
      v7 = dispatch_block_create(DISPATCH_BLOCK_NO_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v10);
      v8 = self->_currentBlock;
      self->_currentBlock = v7;

      v9 = dispatch_time(0, 5000000000);
      dispatch_after(v9, self->_workerQueue, self->_currentBlock);
      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }
  }

  os_unfair_lock_unlock(&self->_instanceCountlock);
}

- (void)releaseAllNRFSingletons
{
  os_unfair_lock_lock(&self->_instanceCountlock);
  currentBlock = self->_currentBlock;
  self->_currentBlock = 0;

  if (!self->_instanceCount)
  {
    objc_msgSend_releaseSharedInstance(RegWarpHelperShared, v4, v5, v6);
    objc_msgSend_releaseSharedInstance(DeepFusionLaplacianPyramidShared, v7, v8, v9);
    objc_msgSend_releaseSharedInstance(PostEspressoShared, v10, v11, v12);
    objc_msgSend_releaseSharedInstance(SyntheticReferenceShared, v13, v14, v15);
    objc_msgSend_releaseSharedInstance(GrayGhostDetectionShared, v16, v17, v18);
    objc_msgSend_releaseSharedInstance(MotionDetectionShared, v19, v20, v21);
    objc_msgSend_releaseSharedInstance(RegPyrFusionShared, v22, v23, v24);
    objc_msgSend_releaseSharedInstance(RegDenseShared, v25, v26, v27);
    objc_msgSend_releaseSharedInstance(FusionRemixStageShared, v28, v29, v30);
    objc_msgSend_releaseSharedInstance(WarpStageShared, v31, v32, v33);
    objc_msgSend_releaseSharedInstance(OutliersRemovalShared, v34, v35, v36);
    objc_msgSend_releaseSharedInstance(DenoiseRemixStageShared, v37, v38, v39);
    objc_msgSend_releaseSharedInstance(DenoiseFusePipelineShared, v40, v41, v42);
    objc_msgSend_releaseSharedInstance(BilateralGridShared, v43, v44, v45);
    objc_msgSend_releaseSharedInstance(ToneMappingShared, v46, v47, v48);
    objc_msgSend_releaseSharedInstance(PyramidStageShared_NRF, v49, v50, v51);
    v55 = objc_msgSend_releaseSharedInstance(DenoiseRemixStageConfig, v52, v53, v54);
    objc_msgSend_releaseSharedInstance(SingleColorCubeCorrectionStageShared, v56, v57, v58);
    objc_msgSend_releaseSharedInstance(GainMapShared, v59, v60, v61);
    objc_msgSend_releaseSharedInstance(SemanticStylesShared, v62, v63, v64);
    objc_msgSend_releaseSharedInstance(TextureUtilsShared, v65, v66, v67);
    objc_msgSend_releaseSharedInstance(ColorConvertStageShared, v68, v69, v70);
    objc_msgSend_releaseSharedInstance(GlobalDistortionCorrectionShared, v71, v72, v73);
    objc_msgSend_releaseSharedInstance(BlinkDetectionStageShared, v74, v75, v76);
    objc_msgSend_releaseSharedInstance(SyntheticLongShared, v77, v78, v79);
    NRFSingletonsOSTransaction = self->_NRFSingletonsOSTransaction;
    self->_NRFSingletonsOSTransaction = 0;

    self->_NRFSingletonsAllocated = 0;
  }

  os_unfair_lock_unlock(&self->_instanceCountlock);
}

@end