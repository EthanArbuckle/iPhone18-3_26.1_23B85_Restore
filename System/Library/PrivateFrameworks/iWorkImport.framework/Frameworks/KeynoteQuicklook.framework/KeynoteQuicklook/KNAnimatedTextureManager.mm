@interface KNAnimatedTextureManager
- (BOOL)p_stopPreCachingIfStarted;
- (KNAnimatedTextureManager)initWithSession:(id)session;
- (id)ASVForSlideNode:(id)node;
- (id)description;
- (id)p_setupGenerateTexturesOperationOnSlideNode:(id)node;
- (id)p_setupPrepareAnimationsOperationOnSlideNode:(id)node;
- (id)p_setupRenderTexturesOperationOnSlideNode:(id)node;
- (id)p_slideNodesToCacheAroundCurrentSlideNode:(id)node shouldIncludeExtraSlideAtEnd:(BOOL)end;
- (void)addTextureToRasterizationQueue:(id)queue asv:(id)asv;
- (void)dealloc;
- (void)evictCaches;
- (void)p_addSlideNodeToMemorySet:(id)set;
- (void)p_cancelAllOperations;
- (void)p_didReceiveMemoryWarning;
- (void)p_processCurrentSlideNode;
- (void)p_processSlideNode:(id)node isHighPriority:(BOOL)priority;
- (void)p_rasterizeTexture:(id)texture;
- (void)p_removeTextureCacheForASV:(id)v;
- (void)p_scheduleSerializeExtraSlideNodes;
- (void)p_serializeExtraSlideNodes;
- (void)p_serializeTexturesForSlideNode:(id)node;
- (void)p_waitUntilAllOperationsAreFinished;
- (void)setCurrentSlideNode:(id)node;
- (void)startPreCaching;
- (void)tearDown;
@end

@implementation KNAnimatedTextureManager

- (KNAnimatedTextureManager)initWithSession:(id)session
{
  sessionCopy = session;
  v40.receiver = self;
  v40.super_class = KNAnimatedTextureManager;
  v5 = [(KNAnimatedTextureManager *)&v40 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_session, sessionCopy);
    v7 = objc_opt_new();
    preCacheBackgroundQueue = v6->_preCacheBackgroundQueue;
    v6->_preCacheBackgroundQueue = v7;

    v9 = objc_opt_new();
    rasterizeTextureQueue = v6->_rasterizeTextureQueue;
    v6->_rasterizeTextureQueue = v9;

    objc_msgSend_setQualityOfService_(v6->_preCacheBackgroundQueue, v11, 17);
    objc_msgSend_setMaxConcurrentOperationCount_(v6->_preCacheBackgroundQueue, v12, 1);
    objc_msgSend_setQualityOfService_(v6->_rasterizeTextureQueue, v13, 17);
    v16 = objc_msgSend_processInfo(MEMORY[0x277CCAC38], v14, v15);
    v19 = objc_msgSend_processorCount(v16, v17, v18);
    objc_msgSend_setMaxConcurrentOperationCount_(v6->_rasterizeTextureQueue, v20, v19);

    v23 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v21, v22);
    repToTextureArrayMap = v6->_repToTextureArrayMap;
    v6->_repToTextureArrayMap = v23;

    v25 = objc_alloc(MEMORY[0x277D81218]);
    v27 = objc_msgSend_initWithMaxSize_(v25, v26, 1);
    recentlyUsedBackgroundCache = v6->_recentlyUsedBackgroundCache;
    v6->_recentlyUsedBackgroundCache = v27;

    v29 = TSULogCreateCategory();
    signpostLog = v6->_signpostLog;
    v6->_signpostLog = v29;

    v6->_preCachingStateLock._os_unfair_lock_opaque = 0;
    v6->_textureCacheLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
    v33 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v31, v32);
    v34 = *MEMORY[0x277D76670];
    v37 = objc_msgSend_sharedApplication(MEMORY[0x277D75128], v35, v36);
    objc_msgSend_addObserver_selector_name_object_(v33, v38, v6, sel_p_didReceiveMemoryWarning_, v34, v37);
  }

  return v6;
}

- (void)dealloc
{
  if (self->_slideNodeToASVMap)
  {
    v3 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNAnimatedTextureManager dealloc]");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedTextureManager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 170, 0, "tear down not performed");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  }

  v10.receiver = self;
  v10.super_class = KNAnimatedTextureManager;
  [(KNAnimatedTextureManager *)&v10 dealloc];
}

- (void)tearDown
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2);
  v5 = *MEMORY[0x277D76670];
  v8 = objc_msgSend_sharedApplication(MEMORY[0x277D75128], v6, v7);
  objc_msgSend_removeObserver_name_object_(v4, v9, self, v5, v8);

  os_unfair_lock_lock(&self->_preCachingStateLock);
  v12 = objc_msgSend_copy(self->_slideNodeToASVMap, v10, v11);
  slideNodeToASVMap = self->_slideNodeToASVMap;
  self->_slideNodeToASVMap = 0;

  slideNodesInMemorySet = self->_slideNodesInMemorySet;
  self->_slideNodesInMemorySet = 0;

  preCachedSlideNodes = self->_preCachedSlideNodes;
  self->_preCachedSlideNodes = 0;

  os_unfair_lock_unlock(&self->_preCachingStateLock);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v18 = objc_msgSend_objectEnumerator(v12, v16, v17, 0);
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v30, v34, 16);
  if (v20)
  {
    v23 = v20;
    v24 = *v31;
    do
    {
      v25 = 0;
      do
      {
        if (*v31 != v24)
        {
          objc_enumerationMutation(v18);
        }

        objc_msgSend_tearDown(*(*(&v30 + 1) + 8 * v25++), v21, v22);
      }

      while (v23 != v25);
      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v30, v34, 16);
    }

    while (v23);
  }

  os_unfair_lock_lock(&self->_textureCacheLock);
  objc_msgSend_removeAllObjects(self->_repToTextureArrayMap, v26, v27);
  objc_msgSend_removeAllObjects(self->_recentlyUsedBackgroundCache, v28, v29);
  os_unfair_lock_unlock(&self->_textureCacheLock);
}

- (id)description
{
  v4 = MEMORY[0x277CCACA8];
  preCacheBackgroundQueue = self->_preCacheBackgroundQueue;
  v6 = objc_msgSend_operations(preCacheBackgroundQueue, a2, v2);
  rasterizeTextureQueue = self->_rasterizeTextureQueue;
  v10 = objc_msgSend_operations(rasterizeTextureQueue, v8, v9);
  v12 = objc_msgSend_stringWithFormat_(v4, v11, @"preCache queue: %@ operations: %@\nrasterization queue: %@ operations: %@\nslideNodes: %@\nslideNodeToASVMap: %@", preCacheBackgroundQueue, v6, rasterizeTextureQueue, v10, self->_slideNodesInMemorySet, self->_slideNodeToASVMap);

  return v12;
}

- (void)setCurrentSlideNode:(id)node
{
  nodeCopy = node;
  if (KNAnimatedTextureManagerCat_init_token != -1)
  {
    sub_275E5B624();
  }

  os_unfair_lock_lock(&self->_preCachingStateLock);
  if (self->_currentSlideNode == nodeCopy)
  {
    os_unfair_lock_unlock(&self->_preCachingStateLock);
  }

  else
  {
    objc_storeStrong(&self->_currentSlideNode, node);
    currentSlideNode = self->_currentSlideNode;
    isPreCachingActive = self->_isPreCachingActive;
    os_unfair_lock_unlock(&self->_preCachingStateLock);
    if (currentSlideNode)
    {
      if (isPreCachingActive)
      {
        objc_msgSend_p_processCurrentSlideNode(self, v7, v8);
        objc_msgSend_p_scheduleSerializeExtraSlideNodes(self, v9, v10);
      }

      else
      {
        objc_msgSend_p_addSlideNodeToMemorySet_(self, v7, nodeCopy);
      }
    }
  }
}

- (id)ASVForSlideNode:(id)node
{
  nodeCopy = node;
  os_unfair_lock_lock(&self->_preCachingStateLock);
  slideNodeToASVMap = self->_slideNodeToASVMap;
  if (!slideNodeToASVMap)
  {
    v8 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v5, v6);
    v9 = self->_slideNodeToASVMap;
    self->_slideNodeToASVMap = v8;

    slideNodeToASVMap = self->_slideNodeToASVMap;
  }

  v10 = objc_msgSend_objectForKey_(slideNodeToASVMap, v5, nodeCopy);
  if (!v10)
  {
    v11 = [KNAnimatedSlideView alloc];
    WeakRetained = objc_loadWeakRetained(&self->_session);
    v10 = objc_msgSend_initForSlideNode_session_(v11, v13, nodeCopy, WeakRetained);

    objc_msgSend_setObject_forKey_(self->_slideNodeToASVMap, v14, v10, nodeCopy);
  }

  os_unfair_lock_unlock(&self->_preCachingStateLock);

  return v10;
}

- (void)p_addSlideNodeToMemorySet:(id)set
{
  setCopy = set;
  os_unfair_lock_lock(&self->_preCachingStateLock);
  slideNodesInMemorySet = self->_slideNodesInMemorySet;
  if (!slideNodesInMemorySet)
  {
    v6 = objc_opt_new();
    v7 = self->_slideNodesInMemorySet;
    self->_slideNodesInMemorySet = v6;

    slideNodesInMemorySet = self->_slideNodesInMemorySet;
  }

  objc_msgSend_addObject_(slideNodesInMemorySet, v4, setCopy);
  os_unfair_lock_unlock(&self->_preCachingStateLock);
}

- (id)p_setupGenerateTexturesOperationOnSlideNode:(id)node
{
  nodeCopy = node;
  v5 = [KNSlideNodeBlockOperation alloc];
  v7 = objc_msgSend_initWithSlideNode_type_(v5, v6, nodeCopy, 0);
  objc_initWeak(&location, v7);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_275DDF518;
  v14[3] = &unk_27A699078;
  v14[4] = self;
  v8 = nodeCopy;
  v15 = v8;
  objc_copyWeak(&v16, &location);
  objc_msgSend_addExecutionBlock_(v7, v9, v14);
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"texture generation slideNode:%p", v8);
  objc_msgSend_setName_(v7, v12, v11);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v7;
}

- (id)p_setupRenderTexturesOperationOnSlideNode:(id)node
{
  nodeCopy = node;
  v5 = [KNSlideNodeBlockOperation alloc];
  v7 = objc_msgSend_initWithSlideNode_type_(v5, v6, nodeCopy, 1);
  objc_initWeak(&location, v7);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_275DDFA20;
  v14[3] = &unk_27A699078;
  v14[4] = self;
  v8 = nodeCopy;
  v15 = v8;
  objc_copyWeak(&v16, &location);
  objc_msgSend_addExecutionBlock_(v7, v9, v14);
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"rasterization slideNode:%p", v8);
  objc_msgSend_setName_(v7, v12, v11);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v7;
}

- (id)p_setupPrepareAnimationsOperationOnSlideNode:(id)node
{
  nodeCopy = node;
  v5 = [KNSlideNodeBlockOperation alloc];
  v7 = objc_msgSend_initWithSlideNode_type_(v5, v6, nodeCopy, 3);
  objc_initWeak(&location, v7);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_275DDFDB8;
  v11[3] = &unk_27A699078;
  v11[4] = self;
  v8 = nodeCopy;
  v12 = v8;
  objc_copyWeak(&v13, &location);
  objc_msgSend_addExecutionBlock_(v7, v9, v11);
  objc_destroyWeak(&v13);

  objc_destroyWeak(&location);

  return v7;
}

- (void)p_processSlideNode:(id)node isHighPriority:(BOOL)priority
{
  priorityCopy = priority;
  v58 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  v9 = nodeCopy;
  if (KNAnimatedTextureManagerCat_init_token == -1)
  {
    if (!nodeCopy)
    {
      goto LABEL_26;
    }
  }

  else
  {
    sub_275E5B638();
    if (!v9)
    {
      goto LABEL_26;
    }
  }

  v55 = 0u;
  v56 = 0u;
  v54 = 0u;
  v10 = objc_msgSend_operations(self->_preCacheBackgroundQueue, v7, v8, 0, 0);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v53, v57, 16);
  if (v12)
  {
    v13 = v12;
    v14 = *v54;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v54 != v14)
        {
          objc_enumerationMutation(v10);
        }

        objc_opt_class();
        v16 = TSUDynamicCast();
        v19 = v16;
        if (v16)
        {
          v20 = objc_msgSend_slideNode(v16, v17, v18);

          if (v20 == v9 && objc_msgSend_type(v19, v21, v22) == 2)
          {
            objc_msgSend_cancel(v19, v23, v24);
            goto LABEL_15;
          }
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v25, &v53, v57, 16);
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v19 = 0;
LABEL_15:

  v27 = objc_msgSend_ASVForSlideNode_(self, v26, v9);
  if (objc_msgSend_shouldPreCache(v27, v28, v29))
  {
    os_unfair_lock_lock(&self->_preCachingStateLock);
    v32 = objc_msgSend_containsObject_(self->_preCachedSlideNodes, v31, v9);
    os_unfair_lock_unlock(&self->_preCachingStateLock);
    if ((v32 & 1) == 0)
    {
      v34 = objc_msgSend_p_setupGenerateTexturesOperationOnSlideNode_(self, v33, v9);
      v36 = objc_msgSend_p_setupRenderTexturesOperationOnSlideNode_(self, v35, v9);
      v38 = objc_msgSend_p_setupPrepareAnimationsOperationOnSlideNode_(self, v37, v9);
      objc_msgSend_addDependency_(v36, v39, v34);
      objc_msgSend_addDependency_(v38, v40, v36);
      if (priorityCopy)
      {
        objc_msgSend_setQualityOfService_(v34, v41, 33);
        objc_msgSend_setQueuePriority_(v34, v42, 8);
        objc_msgSend_setQualityOfService_(v36, v43, 33);
        objc_msgSend_setQueuePriority_(v36, v44, 8);
        objc_msgSend_setQualityOfService_(v38, v45, 33);
        objc_msgSend_setQueuePriority_(v38, v46, 8);
      }

      if (v19)
      {
        objc_msgSend_addDependency_(v34, v41, v19);
      }

      objc_msgSend_addOperation_(self->_preCacheBackgroundQueue, v41, v34);
      objc_msgSend_addOperation_(self->_preCacheBackgroundQueue, v47, v36);
      objc_msgSend_addOperation_(self->_preCacheBackgroundQueue, v48, v38);
      os_unfair_lock_lock(&self->_preCachingStateLock);
      preCachedSlideNodes = self->_preCachedSlideNodes;
      if (!preCachedSlideNodes)
      {
        v51 = objc_opt_new();
        v52 = self->_preCachedSlideNodes;
        self->_preCachedSlideNodes = v51;

        preCachedSlideNodes = self->_preCachedSlideNodes;
      }

      objc_msgSend_addObject_(preCachedSlideNodes, v49, v9);
      os_unfair_lock_unlock(&self->_preCachingStateLock);
    }
  }

  else
  {
    objc_msgSend_p_addSlideNodeToMemorySet_(self, v30, v9);
  }

LABEL_26:
}

- (void)p_processCurrentSlideNode
{
  v34 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_preCachingStateLock);
  currentSlideNode = self->_currentSlideNode;
  if (!currentSlideNode)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[KNAnimatedTextureManager p_processCurrentSlideNode]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedTextureManager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 521, 0, "invalid nil value for '%{public}s'", "_currentSlideNode");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
    currentSlideNode = self->_currentSlideNode;
  }

  v12 = currentSlideNode;
  shouldPreCache = self->_shouldPreCache;
  os_unfair_lock_unlock(&self->_preCachingStateLock);
  if (shouldPreCache && v12 != 0)
  {
    objc_msgSend_p_processSlideNode_isHighPriority_(self, v14, v12, 1);
    selfCopy = self;
    v18 = objc_msgSend_p_slideNodesToCacheAroundCurrentSlideNode_shouldIncludeExtraSlideAtEnd_(self, v17, v12, 0);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v29, v33, 16);
    if (v20)
    {
      v22 = v20;
      v23 = *v30;
      v24 = MEMORY[0x277D85CD0];
      do
      {
        v25 = 0;
        do
        {
          if (*v30 != v23)
          {
            objc_enumerationMutation(v18);
          }

          v26 = *(*(&v29 + 1) + 8 * v25);
          if (v26 != v12)
          {
            v27 = dispatch_time(0, 0);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = sub_275DE05BC;
            block[3] = &unk_27A697C10;
            block[4] = selfCopy;
            block[5] = v26;
            dispatch_after(v27, v24, block);
          }

          ++v25;
        }

        while (v22 != v25);
        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v29, v33, 16);
      }

      while (v22);
    }
  }
}

- (id)p_slideNodesToCacheAroundCurrentSlideNode:(id)node shouldIncludeExtraSlideAtEnd:(BOOL)end
{
  endCopy = end;
  nodeCopy = node;
  if (!nodeCopy)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[KNAnimatedTextureManager p_slideNodesToCacheAroundCurrentSlideNode:shouldIncludeExtraSlideAtEnd:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedTextureManager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 557, 0, "invalid nil value for '%{public}s'", "currentSlideNode");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  v15 = nodeCopy;
  v17 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v16, 2);
  objc_msgSend_addObject_(v17, v18, v15);
  if (!nodeCopy)
  {
    v21 = 0;
    goto LABEL_9;
  }

  WeakRetained = objc_loadWeakRetained(&self->_session);
  v21 = objc_msgSend_nextSlideNodeAfterSlideNode_(WeakRetained, v20, v15);

  if (!v21)
  {
LABEL_9:
    v26 = 0;
    goto LABEL_11;
  }

  objc_msgSend_addObject_(v17, v22, v21);
  v23 = v21;
  v21 = v23;
  if (endCopy)
  {
    v26 = objc_msgSend_nextSkippingHidden(v23, v24, v25);

    if (v26)
    {
      objc_msgSend_addObject_(v17, v27, v26);
    }
  }

  else
  {
    v26 = v23;
  }

LABEL_11:

  return v17;
}

- (void)startPreCaching
{
  os_unfair_lock_lock(&self->_preCachingStateLock);
  if ((objc_msgSend_isTexturePreCachingDisabled(KNAnimationUtils, v3, v4) & 1) != 0 || self->_isPreCachingActive || !self->_shouldPreCache)
  {

    os_unfair_lock_unlock(&self->_preCachingStateLock);
  }

  else
  {
    self->_isPreCachingActive = 1;
    if (objc_msgSend_isSkipped(self->_currentSlideNode, v5, v6))
    {
      v9 = objc_msgSend_nextSkippingHidden(self->_currentSlideNode, v7, v8);
      currentSlideNode = self->_currentSlideNode;
      self->_currentSlideNode = v9;
    }

    v11 = self->_currentSlideNode;
    os_unfair_lock_unlock(&self->_preCachingStateLock);
    if (v11)
    {

      objc_msgSend_p_processCurrentSlideNode(self, v12, v13);
    }
  }
}

- (BOOL)p_stopPreCachingIfStarted
{
  os_unfair_lock_lock(&self->_preCachingStateLock);
  isPreCachingActive = self->_isPreCachingActive;
  self->_isPreCachingActive = 0;
  os_unfair_lock_unlock(&self->_preCachingStateLock);
  if (isPreCachingActive)
  {
    objc_msgSend_p_cancelAllOperations(self, v4, v5);
    objc_msgSend_p_waitUntilAllOperationsAreFinished(self, v6, v7);
  }

  return isPreCachingActive;
}

- (void)p_cancelAllOperations
{
  objc_msgSend_cancelAllOperations(self->_preCacheBackgroundQueue, a2, v2);
  rasterizeTextureQueue = self->_rasterizeTextureQueue;

  objc_msgSend_cancelAllOperations(rasterizeTextureQueue, v4, v5);
}

- (void)p_waitUntilAllOperationsAreFinished
{
  objc_msgSend_waitUntilAllOperationsAreFinished(self->_preCacheBackgroundQueue, a2, v2);
  rasterizeTextureQueue = self->_rasterizeTextureQueue;

  objc_msgSend_waitUntilAllOperationsAreFinished(rasterizeTextureQueue, v4, v5);
}

- (void)p_rasterizeTexture:(id)texture
{
  textureCopy = texture;
  isMainThread = objc_msgSend_isMainThread(MEMORY[0x277CCACC8], v3, v4);
  objc_msgSend_begin(MEMORY[0x277CD9FF0], v6, v7);
  objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v8, 1);
  objc_msgSend_activateBackground_(MEMORY[0x277CD9FF0], v9, isMainThread ^ 1u);
  v10 = objc_autoreleasePoolPush();
  objc_msgSend_renderLayerContentsIfNeeded(textureCopy, v11, v12);
  objc_autoreleasePoolPop(v10);
  objc_msgSend_commit(MEMORY[0x277CD9FF0], v13, v14);
}

- (void)addTextureToRasterizationQueue:(id)queue asv:(id)asv
{
  queueCopy = queue;
  asvCopy = asv;
  v8 = queueCopy;
  objc_sync_enter(v8);
  WeakRetained = objc_loadWeakRetained(&self->_session);
  isExitingShow = objc_msgSend_isExitingShow(WeakRetained, v10, v11);

  if ((isExitingShow & 1) == 0)
  {
    if (self->_rasterizeTextureQueue)
    {
      v15 = objc_msgSend_renderingOperation(v8, v13, v14);
      if (v15)
      {
      }

      else if ((objc_msgSend_isRendered(v8, v16, v17) & 1) == 0)
      {
        v18 = objc_alloc_init(MEMORY[0x277CCA8C8]);
        objc_initWeak(&location, v18);
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = sub_275DE0C54;
        v33[3] = &unk_27A6990A0;
        objc_copyWeak(&v36, &location);
        v19 = v8;
        v34 = v19;
        selfCopy = self;
        objc_msgSend_addExecutionBlock_(v18, v20, v33);
        v22 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v21, @"render texture:%p", v19);
        objc_msgSend_setName_(v18, v23, v22);

        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = sub_275DE0DA0;
        v31[3] = &unk_27A697B20;
        v24 = v19;
        v32 = v24;
        objc_msgSend_setCompletionBlock_(v18, v25, v31);
        if (objc_msgSend_isMainThread(MEMORY[0x277CCACC8], v26, v27))
        {
          objc_msgSend_setQualityOfService_(v18, v28, 33);
          objc_msgSend_setQueuePriority_(v18, v29, 8);
        }

        objc_msgSend_setRenderingOperation_(v24, v28, v18);
        objc_msgSend_addOperation_(self->_rasterizeTextureQueue, v30, v18);

        objc_destroyWeak(&v36);
        objc_destroyWeak(&location);
      }
    }

    else
    {
      objc_msgSend_p_rasterizeTexture_(self, v13, v8);
    }
  }

  objc_sync_exit(v8);
}

- (void)p_removeTextureCacheForASV:(id)v
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_allReps(v, a2, v);
  os_unfair_lock_lock(&self->_textureCacheLock);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v4;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v17, v21, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = objc_msgSend_objectForKeyedSubscript_(self->_repToTextureArrayMap, v8, v12, v17);
        objc_msgSend_removeAllObjects(v13, v14, v15);

        objc_msgSend_removeObjectForKey_(self->_repToTextureArrayMap, v16, v12);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v17, v21, 16);
    }

    while (v9);
  }

  os_unfair_lock_unlock(&self->_textureCacheLock);
}

- (void)p_serializeTexturesForSlideNode:(id)node
{
  v47 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  if (KNAnimatedTextureManagerCat_init_token != -1)
  {
    sub_275E5B64C();
  }

  v4 = [KNSlideNodeBlockOperation alloc];
  v37 = objc_msgSend_initWithSlideNode_type_(v4, v5, nodeCopy, 2);
  objc_initWeak(&location, v37);
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = sub_275DE12A0;
  v42[3] = &unk_27A699078;
  v42[4] = self;
  v6 = nodeCopy;
  v43 = v6;
  objc_copyWeak(&v44, &location);
  objc_msgSend_addExecutionBlock_(v37, v7, v42);
  v9 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v8, @"serialize slideNode:%p", v6);
  objc_msgSend_setName_(v37, v10, v9);

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v13 = objc_msgSend_operations(self->_preCacheBackgroundQueue, v11, v12);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v38, v46, 16);
  if (v15)
  {
    v16 = *v39;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v39 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v38 + 1) + 8 * i);
        objc_opt_class();
        v19 = TSUDynamicCast();
        v22 = v19;
        if (v19)
        {
          v23 = objc_msgSend_slideNode(v19, v20, v21);
          v24 = v23 == v6;

          if (v24)
          {
            if (objc_msgSend_type(v22, v20, v21) == 2)
            {

              goto LABEL_19;
            }

            objc_msgSend_cancel(v22, v25, v26);
            objc_msgSend_addDependency_(v37, v27, v18);
          }
        }

        v30 = objc_msgSend_previousSkippingHidden(v6, v20, v21);
        if (v22)
        {
          v31 = objc_msgSend_slideNode(v22, v28, v29);
          v32 = v31 == v30;

          if (v32)
          {
            objc_msgSend_addDependency_(v37, v33, v18);
          }
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v34, &v38, v46, 16);
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  objc_msgSend_addOperation_(self->_preCacheBackgroundQueue, v35, v37);
LABEL_19:
  objc_destroyWeak(&v44);

  objc_destroyWeak(&location);
}

- (void)p_scheduleSerializeExtraSlideNodes
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_275DE16A0;
  block[3] = &unk_27A697B20;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)p_serializeExtraSlideNodes
{
  v25 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_preCachingStateLock);
  v3 = self->_currentSlideNode;
  v6 = objc_msgSend_copy(self->_slideNodesInMemorySet, v4, v5);
  os_unfair_lock_unlock(&self->_preCachingStateLock);
  if (v3)
  {
    if (KNAnimatedTextureManagerCat_init_token != -1)
    {
      sub_275E5B660();
    }

    v8 = objc_msgSend_p_slideNodesToCacheAroundCurrentSlideNode_shouldIncludeExtraSlideAtEnd_(self, v7, v3, 1);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v6;
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v20, v24, 16);
    if (v11)
    {
      v13 = v11;
      v14 = 0;
      v15 = *v21;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v9);
          }

          v17 = *(*(&v20 + 1) + 8 * i);
          if ((objc_msgSend_containsObject_(v8, v12, v17, v20) & 1) == 0)
          {
            objc_msgSend_p_serializeTexturesForSlideNode_(self, v12, v17);
            ++v14;
          }
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v20, v24, 16);
      }

      while (v13);

      if (v14 >= 2)
      {
        objc_msgSend_waitUntilAllOperationsAreFinished(self->_preCacheBackgroundQueue, v18, v19);
      }
    }

    else
    {
    }
  }
}

- (void)evictCaches
{
  if (KNAnimatedTextureManagerCat_init_token != -1)
  {
    sub_275E5B674();
  }

  objc_msgSend_p_cancelAllOperations(self, a2, v2);
  objc_msgSend_p_waitUntilAllOperationsAreFinished(self, v4, v5);
  objc_msgSend_evictInMemoryCache(self, v6, v7);

  MEMORY[0x2821F9670](self, sel_evictPersistentCache, v8);
}

- (void)p_didReceiveMemoryWarning
{
  v22 = *MEMORY[0x277D85DE8];
  if (KNAnimatedTextureManagerCat_init_token != -1)
  {
    sub_275E5B688();
  }

  v4 = objc_msgSend_p_stopPreCachingIfStarted(self, a2, v2);
  os_unfair_lock_lock(&self->_preCachingStateLock);
  self->_isPreCachingActive = v4;
  v7 = objc_msgSend_copy(self->_slideNodesInMemorySet, v5, v6);
  v8 = self->_currentSlideNode;
  os_unfair_lock_unlock(&self->_preCachingStateLock);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v7;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v17, v21, 16);
  if (v11)
  {
    v13 = v11;
    v14 = *v18;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v17 + 1) + 8 * i);
        if (v16 != v8)
        {
          objc_msgSend_p_serializeTexturesForSlideNode_(self, v12, v16, v17);
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v17, v21, 16);
    }

    while (v13);
  }
}

@end