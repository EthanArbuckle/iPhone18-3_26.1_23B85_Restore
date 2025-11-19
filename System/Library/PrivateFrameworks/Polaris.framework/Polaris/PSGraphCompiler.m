@interface PSGraphCompiler
+ (id)deadlineThresholdsForCriticality:(unint64_t)a3;
+ (void)populateOptsMetadataType:(PSResourceManagerOptions *)a3 forProviderType:(int)a4;
+ (void)populateWriterOpts:(PSResourceManagerOptions *)a3 forKey:(id)a4 withCapacity:(unint64_t)a5 forGraph:(id)a6 withResStream:(id)a7 withContext:(id)a8 retainedBufferIndexers:(id)a9 withGSM:(ps_gsm_s *)a10;
- (BOOL)checkForBufferSyncGroupedSources:(id)a3 intermediateWaitSources:(id)a4 graph:(id)a5;
- (BOOL)createCadenceGroupedTriggerForGraph:(id)a3 withProducerOutputRates:(id)a4 withTransitionBlock:(id)a5;
- (BOOL)createCadenceGroupedTriggerForGraph:(id)a3 withTransitionBlock:(id)a4;
- (BOOL)getDropFramesOptionForKey:(id)a3 options:(ps_task_output_resource_options_s *)a4;
- (BOOL)getStreamOptionsForKey:(id)a3 options:(ps_input_resource_options_s *)a4;
- (BOOL)isCameraDomain:(id)a3 withContext:(id)a4;
- (BOOL)setupCadenceGroupedTriggerInfoForGraph:(id)a3 withProducerOutputRates:(id)a4 withTransitionBlock:(id)a5 withGraphInfoDict:(id)a6;
- (BOOL)setupForCadenceGroupedTriggerForGraph:(id)a3 withTransitionBlock:(id)a4 withGraphInfo:(id)a5 withGraphSetInfo:(id)a6;
- (BOOL)setupLegacyGroupedTriggerInfoForGraph:(id)a3 withProducerOutputRates:(id)a4 withTransitionBlock:(id)a5 withGraphInfoDict:(id)a6;
- (BOOL)shouldUseSharedTriggerForGraph:(id)a3 withTransitionBlock:(id)a4;
- (BOOL)transition:(id)a3 addedResources:(id *)a4 removedResources:(id *)a5;
- (BOOL)validOffsetForGraph:(id)a3 inputs:(id)a4 highestStride:(unsigned int *)a5 desiredOffset:(unsigned int *)a6;
- (PSGraphCompiler)initWithTransitionManager:(id)a3 withContext:(id)a4 withSystemGraphClient:(id)a5 withComputeDevices:(id)a6 withPLSDevice:(id)a7 withPRMManager:(PSResourceManager *)a8;
- (PSTransitionManager)transitionManager;
- (PSTransitionMonitor)transitionMonitor;
- (id)createMtlCommandQueueBestEffort;
- (id)createMtlCommandQueueRealTime;
- (id)createWorkgroupIntervalForGraph:(id)a3;
- (id)createWorkgroupIntervalForThreadPool:(ps_exec_shared_thread_pool_s *)a3;
- (id)extractLocalSystemSourceKeys:(id)a3;
- (id)filterANEWaitResources:(id)a3 withGraph:(id)a4;
- (id)filterNonANEWaitResources:(id)a3 withGraph:(id)a4;
- (id)generateDependencyGraphWithClientGraph:(id)a3;
- (id)getANEWaitResources:(id)a3;
- (id)getAddedInputsWithOldGraphs:(id)a3 withNewGraphs:(id)a4;
- (id)getAddedOutputsWithOldGraphs:(id)a3 withNewGraphs:(id)a4;
- (id)getAllInputsForGraph:(id)a3;
- (id)getAllInputsForGraphs:(id)a3;
- (id)getAllLocallyProducedOutputsForGraphs:(id)a3;
- (id)getAllOutputsForGraphs:(id)a3;
- (id)getAllResourcesForGraphs:(id)a3;
- (id)getAllStridedInputsForGraph:(id)a3;
- (id)getAllStridedInputsForGraphs:(id)a3;
- (id)getGraphTaskHash:(id)a3 withTask:(id)a4;
- (id)getIntermediateSources:(id)a3 withTransitionBlock:(id)a4;
- (id)getPSResourceKeysInitializing;
- (id)getPolicyWaitResources:(id)a3;
- (id)getProducerOutputRates:(id)a3;
- (id)getReaderResourcesForGraphs:(id)a3;
- (id)getRemovedInputsWithOldGraphs:(id)a3 withNewGraphs:(id)a4;
- (id)getRemovedOutputsWithOldGraphs:(id)a3 withNewGraphs:(id)a4;
- (id)getResourceKeys:(id)a3;
- (id)getSourceTaskOutputResourcesForGraphs:(id)a3;
- (id)getStridedGSTWaitSources:(id)a3 transitionBlock:(id)a4;
- (id)getStridedIntermediateSources:(id)a3 withTransitionBlock:(id)a4;
- (id)getStridedSystemSources:(id)a3 withTransitionBlock:(id)a4;
- (id)getSystemSources:(id)a3 withTransitionBlock:(id)a4 withIntermediateSources:(id)a5;
- (id)getThreadPoolHashIDForGraph:(id)a3;
- (id)getUniqueResourcesFromGraphs:(id)a3 notPresentInGraphs:(id)a4;
- (id)getWriterResourcesForGraphs:(id)a3;
- (id)matchInputsToGSTStrides:(id)a3;
- (id)matchInputsToSystemGraphRequest:(id)a3;
- (id)systemGraphResourceRequest:(id)a3;
- (id)systemGraphResourceWithStridesRequest:(id)a3;
- (id)threadPoolExecPathToString:(ps_exec_shared_thread_pool_s *)a3;
- (id)transitionAddedResources:(id)a3;
- (unint64_t)getMaxRateForKey:(id)a3 forGraphs:(id)a4;
- (unint64_t)populateBufferExpiryOffset:(ps_task_input_resource_s *)a3 forKey:(id)a4;
- (void)addGraphToThreadPool:(id)a3;
- (void)createBlockFromTask:(void *)a3 withGraph:(void *)a4 withExecSubgraph:(uint64_t)a5 withMtlQueue:(void *)a6 withGraphStringId:(uint64_t)a7;
- (void)createExecSubGraphWithFreeSlot:(uint64_t)a3 withClientGraph:(void *)a4;
- (void)createGroupedTriggersForTransitionBlock:(id)a3;
- (void)createGroupedTriggersOverXPCForTransitionBlock:(id)a3;
- (void)createLegacyGroupedTriggerForGraph:(id)a3 withProducerOutputRates:(id)a4 withTransitionBlock:(id)a5;
- (void)createPRMInstancesForTransitionBlock:(id)a3;
- (void)createReadersForTransitionBlock:(id)a3;
- (void)createSourceTasksForTransitionBlock:(id)a3;
- (void)createWritersForTransitionBlock:(id)a3;
- (void)dealloc;
- (void)deinitializeLocalSystemSourcesForTransitionBlock:(id)a3;
- (void)destroyAllThreadPools;
- (void)destroyGroupedTriggersForTransitionBlock:(id)a3;
- (void)destroyPRMInstancesForTransitionBlock:(id)a3;
- (void)destroyReadersForTransitionBlock:(id)a3;
- (void)destroyWritersForTransitionBlock:(id)a3;
- (void)initThreadPoolForGraph:(id)a3 withExecutorGraph:(ps_exec_graph_s *)a4;
- (void)initializeComplexityUpdateHandler:(void *)a3 withExecSubgraph:(uint64_t)a4 withExecBlock:(uint64_t)a5;
- (void)initializeExecSubGraphProperties:(uint64_t)a3 withClientGraph:(void *)a4;
- (void)initializeExecSubGraphTaskDependencies:(uint64_t)a3 withClientGraph:(void *)a4;
- (void)initializeExecSubGraphTasks:(uint64_t)a3 withClientGraph:(void *)a4;
- (void)initializeGroupedTriggersForSubgraph:(uint64_t)a3 withClientGraph:(void *)a4;
- (void)initializeGroupedTriggersForTransitionBlock:(id)a3;
- (void)initializeLocalSystemSourcesForTransitionBlock:(id)a3;
- (void)initializeSubgraphLiveness:(uint64_t)a3 withRelativeDeadline:(uint64_t)a4 withClientGraph:(void *)a5;
- (void)notifySystemGraphTransitionCompleted:(id)a3;
- (void)performWithKeytoWriterLock:(id)a3;
- (void)populateReaderOpts:(PSResourceManagerOptions *)a3 forKey:(id)a4 forGraph:(id)a5 withCapacity:(unint64_t)a6 withForwardingCount:(unint64_t)a7;
- (void)removeGraphFromThreadPool:(id)a3;
- (void)removeGroupedTriggersForGraphs:(id)a3;
- (void)removeMTLCommandQueuesForTransitionBlock:(id)a3;
- (void)removeSourceTasksForTransitionBlock:(id)a3;
- (void)removeWriterForKey:(id)a3;
- (void)resolveStreamDomainsForTransitionBlock:(id)a3;
- (void)resolveTimerStreamsForTransitionBlock:(id)a3;
- (void)setBufferDepthsForTransitionBlock:(id)a3;
- (void)setThreadPoolIDForGraph:(id)a3 withTransitionBlock:(id)a4;
- (void)setWriterForKey:(id)a3 writer:(id)a4;
- (void)setupForCadenceGroupedTriggerForGraph:(id)a3 withSources:(id)a4 withOffset:(unsigned int)a5 withGraphInfo:(id)a6 withGraphSetInfo:(id)a7;
- (void)setupForLegacyGroupedTriggerForGraph:(id)a3 withProducerOutputRates:(id)a4 withTransitionBlock:(id)a5 withGraphInfo:(id)a6 withGraphSetInfo:(id)a7;
- (void)setupGSMSourceDescriptors:(id *)a3 storageModes:(unsigned __int8 *)a4 graphName:(id)a5 graphFrequencey:(unint64_t)a6 systemSources:(id)a7 intermediateSources:(id)a8 producedOutputRates:(id)a9 device:(id)a10 context:(id)a11 syncedBuffers:(BOOL)a12;
- (void)startLocalSystemSources:(id)a3;
- (void)stopLocalSystemSources:(id)a3;
- (void)validateCriticality:(unint64_t)a3 withCriticalityEntitlement:(unint64_t)a4 withGraph:(id)a5;
- (void)withWriterForKey:(id)a3 perform:(id)a4;
@end

@implementation PSGraphCompiler

- (PSGraphCompiler)initWithTransitionManager:(id)a3 withContext:(id)a4 withSystemGraphClient:(id)a5 withComputeDevices:(id)a6 withPLSDevice:(id)a7 withPRMManager:(PSResourceManager *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v63.receiver = self;
  v63.super_class = PSGraphCompiler;
  v19 = [(PSGraphCompiler *)&v63 init];
  if (v19)
  {
    v20 = objc_alloc_init(MEMORY[0x277CCAB00]);
    graphGSTMap = v19->_graphGSTMap;
    v19->_graphGSTMap = v20;

    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    keysInitializing = v19->_keysInitializing;
    v19->_keysInitializing = v22;

    v24 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    keysInitializingLock = v19->_keysInitializingLock;
    v19->_keysInitializingLock = v24;

    v26 = [v17 mtlDevice];
    mtlDevice = v19->_mtlDevice;
    v19->_mtlDevice = v26;

    v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
    retainedSourceWriterBlocks = v19->_retainedSourceWriterBlocks;
    v19->_retainedSourceWriterBlocks = v28;

    v30 = objc_alloc_init(MEMORY[0x277CCAB00]);
    retainedReaderBlocks = v19->_retainedReaderBlocks;
    v19->_retainedReaderBlocks = v30;

    v32 = objc_alloc_init(MEMORY[0x277CCAB00]);
    retainedWriterBlocks = v19->_retainedWriterBlocks;
    v19->_retainedWriterBlocks = v32;

    v34 = objc_alloc_init(MEMORY[0x277CBEB38]);
    retainedBufferIndexers = v19->_retainedBufferIndexers;
    v19->_retainedBufferIndexers = v34;

    v36 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:512 valueOptions:0];
    retainedMtlQueues = v19->_retainedMtlQueues;
    v19->_retainedMtlQueues = v36;

    objc_storeWeak(&v19->_transitionManager, v14);
    [v14 transitionMonitor];
    v62 = v18;
    v39 = v38 = v15;
    objc_storeWeak(&v19->_transitionMonitor, v39);

    objc_storeStrong(&v19->_device, a7);
    objc_storeStrong(&v19->_systemGraphClient, a5);
    objc_storeStrong(&v19->_context, a4);
    v19->_nextExecBlockTraceKey = 0;
    v19->_synchronizer = ps_synchronizer_init();
    v19->_deterministicReplay = 0;
    v40 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    priorGraphDomains = v19->_priorGraphDomains;
    v19->_priorGraphDomains = v40;

    v42 = objc_alloc_init(MEMORY[0x277CBEB38]);
    taggedWorkgroups = v19->_taggedWorkgroups;
    v19->_taggedWorkgroups = v42;

    v44 = objc_alloc_init(MEMORY[0x277CBEB38]);
    activeThreadPools = v19->_activeThreadPools;
    v19->_activeThreadPools = v44;

    v46 = objc_alloc_init(MEMORY[0x277CBEB38]);
    keytoWriterMap = v19->_keytoWriterMap;
    v19->_keytoWriterMap = v46;

    *&v19->_taggedWorkgroupsLock._os_unfair_lock_opaque = 0;
    v19->_prm_mgr = a8;
    v48 = objc_alloc_init(MEMORY[0x277CCAB00]);
    prmTaskResources = v19->_prmTaskResources;
    v19->_prmTaskResources = v48;

    v50 = objc_alloc_init(MEMORY[0x277CCAB00]);
    prmGroupedSourcePools = v19->_prmGroupedSourcePools;
    v19->_prmGroupedSourcePools = v50;

    v52 = [PSLocalStreamManager alloc];
    context = v19->_context;
    WeakRetained = objc_loadWeakRetained(&v19->_transitionManager);
    device = v19->_device;
    v56 = WeakRetained;
    v57 = [v56 executionSession];
    v58 = -[PSLocalStreamManager initWithContext:withTransitionManager:withDevice:withGSM:withPRMManager:](v52, "initWithContext:withTransitionManager:withDevice:withGSM:withPRMManager:", context, v56, device, [v57 gsm], v19->_prm_mgr);

    localStreamManager = v19->_localStreamManager;
    v19->_localStreamManager = v58;
    v15 = v38;
    v18 = v62;

    prm_mgr = v19->_prm_mgr;
    if (prm_mgr)
    {
      ps_prm_register_thread_creator(prm_mgr, _prm_thread_creator, 0);
    }
  }

  return v19;
}

- (void)setBufferDepthsForTransitionBlock:(id)a3
{
  v108 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v57 = v4;
  obj = [v4 addedGraphs];
  v60 = [obj countByEnumeratingWithState:&v93 objects:v107 count:16];
  if (v60)
  {
    v59 = *v94;
    do
    {
      v6 = 0;
      do
      {
        if (*v94 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v93 + 1) + 8 * v6);
        v89 = 0u;
        v90 = 0u;
        v91 = 0u;
        v92 = 0u;
        v61 = v6;
        v62 = v7;
        v63 = [v7 tasks];
        v66 = [v63 countByEnumeratingWithState:&v89 objects:v106 count:16];
        if (v66)
        {
          v64 = *v90;
          do
          {
            for (i = 0; i != v66; ++i)
            {
              if (*v90 != v64)
              {
                objc_enumerationMutation(v63);
              }

              v9 = *(*(&v89 + 1) + 8 * i);
              v85 = 0u;
              v86 = 0u;
              v87 = 0u;
              v88 = 0u;
              v10 = [v9 outputs];
              v11 = [v10 countByEnumeratingWithState:&v85 objects:v105 count:16];
              if (v11)
              {
                v12 = v11;
                v13 = *v86;
                do
                {
                  for (j = 0; j != v12; ++j)
                  {
                    if (*v86 != v13)
                    {
                      objc_enumerationMutation(v10);
                    }

                    v15 = *(*(&v85 + 1) + 8 * j);
                    v16 = [v15 retainedInputs];
                    v17 = [v16 count];

                    if (!v17)
                    {
                      context = self->_context;
                      v19 = [v15 resourceKey];
                      v20 = [(PSContext *)context resourceStreamForKey:v19];

                      if (v20)
                      {
                        [v5 addObject:v20];
                      }
                    }
                  }

                  v12 = [v10 countByEnumeratingWithState:&v85 objects:v105 count:16];
                }

                while (v12);
              }
            }

            v66 = [v63 countByEnumeratingWithState:&v89 objects:v106 count:16];
          }

          while (v66);
        }

        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v65 = [v62 sourceTasks];
        v21 = [v65 countByEnumeratingWithState:&v81 objects:v104 count:16];
        if (v21)
        {
          v22 = v21;
          v67 = *v82;
          do
          {
            for (k = 0; k != v22; ++k)
            {
              if (*v82 != v67)
              {
                objc_enumerationMutation(v65);
              }

              v24 = *(*(&v81 + 1) + 8 * k);
              v77 = 0u;
              v78 = 0u;
              v79 = 0u;
              v80 = 0u;
              v25 = [v24 outputs];
              v26 = [v25 countByEnumeratingWithState:&v77 objects:v103 count:16];
              if (v26)
              {
                v27 = v26;
                v28 = *v78;
                do
                {
                  for (m = 0; m != v27; ++m)
                  {
                    if (*v78 != v28)
                    {
                      objc_enumerationMutation(v25);
                    }

                    v30 = self->_context;
                    v31 = [*(*(&v77 + 1) + 8 * m) resourceKey];
                    v32 = [(PSContext *)v30 resourceStreamForKey:v31];

                    if (v32)
                    {
                      [v5 addObject:v32];
                    }
                  }

                  v27 = [v25 countByEnumeratingWithState:&v77 objects:v103 count:16];
                }

                while (v27);
              }
            }

            v22 = [v65 countByEnumeratingWithState:&v81 objects:v104 count:16];
          }

          while (v22);
        }

        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v33 = [v62 writers];
        v34 = [v33 countByEnumeratingWithState:&v73 objects:v102 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v74;
          do
          {
            for (n = 0; n != v35; ++n)
            {
              if (*v74 != v36)
              {
                objc_enumerationMutation(v33);
              }

              v38 = self->_context;
              v39 = [*(*(&v73 + 1) + 8 * n) output];
              v40 = [v39 resourceKey];
              v41 = [(PSContext *)v38 resourceStreamForKey:v40];

              if (v41)
              {
                [v5 addObject:v41];
              }
            }

            v35 = [v33 countByEnumeratingWithState:&v73 objects:v102 count:16];
          }

          while (v35);
        }

        v6 = v61 + 1;
      }

      while (v61 + 1 != v60);
      v60 = [obj countByEnumeratingWithState:&v93 objects:v107 count:16];
    }

    while (v60);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v42 = v5;
  v43 = [v42 countByEnumeratingWithState:&v69 objects:v101 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v70;
    do
    {
      for (ii = 0; ii != v44; ++ii)
      {
        if (*v70 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = *(*(&v69 + 1) + 8 * ii);
        if ([v47 totalBufferCountHint] && objc_msgSend(v47, "reservedForReaderBufferCountHint"))
        {
          v48 = [v47 totalBufferCountHint];
          v49 = v48 - [v47 reservedForReaderBufferCountHint];
          v50 = [v47 reservedForReaderBufferCountHint];
          v51 = [v47 key];
          v68 = 0;
          LOBYTE(v49) = [PSConstants setBufferDepthsForKey:v51 writerDepth:v49 readerDepth:v50 error:&v68];
          v52 = v68;

          if ((v49 & 1) == 0)
          {
            v53 = __PLSLogSharedInstance();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              v54 = [v47 key];
              v55 = [v52 description];
              *buf = 138412546;
              v98 = v54;
              v99 = 2112;
              v100 = v55;
              _os_log_impl(&dword_25EA3A000, v53, OS_LOG_TYPE_ERROR, "Error when applying buffer depth hint for %@: %@", buf, 0x16u);
            }
          }
        }
      }

      v44 = [v42 countByEnumeratingWithState:&v69 objects:v101 count:16];
    }

    while (v44);
  }

  v56 = *MEMORY[0x277D85DE8];
}

- (void)resolveTimerStreamsForTransitionBlock:(id)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = [a3 addedGraphs];
  v30 = [obj countByEnumeratingWithState:&v49 objects:v56 count:16];
  if (v30)
  {
    v29 = *v50;
    do
    {
      v4 = 0;
      do
      {
        if (*v50 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = v4;
        v5 = *(*(&v49 + 1) + 8 * v4);
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v32 = [v5 tasks];
        v34 = [v32 countByEnumeratingWithState:&v45 objects:v55 count:16];
        if (v34)
        {
          v33 = *v46;
          do
          {
            v6 = 0;
            do
            {
              if (*v46 != v33)
              {
                objc_enumerationMutation(v32);
              }

              v35 = v6;
              v7 = *(*(&v45 + 1) + 8 * v6);
              v41 = 0u;
              v42 = 0u;
              v43 = 0u;
              v44 = 0u;
              v8 = [v7 inputs];
              v9 = [v8 countByEnumeratingWithState:&v41 objects:v54 count:16];
              if (v9)
              {
                v10 = v9;
                v11 = *v42;
                do
                {
                  for (i = 0; i != v10; ++i)
                  {
                    if (*v42 != v11)
                    {
                      objc_enumerationMutation(v8);
                    }

                    v13 = *(*(&v41 + 1) + 8 * i);
                    v14 = [v13 resourceKey];
                    v15 = [v14 isEqualToString:@"timer"];

                    if (v15)
                    {
                      v16 = -[PLSDevice populateTimerContextForFrequency:](self->_device, "populateTimerContextForFrequency:", [v5 frequency]);
                      [v13 setResolvedResourceKey:v16];
                    }
                  }

                  v10 = [v8 countByEnumeratingWithState:&v41 objects:v54 count:16];
                }

                while (v10);
              }

              v6 = v35 + 1;
            }

            while (v35 + 1 != v34);
            v34 = [v32 countByEnumeratingWithState:&v45 objects:v55 count:16];
          }

          while (v34);
        }

        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v36 = [v5 readers];
        v17 = [v36 countByEnumeratingWithState:&v37 objects:v53 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v38;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v38 != v19)
              {
                objc_enumerationMutation(v36);
              }

              v21 = *(*(&v37 + 1) + 8 * j);
              v22 = [v21 input];
              v23 = [v22 resourceKey];
              v24 = [v23 isEqualToString:@"timer"];

              if (v24)
              {
                v25 = -[PLSDevice populateTimerContextForFrequency:](self->_device, "populateTimerContextForFrequency:", [v5 frequency]);
                v26 = [v21 input];
                [v26 setResolvedResourceKey:v25];
              }
            }

            v18 = [v36 countByEnumeratingWithState:&v37 objects:v53 count:16];
          }

          while (v18);
        }

        v4 = v31 + 1;
      }

      while (v31 + 1 != v30);
      v30 = [obj countByEnumeratingWithState:&v49 objects:v56 count:16];
    }

    while (v30);
  }

  v27 = *MEMORY[0x277D85DE8];
}

+ (id)deadlineThresholdsForCriticality:(unint64_t)a3
{
  v19[2] = *MEMORY[0x277D85DE8];
  v4 = +[PLSSettings currentSettings];
  v5 = [v4 iterationsToTrackForDeadlineMisses];

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v6 = +[PLSSettings currentSettings];
      v7 = [v6 bestEffortDeadlineThreshold];
      goto LABEL_10;
    }

    if (a3 == 3)
    {
      v6 = +[PLSSettings currentSettings];
      v7 = [v6 applicationSupportDeadlineThreshold];
      goto LABEL_10;
    }

LABEL_13:
    v14 = [PSGraphCompiler deadlineThresholdsForCriticality:?];
    return [(PSGraphCompiler *)v14 systemGraphResourceRequest:v15, v16];
  }

  if (!a3)
  {
    v6 = +[PLSSettings currentSettings];
    v7 = [v6 realTimeDeadlineThreshold];
    goto LABEL_10;
  }

  if (a3 != 1)
  {
    goto LABEL_13;
  }

  v6 = +[PLSSettings currentSettings];
  v7 = [v6 criticalDeadlineThreshold];
LABEL_10:
  v8 = v7;

  v18[0] = @"deadline-miss-threshold";
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
  v18[1] = @"iterations-to-track";
  v19[0] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
  v19[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)systemGraphResourceRequest:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v7 = [v4 preTransitionGraphs];
  v8 = [v4 postTransitionGraphs];
  v9 = [(PSGraphCompiler *)self getAddedInputsWithOldGraphs:v7 withNewGraphs:v8];

  v10 = [v4 postTransitionGraphs];
  v11 = [(PSGraphCompiler *)self getAllLocallyProducedOutputsForGraphs:v10];

  v43 = v9;
  v12 = [MEMORY[0x277CBEB58] setWithSet:v9];
  v42 = v11;
  [v12 minusSet:v11];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v50;
    do
    {
      v17 = 0;
      do
      {
        if (*v50 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v49 + 1) + 8 * v17);
        v19 = [(PSContext *)self->_context resourceStreamForKey:v18];
        v20 = v19;
        if (v19)
        {
          if ([v19 options] != 2)
          {
            goto LABEL_9;
          }

LABEL_8:
          [v5 addObject:v18];
          goto LABEL_9;
        }

        if (![(PLSDevice *)self->_device isTimer:v18])
        {
          goto LABEL_8;
        }

LABEL_9:

        ++v17;
      }

      while (v15 != v17);
      v21 = [v13 countByEnumeratingWithState:&v49 objects:v54 count:16];
      v15 = v21;
    }

    while (v21);
  }

  v22 = [v4 preTransitionGraphs];
  v23 = [v4 postTransitionGraphs];
  v24 = [(PSGraphCompiler *)self getRemovedInputsWithOldGraphs:v22 withNewGraphs:v23];

  v44 = v4;
  v25 = [v4 preTransitionGraphs];
  v26 = [(PSGraphCompiler *)self getAllLocallyProducedOutputsForGraphs:v25];

  v41 = v24;
  v27 = [MEMORY[0x277CBEB58] setWithSet:v24];
  v40 = v26;
  [v27 minusSet:v26];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v28 = v27;
  v29 = [v28 countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (!v29)
  {
    goto LABEL_27;
  }

  v30 = v29;
  v31 = *v46;
  do
  {
    v32 = 0;
    do
    {
      if (*v46 != v31)
      {
        objc_enumerationMutation(v28);
      }

      v33 = *(*(&v45 + 1) + 8 * v32);
      v34 = [(PSContext *)self->_context resourceStreamForKey:v33];
      v35 = v34;
      if (v34)
      {
        if ([v34 options] != 2)
        {
          goto LABEL_22;
        }

LABEL_21:
        [v6 addObject:v33];
        goto LABEL_22;
      }

      if (![(PLSDevice *)self->_device isTimer:v33])
      {
        goto LABEL_21;
      }

LABEL_22:

      ++v32;
    }

    while (v30 != v32);
    v36 = [v28 countByEnumeratingWithState:&v45 objects:v53 count:16];
    v30 = v36;
  }

  while (v36);
LABEL_27:

  v37 = objc_alloc_init(MEMORY[0x277D3E820]);
  [v37 setResourcesWanted:v5];
  [v37 setResourcesNoLongerWanted:v6];

  v38 = *MEMORY[0x277D85DE8];

  return v37;
}

- (id)transitionAddedResources:(id)a3
{
  v8 = 0;
  v4 = [(PSGraphCompiler *)self transition:a3 addedResources:&v8 removedResources:0];
  v5 = v8;
  v6 = 0;
  if (v4)
  {
    v6 = [(PSGraphCompiler *)self getResourceKeys:v5];
  }

  return v6;
}

- (BOOL)transition:(id)a3 addedResources:(id *)a4 removedResources:(id *)a5
{
  v28 = a5;
  v35 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = [v7 addedGraphs];
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v30 + 1) + 8 * i) setCurrentSystemStride:{0, v28}];
      }

      v10 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v10);
  }

  v13 = [v7 addedGraphs];
  v14 = [(PSGraphCompiler *)self getAllStridedInputsForGraphs:v13];

  v15 = [v7 removedGraphs];
  v16 = [(PSGraphCompiler *)self getAllStridedInputsForGraphs:v15];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__PSGraphCompiler_transition_addedResources_removedResources___block_invoke;
  aBlock[3] = &unk_279A48358;
  aBlock[4] = self;
  v17 = _Block_copy(aBlock);
  v18 = [v14 copy];
  v19 = [v7 postTransitionGraphs];
  v20 = [(PSGraphCompiler *)self getAllLocallyProducedOutputsForGraphs:v19];

  [v18 filterOutResourceKeys:v20];
  [v18 filterWithBlock:v17];
  v21 = [v16 copy];
  v22 = [v7 preTransitionGraphs];
  v23 = [(PSGraphCompiler *)self getAllLocallyProducedOutputsForGraphs:v22];

  [v21 filterOutResourceKeys:v23];
  [v21 filterWithBlock:v17];
  if (a4)
  {
    v24 = v18;
    *a4 = v18;
  }

  if (v28)
  {
    v25 = v21;
    *v28 = v21;
  }

  v26 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __62__PSGraphCompiler_transition_addedResources_removedResources___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) context];
  v5 = [v3 resourceKey];
  v6 = [v4 resourceStreamForKey:v5];

  if (v6)
  {
    v7 = [v6 options] == 2;
  }

  else
  {
    v8 = [*(a1 + 32) device];
    v9 = [v3 resourceKey];
    v10 = [v8 isTimer:v9];

    v7 = v10 ^ 1u;
  }

  return v7;
}

- (id)systemGraphResourceWithStridesRequest:(id)a3
{
  v15 = 0;
  v16 = 0;
  v4 = [(PSGraphCompiler *)self transition:a3 addedResources:&v16 removedResources:&v15];
  v5 = v16;
  v6 = v15;
  v7 = 0;
  if (v4)
  {
    v7 = objc_alloc_init(MEMORY[0x277D3E820]);
    v8 = [(PSGraphCompiler *)self matchInputsToSystemGraphRequest:v5];
    v9 = [v8 flattenedRequestArray];
    [v7 setResourcesWantedWithStrides:v9];

    v10 = [(PSGraphCompiler *)self getResourceKeys:v5];
    [v7 setResourcesWanted:v10];

    v11 = [(PSGraphCompiler *)self matchInputsToSystemGraphRequest:v6];
    v12 = [v11 flattenedRequestArray];
    [v7 setResourcesNoLongerWantedWithStrides:v12];

    v13 = [(PSGraphCompiler *)self getResourceKeys:v6];
    [v7 setResourcesNoLongerWanted:v13];
  }

  return v7;
}

- (id)matchInputsToSystemGraphRequest:(id)a3
{
  v77 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CCA940]);
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v6 = v4;
  v57 = [v6 countByEnumeratingWithState:&v64 objects:v76 count:16];
  if (!v57)
  {
    goto LABEL_39;
  }

  v7 = *v65;
  v56 = *v65;
  v53 = self;
  while (2)
  {
    for (i = 0; i != v57; ++i)
    {
      if (*v65 != v7)
      {
        objc_enumerationMutation(v6);
      }

      v9 = *(*(&v64 + 1) + 8 * i);
      v10 = [(PSGraphCompiler *)self context];
      v11 = [v9 resourceKey];
      v12 = [v10 resourceStreamForKey:v11];

      if (!v12)
      {
        v43 = __PLSLogSharedInstance();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v44 = [v9 resourceKey];
          v45 = [v44 UTF8String];
          *buf = 136315138;
          v69 = v45;
          _os_log_impl(&dword_25EA3A000, v43, OS_LOG_TYPE_ERROR, "Stream %s should already be in the context!", buf, 0xCu);
        }

        goto LABEL_39;
      }

      v13 = [v12 supportedStrides];
      v14 = [v13 allKeys];

      v58 = v14;
      v59 = v12;
      if ([v14 count])
      {
        if ([v9 inputType])
        {
          [v9 resourceKey];
          v16 = v15 = self;
          v17 = [v12 defaultStride];
          v18 = [v9 inputType];
          [v9 graph];
          v20 = v19 = i;
          v21 = [PSResourceRequest requestWithKey:v16 stride:v17 inputType:v18 graph:v20];

          i = v19;
          v22 = v16;
          self = v15;
LABEL_10:
          v7 = v56;
          goto LABEL_25;
        }

        v22 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:0];
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v74 = v22;
        v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v74 count:1];
        v17 = [v14 sortedArrayUsingDescriptors:v26];

        v21 = [v17 countByEnumeratingWithState:&v60 objects:v75 count:16];
        if (!v21)
        {
          goto LABEL_10;
        }

        v54 = v22;
        v55 = i;
        v27 = *v61;
        while (2)
        {
          for (j = 0; j != v21; j = j + 1)
          {
            if (*v61 != v27)
            {
              objc_enumerationMutation(v17);
            }

            v29 = *(*(&v60 + 1) + 8 * j);
            v30 = [v9 stride];
            v31 = [v30 unsignedIntValue];
            v32 = v31 % [v29 unsignedIntValue];

            if (!v32)
            {
              v33 = [v9 resourceKey];
              v34 = [v9 inputType];
              v35 = [v9 graph];
              v21 = [PSResourceRequest requestWithKey:v33 stride:v29 inputType:v34 graph:v35];

              goto LABEL_24;
            }
          }

          v21 = [v17 countByEnumeratingWithState:&v60 objects:v75 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }

LABEL_24:
        self = v53;
        i = v55;
        v7 = v56;
        v22 = v54;
      }

      else
      {
        v23 = __PLSLogSharedInstance();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v24 = [v9 resourceKey];
          *buf = 138477827;
          v69 = v24;
          _os_log_impl(&dword_25EA3A000, v23, OS_LOG_TYPE_DEBUG, "Stream %{private}@ requested but doesn't support strides - assuming this is a legacy stream request...", buf, 0xCu);
        }

        v22 = [v9 resourceKey];
        v25 = [v9 inputType];
        v17 = [v9 graph];
        v21 = [PSResourceRequest requestWithKey:v22 stride:0 inputType:v25 graph:v17];
      }

LABEL_25:

      if (v21)
      {
        v36 = v59;
        if ([v6 countForObject:v9])
        {
          v37 = 0;
          do
          {
            [v5 addObject:v21];
            ++v37;
          }

          while (v37 < [v6 countForObject:v9]);
        }
      }

      else
      {
        v38 = __PLSLogSharedInstance();
        v36 = v59;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = [v59 key];
          [v9 stride];
          v41 = v40 = i;
          v42 = [v41 unsignedIntValue];
          *buf = 138412546;
          v69 = v39;
          v70 = 1024;
          LODWORD(v71) = v42;
          _os_log_impl(&dword_25EA3A000, v38, OS_LOG_TYPE_ERROR, "No matching candidate stride for %@, wanted stride %u", buf, 0x12u);

          i = v40;
        }

        v7 = v56;
      }
    }

    v57 = [v6 countByEnumeratingWithState:&v64 objects:v76 count:16];
    if (v57)
    {
      continue;
    }

    break;
  }

LABEL_39:

  v46 = [v5 totalCount];
  if (v46 == [v6 totalCount])
  {
    v47 = v5;
  }

  else
  {
    v48 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = [v6 count];
      v50 = [v5 count];
      *buf = 134218498;
      v69 = v49;
      v70 = 2048;
      v71 = v50;
      v72 = 2112;
      v73 = v5;
      _os_log_impl(&dword_25EA3A000, v48, OS_LOG_TYPE_ERROR, "Failed to match some StridedResources: input %lu, wanted %lu, wanted %@", buf, 0x20u);
    }

    v47 = 0;
  }

  v51 = *MEMORY[0x277D85DE8];

  return v47;
}

- (id)matchInputsToGSTStrides:(id)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = [v3 objectEnumerator];
  v40 = [obj countByEnumeratingWithState:&v50 objects:v60 count:16];
  if (v40)
  {
    v41 = *v51;
    v38 = v3;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v51 != v41)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v50 + 1) + 8 * v5);
      if ([v6 inputType])
      {
        [(PSGraphCompiler *)buf matchInputsToGSTStrides:v6];
      }

      v7 = [(PSGraphCompiler *)self context];
      v8 = [v6 resourceKey];
      v9 = [v7 resourceStreamForKey:v8];

      if (!v9)
      {
        break;
      }

      v10 = [v9 supportedStrides];
      v11 = [v10 allKeys];

      if (![v11 count])
      {
        v34 = __PLSLogSharedInstance();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          v35 = [v6 resourceKey];
          *buf = 138412290;
          v55 = v35;
          _os_log_impl(&dword_25EA3A000, v34, OS_LOG_TYPE_DEBUG, "Attempting to match strided GST to stream %@ without supported strides, falling back to legacy GST", buf, 0xCu);
        }

LABEL_31:
        v3 = v38;

        v27 = 0;
        goto LABEL_32;
      }

      v45 = v9;
      v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:0];
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v43 = v12;
      v58 = v12;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
      v44 = v11;
      v14 = [v11 sortedArrayUsingDescriptors:v13];

      v15 = [v14 countByEnumeratingWithState:&v46 objects:v59 count:16];
      if (!v15)
      {
LABEL_22:

LABEL_23:
        v28 = __PLSLogSharedInstance();
        v9 = v45;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          v29 = [v45 key];
          v30 = [v6 stride];
          v31 = [v30 unsignedIntValue];
          *buf = 138412546;
          v55 = v29;
          v56 = 1024;
          v57 = v31;
          _os_log_impl(&dword_25EA3A000, v28, OS_LOG_TYPE_DEBUG, "No matching candidate stride for %@, wanted stride %u, falling back to legacy GST", buf, 0x12u);
        }

        goto LABEL_31;
      }

      v16 = v15;
      v17 = *v47;
LABEL_11:
      v18 = 0;
      while (1)
      {
        if (*v47 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v46 + 1) + 8 * v18);
        v20 = [v6 stride];
        v21 = [v20 unsignedIntValue];
        v22 = v21 % [v19 unsignedIntValue];

        if (!v22)
        {
          break;
        }

        if (v16 == ++v18)
        {
          v16 = [v14 countByEnumeratingWithState:&v46 objects:v59 count:16];
          if (v16)
          {
            goto LABEL_11;
          }

          goto LABEL_22;
        }
      }

      v23 = [v6 resourceKey];
      v24 = [v6 inputType];
      v25 = [v6 graph];
      v26 = [PSResourceRequest requestWithKey:v23 stride:v19 inputType:v24 graph:v25];

      if (!v26)
      {
        goto LABEL_23;
      }

      [v4 addObject:v26];

      if (++v5 == v40)
      {
        v3 = v38;
        v40 = [obj countByEnumeratingWithState:&v50 objects:v60 count:16];
        if (v40)
        {
          goto LABEL_3;
        }

        goto LABEL_21;
      }
    }

    v9 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v32 = [v6 resourceKey];
      v33 = [v32 UTF8String];
      *buf = 136315138;
      v55 = v33;
      _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_DEBUG, "Stream %s should already be in the context, falling back to legacy GST", buf, 0xCu);
    }

    goto LABEL_31;
  }

LABEL_21:

  v27 = v4;
LABEL_32:

  v36 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)getResourceKeys:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB58] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v3 objectEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) resourceKey];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)notifySystemGraphTransitionCompleted:(id)a3
{
  v171 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v83 = v4;
  [v4 addedGraphs];
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  obj = v158 = 0u;
  v88 = [obj countByEnumeratingWithState:&v155 objects:v170 count:16];
  if (v88)
  {
    v86 = *v156;
    do
    {
      v7 = 0;
      do
      {
        if (*v156 != v86)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v155 + 1) + 8 * v7);
        v151 = 0u;
        v152 = 0u;
        v153 = 0u;
        v154 = 0u;
        v90 = v7;
        v92 = v8;
        v94 = [v8 tasks];
        v102 = [v94 countByEnumeratingWithState:&v151 objects:v169 count:16];
        if (v102)
        {
          v98 = *v152;
          do
          {
            v9 = 0;
            do
            {
              if (*v152 != v98)
              {
                objc_enumerationMutation(v94);
              }

              v106 = v9;
              v10 = *(*(&v151 + 1) + 8 * v9);
              v147 = 0u;
              v148 = 0u;
              v149 = 0u;
              v150 = 0u;
              v11 = [v10 outputs];
              v12 = [v11 countByEnumeratingWithState:&v147 objects:v168 count:16];
              if (v12)
              {
                v13 = v12;
                v14 = *v148;
                do
                {
                  for (i = 0; i != v13; ++i)
                  {
                    if (*v148 != v14)
                    {
                      objc_enumerationMutation(v11);
                    }

                    v16 = *(*(&v147 + 1) + 8 * i);
                    context = self->_context;
                    v18 = [v16 resourceKey];
                    v19 = [(PSContext *)context resourceStreamForKey:v18];

                    if ([v19 options] == 2)
                    {
                      v20 = [v16 resourceKey];
                      [v5 addObject:v20];
                    }
                  }

                  v13 = [v11 countByEnumeratingWithState:&v147 objects:v168 count:16];
                }

                while (v13);
              }

              v9 = v106 + 1;
            }

            while (v106 + 1 != v102);
            v102 = [v94 countByEnumeratingWithState:&v151 objects:v169 count:16];
          }

          while (v102);
        }

        v145 = 0u;
        v146 = 0u;
        v143 = 0u;
        v144 = 0u;
        v95 = [v92 sourceTasks];
        v103 = [v95 countByEnumeratingWithState:&v143 objects:v167 count:16];
        if (v103)
        {
          v99 = *v144;
          do
          {
            v21 = 0;
            do
            {
              if (*v144 != v99)
              {
                objc_enumerationMutation(v95);
              }

              v107 = v21;
              v22 = *(*(&v143 + 1) + 8 * v21);
              v139 = 0u;
              v140 = 0u;
              v141 = 0u;
              v142 = 0u;
              v23 = [v22 outputs];
              v24 = [v23 countByEnumeratingWithState:&v139 objects:v166 count:16];
              if (v24)
              {
                v25 = v24;
                v26 = *v140;
                do
                {
                  for (j = 0; j != v25; ++j)
                  {
                    if (*v140 != v26)
                    {
                      objc_enumerationMutation(v23);
                    }

                    v28 = *(*(&v139 + 1) + 8 * j);
                    v29 = self->_context;
                    v30 = [v28 resourceKey];
                    v31 = [(PSContext *)v29 resourceStreamForKey:v30];

                    if ([v31 options] == 2)
                    {
                      v32 = [v28 resourceKey];
                      [v5 addObject:v32];
                    }
                  }

                  v25 = [v23 countByEnumeratingWithState:&v139 objects:v166 count:16];
                }

                while (v25);
              }

              v21 = v107 + 1;
            }

            while (v107 + 1 != v103);
            v103 = [v95 countByEnumeratingWithState:&v143 objects:v167 count:16];
          }

          while (v103);
        }

        v137 = 0u;
        v138 = 0u;
        v135 = 0u;
        v136 = 0u;
        v108 = [v92 writers];
        v33 = [v108 countByEnumeratingWithState:&v135 objects:v165 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v136;
          do
          {
            for (k = 0; k != v34; ++k)
            {
              if (*v136 != v35)
              {
                objc_enumerationMutation(v108);
              }

              v37 = [*(*(&v135 + 1) + 8 * k) output];
              v38 = self->_context;
              v39 = [v37 resourceKey];
              v40 = [(PSContext *)v38 resourceStreamForKey:v39];

              if ([v40 options] == 2)
              {
                v41 = [v37 resourceKey];
                [v5 addObject:v41];
              }
            }

            v34 = [v108 countByEnumeratingWithState:&v135 objects:v165 count:16];
          }

          while (v34);
        }

        v7 = v90 + 1;
      }

      while (v90 + 1 != v88);
      v88 = [obj countByEnumeratingWithState:&v155 objects:v170 count:16];
    }

    while (v88);
  }

  [v83 removedGraphs];
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  v84 = v134 = 0u;
  v89 = [v84 countByEnumeratingWithState:&v131 objects:v164 count:16];
  if (v89)
  {
    v87 = *v132;
    do
    {
      v42 = 0;
      do
      {
        if (*v132 != v87)
        {
          objc_enumerationMutation(v84);
        }

        v43 = *(*(&v131 + 1) + 8 * v42);
        v127 = 0u;
        v128 = 0u;
        v129 = 0u;
        v130 = 0u;
        v91 = v42;
        v93 = v43;
        v96 = [v43 tasks];
        v104 = [v96 countByEnumeratingWithState:&v127 objects:v163 count:16];
        if (v104)
        {
          v100 = *v128;
          do
          {
            v44 = 0;
            do
            {
              if (*v128 != v100)
              {
                objc_enumerationMutation(v96);
              }

              v109 = v44;
              v45 = *(*(&v127 + 1) + 8 * v44);
              v123 = 0u;
              v124 = 0u;
              v125 = 0u;
              v126 = 0u;
              v46 = [v45 outputs];
              v47 = [v46 countByEnumeratingWithState:&v123 objects:v162 count:16];
              if (v47)
              {
                v48 = v47;
                v49 = *v124;
                do
                {
                  for (m = 0; m != v48; ++m)
                  {
                    if (*v124 != v49)
                    {
                      objc_enumerationMutation(v46);
                    }

                    v51 = *(*(&v123 + 1) + 8 * m);
                    v52 = self->_context;
                    v53 = [v51 resourceKey];
                    v54 = [(PSContext *)v52 resourceStreamForKey:v53];

                    if ([v54 options] == 2)
                    {
                      v55 = [v51 resourceKey];
                      [v6 addObject:v55];
                    }
                  }

                  v48 = [v46 countByEnumeratingWithState:&v123 objects:v162 count:16];
                }

                while (v48);
              }

              v44 = v109 + 1;
            }

            while (v109 + 1 != v104);
            v104 = [v96 countByEnumeratingWithState:&v127 objects:v163 count:16];
          }

          while (v104);
        }

        v121 = 0u;
        v122 = 0u;
        v119 = 0u;
        v120 = 0u;
        v97 = [v93 sourceTasks];
        v105 = [v97 countByEnumeratingWithState:&v119 objects:v161 count:16];
        if (v105)
        {
          v101 = *v120;
          do
          {
            v56 = 0;
            do
            {
              if (*v120 != v101)
              {
                objc_enumerationMutation(v97);
              }

              v110 = v56;
              v57 = *(*(&v119 + 1) + 8 * v56);
              v115 = 0u;
              v116 = 0u;
              v117 = 0u;
              v118 = 0u;
              v58 = [v57 outputs];
              v59 = [v58 countByEnumeratingWithState:&v115 objects:v160 count:16];
              if (v59)
              {
                v60 = v59;
                v61 = *v116;
                do
                {
                  for (n = 0; n != v60; ++n)
                  {
                    if (*v116 != v61)
                    {
                      objc_enumerationMutation(v58);
                    }

                    v63 = *(*(&v115 + 1) + 8 * n);
                    v64 = self->_context;
                    v65 = [v63 resourceKey];
                    v66 = [(PSContext *)v64 resourceStreamForKey:v65];

                    if ([v66 options] == 2)
                    {
                      v67 = [v63 resourceKey];
                      [v6 addObject:v67];
                    }
                  }

                  v60 = [v58 countByEnumeratingWithState:&v115 objects:v160 count:16];
                }

                while (v60);
              }

              v56 = v110 + 1;
            }

            while (v110 + 1 != v105);
            v105 = [v97 countByEnumeratingWithState:&v119 objects:v161 count:16];
          }

          while (v105);
        }

        v113 = 0u;
        v114 = 0u;
        v111 = 0u;
        v112 = 0u;
        v68 = [v93 writers];
        v69 = [v68 countByEnumeratingWithState:&v111 objects:v159 count:16];
        if (v69)
        {
          v70 = v69;
          v71 = *v112;
          do
          {
            for (ii = 0; ii != v70; ++ii)
            {
              if (*v112 != v71)
              {
                objc_enumerationMutation(v68);
              }

              v73 = [*(*(&v111 + 1) + 8 * ii) output];
              v74 = self->_context;
              v75 = [v73 resourceKey];
              v76 = [(PSContext *)v74 resourceStreamForKey:v75];

              if ([v76 options] == 2)
              {
                v77 = [v73 resourceKey];
                [v6 addObject:v77];
              }
            }

            v70 = [v68 countByEnumeratingWithState:&v111 objects:v159 count:16];
          }

          while (v70);
        }

        v42 = v91 + 1;
      }

      while (v91 + 1 != v89);
      v89 = [v84 countByEnumeratingWithState:&v131 objects:v164 count:16];
    }

    while (v89);
  }

  v78 = +[PSExecutionSessionWorkarounds sharedInstance];
  v79 = [v78 shouldNotifySystemGraphOnTransitionComplete];

  if (v79 && [v5 count])
  {
    v80 = [(PSGraphCompiler *)self transitionManager];
    v81 = [v80 executionSession];
    [v81 requestedResourcesAreBeingProduced:v5];
  }

  v82 = *MEMORY[0x277D85DE8];
}

- (id)getWriterResourcesForGraphs:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v10 = [v9 writers];
        v11 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v21;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v21 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = [*(*(&v20 + 1) + 8 * j) output];
              v16 = [v15 resourceKey];
              [v4 addObject:v16];
            }

            v12 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v12);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v6);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)getReaderResourcesForGraphs:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v4;
  v25 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v25)
  {
    v24 = *v32;
    do
    {
      v6 = 0;
      do
      {
        if (*v32 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = v6;
        v7 = *(*(&v31 + 1) + 8 * v6);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v8 = [v7 readers];
        v9 = [v8 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v28;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v28 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v27 + 1) + 8 * i);
              v14 = [v13 input];
              v15 = [v14 resolvedResourceKey];
              [v5 addObject:v15];

              device = self->_device;
              v17 = [v13 input];
              v18 = [v17 resolvedResourceKey];
              v19 = [(PLSDevice *)device propertiesForKey:v18];

              v20 = [v19 syncedKey];
              if (v20)
              {
                [v5 addObject:v20];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v10);
        }

        v6 = v26 + 1;
      }

      while (v26 + 1 != v25);
      v25 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v25);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)getSourceTaskOutputResourcesForGraphs:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v3;
  v23 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v23)
  {
    v22 = *v34;
    do
    {
      v5 = 0;
      do
      {
        if (*v34 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = v5;
        v6 = *(*(&v33 + 1) + 8 * v5);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v7 = [v6 sourceTasks];
        v8 = [v7 countByEnumeratingWithState:&v29 objects:v38 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v30;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v30 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v29 + 1) + 8 * i);
              v25 = 0u;
              v26 = 0u;
              v27 = 0u;
              v28 = 0u;
              v13 = [v12 outputs];
              v14 = [v13 countByEnumeratingWithState:&v25 objects:v37 count:16];
              if (v14)
              {
                v15 = v14;
                v16 = *v26;
                do
                {
                  for (j = 0; j != v15; ++j)
                  {
                    if (*v26 != v16)
                    {
                      objc_enumerationMutation(v13);
                    }

                    v18 = [*(*(&v25 + 1) + 8 * j) resourceKey];
                    [v4 addObject:v18];
                  }

                  v15 = [v13 countByEnumeratingWithState:&v25 objects:v37 count:16];
                }

                while (v15);
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v29 objects:v38 count:16];
          }

          while (v9);
        }

        v5 = v24 + 1;
      }

      while (v24 + 1 != v23);
      v23 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v23);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)createWritersForTransitionBlock:(id)a3
{
  v292 = *MEMORY[0x277D85DE8];
  v243 = a3;
  v4 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v280) = 0;
    _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_DEFAULT, "Creating PSWriters.", &v280, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  v6 = [WeakRetained executionSession];
  v239 = v6[1];

  v7 = objc_loadWeakRetained(&self->_transitionManager);
  v7[9] = 0;

  v278 = 0u;
  v279 = 0u;
  v276 = 0u;
  v277 = 0u;
  v231 = [v243 addedGraphs];
  v233 = [v231 countByEnumeratingWithState:&v276 objects:v291 count:16];
  if (v233)
  {
    v232 = *v277;
    *&v8 = 136315138;
    v244 = v8;
    v258 = self;
    do
    {
      v9 = 0;
      do
      {
        if (*v277 != v232)
        {
          v10 = v9;
          objc_enumerationMutation(v231);
          v9 = v10;
        }

        v234 = v9;
        v11 = *(*(&v276 + 1) + 8 * v9);
        v272 = 0u;
        v273 = 0u;
        v274 = 0u;
        v275 = 0u;
        v255 = v11;
        v240 = [v11 writers];
        v256 = [v240 countByEnumeratingWithState:&v272 objects:v290 count:16];
        if (v256)
        {
          v253 = *v273;
          do
          {
            for (i = 0; i != v256; i = v179 + 1)
            {
              if (*v273 != v253)
              {
                objc_enumerationMutation(v240);
              }

              v259 = i;
              v13 = *(*(&v272 + 1) + 8 * i);
              v14 = objc_loadWeakRetained(&self->_transitionManager);
              ++v14[9];

              v15 = [(NSMapTable *)self->_retainedWriterBlocks objectForKey:v13];

              if (v15)
              {
                v270 = 0u;
                v271 = 0u;
                v268 = 0u;
                v269 = 0u;
                v16 = [v243 removedGraphs];
                v17 = [v16 countByEnumeratingWithState:&v268 objects:v289 count:16];
                if (!v17)
                {
                  goto LABEL_117;
                }

                v18 = v17;
                v19 = *v269;
LABEL_16:
                v20 = 0;
                while (1)
                {
                  if (*v269 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v21 = *(*(&v268 + 1) + 8 * v20);
                  v264 = 0u;
                  v265 = 0u;
                  v266 = 0u;
                  v267 = 0u;
                  v22 = [v21 writers];
                  v23 = [v22 countByEnumeratingWithState:&v264 objects:v288 count:16];
                  if (v23)
                  {
                    break;
                  }

LABEL_27:

                  if (++v20 == v18)
                  {
                    v18 = [v16 countByEnumeratingWithState:&v268 objects:v289 count:16];
                    if (!v18)
                    {
LABEL_117:

                      v261 = 0;
                      v194 = [v13 name];
                      asprintf(&v261, "Writer block already created for writer with name %s", [v194 UTF8String]);

                      v195 = __PLSLogSharedInstance();
                      if (os_log_type_enabled(v195, OS_LOG_TYPE_FAULT))
                      {
                        v196 = [v13 name];
                        v197 = [v196 UTF8String];
                        v280 = 136315650;
                        v281 = "[PSGraphCompiler createWritersForTransitionBlock:]";
                        v282 = 1024;
                        v283 = 1144;
                        v284 = 2080;
                        v285[0] = v197;
                        _os_log_impl(&dword_25EA3A000, v195, OS_LOG_TYPE_FAULT, "%s:%d Writer block already created for writer with name %s", &v280, 0x1Cu);
                      }

                      v198 = OSLogFlushBuffers();
                      if (!v198)
                      {
                        goto LABEL_120;
                      }

                      v208 = v198;
                      v193 = __PLSLogSharedInstance();
                      if (os_log_type_enabled(v193, OS_LOG_TYPE_ERROR))
                      {
                        v280 = 136315394;
                        v281 = "[PSGraphCompiler createWritersForTransitionBlock:]";
                        v282 = 1024;
                        v283 = v208;
                        _os_log_impl(&dword_25EA3A000, v193, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v280, 0x12u);
                      }

LABEL_148:

LABEL_149:
                      abort_with_reason();
                    }

                    goto LABEL_16;
                  }
                }

                v24 = v23;
                v25 = *v265;
LABEL_21:
                v26 = 0;
                while (1)
                {
                  if (*v265 != v25)
                  {
                    objc_enumerationMutation(v22);
                  }

                  if (v13 == *(*(&v264 + 1) + 8 * v26))
                  {
                    break;
                  }

                  if (v24 == ++v26)
                  {
                    v24 = [v22 countByEnumeratingWithState:&v264 objects:v288 count:16];
                    if (!v24)
                    {
                      goto LABEL_27;
                    }

                    goto LABEL_21;
                  }
                }

                v27 = __PLSLogSharedInstance();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                {
                  v28 = [v13 name];
                  v29 = [v28 UTF8String];
                  v280 = v244;
                  v281 = v29;
                  _os_log_impl(&dword_25EA3A000, v27, OS_LOG_TYPE_DEFAULT, "To-be-removed PSWriter already found for %s. Continuing without creating a new writer.", &v280, 0xCu);
                }

                self = v258;
                goto LABEL_107;
              }

              v30 = __PLSLogSharedInstance();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
              {
                v31 = [v13 output];
                v32 = [v31 resourceKey];
                v33 = [v32 UTF8String];
                v280 = v244;
                v281 = v33;
                _os_log_impl(&dword_25EA3A000, v30, OS_LOG_TYPE_DEBUG, "Creating PSWriter (%s)", &v280, 0xCu);
              }

              v34 = objc_loadWeakRetained(&self->_transitionMonitor);
              [v34 lock];

              v35 = MEMORY[0x277CCACA8];
              v36 = [v13 output];
              v37 = [v36 resourceKey];
              v38 = [v35 stringWithFormat:@"%@ (PSWriter)", v37];
              v39 = objc_loadWeakRetained(&self->_transitionMonitor);
              [v39 setTransitionStateBufferInitCurResource:v38];

              v40 = objc_loadWeakRetained(&self->_transitionMonitor);
              [v40 unlock];

              v41 = ps_prm_opts_create();
              v42 = [v13 output];
              v43 = [v42 resourceKey];

              v44 = [(PSContext *)self->_context resourceStreamForKey:v43];
              v45 = [v44 resourceClass];
              v46 = 9;
              v47 = 1;
              v252 = v41;
              if (v45 <= 0xB)
              {
                v48 = 1;
                v49 = 1;
                if (((1 << v45) & 0xB80) == 0)
                {
                  goto LABEL_53;
                }

                v50 = [v44 provider];
                v46 = v50;
                if (v50 <= 8)
                {
                  if (((1 << v50) & 0x49) != 0)
                  {
                    v51 = __PLSLogSharedInstance();
                    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
                    {
                      v52 = [v13 name];
                      v56 = [v52 UTF8String];
                      v280 = v244;
                      v281 = v56;
                      v54 = v51;
                      v55 = "PSWriter (%s) Camera Provider Type: ClosedLoop";
LABEL_44:
                      _os_log_impl(&dword_25EA3A000, v54, OS_LOG_TYPE_DEFAULT, v55, &v280, 0xCu);
                    }
                  }

                  else
                  {
                    if (((1 << v50) & 0x92) == 0)
                    {
                      v57 = __PLSLogSharedInstance();
                      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                      {
                        v58 = [v13 name];
                        v59 = [v58 UTF8String];
                        v280 = v244;
                        v281 = v59;
                        _os_log_impl(&dword_25EA3A000, v57, OS_LOG_TYPE_DEFAULT, "PSWriter (%s) Camera Provider Type: Superframe", &v280, 0xCu);
                      }

                      v60 = +[PLSSettings currentSettings];
                      v61 = [v60 enableHybridLoop];

                      if (v61)
                      {
                        v62 = +[PSExecutionSessionWorkarounds sharedInstance];
                        v63 = [v62 shouldUsePRMCameraForSuperframe:v43];

                        v47 = 0;
                        v49 = 0;
                        v48 = v63 ^ 1;
                      }

                      else
                      {
                        v47 = 0;
                        v49 = 0;
                        v48 = 1;
                      }

                      goto LABEL_53;
                    }

                    v51 = __PLSLogSharedInstance();
                    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
                    {
                      v52 = [v13 name];
                      v53 = [v52 UTF8String];
                      v280 = v244;
                      v281 = v53;
                      v54 = v51;
                      v55 = "PSWriter (%s) Camera Provider Type: OpenLoop";
                      goto LABEL_44;
                    }
                  }

                  v47 = 0;
                  v48 = 0;
                  v49 = 0;
                  goto LABEL_53;
                }

                v47 = 0;
              }

              v48 = 1;
              v49 = 1;
LABEL_53:
              LODWORD(v241) = v49;
              LODWORD(v245) = v48;
              LODWORD(context) = v47;
              LODWORD(v242) = v46;
              v246 = v43;
              v251 = v44;
              v261 = 0;
              v262 = 0;
              v263 = 0;
              v254 = objc_loadWeakRetained(&self->_transitionManager);
              v250 = [v254 executionSession];
              v249 = [v250 caNameHash];
              LODWORD(v261) = [v249 unsignedIntValue];
              v64 = v255;
              v248 = [v255 caNameHash];
              HIDWORD(v261) = [v248 unsignedIntValue];
              v247 = [v64 systemPulseStride];
              v262 = [v247 unsignedLongLongValue];
              v65 = +[PSCoreAnalyticsIDManager sharedInstance];
              v66 = [v13 output];
              v67 = [v66 resourceKey];
              v68 = [v64 caName];
              v69 = [v64 systemPulseStride];
              v70 = objc_loadWeakRetained(&self->_transitionManager);
              v71 = [v70 executionSession];
              v72 = [v71 caName];
              LODWORD(v263) = [v65 opaqueIDForResource:v67 graph:v68 stride:v69 session:v72];

              if ((context & 1) == 0 && (v245 & 1) == 0)
              {
                v73 = v252;
                v74 = v242;
                [PSGraphCompiler populateOptsMetadataType:v252 forProviderType:v242];
                resource_metadata_type = ps_prm_opts_get_resource_metadata_type(v73);
                v76 = v251;
                if (resource_metadata_type != 1)
                {
                  goto LABEL_66;
                }

                if ([v251 resourceClass] == 11)
                {
                  v77 = [v13 pearlBufferPools];
                  v78 = [v77 objectAtIndexedSubscript:0];
                  v79 = [v78 count];
                }

                else
                {
                  v77 = [v13 imageBufferPool];
                  v79 = [v77 count];
                }

                v99 = [v13 metadataBufferPool];

                if (!v99)
                {
                  [PSGraphCompiler createWritersForTransitionBlock:?];
                  goto LABEL_140;
                }

                v100 = [v13 metadataBufferPool];
                v101 = [v100 count];

                if (v101 != v79)
                {
                  v260 = 0;
                  v214 = [v13 metadataBufferPool];
                  asprintf(&v260, "The writer count %lu does not match the image buffer count %llu", [v214 count], v79);

                  v215 = __PLSLogSharedInstance();
                  if (os_log_type_enabled(v215, OS_LOG_TYPE_FAULT))
                  {
                    v216 = [v13 metadataBufferPool];
                    v217 = [v216 count];
                    v280 = 136315906;
                    v281 = "[PSGraphCompiler createWritersForTransitionBlock:]";
                    v282 = 1024;
                    v283 = 1282;
                    v284 = 2048;
                    v285[0] = v217;
                    LOWORD(v285[1]) = 2048;
                    *(&v285[1] + 2) = v79;
                    _os_log_impl(&dword_25EA3A000, v215, OS_LOG_TYPE_FAULT, "%s:%d The writer count %lu does not match the image buffer count %llu", &v280, 0x26u);
                  }

                  v218 = OSLogFlushBuffers();
                  if (v218)
                  {
                    v192 = v218;
                    v193 = __PLSLogSharedInstance();
                    if (!os_log_type_enabled(v193, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_148;
                    }

                    goto LABEL_147;
                  }

                  goto LABEL_120;
                }

LABEL_66:
                v102 = [v76 key];
                LODWORD(v250) = [PSRCConstants getCameraDepthForKey:v102];

                v103 = [v76 key];
                v104 = [PSRCConstants getReaderDepthForKey:v103];

                v105 = [v76 key];
                v106 = [PSRCConstants getWriterDepthForKey:v105];

                ps_prm_opts_set_buffer_depth(v73, v104, v106);
                ps_prm_opts_set_return_capacity(v73, 1);
                v107 = [v76 key];
                ps_prm_opts_set_resource_key(v73, [v107 UTF8String]);

                ps_prm_opts_set_creation_mode(v73, 0);
                ps_prm_opts_set_storage_mode(v73, 2);
                ps_prm_opts_set_resource_class(v73, [v76 resourceClass]);
                v108 = objc_loadWeakRetained(&v258->_transitionManager);
                v109 = [v108 executionSession];
                ps_prm_opts_set_resource_avail_context(v73, [v109 gsm]);

                ps_prm_opts_set_provider_type(v73, v74);
                ps_prm_opts_set_is_camera_stream(v73, 1);
                ps_prm_opts_set_use_prm_camera_reader(v73, 0);
                v110 = [v76 resourceClass];
                v111 = [v76 resourceClass];
                if ((v111 - 7) >= 3)
                {
                  v130 = v250;
                  if (v111 == 11)
                  {
                    v131 = [v13 pearlBufferPools];
                    v132 = [v131 count];

                    if (v132 == 4)
                    {
                      v133 = [v13 pearlBufferPools];
                      v134 = [v133 objectAtIndexedSubscript:0];
                      context = [v134 count];

                      v135 = 0;
                      v136 = v106 + v104 + v130 + [v76 retainedISPRCCount];
                      while (1)
                      {
                        v137 = [v13 pearlBufferPools];
                        v138 = [v137 objectAtIndexedSubscript:v135];
                        v139 = [v138 count];

                        if (v139 != v136)
                        {
                          break;
                        }

                        if (++v135 == 4)
                        {
                          v248 = &v230;
                          v140 = context;
                          v141 = (8 * context + 15) & 0xFFFFFFFFFFFFFFF0;
                          if (8 * context >= 0x200)
                          {
                            v142 = 512;
                          }

                          else
                          {
                            v142 = 8 * context;
                          }

                          v254 = &v230 - v141;
                          bzero(&v230 - v141, v142);
                          v143 = &v230 - v141;
                          bzero(&v230 - v141, v142);
                          v144 = &v230 - v141;
                          bzero(&v230 - v141, v142);
                          v145 = &v230 - v141;
                          bzero(&v230 - v141, v142);
                          v249 = &v230 - v141;
                          bzero(&v230 - v141, v142);
                          if (v140)
                          {
                            v146 = 0;
                            v147 = 1;
                            do
                            {
                              v148 = [v13 pearlBufferPools];
                              v149 = [v148 objectAtIndexedSubscript:0];
                              v150 = [v149 objectAtIndexedSubscript:v146];
                              *&v254[8 * v146] = v150;

                              v151 = [v13 pearlBufferPools];
                              v152 = [v151 objectAtIndexedSubscript:1];
                              v153 = [v152 objectAtIndexedSubscript:v146];
                              *&v143[8 * v146] = v153;

                              v154 = [v13 pearlBufferPools];
                              v155 = [v154 objectAtIndexedSubscript:2];
                              v156 = [v155 objectAtIndexedSubscript:v146];
                              *&v144[8 * v146] = v156;

                              v157 = [v13 pearlBufferPools];
                              v158 = [v157 objectAtIndexedSubscript:3];
                              v159 = [v158 objectAtIndexedSubscript:v146];
                              *&v145[8 * v146] = v159;

                              if (resource_metadata_type == 1)
                              {
                                v160 = [v13 metadataBufferPool];
                                v161 = [v160 objectAtIndexedSubscript:v146];
                                *&v249[8 * v146] = v161;
                              }

                              v146 = v147;
                            }

                            while (context > v147++);
                          }

                          v76 = v251;
                          v163 = [v251 retainedISPRCCount];
                          v87 = v252;
                          ps_prm_opts_set_camera_pearlbuffer(v252, v163, v250, v254, v143, v144, v145, v249, context);
                          v164 = [PSWriterBlock alloc];
                          self = v258;
                          v92 = [(PSWriterBlock *)v164 initWithWriter:v13 graph:v255 withStream:v76 withWriterOptions:v87 withPRMManager:v258->_prm_mgr withDevice:v258->_device withResourceOptions:0 withCAWriterDimensions:&v261 withFrameHistoryClientHandle:v239];
                          if (v92 && [v76 framerate])
                          {
                            v165 = [v76 key];
                            [(PSGraphCompiler *)self setWriterForKey:v165 writer:v13];
                          }

LABEL_96:
                          v27 = v246;
                          goto LABEL_105;
                        }
                      }

                      v260 = 0;
                      v181 = [v76 key];
                      v182 = [v181 UTF8String];
                      v183 = [v13 pearlBufferPools];
                      v184 = [v183 objectAtIndexedSubscript:v135];
                      asprintf(&v260, "Incorrect number of buffers provided for Pearl Bank %d for stream name: %s. Received: %lu expecting: %llu", v135, v182, [v184 count], v136);

                      v185 = __PLSLogSharedInstance();
                      if (os_log_type_enabled(v185, OS_LOG_TYPE_FAULT))
                      {
                        v186 = [v76 key];
                        v187 = [v186 UTF8String];
                        v188 = [v13 pearlBufferPools];
                        v189 = [v188 objectAtIndexedSubscript:v135];
                        v190 = [v189 count];
                        v280 = 136316418;
                        v281 = "[PSGraphCompiler createWritersForTransitionBlock:]";
                        v282 = 1024;
                        v283 = 1409;
                        v284 = 1024;
                        LODWORD(v285[0]) = v135;
                        WORD2(v285[0]) = 2080;
                        *(v285 + 6) = v187;
                        HIWORD(v285[1]) = 2048;
                        v285[2] = v190;
                        v286 = 2048;
                        v287 = v136;
                        _os_log_impl(&dword_25EA3A000, v185, OS_LOG_TYPE_FAULT, "%s:%d Incorrect number of buffers provided for Pearl Bank %d for stream name: %s. Received: %lu expecting: %llu", &v280, 0x36u);
                      }

                      v191 = OSLogFlushBuffers();
                      if (v191)
                      {
                        v192 = v191;
                        v193 = __PLSLogSharedInstance();
                        if (!os_log_type_enabled(v193, OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_148;
                        }

LABEL_147:
                        v280 = 136315394;
                        v281 = "[PSGraphCompiler createWritersForTransitionBlock:]";
                        v282 = 1024;
                        v283 = v192;
                        _os_log_impl(&dword_25EA3A000, v193, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v280, 0x12u);
                        goto LABEL_148;
                      }

                      goto LABEL_120;
                    }

                    goto LABEL_141;
                  }

                  v227 = [(PSGraphCompiler *)&v280 createWritersForTransitionBlock:v76];
                }

                else
                {
                  v112 = ((v110 - 9) & 0xFFFFFFFFFFFFFFFDLL) == 0;
                  v113 = [v13 imageBufferPool];
                  v114 = [v113 count];

                  v115 = [v76 retainedISPRCCount];
                  v116 = ((v106 + v104) << (2 * v112)) + v250 + v115;
                  if (v116 != v114)
                  {
                    v260 = 0;
                    v209 = [v76 key];
                    asprintf(&v260, "Incorrect number of buffers provided for: %s. Received: %d expecting: %d", [v209 UTF8String], v114, v116);

                    v210 = __PLSLogSharedInstance();
                    if (os_log_type_enabled(v210, OS_LOG_TYPE_FAULT))
                    {
                      v211 = [v76 key];
                      v212 = [v211 UTF8String];
                      v280 = 136316162;
                      v281 = "[PSGraphCompiler createWritersForTransitionBlock:]";
                      v282 = 1024;
                      v283 = 1323;
                      v284 = 2080;
                      v285[0] = v212;
                      LOWORD(v285[1]) = 1024;
                      *(&v285[1] + 2) = v114;
                      HIWORD(v285[1]) = 1024;
                      LODWORD(v285[2]) = v116;
                      _os_log_impl(&dword_25EA3A000, v210, OS_LOG_TYPE_FAULT, "%s:%d Incorrect number of buffers provided for: %s. Received: %d expecting: %d", &v280, 0x28u);
                    }

                    v213 = OSLogFlushBuffers();
                    if (v213)
                    {
                      v192 = v213;
                      v193 = __PLSLogSharedInstance();
                      if (!os_log_type_enabled(v193, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_148;
                      }

                      goto LABEL_147;
                    }

                    goto LABEL_120;
                  }

                  context = &v230;
                  v117 = 8 * v114;
                  v118 = (v117 + 15) & 0xFFFFFFFF0;
                  v119 = &v230 - v118;
                  if (v117 >= 0x200)
                  {
                    v120 = 512;
                  }

                  else
                  {
                    v120 = 8 * v114;
                  }

                  bzero(&v230 - v118, v120);
                  v121 = &v230 - v118;
                  bzero(v121, v120);
                  if (v114)
                  {
                    for (j = 0; j != v114; ++j)
                    {
                      v123 = [v13 imageBufferPool];
                      v124 = [v123 objectAtIndexedSubscript:j];
                      *&v119[8 * j] = v124;

                      if (resource_metadata_type == 1)
                      {
                        v125 = [v13 metadataBufferPool];
                        v126 = [v125 objectAtIndexedSubscript:j];
                        *&v121[8 * j] = v126;
                      }
                    }
                  }

                  v127 = [v76 resourceClass];
                  if (v127 == 7)
                  {
                    [v76 provider];
                    if (ps_resource_stream_provider_is_superframe())
                    {
                      v167 = v76;
                      LODWORD(v254) = [v167 retainedISPRCCount];
                      v249 = [v167 width];
                      v248 = [v167 height];
                      v168 = [v167 bytesPerElement];
                      v245 = [v167 bytesPerRow];
                      v242 = [v167 elementWidth];
                      v238 = [v167 elementHeight];
                      v237 = [v167 pixelFormat];
                      v247 = [v167 superframePlaneOffsets];
                      v241 = [v247 objectAtIndexedSubscript:0];
                      v235 = [v241 unsignedIntValue];
                      v236 = [v167 superframePlaneBytesPerRow];
                      v169 = [v236 objectAtIndexedSubscript:0];
                      v170 = [v169 unsignedIntValue];
                      v171 = [v167 height];

                      v172 = v171 * v170;
                      v76 = v251;
                      v228 = v168;
                      v129 = v252;
                      ps_prm_opts_set_camera_cvpixelbuffer_superframe(v252, v254, v250, v119, v121, v114, v249, v248, v228, v245, v242, v238, v237, v235, v172);
                    }

                    else
                    {
                      v173 = [v76 retainedISPRCCount];
                      v129 = v252;
                      ps_prm_opts_set_camera_cvpixelbuffer(v252, v173, v250, v119, v121, v114);
                    }

                    self = v258;
                    v27 = v246;
LABEL_102:
                    v174 = [PSWriterBlock alloc];
                    v92 = [(PSWriterBlock *)v174 initWithWriter:v13 graph:v255 withStream:v76 withWriterOptions:v129 withPRMManager:self->_prm_mgr withDevice:self->_device withResourceOptions:0 withCAWriterDimensions:&v261 withFrameHistoryClientHandle:v239];
                    v87 = v129;
                    if (v92 && [v76 framerate])
                    {
                      v175 = [v76 key];
                      [(PSGraphCompiler *)self setWriterForKey:v175 writer:v13];
                    }

                    goto LABEL_105;
                  }

                  self = v258;
                  v27 = v246;
                  if (v127 == 8)
                  {
                    v166 = [v76 retainedISPRCCount];
                    v129 = v252;
                    ps_prm_opts_set_camera_cvdatabuffer(v252, v166, v250, v119, v121, v114);
                    goto LABEL_102;
                  }

                  if (v127 == 9)
                  {
                    v128 = [v76 retainedISPRCCount];
                    v129 = v252;
                    ps_prm_opts_set_camera_jasperbuffer(v252, v128, v250, v119, v121, v114);
                    goto LABEL_102;
                  }

LABEL_140:
                  [PSGraphCompiler createWritersForTransitionBlock:?];
LABEL_141:
                  v260 = 0;
                  v219 = [v76 key];
                  v220 = [v219 UTF8String];
                  v221 = [v13 pearlBufferPools];
                  asprintf(&v260, "Incorrect number of buffer pools for Pearl for %s: Received: %d expecting: %d", v220, [v221 count], 4);

                  v222 = __PLSLogSharedInstance();
                  if (os_log_type_enabled(v222, OS_LOG_TYPE_FAULT))
                  {
                    v223 = [v76 key];
                    v224 = [v223 UTF8String];
                    v225 = [v13 pearlBufferPools];
                    v226 = [v225 count];
                    v280 = 136316162;
                    v281 = "[PSGraphCompiler createWritersForTransitionBlock:]";
                    v282 = 1024;
                    v283 = 1397;
                    v284 = 2080;
                    v285[0] = v224;
                    LOWORD(v285[1]) = 1024;
                    *(&v285[1] + 2) = v226;
                    HIWORD(v285[1]) = 1024;
                    LODWORD(v285[2]) = 4;
                    _os_log_impl(&dword_25EA3A000, v222, OS_LOG_TYPE_FAULT, "%s:%d Incorrect number of buffer pools for Pearl for %s: Received: %d expecting: %d", &v280, 0x28u);
                  }

                  v227 = OSLogFlushBuffers();
                  if (!v227)
                  {
                    goto LABEL_120;
                  }
                }

                v192 = v227;
                v193 = __PLSLogSharedInstance();
                if (!os_log_type_enabled(v193, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_148;
                }

                goto LABEL_147;
              }

              if (((context | v241) & 1) == 0)
              {
                v94 = [PSSourceWriterBlock alloc];
                v95 = [v13 sourceTask];
                self = v258;
                synchronizer = v258->_synchronizer;
                v97 = objc_loadWeakRetained(&v258->_transitionManager);
                v98 = [(PSSourceWriterBlock *)v94 initWithSourceTask:v95 synchronizer:synchronizer transitionManager:v97 frameStepping:[(PSGraphCompiler *)self deterministicReplay]];

                [(PSSourceWriterBlock *)v98 setupResultsWithContext:self->_context device:self->_device];
                v92 = [[PSWriterBlock alloc] initWithWriter:v13 withSourceBlock:v98 withPRMManager:self->_prm_mgr];

                v76 = v251;
                v87 = v252;
                goto LABEL_96;
              }

              v80 = [v13 output];
              v81 = [v80 capacity];
              v82 = v258;
              context = v258->_context;
              retainedBufferIndexers = v258->_retainedBufferIndexers;
              v84 = objc_loadWeakRetained(&v258->_transitionManager);
              v85 = [v84 executionSession];
              v86 = [v85 gsm];
              v229 = retainedBufferIndexers;
              v87 = v252;
              v27 = v246;
              v88 = v81;
              v89 = v255;
              v90 = v251;
              [PSGraphCompiler populateWriterOpts:v252 forKey:v246 withCapacity:v88 forGraph:v255 withResStream:v251 withContext:context retainedBufferIndexers:v229 withGSM:v86];

              self = v82;
              v76 = v90;

              v91 = [PSWriterBlock alloc];
              v92 = [(PSWriterBlock *)v91 initWithWriter:v13 graph:v89 withStream:v90 withWriterOptions:v87 withPRMManager:self->_prm_mgr withDevice:self->_device withResourceOptions:0 withCAWriterDimensions:&v261 withFrameHistoryClientHandle:v239];
              if (v92 && [v90 framerate])
              {
                v93 = [v90 key];
                [(PSGraphCompiler *)self setWriterForKey:v93 writer:v13];
              }

LABEL_105:
              [(NSMapTable *)self->_retainedWriterBlocks setObject:v92 forKey:v13];
              ps_prm_opts_destroy(v87);
              v176 = [v13 context];
              if (ps_writer_state_update())
              {
                v260 = 0;
                v199 = [v13 name];
                v200 = [v199 UTF8String];
                v201 = (v176 + 80);
                v202 = atomic_load((v176 + 80));
                asprintf(&v260, "Unable to set writer (%s) state to _READY. Current state %d", v200, v202);

                v203 = __PLSLogSharedInstance();
                if (os_log_type_enabled(v203, OS_LOG_TYPE_FAULT))
                {
                  v204 = [v13 name];
                  v205 = [v204 UTF8String];
                  v206 = atomic_load(v201);
                  v280 = 136315906;
                  v281 = "[PSGraphCompiler createWritersForTransitionBlock:]";
                  v282 = 1024;
                  v283 = 1510;
                  v284 = 2080;
                  v285[0] = v205;
                  LOWORD(v285[1]) = 1024;
                  *(&v285[1] + 2) = v206;
                  _os_log_impl(&dword_25EA3A000, v203, OS_LOG_TYPE_FAULT, "%s:%d Unable to set writer (%s) state to _READY. Current state %d", &v280, 0x22u);
                }

                v207 = OSLogFlushBuffers();
                if (v207)
                {
                  v192 = v207;
                  v193 = __PLSLogSharedInstance();
                  if (!os_log_type_enabled(v193, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_148;
                  }

                  goto LABEL_147;
                }

LABEL_120:
                usleep(0x1E8480u);
                goto LABEL_149;
              }

              v177 = v255;
              *([v255 executionContext] + 16) = _get_iosurface_count;
              *([v177 executionContext] + 24) = _get_iosurfaces;
              prm_mgr = self->_prm_mgr;
              *([v177 executionContext] + 32) = prm_mgr;

LABEL_107:
              v179 = v259;
            }

            v256 = [v240 countByEnumeratingWithState:&v272 objects:v290 count:16];
          }

          while (v256);
        }

        v9 = v234 + 1;
      }

      while (v234 + 1 != v233);
      v233 = [v231 countByEnumeratingWithState:&v276 objects:v291 count:16];
    }

    while (v233);
  }

  v180 = *MEMORY[0x277D85DE8];
}

- (void)createReadersForTransitionBlock:(id)a3
{
  v140 = *MEMORY[0x277D85DE8];
  v105 = a3;
  v4 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_DEFAULT, "Creating PSReaders.", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  v6 = [WeakRetained executionSession];
  v101 = v6[1];

  v7 = objc_loadWeakRetained(&self->_transitionManager);
  v7[8] = 0;

  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  obj = [v105 addedGraphs];
  v98 = [obj countByEnumeratingWithState:&v126 objects:v139 count:16];
  if (v98)
  {
    v99 = *v127;
    v109 = self;
    do
    {
      v8 = 0;
      do
      {
        if (*v127 != v99)
        {
          objc_enumerationMutation(obj);
        }

        v100 = v8;
        v9 = *(*(&v126 + 1) + 8 * v8);
        v122 = 0u;
        v123 = 0u;
        v124 = 0u;
        v125 = 0u;
        v104 = [v9 readers];
        v108 = [v104 countByEnumeratingWithState:&v122 objects:v138 count:16];
        if (v108)
        {
          v106 = v9;
          v107 = *v123;
          do
          {
            for (i = 0; i != v108; ++i)
            {
              if (*v123 != v107)
              {
                objc_enumerationMutation(v104);
              }

              v11 = *(*(&v122 + 1) + 8 * i);
              v12 = objc_loadWeakRetained(&self->_transitionManager);
              ++v12[8];

              v13 = [(NSMapTable *)self->_retainedReaderBlocks objectForKey:v11];

              if (v13)
              {
                v120 = 0u;
                v121 = 0u;
                v119 = 0u;
                v118 = 0u;
                v14 = [v105 removedGraphs];
                v15 = [v14 countByEnumeratingWithState:&v118 objects:v137 count:16];
                if (!v15)
                {
                  goto LABEL_49;
                }

                v16 = v15;
                v17 = *v119;
LABEL_16:
                v18 = 0;
                while (1)
                {
                  if (*v119 != v17)
                  {
                    objc_enumerationMutation(v14);
                  }

                  v19 = *(*(&v118 + 1) + 8 * v18);
                  v114 = 0u;
                  v115 = 0u;
                  v116 = 0u;
                  v117 = 0u;
                  v20 = [v19 readers];
                  v21 = [v20 countByEnumeratingWithState:&v114 objects:v136 count:16];
                  if (v21)
                  {
                    break;
                  }

LABEL_27:

                  if (++v18 == v16)
                  {
                    v16 = [v14 countByEnumeratingWithState:&v118 objects:v137 count:16];
                    if (!v16)
                    {
LABEL_49:

                      v111[0] = 0;
                      v79 = [v11 name];
                      asprintf(v111, "Reader block already created for reader with name %s", [v79 UTF8String]);

                      v80 = __PLSLogSharedInstance();
                      if (os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
                      {
                        v81 = [v11 name];
                        v82 = [v81 UTF8String];
                        *buf = 136315650;
                        v131 = "[PSGraphCompiler createReadersForTransitionBlock:]";
                        v132 = 1024;
                        *v133 = 1553;
                        *&v133[4] = 2080;
                        *&v133[6] = v82;
                        _os_log_impl(&dword_25EA3A000, v80, OS_LOG_TYPE_FAULT, "%s:%d Reader block already created for reader with name %s", buf, 0x1Cu);
                      }

                      v83 = OSLogFlushBuffers();
                      if (v83)
                      {
                        v93 = v83;
                        v94 = __PLSLogSharedInstance();
                        if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136315394;
                          v131 = "[PSGraphCompiler createReadersForTransitionBlock:]";
                          v132 = 1024;
                          *v133 = v93;
                          _os_log_impl(&dword_25EA3A000, v94, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
                        }
                      }

                      else
                      {
                        usleep(0x1E8480u);
                      }

                      goto LABEL_63;
                    }

                    goto LABEL_16;
                  }
                }

                v22 = v21;
                v23 = *v115;
LABEL_21:
                v24 = 0;
                while (1)
                {
                  if (*v115 != v23)
                  {
                    objc_enumerationMutation(v20);
                  }

                  if (v11 == *(*(&v114 + 1) + 8 * v24))
                  {
                    break;
                  }

                  if (v22 == ++v24)
                  {
                    v22 = [v20 countByEnumeratingWithState:&v114 objects:v136 count:16];
                    if (!v22)
                    {
                      goto LABEL_27;
                    }

                    goto LABEL_21;
                  }
                }

                v25 = __PLSLogSharedInstance();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                {
                  v26 = [v11 name];
                  v27 = [v26 UTF8String];
                  *buf = 136315138;
                  v131 = v27;
                  _os_log_impl(&dword_25EA3A000, v25, OS_LOG_TYPE_DEFAULT, "To-be-removed PSReader already found for %s. Continuing without creating a new reader.", buf, 0xCu);
                }

                self = v109;
              }

              else
              {
                v28 = __PLSLogSharedInstance();
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                {
                  v29 = [v11 name];
                  v30 = [v29 UTF8String];
                  v31 = [v11 input];
                  v32 = [v31 resourceKey];
                  v33 = [v32 UTF8String];
                  *buf = 136315394;
                  v131 = v30;
                  v132 = 2080;
                  *v133 = v33;
                  _os_log_impl(&dword_25EA3A000, v28, OS_LOG_TYPE_DEFAULT, "Creating PSReader (%s) for resource key %s.", buf, 0x16u);
                }

                v34 = objc_loadWeakRetained(&self->_transitionMonitor);
                [v34 lock];

                v35 = MEMORY[0x277CCACA8];
                v36 = [v11 input];
                v37 = [v36 resourceKey];
                v38 = [v35 stringWithFormat:@"%@ (PSReader)", v37];
                v39 = objc_loadWeakRetained(&self->_transitionMonitor);
                [v39 setTransitionStateBufferInitCurResource:v38];

                v40 = objc_loadWeakRetained(&self->_transitionMonitor);
                [v40 unlock];

                v41 = ps_prm_opts_create();
                v113 = 0;
                v42 = [v11 input];
                v43 = [v42 resourceKey];
                LODWORD(v37) = [(PSGraphCompiler *)self getStreamOptionsForKey:v43 options:&v113];

                if (v37)
                {
                  v44 = &v113;
                }

                else
                {
                  v44 = 0;
                }

                v45 = [v11 input];
                v46 = [v45 resolvedResourceKey];

                v47 = [v11 input];
                v48 = [v47 capacity];
                v49 = [v11 input];
                v50 = v106;
                -[PSGraphCompiler populateReaderOpts:forKey:forGraph:withCapacity:withForwardingCount:](self, "populateReaderOpts:forKey:forGraph:withCapacity:withForwardingCount:", v41, v46, v106, v48, [v49 forwardingCount]);

                *v111 = 0u;
                v112 = 0u;
                v51 = objc_loadWeakRetained(&self->_transitionManager);

                if (v51)
                {
                  v52 = objc_loadWeakRetained(&self->_transitionManager);
                  v53 = [v52 executionSession];
                  v54 = [v53 caNameHash];
                  LODWORD(v111[0]) = [v54 unsignedIntValue];

                  v55 = [v106 caNameHash];
                  HIDWORD(v111[0]) = [v55 unsignedIntValue];

                  v56 = [v106 systemPulseStride];
                  v111[1] = [v56 unsignedLongLongValue];

                  v57 = +[PSCoreAnalyticsIDManager sharedInstance];
                  v58 = [v11 input];
                  v59 = [v58 resourceKey];
                  v60 = [v106 caName];
                  v102 = v44;
                  v61 = objc_loadWeakRetained(&v109->_transitionManager);
                  [v61 executionSession];
                  v103 = v41;
                  v63 = v62 = v46;
                  v64 = [v63 caName];
                  HIDWORD(v112) = [v57 opaqueIDForResource:v59 graph:v60 session:v64 bufferExpired:1];

                  v65 = +[PSCoreAnalyticsIDManager sharedInstance];
                  v66 = [v11 input];
                  v67 = [v66 resourceKey];
                  v68 = [v106 caName];
                  v69 = objc_loadWeakRetained(&v109->_transitionManager);
                  v70 = [v69 executionSession];
                  v71 = [v70 caName];
                  DWORD2(v112) = [v65 opaqueIDForResource:v67 graph:v68 session:v71 bufferExpired:0];

                  v46 = v62;
                  v41 = v103;

                  v44 = v102;
                  v50 = v106;

                  self = v109;
                }

                v72 = [[PSReaderBlock alloc] initWithReader:v11 graph:v50 readerOptions:v41 resourceOptions:v44 withPRMManager:self->_prm_mgr forCABufferExpiry:v111 withFrameHistoryClientHandle:v101];
                v73 = [v11 getContext];
                if (*(*v73 + 8) != 1)
                {
                  [PSGraphCompiler createReadersForTransitionBlock:];
                }

                v74 = [(PSGraphCompiler *)self populateBufferExpiryOffset:**(*v73 + 40) forKey:v46];
                v75 = [v11 input];
                [v75 setBufferExpiryOffset:v74];

                self = v109;
                [(NSMapTable *)v109->_retainedReaderBlocks setObject:v72 forKey:v11];
                ps_prm_opts_destroy(v41);
                v76 = [v11 context];
                if (ps_reader_state_update())
                {
                  v110 = 0;
                  v84 = [v11 name];
                  v85 = [v84 UTF8String];
                  v86 = (v76 + 24);
                  v87 = atomic_load((v76 + 24));
                  asprintf(&v110, "Unable to set reader (%s) state to _READY. Current state %d", v85, v87);

                  v88 = __PLSLogSharedInstance();
                  if (os_log_type_enabled(v88, OS_LOG_TYPE_FAULT))
                  {
                    v89 = [v11 name];
                    v90 = [v89 UTF8String];
                    v91 = atomic_load(v86);
                    *buf = 136315906;
                    v131 = "[PSGraphCompiler createReadersForTransitionBlock:]";
                    v132 = 1024;
                    *v133 = 1624;
                    *&v133[4] = 2080;
                    *&v133[6] = v90;
                    v134 = 1024;
                    v135 = v91;
                    _os_log_impl(&dword_25EA3A000, v88, OS_LOG_TYPE_FAULT, "%s:%d Unable to set reader (%s) state to _READY. Current state %d", buf, 0x22u);
                  }

                  v92 = OSLogFlushBuffers();
                  if (v92)
                  {
                    v95 = v92;
                    v96 = __PLSLogSharedInstance();
                    if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315394;
                      v131 = "[PSGraphCompiler createReadersForTransitionBlock:]";
                      v132 = 1024;
                      *v133 = v95;
                      _os_log_impl(&dword_25EA3A000, v96, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
                    }
                  }

                  else
                  {
                    usleep(0x1E8480u);
                  }

LABEL_63:
                  abort_with_reason();
                }

                *([v50 executionContext] + 16) = _get_iosurface_count;
                *([v50 executionContext] + 24) = _get_iosurfaces;
                prm_mgr = v109->_prm_mgr;
                *([v50 executionContext] + 32) = prm_mgr;
              }
            }

            v108 = [v104 countByEnumeratingWithState:&v122 objects:v138 count:16];
          }

          while (v108);
        }

        v8 = v100 + 1;
      }

      while (v100 + 1 != v98);
      v98 = [obj countByEnumeratingWithState:&v126 objects:v139 count:16];
    }

    while (v98);
  }

  v78 = *MEMORY[0x277D85DE8];
}

- (void)resolveStreamDomainsForTransitionBlock:(id)a3
{
  v82 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_DEFAULT, "Resolving stream domains.", buf, 2u);
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v7 = [v4 preTransitionGraphs];
  [v6 unionSet:v7];

  v8 = [v4 removedGraphs];
  [v6 minusSet:v8];

  context = self->_context;
  v10 = [v4 postTransitionGraphs];
  v70 = 0;
  LOBYTE(context) = PSGraphResolveStreamDomains();
  v11 = 0;

  if ((context & 1) == 0)
  {
    goto LABEL_39;
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v12 = [v4 postTransitionGraphs];
  v13 = [v12 countByEnumeratingWithState:&v66 objects:v81 count:16];
  if (!v13)
  {
    goto LABEL_12;
  }

  v14 = v13;
  v15 = *v67;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v67 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v66 + 1) + 8 * i);
      v18 = [v17 resolvedDomain];

      if (!v18)
      {
        [(PSGraphCompiler *)buf resolveStreamDomainsForTransitionBlock:v17];
LABEL_31:
        v61 = 0;
        v38 = [v18 name];
        v39 = [v38 UTF8String];
        v40 = [v17 description];
        v41 = [v40 UTF8String];
        v42 = [v12 description];
        asprintf(&v61, "Stream domain for common graph %s changed during transition. Pre-transition domain: %s. Post-transition domain: %s.", v39, v41, [v42 UTF8String]);

        v43 = __PLSLogSharedInstance();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
        {
          v44 = [v18 name];
          v45 = [v44 UTF8String];
          v46 = [v17 description];
          v47 = [v46 UTF8String];
          v48 = [v12 description];
          v49 = [v48 UTF8String];
          *buf = 136316162;
          v73 = "[PSGraphCompiler resolveStreamDomainsForTransitionBlock:]";
          v74 = 1024;
          *v75 = 1691;
          *&v75[4] = 2080;
          *&v75[6] = v45;
          v76 = 2080;
          v77 = v47;
          v78 = 2080;
          v79 = v49;
          _os_log_impl(&dword_25EA3A000, v43, OS_LOG_TYPE_FAULT, "%s:%d Stream domain for common graph %s changed during transition. Pre-transition domain: %s. Post-transition domain: %s.", buf, 0x30u);
        }

        v50 = OSLogFlushBuffers();
        if (v50)
        {
          v51 = v50;
          v52 = __PLSLogSharedInstance();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v73 = "[PSGraphCompiler resolveStreamDomainsForTransitionBlock:]";
            v74 = 1024;
            *v75 = v51;
            _os_log_impl(&dword_25EA3A000, v52, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
          }
        }

        else
        {
          usleep(0x1E8480u);
        }

        abort_with_reason();
LABEL_39:
        [(PSGraphCompiler *)buf resolveStreamDomainsForTransitionBlock:v11];
      }
    }

    v14 = [v12 countByEnumeratingWithState:&v66 objects:v81 count:16];
  }

  while (v14);
LABEL_12:

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v19 = v6;
  v20 = [v19 countByEnumeratingWithState:&v62 objects:v80 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v63;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v63 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v18 = *(*(&v62 + 1) + 8 * j);
        v17 = [(NSMapTable *)self->_priorGraphDomains objectForKey:v18];
        v12 = [v18 resolvedDomain];
        if (([v17 isEqual:v12] & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v62 objects:v80 count:16];
    }

    while (v21);
  }

  v53 = v19;
  v54 = v11;

  [(NSMapTable *)self->_priorGraphDomains removeAllObjects];
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = v4;
  obj = [v4 postTransitionGraphs];
  v24 = [obj countByEnumeratingWithState:&v57 objects:v71 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v58;
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v58 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v57 + 1) + 8 * k);
        v29 = __PLSLogSharedInstance();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          v30 = [v28 resolvedDomain];
          v31 = [v30 description];
          v32 = [v31 UTF8String];
          v33 = [v28 name];
          v34 = [v33 UTF8String];
          *buf = 136315394;
          v73 = v32;
          v74 = 2080;
          *v75 = v34;
          _os_log_impl(&dword_25EA3A000, v29, OS_LOG_TYPE_DEBUG, "STREAMDOMAIN: Resolved to domain [%s] for graph %s", buf, 0x16u);
        }

        priorGraphDomains = self->_priorGraphDomains;
        v36 = [v28 resolvedDomain];
        [(NSMapTable *)priorGraphDomains setObject:v36 forKey:v28];
      }

      v25 = [obj countByEnumeratingWithState:&v57 objects:v71 count:16];
    }

    while (v25);
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)createSourceTasksForTransitionBlock:(id)a3
{
  v74 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v56 = self;
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  WeakRetained[6] = 0;

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v46 = v4;
  obj = [v4 addedGraphs];
  v49 = [obj countByEnumeratingWithState:&v65 objects:v73 count:16];
  if (v49)
  {
    v48 = *v66;
    do
    {
      v6 = 0;
      do
      {
        if (*v66 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v50 = v6;
        v7 = *(*(&v65 + 1) + 8 * v6);
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v51 = [v7 sourceTasks];
        v53 = [v51 countByEnumeratingWithState:&v61 objects:v72 count:16];
        if (v53)
        {
          v52 = *v62;
          do
          {
            v8 = 0;
            do
            {
              if (*v62 != v52)
              {
                objc_enumerationMutation(v51);
              }

              v9 = *(*(&v61 + 1) + 8 * v8);
              retainedSourceWriterBlocks = v56->_retainedSourceWriterBlocks;
              v11 = [v9 name];
              v12 = [(NSMutableDictionary *)retainedSourceWriterBlocks objectForKeyedSubscript:v11];

              if (v12)
              {
                [(PSGraphCompiler *)buf createSourceTasksForTransitionBlock:v9];
              }

              v54 = v9;
              v55 = v8;
              v59 = 0u;
              v60 = 0u;
              v57 = 0u;
              v58 = 0u;
              v13 = [v9 outputs];
              v14 = [v13 countByEnumeratingWithState:&v57 objects:v71 count:16];
              if (v14)
              {
                v15 = v14;
                v16 = *v58;
                do
                {
                  for (i = 0; i != v15; ++i)
                  {
                    if (*v58 != v16)
                    {
                      objc_enumerationMutation(v13);
                    }

                    v18 = *(*(&v57 + 1) + 8 * i);
                    v19 = [v18 resourceKey];
                    v20 = [v19 UTF8String];
                    if (v20)
                    {
                      v21 = *v20;
                      if (*v20)
                      {
                        v22 = v20 + 1;
                        LODWORD(v23) = -2128831035;
                        do
                        {
                          v23 = 16777619 * (v23 ^ v21);
                          v24 = *v22++;
                          v21 = v24;
                        }

                        while (v24);
                      }

                      else
                      {
                        v23 = 2166136261;
                      }
                    }

                    else
                    {
                      v23 = 0;
                    }

                    v25 = objc_loadWeakRetained(&v56->_transitionManager);
                    v26 = [v25 executionSession];
                    v27 = v26[1];
                    v28 = [v18 resourceKey];
                    ps_frame_history_buffer_service_map_string_with_hash(v27, [v28 UTF8String], v23);
                  }

                  v15 = [v13 countByEnumeratingWithState:&v57 objects:v71 count:16];
                }

                while (v15);
              }

              v29 = objc_loadWeakRetained(&v56->_transitionManager);
              ++v29[6];

              v30 = __PLSLogSharedInstance();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                v31 = [v54 name];
                v32 = [v31 UTF8String];
                *buf = 136315138;
                v70 = v32;
                _os_log_impl(&dword_25EA3A000, v30, OS_LOG_TYPE_DEFAULT, "Creating source task for key %s.", buf, 0xCu);
              }

              v33 = objc_loadWeakRetained(&v56->_transitionMonitor);
              [v33 lock];

              v34 = MEMORY[0x277CCACA8];
              v35 = [v54 name];
              v36 = [v34 stringWithFormat:@"%@ (PSSourceTask)", v35];
              v37 = objc_loadWeakRetained(&v56->_transitionMonitor);
              [v37 setTransitionStateBufferInitCurResource:v36];

              v38 = objc_loadWeakRetained(&v56->_transitionMonitor);
              [v38 unlock];

              v39 = [PSSourceWriterBlock alloc];
              synchronizer = v56->_synchronizer;
              v41 = objc_loadWeakRetained(&v56->_transitionManager);
              v42 = [(PSSourceWriterBlock *)v39 initWithSourceTask:v54 synchronizer:synchronizer transitionManager:v41 frameStepping:[(PSGraphCompiler *)v56 deterministicReplay]];

              [(PSSourceWriterBlock *)v42 setupResultsWithContext:v56->_context device:v56->_device];
              v43 = v56->_retainedSourceWriterBlocks;
              v44 = [v54 name];
              [(NSMutableDictionary *)v43 setObject:v42 forKeyedSubscript:v44];

              v8 = v55 + 1;
            }

            while (v55 + 1 != v53);
            v53 = [v51 countByEnumeratingWithState:&v61 objects:v72 count:16];
          }

          while (v53);
        }

        v6 = v50 + 1;
      }

      while (v50 + 1 != v49);
      v49 = [obj countByEnumeratingWithState:&v65 objects:v73 count:16];
    }

    while (v49);
  }

  v45 = *MEMORY[0x277D85DE8];
}

- (void)initializeLocalSystemSourcesForTransitionBlock:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  v6 = [WeakRetained executionSession];
  v7 = [v6 shouldUseOptimizedVsyncPath];

  if ((v7 & 1) == 0)
  {
    v8 = [v4 preTransitionGraphs];
    v27 = v4;
    v9 = [v4 postTransitionGraphs];
    v10 = [(PSGraphCompiler *)self getAddedResourcesWithOldGraphs:v8 withNewGraphs:v9];

    v26 = v10;
    [(PSGraphCompiler *)self extractLocalSystemSourceKeys:v10];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v32 = 0u;
    v11 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v30;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v30 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v29 + 1) + 8 * i);
          v16 = [v15 UTF8String];
          if (v16)
          {
            v17 = *v16;
            if (*v16)
            {
              v18 = v16 + 1;
              LODWORD(v19) = -2128831035;
              do
              {
                v19 = 16777619 * (v19 ^ v17);
                v20 = *v18++;
                v17 = v20;
              }

              while (v20);
            }

            else
            {
              v19 = 2166136261;
            }
          }

          else
          {
            v19 = 0;
          }

          v21 = objc_loadWeakRetained(&self->_transitionManager);
          v22 = [v21 executionSession];
          ps_frame_history_buffer_service_map_string_with_hash(v22[1], [v15 UTF8String], v19);
        }

        v12 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v12);
    }

    v4 = v27;
    v23 = [v27 postTransitionGraphs];
    v24 = [(PSGraphCompiler *)self getAllOutputsForGraphs:v23];
    [obj minusSet:v24];

    [(PSGraphCompiler *)self startLocalSystemSources:obj];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (id)extractLocalSystemSourceKeys:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [(PLSDevice *)self->_device propertiesForKey:v11, v15];
        if ([v12 type] == 1 || objc_msgSend(v12, "type") == 7)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)startLocalSystemSources:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        WeakRetained = objc_loadWeakRetained(&self->_transitionMonitor);
        [WeakRetained lock];

        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ (Polaris Source)", v9];
        v12 = objc_loadWeakRetained(&self->_transitionMonitor);
        [v12 setTransitionStateLocalSourceInitCurResource:v11];

        v13 = objc_loadWeakRetained(&self->_transitionMonitor);
        [v13 unlock];

        [(PSLocalStreamManager *)self->_localStreamManager startSourceForKey:v9];
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)createPRMInstancesForTransitionBlock:(id)a3
{
  v488 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v382 = self;
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  v6 = [WeakRetained executionSession];
  v7 = [v6 shouldUseOptimizedVsyncPath];

  if ((v7 & 1) == 0)
  {
    v8 = [v4 addedGraphs];
    v9 = [v8 count];

    if (v9)
    {
      v320 = v4;
      v365 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
      v10 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25EA3A000, v10, OS_LOG_TYPE_DEFAULT, "Creating task instances for transition block.", buf, 2u);
      }

      v466 = 0u;
      v465 = 0u;
      v464 = 0u;
      v463 = 0u;
      obj = [v4 addedGraphs];
      v379 = [obj countByEnumeratingWithState:&v463 objects:v487 count:16];
      if (v379)
      {
        v377 = *v464;
        do
        {
          v11 = 0;
          do
          {
            if (*v464 != v377)
            {
              objc_enumerationMutation(obj);
            }

            v383 = v11;
            v12 = *(*(&v463 + 1) + 8 * v11);
            v459 = 0u;
            v460 = 0u;
            v461 = 0u;
            v462 = 0u;
            v13 = [v12 tasks];
            v14 = [v13 countByEnumeratingWithState:&v459 objects:v486 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = *v460;
              do
              {
                for (i = 0; i != v15; ++i)
                {
                  if (*v460 != v16)
                  {
                    objc_enumerationMutation(v13);
                  }

                  v18 = *(*(&v459 + 1) + 8 * i);
                  v19 = [v18 inputs];
                  v20 = [v19 count];

                  v21 = [v18 outputs];
                  v22 = [v21 count];

                  v23 = __PLSLogSharedInstance();
                  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
                  {
                    v24 = [v18 name];
                    v25 = [v24 UTF8String];
                    *buf = 136380675;
                    v471 = v25;
                    _os_log_impl(&dword_25EA3A000, v23, OS_LOG_TYPE_DEBUG, "Creating task instance for key %{private}s", buf, 0xCu);
                  }

                  v26 = [v18 name];
                  v27 = ps_task_resources_create(v20, v22, [v26 UTF8String], v382->_prm_mgr, 0);

                  prmTaskResources = v382->_prmTaskResources;
                  v29 = [MEMORY[0x277CCAE60] valueWithPointer:v27];
                  v30 = [(PSGraphCompiler *)v382 getGraphTaskHash:v12 withTask:v18];
                  [(NSMapTable *)prmTaskResources setObject:v29 forKey:v30];
                }

                v15 = [v13 countByEnumeratingWithState:&v459 objects:v486 count:16];
              }

              while (v15);
            }

            v11 = v383 + 1;
          }

          while (v383 + 1 != v379);
          v379 = [obj countByEnumeratingWithState:&v463 objects:v487 count:16];
        }

        while (v379);
      }

      v31 = v382;
      v32 = objc_loadWeakRetained(&v382->_transitionManager);
      v32[7] = 0;

      v33 = objc_loadWeakRetained(&v382->_transitionManager);
      v33[4] = 0;

      v34 = objc_loadWeakRetained(&v382->_transitionManager);
      v34[5] = 0;

      v35 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25EA3A000, v35, OS_LOG_TYPE_DEFAULT, "Creating writer instances.", buf, 2u);
      }

      v458 = 0u;
      v457 = 0u;
      v456 = 0u;
      v455 = 0u;
      v36 = v320;
      v331 = [v320 addedGraphs];
      v37 = v365;
      v333 = [v331 countByEnumeratingWithState:&v455 objects:v485 count:16];
      if (v333)
      {
        v336 = *v456;
        do
        {
          v38 = 0;
          do
          {
            if (*v456 != v336)
            {
              objc_enumerationMutation(v331);
            }

            v338 = v38;
            v39 = *(*(&v455 + 1) + 8 * v38);
            v40 = __PLSLogSharedInstance();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              v41 = [v39 name];
              v42 = [v41 UTF8String];
              *buf = 136315138;
              v471 = v42;
              _os_log_impl(&dword_25EA3A000, v40, OS_LOG_TYPE_DEFAULT, "Creating writer instances for graph %s.", buf, 0xCu);
            }

            v454 = 0u;
            v453 = 0u;
            v452 = 0u;
            v451 = 0u;
            v341 = [v39 tasks];
            v348 = [v341 countByEnumeratingWithState:&v451 objects:v484 count:16];
            if (v348)
            {
              v344 = *v452;
              do
              {
                v43 = 0;
                do
                {
                  if (*v452 != v344)
                  {
                    objc_enumerationMutation(v341);
                  }

                  v356 = v43;
                  v44 = *(*(&v451 + 1) + 8 * v43);
                  v45 = objc_loadWeakRetained(&v31->_transitionManager);
                  ++v45[7];

                  v46 = v31->_prmTaskResources;
                  v47 = [(PSGraphCompiler *)v31 getGraphTaskHash:v39 withTask:v44];
                  v48 = [v46 objectForKey:v47];

                  v378 = [v48 pointerValue];
                  if (!v378)
                  {
                    goto LABEL_213;
                  }

                  v352 = v48;
                  v450 = 0u;
                  v449 = 0u;
                  v448 = 0u;
                  v447 = 0u;
                  v361 = [v44 outputs];
                  v31 = v382;
                  v380 = [v361 countByEnumeratingWithState:&v447 objects:v483 count:16];
                  if (v380)
                  {
                    v366 = v44;
                    obja = *v448;
                    do
                    {
                      v49 = 0;
                      do
                      {
                        if (*v448 != obja)
                        {
                          objc_enumerationMutation(v361);
                        }

                        v384 = v49;
                        v46 = *(*(&v447 + 1) + 8 * v49);
                        v50 = objc_loadWeakRetained(&v31->_transitionManager);
                        ++v50[5];

                        v51 = __PLSLogSharedInstance();
                        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
                        {
                          v52 = [v44 name];
                          v53 = [v52 UTF8String];
                          v54 = [v46 resourceKey];
                          v55 = [v54 UTF8String];
                          *buf = 136380931;
                          v471 = v53;
                          v472 = 2081;
                          *v473 = v55;
                          _os_log_impl(&dword_25EA3A000, v51, OS_LOG_TYPE_DEBUG, "Creating writer instance for task %{private}s, resource %{private}s.", buf, 0x16u);
                        }

                        v56 = objc_loadWeakRetained(&v31->_transitionMonitor);
                        [v56 lock];

                        v57 = MEMORY[0x277CCACA8];
                        v58 = [v46 resourceKey];
                        v59 = [v39 name];
                        v60 = [v57 stringWithFormat:@"%@ (Output for %@)", v58, v59];
                        v61 = objc_loadWeakRetained(&v31->_transitionMonitor);
                        [v61 setTransitionStateBufferInitCurResource:v60];

                        v62 = objc_loadWeakRetained(&v31->_transitionMonitor);
                        [v62 unlock];

                        v63 = ps_prm_opts_create();
                        context = v31->_context;
                        v65 = [v46 resourceKey];
                        v390 = [(PSContext *)context resourceStreamForKey:v65];

                        v66 = [v46 resourceKey];
                        v67 = [v46 capacity];
                        v68 = v31->_context;
                        retainedBufferIndexers = v31->_retainedBufferIndexers;
                        v70 = objc_loadWeakRetained(&v31->_transitionManager);
                        v71 = [v70 executionSession];
                        +[PSGraphCompiler populateWriterOpts:forKey:withCapacity:forGraph:withResStream:withContext:retainedBufferIndexers:withGSM:](PSGraphCompiler, "populateWriterOpts:forKey:withCapacity:forGraph:withResStream:withContext:retainedBufferIndexers:withGSM:", v63, v66, v67, v39, v390, v68, retainedBufferIndexers, [v71 gsm]);

                        v72 = [v46 retainedInputs];
                        v73 = ps_task_resources_add_output(v378, v63, [v72 count]);

                        ps_prm_opts_destroy(v63);
                        v74 = [v46 retainedInputs];
                        v75 = [v74 count];

                        if (v75)
                        {
                          v76 = [v365 objectForKey:v46];

                          if (v76)
                          {
                            [(PSGraphCompiler *)buf createPRMInstancesForTransitionBlock:v46];
LABEL_187:
                            v412[0] = 0;
                            v266 = [v46 resourceKey];
                            v267 = [v266 UTF8String];
                            v268 = [v76 name];
                            v269 = [v268 UTF8String];
                            v270 = [v378 name];
                            asprintf(v412, "Mismatched task input found for retained bundle input %s for task %s, graph %s", v267, v269, [v270 UTF8String]);

                            v44 = __PLSLogSharedInstance();
                            if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
                            {
                              v46 = [v46 resourceKey];
                              v271 = [v46 UTF8String];
                              v272 = [v76 name];
                              v273 = [v272 UTF8String];
                              v274 = [v378 name];
                              v275 = [v274 UTF8String];
                              *buf = 136316162;
                              v471 = "[PSGraphCompiler createPRMInstancesForTransitionBlock:]";
                              v472 = 1024;
                              *v473 = 2222;
                              *&v473[4] = 2080;
                              *&v473[6] = v271;
                              *&v473[14] = 2080;
                              *&v473[16] = v273;
                              *&v473[24] = 2080;
                              *&v473[26] = v275;
                              _os_log_impl(&dword_25EA3A000, v44, OS_LOG_TYPE_FAULT, "%s:%d Mismatched task input found for retained bundle input %s for task %s, graph %s", buf, 0x30u);
                            }

                            v276 = OSLogFlushBuffers();
                            if (v276)
                            {
                              v44 = v276;
                              v277 = __PLSLogSharedInstance();
                              if (os_log_type_enabled(v277, OS_LOG_TYPE_ERROR))
                              {
                                goto LABEL_202;
                              }

                              goto LABEL_211;
                            }

                            goto LABEL_208;
                          }

                          v77 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v73];
                          [v365 setObject:v77 forKey:v46];
                        }

                        v31 = v382;
                        v49 = v384 + 1;
                        v44 = v366;
                      }

                      while (v380 != v384 + 1);
                      v380 = [v361 countByEnumeratingWithState:&v447 objects:v483 count:16];
                    }

                    while (v380);
                  }

                  v43 = v356 + 1;
                  v37 = v365;
                }

                while (v356 + 1 != v348);
                v348 = [v341 countByEnumeratingWithState:&v451 objects:v484 count:16];
              }

              while (v348);
            }

            v38 = v338 + 1;
          }

          while (v338 + 1 != v333);
          v36 = v320;
          v333 = [v331 countByEnumeratingWithState:&v455 objects:v485 count:16];
        }

        while (v333);
      }

      v78 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25EA3A000, v78, OS_LOG_TYPE_DEFAULT, "Creating reader instances.", buf, 2u);
      }

      v446 = 0u;
      v445 = 0u;
      v444 = 0u;
      v443 = 0u;
      v79 = [v36 addedGraphs];
      v80 = [v79 countByEnumeratingWithState:&v443 objects:v482 count:16];
      if (v80)
      {
        v81 = *v444;
        v326 = 136315394;
        v311 = *v444;
        v312 = v79;
        do
        {
          v82 = 0;
          v313 = v80;
          do
          {
            if (*v444 != v81)
            {
              objc_enumerationMutation(v79);
            }

            v316 = v82;
            v83 = *(*(&v443 + 1) + 8 * v82);
            v84 = __PLSLogSharedInstance();
            if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
            {
              v85 = [v83 name];
              v86 = [v85 UTF8String];
              *buf = 136315138;
              v471 = v86;
              _os_log_impl(&dword_25EA3A000, v84, OS_LOG_TYPE_DEFAULT, "Creating reader instances for graph %s.", buf, 0xCu);
            }

            v87 = [(PSGraphCompiler *)v31 getIntermediateSources:v83 withTransitionBlock:v36];
            v88 = [(PSGraphCompiler *)v31 getSystemSources:v83 withTransitionBlock:v36 withIntermediateSources:v87];
            v89 = objc_alloc_init(MEMORY[0x277CBEB58]);
            v314 = v88;
            [v89 unionSet:v88];
            v357 = v89;
            v315 = v87;
            [v89 unionSet:v87];
            v90 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
            v91 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
            v381 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v385 = objc_alloc_init(MEMORY[0x277CBEB58]);
            v92 = objc_alloc_init(MEMORY[0x277CBEB58]);
            v93 = objc_alloc_init(MEMORY[0x277CBEB58]);
            v94 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v95 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v96 = v83;
            v97 = objc_alloc_init(MEMORY[0x277CBEB38]);
            [v90 setObject:v385 forKey:&unk_2870CAC38];
            [v90 setObject:v92 forKey:&unk_2870CAC50];
            v391 = v90;
            [v90 setObject:v93 forKey:&unk_2870CAC68];
            [v91 setObject:v94 forKey:&unk_2870CAC38];
            [v91 setObject:v95 forKey:&unk_2870CAC50];
            v332 = v91;
            [v91 setObject:v97 forKey:&unk_2870CAC68];

            v442 = 0u;
            v441 = 0u;
            v440 = 0u;
            v439 = 0u;
            v378 = v96;
            v362 = [v96 tasks];
            objb = [v362 countByEnumeratingWithState:&v439 objects:v481 count:16];
            if (objb)
            {
              v367 = *v440;
              do
              {
                v98 = 0;
                do
                {
                  if (*v440 != v367)
                  {
                    objc_enumerationMutation(v362);
                  }

                  v386 = v98;
                  v99 = *(*(&v439 + 1) + 8 * v98);
                  v435 = 0u;
                  v436 = 0u;
                  v437 = 0u;
                  v438 = 0u;
                  v100 = [v99 inputs];
                  v101 = [v100 countByEnumeratingWithState:&v435 objects:v480 count:16];
                  if (v101)
                  {
                    v102 = v101;
                    v103 = *v436;
                    do
                    {
                      for (j = 0; j != v102; ++j)
                      {
                        if (*v436 != v103)
                        {
                          objc_enumerationMutation(v100);
                        }

                        v105 = *(*(&v435 + 1) + 8 * j);
                        v106 = [v105 resolvedResourceKey];
                        if ([v357 containsObject:v106])
                        {
                          v107 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v105, "type")}];
                          v108 = [v391 objectForKey:v107];

                          v109 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v105, "type")}];
                          v110 = [v332 objectForKey:v109];

                          if (v108)
                          {
                            v111 = v110 == 0;
                          }

                          else
                          {
                            v111 = 1;
                          }

                          if (!v111)
                          {
                            [v108 addObject:v106];
                            v112 = [v110 objectForKeyedSubscript:v106];
                            v113 = v112;
                            if (!v112 || (v114 = [v112 unsignedLongValue], objc_msgSend(v105, "capacity") > v114))
                            {
                              v115 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v105, "capacity")}];
                              [v110 setObject:v115 forKeyedSubscript:v106];
                            }
                          }

                          v116 = [v381 objectForKeyedSubscript:v106];
                          v117 = v116;
                          if (!v116 || (v118 = [v116 unsignedLongValue], objc_msgSend(v105, "forwardingCount") > v118))
                          {
                            v119 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v105, "forwardingCount")}];
                            [v381 setObject:v119 forKeyedSubscript:v106];
                          }
                        }
                      }

                      v102 = [v100 countByEnumeratingWithState:&v435 objects:v480 count:16];
                    }

                    while (v102);
                  }

                  v98 = v386 + 1;
                }

                while ((v386 + 1) != objb);
                objb = [v362 countByEnumeratingWithState:&v439 objects:v481 count:16];
              }

              while (objb);
            }

            v434 = 0u;
            v432 = 0u;
            v433 = 0u;
            v431 = 0u;
            v120 = v391;
            v121 = [v120 countByEnumeratingWithState:&v431 objects:v479 count:16];
            if (v121)
            {
              v122 = v121;
              v123 = 0;
              v124 = *v432;
              do
              {
                for (k = 0; k != v122; ++k)
                {
                  if (*v432 != v124)
                  {
                    objc_enumerationMutation(v120);
                  }

                  v126 = [v120 objectForKey:*(*(&v431 + 1) + 8 * k)];
                  v123 += [v126 count];
                }

                v122 = [v120 countByEnumeratingWithState:&v431 objects:v479 count:16];
              }

              while (v122);
            }

            else
            {
              v123 = 0;
            }

            prm_mgr = v382->_prm_mgr;
            v128 = [v378 name];
            v129 = [v128 UTF8String];
            v130 = [v378 systemPulseStride];
            v131 = ps_grouped_source_pool_create(prm_mgr, v129, v123, v130, 1, [(PSGraphCompiler *)v382 deterministicReplay]);

            prmGroupedSourcePools = v382->_prmGroupedSourcePools;
            v133 = v378;
            v363 = v131;
            v134 = [MEMORY[0x277CCAE60] valueWithPointer:v131];
            [(NSMapTable *)prmGroupedSourcePools setObject:v134 forKey:v378];

            v135 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
            v136 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v137 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v138 = objc_alloc_init(MEMORY[0x277CBEB38]);
            [v135 setObject:v136 forKey:&unk_2870CAC38];
            [v135 setObject:v137 forKey:&unk_2870CAC50];
            v337 = v135;
            [v135 setObject:v138 forKey:&unk_2870CAC68];

            v319 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
            v427 = 0u;
            v428 = 0u;
            v429 = 0u;
            v430 = 0u;
            v324 = v120;
            v353 = [v324 countByEnumeratingWithState:&v427 objects:v478 count:16];
            if (v353)
            {
              v349 = *v428;
              do
              {
                v139 = 0;
                do
                {
                  if (*v428 != v349)
                  {
                    objc_enumerationMutation(v324);
                  }

                  v358 = v139;
                  v140 = *(*(&v427 + 1) + 8 * v139);
                  v141 = [v140 integerValue];
                  v392 = [v337 objectForKey:v140];
                  v142 = [v324 objectForKey:v140];
                  v387 = [v332 objectForKey:v140];
                  v423 = 0u;
                  v424 = 0u;
                  v425 = 0u;
                  v426 = 0u;
                  v368 = v142;
                  v143 = [v368 countByEnumeratingWithState:&v423 objects:v477 count:16];
                  if (v143)
                  {
                    v144 = v143;
                    objc = *v424;
                    do
                    {
                      for (m = 0; m != v144; ++m)
                      {
                        if (*v424 != objc)
                        {
                          objc_enumerationMutation(v368);
                        }

                        v146 = *(*(&v423 + 1) + 8 * m);
                        v147 = [v387 objectForKeyedSubscript:v146];
                        v148 = [v147 unsignedLongValue];

                        v149 = [v381 objectForKeyedSubscript:v146];
                        v150 = [v149 unsignedLongValue];

                        v151 = __PLSLogSharedInstance();
                        if (os_log_type_enabled(v151, OS_LOG_TYPE_DEBUG))
                        {
                          v152 = [v146 UTF8String];
                          *buf = 134218754;
                          v471 = v141;
                          v472 = 2080;
                          *v473 = v152;
                          *&v473[8] = 2048;
                          *&v473[10] = v148;
                          *&v473[18] = 2048;
                          *&v473[20] = v150;
                          _os_log_impl(&dword_25EA3A000, v151, OS_LOG_TYPE_DEBUG, "Creating a GSP res (type %lu) for key %s, capacity %llu, fwdCount:%llu", buf, 0x2Au);
                        }

                        v153 = objc_loadWeakRetained(&v382->_transitionMonitor);
                        [v153 lock];

                        v154 = MEMORY[0x277CCACA8];
                        v155 = [v133 name];
                        v156 = [v154 stringWithFormat:@"%@ (GSP input for %@)", v146, v155];
                        v157 = objc_loadWeakRetained(&v382->_transitionMonitor);
                        [v157 setTransitionStateBufferInitCurResource:v156];

                        v133 = v378;
                        v158 = objc_loadWeakRetained(&v382->_transitionMonitor);
                        [v158 unlock];

                        v159 = ps_prm_opts_create();
                        [(PSGraphCompiler *)v382 populateReaderOpts:v159 forKey:v146 forGraph:v378 withCapacity:v148 withForwardingCount:v150];
                        v160 = objc_loadWeakRetained(&v382->_transitionManager);
                        [v160 isBiometricKit];

                        v161 = ps_grouped_source_pool_add_input(v363, v159, v141);
                        v162 = objc_loadWeakRetained(&v382->_transitionManager);
                        [v162 isBiometricKit];

                        ps_prm_opts_destroy(v159);
                        v163 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v161];
                        [v392 setObject:v163 forKeyedSubscript:v146];
                      }

                      v144 = [v368 countByEnumeratingWithState:&v423 objects:v477 count:16];
                    }

                    while (v144);
                  }

                  v139 = v358 + 1;
                }

                while (v358 + 1 != v353);
                v353 = [v324 countByEnumeratingWithState:&v427 objects:v478 count:16];
              }

              while (v353);
            }

            v421 = 0u;
            v422 = 0u;
            v419 = 0u;
            v420 = 0u;
            v317 = [v133 tasks];
            v36 = v320;
            v31 = v382;
            v321 = [v317 countByEnumeratingWithState:&v419 objects:v476 count:16];
            if (v321)
            {
              v318 = *v420;
              do
              {
                v164 = 0;
                do
                {
                  if (*v420 != v318)
                  {
                    objc_enumerationMutation(v317);
                  }

                  v323 = v164;
                  v46 = *(*(&v419 + 1) + 8 * v164);
                  v165 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
                  [v319 setObject:v165 forKey:v46];
                  v166 = v31->_prmTaskResources;
                  v167 = [(PSGraphCompiler *)v31 getGraphTaskHash:v133 withTask:v46];
                  v168 = [(NSMapTable *)v166 objectForKey:v167];

                  v322 = v168;
                  v169 = [v168 pointerValue];
                  if (!v169)
                  {
                    goto LABEL_214;
                  }

                  v170 = v169;
                  v417 = 0u;
                  v418 = 0u;
                  v415 = 0u;
                  v416 = 0u;
                  v327 = [v46 inputs];
                  v342 = [v327 countByEnumeratingWithState:&v415 objects:v475 count:16];
                  if (v342)
                  {
                    v171 = v46;
                    v334 = *v416;
                    v329 = v46;
                    v388 = v165;
                    v339 = v170;
                    do
                    {
                      v172 = 0;
                      do
                      {
                        if (*v416 != v334)
                        {
                          objc_enumerationMutation(v327);
                        }

                        v359 = v172;
                        v173 = *(*(&v415 + 1) + 8 * v172);
                        v174 = __PLSLogSharedInstance();
                        if (os_log_type_enabled(v174, OS_LOG_TYPE_DEBUG))
                        {
                          v175 = [v171 name];
                          v176 = [v175 UTF8String];
                          v177 = [v173 resourceKey];
                          v178 = [v177 UTF8String];
                          *buf = 136315394;
                          v471 = v176;
                          v31 = v382;
                          v472 = 2080;
                          *v473 = v178;
                          _os_log_impl(&dword_25EA3A000, v174, OS_LOG_TYPE_DEBUG, "Populating input for task %s, resource %s", buf, 0x16u);
                        }

                        v179 = [v173 resolvedResourceKey];
                        v180 = objc_loadWeakRetained(&v31->_transitionManager);
                        ++v180[4];

                        v181 = objc_loadWeakRetained(&v31->_transitionMonitor);
                        [v181 lock];

                        v182 = MEMORY[0x277CCACA8];
                        v183 = [v173 resourceKey];
                        v184 = [v133 name];
                        v185 = [v182 stringWithFormat:@"%@ (Input for %@)", v183, v184];
                        v186 = objc_loadWeakRetained(&v382->_transitionMonitor);
                        [v186 setTransitionStateBufferInitCurResource:v185];

                        v187 = v179;
                        v31 = v382;

                        v188 = objc_loadWeakRetained(&v382->_transitionMonitor);
                        [v188 unlock];

                        v189 = ps_prm_opts_create();
                        v414 = 0;
                        v190 = [v173 resourceKey];
                        LODWORD(v183) = [(PSGraphCompiler *)v382 getStreamOptionsForKey:v190 options:&v414];

                        v191 = &v414;
                        if (!v183)
                        {
                          v191 = 0;
                        }

                        v354 = v191;
                        objd = v189;
                        -[PSGraphCompiler populateReaderOpts:forKey:forGraph:withCapacity:withForwardingCount:](v382, "populateReaderOpts:forKey:forGraph:withCapacity:withForwardingCount:", v189, v187, v133, [v173 capacity], objc_msgSend(v173, "forwardingCount"));
                        v192 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v173, "type")}];
                        v193 = [v337 objectForKey:v192];

                        v369 = v193;
                        if (v193 && ([v193 objectForKeyedSubscript:v187], v194 = objc_claimAutoreleasedReturnValue(), v194, v194))
                        {
                          v195 = __PLSLogSharedInstance();
                          if (os_log_type_enabled(v195, OS_LOG_TYPE_DEBUG))
                          {
                            v196 = [v187 UTF8String];
                            v197 = [v171 name];
                            v198 = [v197 UTF8String];
                            v199 = [v133 name];
                            v200 = [v199 UTF8String];
                            v201 = [v173 type];
                            *buf = 136381443;
                            v471 = v196;
                            v472 = 2081;
                            *v473 = v198;
                            v165 = v388;
                            *&v473[8] = 2081;
                            *&v473[10] = v200;
                            *&v473[18] = 2048;
                            *&v473[20] = v201;
                            _os_log_impl(&dword_25EA3A000, v195, OS_LOG_TYPE_DEBUG, "Initializing key %{private}s in task %{private}s, graph %{private}s as a (%lu) GSP resource.", buf, 0x2Au);

                            v170 = v339;
                            v31 = v382;
                          }

                          v202 = [v369 objectForKeyedSubscript:v187];
                          v203 = [v202 unsignedIntValue];

                          v350 = v363;
                        }

                        else
                        {
                          v203 = 0;
                          v350 = 0;
                        }

                        *v412 = 0u;
                        v413 = 0u;
                        v204 = objc_loadWeakRetained(&v31->_transitionManager);

                        if (v204)
                        {
                          v205 = objc_loadWeakRetained(&v31->_transitionManager);
                          [v205 executionSession];
                          v206 = v345 = v203;
                          v207 = [v206 caNameHash];
                          LODWORD(v412[0]) = [v207 unsignedIntValue];

                          v208 = [v133 caNameHash];
                          HIDWORD(v412[0]) = [v208 unsignedIntValue];

                          v209 = [v133 systemPulseStride];
                          v412[1] = [v209 unsignedLongLongValue];

                          v210 = +[PSCoreAnalyticsIDManager sharedInstance];
                          v211 = [v173 resourceKey];
                          v212 = [v133 caName];
                          v213 = objc_loadWeakRetained(&v382->_transitionManager);
                          v214 = [v213 executionSession];
                          v215 = [v214 caName];
                          HIDWORD(v413) = [v210 opaqueIDForResource:v211 graph:v212 session:v215 bufferExpired:1];

                          v171 = v329;
                          v216 = +[PSCoreAnalyticsIDManager sharedInstance];
                          v217 = [v173 resourceKey];
                          v218 = [v133 caName];
                          v219 = objc_loadWeakRetained(&v382->_transitionManager);
                          v220 = [v219 executionSession];
                          v221 = [v220 caName];
                          DWORD2(v413) = [v216 opaqueIDForResource:v217 graph:v218 session:v221 bufferExpired:0];

                          v170 = v339;
                          v165 = v388;

                          v31 = v382;
                          v203 = v345;
                        }

                        v222 = [v173 type];
                        if (v222 >= 3)
                        {
                          if (v222 != 3)
                          {
                            v234 = 0;
                            goto LABEL_151;
                          }

                          v346 = v203;
                          v410 = 0u;
                          v411 = 0u;
                          v408 = 0u;
                          v409 = 0u;
                          v393 = [v171 inputs];
                          v224 = [v393 countByEnumeratingWithState:&v408 objects:v474 count:16];
                          if (!v224)
                          {

LABEL_205:
                            v407 = 0;
                            v300 = [v173 resourceKey];
                            v46 = [v300 UTF8String];
                            v301 = [v133 name];
                            v302 = [v301 UTF8String];
                            v303 = [v171 name];
                            asprintf(&v407, "Could not find source input for synced key %s in graph %s, task %s", v46, v302, [v303 UTF8String]);

                            v44 = __PLSLogSharedInstance();
                            if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
                            {
                              [v173 resourceKey];
                              v305 = v304 = v171;
                              v306 = [v305 UTF8String];
                              v46 = [v133 name];
                              v307 = [v46 UTF8String];
                              v308 = [v304 name];
                              v309 = [v308 UTF8String];
                              *buf = 136316162;
                              v471 = "[PSGraphCompiler createPRMInstancesForTransitionBlock:]";
                              v472 = 1024;
                              *v473 = 2170;
                              *&v473[4] = 2080;
                              *&v473[6] = v306;
                              *&v473[14] = 2080;
                              *&v473[16] = v307;
                              *&v473[24] = 2080;
                              *&v473[26] = v309;
                              _os_log_impl(&dword_25EA3A000, v44, OS_LOG_TYPE_FAULT, "%s:%d Could not find source input for synced key %s in graph %s, task %s", buf, 0x30u);
                            }

                            v310 = OSLogFlushBuffers();
                            if (v310)
                            {
                              v44 = v310;
                              v277 = __PLSLogSharedInstance();
                              if (!os_log_type_enabled(v277, OS_LOG_TYPE_ERROR))
                              {
                                goto LABEL_211;
                              }

                              goto LABEL_210;
                            }

LABEL_208:
                            usleep(0x1E8480u);
                            goto LABEL_212;
                          }

                          v225 = v224;
                          v325 = v187;
                          v226 = 0;
                          v223 = 0;
                          v227 = *v409;
                          do
                          {
                            for (n = 0; n != v225; ++n)
                            {
                              if (*v409 != v227)
                              {
                                objc_enumerationMutation(v393);
                              }

                              v229 = *(*(&v408 + 1) + 8 * n);
                              v230 = [v229 resourceKey];
                              v231 = [v173 sourceInputResourceKey];
                              v232 = [v230 isEqualToString:v231];

                              if (v232)
                              {
                                v233 = [v388 objectForKey:v229];
                                v223 = [v233 unsignedIntValue];

                                v226 = 1;
                              }
                            }

                            v225 = [v393 countByEnumeratingWithState:&v408 objects:v474 count:16];
                          }

                          while (v225);

                          v133 = v378;
                          v171 = v329;
                          v165 = v388;
                          v170 = v339;
                          v187 = v325;
                          v203 = v346;
                          if ((v226 & 1) == 0)
                          {
                            goto LABEL_205;
                          }
                        }

                        else
                        {
                          v223 = -1;
                        }

                        v234 = ps_task_resources_add_input(v170, [v173 type], v223, objd, v350, v203, v354, v412, 1);
                        v31 = v382;
LABEL_151:
                        [v173 setBufferExpiryOffset:{-[PSGraphCompiler populateBufferExpiryOffset:forKey:](v31, "populateBufferExpiryOffset:forKey:", *(*(v170 + 40) + 8 * (*(v170 + 12) - 1)), v187)}];
                        v235 = [v165 objectForKey:v173];

                        if (v235)
                        {
                          v407 = 0;
                          v289 = [v173 resourceKey];
                          v46 = [v289 UTF8String];
                          v290 = [v133 name];
                          v291 = [v290 UTF8String];
                          v292 = [v171 name];
                          asprintf(&v407, "Found a duplicate PSTaskInput for key %s in graph %s, task %s", v46, v291, [v292 UTF8String]);

                          v44 = __PLSLogSharedInstance();
                          if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
                          {
                            [v173 resourceKey];
                            v294 = v293 = v171;
                            v295 = [v294 UTF8String];
                            v46 = [v133 name];
                            v296 = [v46 UTF8String];
                            v297 = [v293 name];
                            v298 = [v297 UTF8String];
                            *buf = 136316162;
                            v471 = "[PSGraphCompiler createPRMInstancesForTransitionBlock:]";
                            v472 = 1024;
                            *v473 = 2186;
                            *&v473[4] = 2080;
                            *&v473[6] = v295;
                            *&v473[14] = 2080;
                            *&v473[16] = v296;
                            *&v473[24] = 2080;
                            *&v473[26] = v298;
                            _os_log_impl(&dword_25EA3A000, v44, OS_LOG_TYPE_FAULT, "%s:%d Found a duplicate PSTaskInput for key %s in graph %s, task %s", buf, 0x30u);
                          }

                          v299 = OSLogFlushBuffers();
                          if (v299)
                          {
                            v44 = v299;
                            v277 = __PLSLogSharedInstance();
                            if (!os_log_type_enabled(v277, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_211;
                            }

LABEL_210:
                            *buf = 136315394;
                            v471 = "[PSGraphCompiler createPRMInstancesForTransitionBlock:]";
                            v472 = 1024;
                            *v473 = v44;
                            _os_log_impl(&dword_25EA3A000, v277, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
                            goto LABEL_211;
                          }

                          goto LABEL_208;
                        }

                        v236 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v234];
                        [v165 setObject:v236 forKey:v173];

                        ps_prm_opts_destroy(objd);
                        v172 = v359 + 1;
                      }

                      while ((v359 + 1) != v342);
                      v342 = [v327 countByEnumeratingWithState:&v415 objects:v475 count:16];
                    }

                    while (v342);
                  }

                  v164 = v323 + 1;
                  v36 = v320;
                }

                while (v323 + 1 != v321);
                v321 = [v317 countByEnumeratingWithState:&v419 objects:v476 count:16];
              }

              while (v321);
            }

            v405 = 0u;
            v406 = 0u;
            v403 = 0u;
            v404 = 0u;
            v328 = [v133 tasks];
            v330 = [v328 countByEnumeratingWithState:&v403 objects:v469 count:16];
            if (v330)
            {
              v335 = *v404;
              do
              {
                v237 = 0;
                do
                {
                  if (*v404 != v335)
                  {
                    objc_enumerationMutation(v328);
                  }

                  v343 = v237;
                  v238 = *(*(&v403 + 1) + 8 * v237);
                  v239 = [v319 objectForKey:v238];
                  v240 = v31->_prmTaskResources;
                  v241 = [(PSGraphCompiler *)v31 getGraphTaskHash:v378 withTask:v238];
                  v242 = [(NSMapTable *)v240 objectForKey:v241];

                  v340 = v242;
                  obje = [v242 pointerValue];
                  if (!obje)
                  {
                    [(PSGraphCompiler *)buf createPRMInstancesForTransitionBlock:v238];
                  }

                  v401 = 0u;
                  v402 = 0u;
                  v399 = 0u;
                  v400 = 0u;
                  v347 = [v238 outputs];
                  v355 = [v347 countByEnumeratingWithState:&v399 objects:v468 count:16];
                  if (v355)
                  {
                    v351 = *v400;
                    v370 = v238;
                    do
                    {
                      for (ii = 0; ii != v355; ++ii)
                      {
                        if (*v400 != v351)
                        {
                          objc_enumerationMutation(v347);
                        }

                        v244 = *(*(&v399 + 1) + 8 * ii);
                        v245 = [v244 retainedInputs];
                        v246 = [v245 count];

                        if (v246)
                        {
                          v360 = ii;
                          v247 = [v365 objectForKey:v244];
                          v394 = [v247 unsignedIntValue];

                          v397 = 0u;
                          v398 = 0u;
                          v395 = 0u;
                          v396 = 0u;
                          v364 = [v244 retainedInputs];
                          v248 = [v364 countByEnumeratingWithState:&v395 objects:v467 count:16];
                          if (!v248)
                          {
                            goto LABEL_177;
                          }

                          v249 = v248;
                          v389 = *v396;
                          while (1)
                          {
                            for (jj = 0; jj != v249; ++jj)
                            {
                              if (*v396 != v389)
                              {
                                objc_enumerationMutation(v364);
                              }

                              v46 = *(*(&v395 + 1) + 8 * jj);
                              v251 = [v239 objectForKey:v46];

                              v76 = v370;
                              if (!v251)
                              {
                                v412[0] = 0;
                                v278 = [v46 resourceKey];
                                v279 = [v278 UTF8String];
                                v280 = [v370 name];
                                v281 = [v280 UTF8String];
                                v282 = [v378 name];
                                asprintf(v412, "No input found matching retained bundle input %s for task %s, graph %s", v279, v281, [v282 UTF8String]);

                                v44 = __PLSLogSharedInstance();
                                if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
                                {
                                  v46 = [v46 resourceKey];
                                  v283 = [v46 UTF8String];
                                  v284 = [v370 name];
                                  v285 = [v284 UTF8String];
                                  v286 = [v378 name];
                                  v287 = [v286 UTF8String];
                                  *buf = 136316162;
                                  v471 = "[PSGraphCompiler createPRMInstancesForTransitionBlock:]";
                                  v472 = 1024;
                                  *v473 = 2215;
                                  *&v473[4] = 2080;
                                  *&v473[6] = v283;
                                  *&v473[14] = 2080;
                                  *&v473[16] = v285;
                                  *&v473[24] = 2080;
                                  *&v473[26] = v287;
                                  _os_log_impl(&dword_25EA3A000, v44, OS_LOG_TYPE_FAULT, "%s:%d No input found matching retained bundle input %s for task %s, graph %s", buf, 0x30u);
                                }

                                v288 = OSLogFlushBuffers();
                                if (!v288)
                                {
                                  goto LABEL_208;
                                }

                                v44 = v288;
                                v277 = __PLSLogSharedInstance();
                                if (os_log_type_enabled(v277, OS_LOG_TYPE_ERROR))
                                {
LABEL_202:
                                  *buf = v326;
                                  v471 = "[PSGraphCompiler createPRMInstancesForTransitionBlock:]";
                                  v472 = 1024;
                                  *v473 = v44;
                                  _os_log_impl(&dword_25EA3A000, v277, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
                                }

LABEL_211:

LABEL_212:
                                abort_with_reason();
LABEL_213:
                                [(PSGraphCompiler *)buf createPRMInstancesForTransitionBlock:v44];
LABEL_214:
                                [(PSGraphCompiler *)buf createPRMInstancesForTransitionBlock:v46];
                              }

                              v252 = [v370 inputs];
                              v253 = [v252 containsObject:v46];

                              if ((v253 & 1) == 0)
                              {
                                goto LABEL_187;
                              }

                              v254 = [v239 objectForKey:v46];
                              v255 = [v254 unsignedIntValue];

                              v256 = ps_prm_opts_create();
                              v257 = [v46 resolvedResourceKey];
                              -[PSGraphCompiler populateReaderOpts:forKey:forGraph:withCapacity:withForwardingCount:](v382, "populateReaderOpts:forKey:forGraph:withCapacity:withForwardingCount:", v256, v257, v378, [v46 capacity], objc_msgSend(v46, "forwardingCount"));

                              v258 = objc_loadWeakRetained(&v382->_transitionMonitor);
                              [v258 lock];

                              v259 = MEMORY[0x277CCACA8];
                              v260 = [v46 resourceKey];
                              v261 = [v378 name];
                              v262 = [v259 stringWithFormat:@"%@ (Retained input for %@)", v260, v261];
                              v263 = objc_loadWeakRetained(&v382->_transitionMonitor);
                              [v263 setTransitionStateBufferInitCurResource:v262];

                              v264 = objc_loadWeakRetained(&v382->_transitionMonitor);
                              [v264 unlock];

                              ps_task_resource_attach_retained_input(obje, v256, v255, v394);
                              ps_prm_opts_destroy(v256);
                            }

                            v249 = [v364 countByEnumeratingWithState:&v395 objects:v467 count:16];
                            if (!v249)
                            {
LABEL_177:

                              ii = v360;
                              break;
                            }
                          }
                        }
                      }

                      v355 = [v347 countByEnumeratingWithState:&v399 objects:v468 count:16];
                    }

                    while (v355);
                  }

                  v237 = v343 + 1;
                  v31 = v382;
                }

                while (v343 + 1 != v330);
                v36 = v320;
                v330 = [v328 countByEnumeratingWithState:&v403 objects:v469 count:16];
              }

              while (v330);
            }

            v82 = v316 + 1;
            v79 = v312;
            v37 = v365;
            v81 = v311;
          }

          while (v316 + 1 != v313);
          v80 = [v312 countByEnumeratingWithState:&v443 objects:v482 count:16];
        }

        while (v80);
      }

      v4 = v36;
    }
  }

  v265 = *MEMORY[0x277D85DE8];
}

- (unint64_t)populateBufferExpiryOffset:(ps_task_input_resource_s *)a3 forKey:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (!a3)
  {
    [PSGraphCompiler populateBufferExpiryOffset:buf forKey:v6];
  }

  v7 = [(PSContext *)self->_context resourceStreamForKey:v6];
  info = 0;
  if (mach_timebase_info(&info))
  {
    [PSGraphCompiler populateBufferExpiryOffset:forKey:];
  }

  v8 = [v7 resourceClass];
  if ((v8 - 7) < 3 || v8 == 11)
  {
    v10 = [v7 provider];
    v11 = v10 > 7 || ((1 << v10) & 0x92) == 0;
    if (!v11 && [v7 framerate])
    {
      v12 = [PSRCConstants getCameraDepthForKey:v6];
      v13 = [PSRCConstants getReaderDepthForKey:v6]+ v12;
      v14 = [PSRCConstants getWriterDepthForKey:v6];
      v15 = v13 + v14 + [v7 retainedISPRCCount] - 1;
      v16 = [v7 framerate];
      v17 = v15 * (0x3B9ACA00 / v16) * info.denom;
LABEL_16:
      v18 = v17 / info.numer;
      goto LABEL_18;
    }
  }

  else if (v8 == 12)
  {
    v17 = 2000000000 * info.denom;
    goto LABEL_16;
  }

  v18 = -1;
LABEL_18:
  v19 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = [v7 key];
    v21 = [v20 UTF8String];
    *buf = 136315394;
    v26 = v21;
    v27 = 2048;
    v28 = v18;
    _os_log_impl(&dword_25EA3A000, v19, OS_LOG_TYPE_DEBUG, "Setting Expiry Offset for key (%s) as (%llu)", buf, 0x16u);
  }

  ps_task_input_resource_set_buffer_expiry_offset(a3, v18);
  v22 = *MEMORY[0x277D85DE8];
  return v18;
}

+ (void)populateOptsMetadataType:(PSResourceManagerOptions *)a3 forProviderType:(int)a4
{
  has_iosurface_metadata = ps_resource_stream_provider_has_iosurface_metadata();
  has_cfdata_metadata = ps_resource_stream_provider_has_cfdata_metadata();
  has_no_metadata = ps_resource_stream_provider_has_no_metadata();
  if ((has_iosurface_metadata | has_cfdata_metadata) & 1) != 0 || (has_no_metadata)
  {
    if ((has_iosurface_metadata | has_cfdata_metadata))
    {
      v9 = has_iosurface_metadata;
    }

    else
    {
      v9 = 2;
    }

    ps_prm_opts_set_resource_metadata_type(a3, v9);
  }

  else
  {
    v10 = [PSGraphCompiler populateOptsMetadataType:a4 forProviderType:?];
    [(PSGraphCompiler *)v10 populateWriterOpts:v11 forKey:v12 withCapacity:v13 forGraph:v14 withResStream:v15 withContext:v16 retainedBufferIndexers:v17 withGSM:v20, v21];
  }
}

+ (void)populateWriterOpts:(PSResourceManagerOptions *)a3 forKey:(id)a4 withCapacity:(unint64_t)a5 forGraph:(id)a6 withResStream:(id)a7 withContext:(id)a8 retainedBufferIndexers:(id)a9 withGSM:(ps_gsm_s *)a10
{
  v79 = *MEMORY[0x277D85DE8];
  v16 = a4;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v66 = a9;
  v20 = v16;
  if (([v20 isEqualToString:PLSResourceKeyGCLEDSyncLeft[0]]& 1) != 0)
  {
    v21 = 1;
  }

  else
  {
    v21 = [v20 isEqualToString:PLSResourceKeyGCLEDSyncRight[0]];
  }

  if (a5 < 2)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  if (!v18)
  {
    [PSGraphCompiler populateWriterOpts:buf forKey:v20 withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
    goto LABEL_72;
  }

  [v18 options];
  v24 = v23;
  v25 = [v18 options];
  if (!v24)
  {
LABEL_72:
    [PSGraphCompiler populateWriterOpts:buf forKey:v20 withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
    goto LABEL_73;
  }

  v10 = v25;
  if (!v25)
  {
LABEL_73:
    [PSGraphCompiler populateWriterOpts:buf forKey:v20 withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
    goto LABEL_74;
  }

  if (!a5)
  {
LABEL_74:
    [PSGraphCompiler populateWriterOpts:buf forKey:? withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
    goto LABEL_75;
  }

  if (a5 >= 0x3E9)
  {
LABEL_75:
    [PSGraphCompiler populateWriterOpts:buf forKey:v20 withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
    goto LABEL_76;
  }

  if ((v22 & 1) == 0)
  {
LABEL_76:
    [PSGraphCompiler populateWriterOpts:buf forKey:v20 withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
LABEL_77:
    v67 = 0;
    asprintf(&v67, "Writer depth (%u) was greater than reader depth (%u) for resource %s", v10, v27, [v20 UTF8String]);
    v18 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      v56 = v68;
      v55 = HIDWORD(v68);
      v57 = [v20 UTF8String];
      *buf = 136316162;
      v70 = "+[PSGraphCompiler populateWriterOpts:forKey:withCapacity:forGraph:withResStream:withContext:retainedBufferIndexers:withGSM:]";
      v71 = 1024;
      v72 = 2415;
      v73 = 1024;
      v74 = v55;
      v75 = 1024;
      v76 = v56;
      v77 = 2080;
      v78 = v57;
      _os_log_impl(&dword_25EA3A000, v18, OS_LOG_TYPE_FAULT, "%s:%d Writer depth (%u) was greater than reader depth (%u) for resource %s", buf, 0x28u);
    }

    v58 = OSLogFlushBuffers();
    if (v58)
    {
      v18 = v58;
      v20 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v70 = "+[PSGraphCompiler populateWriterOpts:forKey:withCapacity:forGraph:withResStream:withContext:retainedBufferIndexers:withGSM:]";
        v71 = 1024;
        v72 = v18;
        _os_log_impl(&dword_25EA3A000, v20, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
      }
    }

    else
    {
      usleep(0x1E8480u);
    }

    v28 = abort_with_reason();
LABEL_85:
    if (v28 != 5)
    {
      goto LABEL_93;
    }

    v28 = [PSGraphCompiler populateWriterOpts:v18 forKey:buf withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
    goto LABEL_87;
  }

  ps_prm_opts_set_return_capacity(a3, a5);
  ps_prm_opts_set_resource_key(a3, [v20 UTF8String]);
  ps_prm_opts_set_graph(a3, v17);
  ps_prm_opts_set_resource_class(a3, [v18 resourceClass]);
  ps_prm_opts_set_creation_mode(a3, v24);
  ps_prm_opts_set_resource_avail_context(a3, a10);
  if ([v19 forceAllResourcesLocal])
  {
    v26 = 1;
  }

  else
  {
    v26 = v10;
  }

  ps_prm_opts_set_storage_mode(a3, v26);
  v68 = 0;
  [PSConstants getBufferDepthsForKey:v20 writerDepth:&v68 + 4 readerDepth:&v68];
  v27 = v68;
  LODWORD(v10) = HIDWORD(v68);
  if (HIDWORD(v68) > v68)
  {
    goto LABEL_77;
  }

  ps_prm_opts_set_buffer_depth(a3, v68, SHIDWORD(v68));
  v28 = [v18 resourceClass];
  if (v28 <= 7)
  {
    if (v28 <= 3)
    {
      if (v28 != 1)
      {
        if (v28 == 2)
        {
          ps_prm_opts_set_object_stream(a3, v18);
          goto LABEL_70;
        }

        if (v28 == 3)
        {
          ps_prm_opts_set_opaque_stream(a3, v18);
LABEL_70:
          [PSGraphCompiler populateOptsMetadataType:a3 forProviderType:[v18 provider]];

          v54 = *MEMORY[0x277D85DE8];
          return;
        }

        goto LABEL_93;
      }

      v31 = [v18 length];
LABEL_48:
      ps_prm_opts_set_data_size(a3, v31 * a5);
      goto LABEL_70;
    }

    if (v28 <= 5)
    {
      if (v28 == 4)
      {
        v32 = v18;
        a5 = v32;
        if (v24 == 1)
        {
          ps_prm_opts_set_iosurface_width(a3, [v32 width]);
          ps_prm_opts_set_iosurface_height(a3, [a5 height]);
          ps_prm_opts_set_iosurface_pixelformat(a3, [a5 pixelFormat]);
          v33 = [a5 ioSurfaceProperties];

          if (v33)
          {
            v34 = [a5 ioSurfaceProperties];

            ps_prm_opts_set_iosurface_properties(a3, v34);
          }
        }

        else
        {
          v44 = [v32 key];
          v45 = [v66 objectForKey:v44];

          if (!v45)
          {
            v45 = [[PSBufferIndexer alloc] initWithResourceStream:a5];
            [v66 setObject:v45 forKey:v20];
          }

          ps_prm_opts_set_iosurface_allocator(a3, allocatedIOSurfaceBufferIndexer, v45);
        }

        goto LABEL_69;
      }

      goto LABEL_85;
    }

    if (v28 != 7)
    {
LABEL_87:
      if (v28 == 6)
      {
        [PSGraphCompiler populateWriterOpts:v18 forKey:? withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
        goto LABEL_89;
      }

LABEL_93:
      [PSGraphCompiler populateWriterOpts:buf forKey:v20 withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
      goto LABEL_94;
    }

    a5 = v18;
    ps_prm_opts_set_is_camera_stream(a3, 0);
    ps_prm_opts_set_use_prm_camera_reader(a3, 0);
    if (v24 == 1)
    {
      ps_prm_opts_set_cvpixelbuffer_width(a3, [a5 width]);
      ps_prm_opts_set_cvpixelbuffer_height(a3, [a5 height]);
      ps_prm_opts_set_cvpixelbuffer_pixelformat(a3, [a5 pixelFormat]);
      v37 = [a5 ioSurfaceProperties];

      if (v37)
      {
        v38 = [a5 ioSurfaceProperties];

        ps_prm_opts_set_cvpixelbuffer_properties(a3, v38);
      }
    }

    else
    {
      v46 = [a5 key];
      v47 = [v66 objectForKey:v46];

      if (!v47)
      {
        v47 = [[PSBufferIndexer alloc] initWithResourceStream:a5];
        [v66 setObject:v47 forKey:v20];
      }

      ps_prm_opts_set_cvpixelbuffer_allocator(a3, allocatedCVPixelBufferIndexer, v47);
    }

    [a5 provider];
    if (ps_resource_stream_provider_has_iosurface_metadata())
    {
      v48 = [a5 metadataIOSurfaceProperties];

      if (!v48)
      {
LABEL_94:
        [PSGraphCompiler populateWriterOpts:buf forKey:a5 withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
        goto LABEL_95;
      }

      v49 = [a5 metadataIOSurfaceProperties];

      ps_prm_opts_set_cvpixelbuffer_metadata_iosurface_properties(a3, v49);
    }

    goto LABEL_69;
  }

  if (v28 <= 9)
  {
    if (v28 == 8)
    {
      a5 = v18;
      ps_prm_opts_set_is_camera_stream(a3, 0);
      ps_prm_opts_set_use_prm_camera_reader(a3, 0);
      if (v24 == 1)
      {
        ps_prm_opts_set_cvdatabuffer_width(a3, [a5 width]);
        ps_prm_opts_set_cvdatabuffer_height(a3, [a5 height]);
        ps_prm_opts_set_cvdatabuffer_pixelformat(a3, [a5 pixelFormat]);
      }

      else
      {
        v50 = [a5 key];
        v51 = [v66 objectForKey:v50];

        if (!v51)
        {
          v51 = [[PSBufferIndexer alloc] initWithResourceStream:a5];
          [v66 setObject:v51 forKey:v20];
        }

        ps_prm_opts_set_cvdatabuffer_allocator(a3, allocatedCVDataBufferIndexer, v51);
      }

      [a5 provider];
      if (ps_resource_stream_provider_has_iosurface_metadata())
      {
        v52 = [a5 metadataIOSurfaceProperties];

        if (!v52)
        {
LABEL_95:
          [PSGraphCompiler populateWriterOpts:buf forKey:a5 withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
          goto LABEL_96;
        }

        v53 = [a5 metadataIOSurfaceProperties];

        ps_prm_opts_set_cvdatabuffer_metadata_iosurface_properties(a3, v53);
      }
    }

    else
    {
      a5 = v18;
      ps_prm_opts_set_is_camera_stream(a3, 0);
      ps_prm_opts_set_use_prm_camera_reader(a3, 0);
      if (v24 != 1)
      {
LABEL_89:
        [PSGraphCompiler populateWriterOpts:buf forKey:? withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
        goto LABEL_90;
      }

      ps_prm_opts_set_jasperbuffer_width(a3, [a5 width]);
      ps_prm_opts_set_jasperbuffer_height(a3, [a5 height]);
      ps_prm_opts_set_jasperbuffer_pixelformat(a3, [a5 pixelFormat]);
      [a5 provider];
      if (ps_resource_stream_provider_has_iosurface_metadata())
      {
        v35 = [a5 metadataIOSurfaceProperties];

        if (!v35)
        {
LABEL_96:
          [PSGraphCompiler populateWriterOpts:buf forKey:a5 withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
          goto LABEL_97;
        }

        v36 = [a5 metadataIOSurfaceProperties];

        ps_prm_opts_set_jasperbuffer_metadata_iosurface_properties(a3, v36);
      }
    }

    goto LABEL_69;
  }

  if (v28 == 10)
  {
    v39 = v18;
    if (v24 != 2)
    {
LABEL_90:
      [PSGraphCompiler populateWriterOpts:buf forKey:? withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
      goto LABEL_91;
    }

    a5 = v39;
    v40 = [v39 allocateIOSurfaceRefArray];
    if (!v40)
    {
LABEL_92:
      [PSGraphCompiler populateWriterOpts:buf forKey:? withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
      goto LABEL_93;
    }

    v41 = v40;
    ps_prm_opts_set_buffer_depth(a3, 0, [a5 numberOfBufferSet]);
    ps_prm_opts_set_return_capacity(a3, [a5 numberOfBufferSet]);
    ps_prm_opts_set_storage_mode(a3, 2);
    ps_prm_opts_set_ane_chained_stream(a3, v41, [a5 numberOfSurfaceInSet], objc_msgSend(a5, "firstEventValue"), objc_msgSend(a5, "metadataSurfaceIndex"), objc_msgSend(a5, "eventPort"));
    goto LABEL_69;
  }

  if (v28 != 11)
  {
    if (v28 == 12)
    {
      v29 = v18;
      ps_prm_opts_set_fastpath_stream(a3, v29);
      v30 = [v29 length];

      v31 = v30;
      goto LABEL_48;
    }

    goto LABEL_93;
  }

  a5 = v18;
  ps_prm_opts_set_is_camera_stream(a3, 0);
  ps_prm_opts_set_use_prm_camera_reader(a3, 0);
  if (v24 != 1)
  {
LABEL_91:
    [PSGraphCompiler populateWriterOpts:buf forKey:? withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
    goto LABEL_92;
  }

  ps_prm_opts_set_pearlbuffer_width(a3, [a5 width], objc_msgSend(a5, "dxWidth"), objc_msgSend(a5, "dyWidth"), objc_msgSend(a5, "scoreWidth"));
  ps_prm_opts_set_pearlbuffer_height(a3, [a5 height], objc_msgSend(a5, "dxHeight"), objc_msgSend(a5, "dyHeight"), objc_msgSend(a5, "scoreHeight"));
  ps_prm_opts_set_pearlbuffer_pixelformat(a3, [a5 pixelFormat], objc_msgSend(a5, "dxPixelFormat"), objc_msgSend(a5, "dyPixelFormat"), objc_msgSend(a5, "scorePixelFormat"));
  ps_prm_opts_set_pearlbuffer_has_attachments(a3, [a5 hasAttachments]);
  [a5 provider];
  if ((ps_resource_stream_provider_has_iosurface_metadata() & 1) == 0)
  {
LABEL_69:

    goto LABEL_70;
  }

  v42 = [a5 metadataIOSurfaceProperties];

  if (v42)
  {
    v43 = [a5 metadataIOSurfaceProperties];

    ps_prm_opts_set_pearlbuffer_metadata_iosurface_properties(a3, v43);
    goto LABEL_69;
  }

LABEL_97:
  v59 = [PSGraphCompiler populateWriterOpts:buf forKey:a5 withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
  [(PSGraphCompiler *)v59 populateReaderOpts:v60 forKey:v61 forGraph:v62 withCapacity:v63 withForwardingCount:v64, v65];
}

- (void)populateReaderOpts:(PSResourceManagerOptions *)a3 forKey:(id)a4 forGraph:(id)a5 withCapacity:(unint64_t)a6 withForwardingCount:(unint64_t)a7
{
  v35 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a5;
  v14 = [(PSContext *)self->_context resourceStreamForKey:v12];
  if (!v14)
  {
    [PSGraphCompiler populateReaderOpts:v12 forKey:? forGraph:? withCapacity:? withForwardingCount:?];
    goto LABEL_36;
  }

  v15 = v14;
  if (![v14 resourceClass])
  {
LABEL_36:
    [PSGraphCompiler populateReaderOpts:v12 forKey:? forGraph:? withCapacity:? withForwardingCount:?];
LABEL_37:
    [PSGraphCompiler populateReaderOpts:v12 forKey:? forGraph:? withCapacity:? withForwardingCount:?];
  }

  if (![v15 options])
  {
    goto LABEL_37;
  }

  ps_prm_opts_set_return_capacity(a3, a6);
  ps_prm_opts_set_resource_key(a3, [v12 UTF8String]);
  ps_prm_opts_set_graph(a3, v13);
  ps_prm_opts_set_resource_class(a3, [v15 resourceClass]);
  ps_prm_opts_set_storage_mode(a3, [v15 options]);
  ps_prm_opts_set_forwarding_count(a3, a7);
  v16 = [v15 resourceClass];
  v17 = 9;
  if (v16 <= 0xB && ((1 << v16) & 0xB80) != 0)
  {
    v17 = [v15 provider];
  }

  if ([v15 resourceClass] == 12)
  {
    is_local_replay_session = ps_prm_is_local_replay_session(self->_prm_mgr);
    if ([v12 isEqualToString:PLSResourceKeyFastMagnetometer[0]])
    {
      v19 = is_local_replay_session == 0;
      v20 = 3;
      v21 = 5;
    }

    else
    {
      if (([v12 isEqualToString:PLSResourceKeyGCIMULeft[0]] & 1) == 0 && !objc_msgSend(v12, "isEqualToString:", PLSResourceKeyGCIMURight[0]))
      {
        if ([v12 containsString:PLSResourceKeyAccessoryTrackingPrefix[0]])
        {
          if (is_local_replay_session)
          {
            v20 = 7;
          }

          else
          {
            v20 = 6;
          }
        }

        else
        {
          v30 = __PLSLogSharedInstance();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = 136315138;
            v32 = [v12 UTF8String];
            _os_log_impl(&dword_25EA3A000, v30, OS_LOG_TYPE_DEFAULT, "Unknown fastpath resource with key:%s", &v31, 0xCu);
          }

          v20 = 0;
        }

        goto LABEL_15;
      }

      v19 = is_local_replay_session == 0;
      v20 = 2;
      v21 = 4;
    }

    if (!v19)
    {
      v20 = v21;
    }

LABEL_15:
    ps_prm_opts_set_fastpath_data_type(a3, v20);
  }

  [PSGraphCompiler populateOptsMetadataType:a3 forProviderType:v17];
  if (!ps_resource_stream_provider_is_rc())
  {
    ps_prm_opts_set_is_camera_stream(a3, 0);
    goto LABEL_26;
  }

  v22 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v23 = [v12 UTF8String];
    v24 = ps_resource_stream_provider_representation();
    v31 = 136315394;
    v32 = v23;
    v33 = 2080;
    v34 = v24;
    _os_log_impl(&dword_25EA3A000, v22, OS_LOG_TYPE_DEBUG, "Setting reader instance %s as a camera stream with provider type %s", &v31, 0x16u);
  }

  v25 = 1;
  ps_prm_opts_set_is_camera_stream(a3, 1);
  if (v17 <= 8 && ((1 << v17) & 0x124) != 0)
  {
    v26 = +[PLSSettings currentSettings];
    if ([v26 enableHybridLoop])
    {
      v27 = +[PSExecutionSessionWorkarounds sharedInstance];
      v28 = [v27 shouldUsePRMCameraForSuperframe:v12];

      if (v28)
      {
        v25 = 1;
        goto LABEL_27;
      }
    }

    else
    {
    }

LABEL_26:
    v25 = 0;
  }

LABEL_27:
  ps_prm_opts_set_use_prm_camera_reader(a3, v25);
  ps_prm_opts_set_provider_type(a3, v17);
  ps_prm_opts_set_ariadne_id(a3, [PLSDevice getAriadneID:v12]+ 4);

  v29 = *MEMORY[0x277D85DE8];
}

- (void)initializeGroupedTriggersForTransitionBlock:(id)a3
{
  v4 = a3;
  v5 = [v4 addedGraphs];
  v6 = [v5 count];

  if (v6)
  {
    v7 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_DEFAULT, "Initializing GSTs for transition block.", v8, 2u);
    }
  }

  [(PSGraphCompiler *)self createGroupedTriggersForTransitionBlock:v4];
}

- (void)createGroupedTriggersOverXPCForTransitionBlock:(id)a3
{
  v92 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v72 = [v4 postTransitionGraphs];
  v74 = [(PSGraphCompiler *)self getProducerOutputRates:?];
  v5 = xpc_dictionary_create(0, 0, 0);
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  v7 = [WeakRetained executionSession];
  v8 = [v7 name];
  v9 = [v8 UTF8String];
  v10 = getpid();
  xdict = v5;
  populateGraphSetInfo(v5, 1uLL, v9, v10);

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v11 = [v4 addedGraphs];
  v12 = [v11 countByEnumeratingWithState:&v82 objects:v91 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v83;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v83 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v82 + 1) + 8 * i);
        v17 = [v16 tasks];
        v18 = [v17 count];

        if (v18)
        {
          [(PSGraphCompiler *)self setThreadPoolIDForGraph:v16 withTransitionBlock:v4];
          [(PSGraphCompiler *)self addGraphToThreadPool:v16];
          v19 = objc_loadWeakRetained(&self->_transitionManager);
          v20 = [v19 executionSession];
          v21 = [v20 shouldUseOptimizedVsyncPath];

          if ((v21 & 1) == 0)
          {
            v22 = objc_loadWeakRetained(&self->_transitionMonitor);
            [v22 lock];

            v23 = MEMORY[0x277CCACA8];
            v24 = [v16 name];
            v25 = [v23 stringWithFormat:@"%@", v24];
            v26 = objc_loadWeakRetained(&self->_transitionMonitor);
            [v26 setTransitionStateGroupedTriggersInitCurGST:v25];

            v27 = objc_loadWeakRetained(&self->_transitionMonitor);
            [v27 unlock];

            if (![(PSGraphCompiler *)self setupCadenceGroupedTriggerInfoForGraph:v16 withProducerOutputRates:v74 withTransitionBlock:v4 withGraphInfoDict:xdict])
            {
              v28 = __PLSLogSharedInstance();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
              {
                v29 = [v16 name];
                *buf = 138477827;
                v87 = v29;
                _os_log_impl(&dword_25EA3A000, v28, OS_LOG_TYPE_DEBUG, "Falling back to legacy GST for graph %{private}@", buf, 0xCu);
              }

              [(PSGraphCompiler *)self setupLegacyGroupedTriggerInfoForGraph:v16 withProducerOutputRates:v74 withTransitionBlock:v4 withGraphInfoDict:xdict];
            }
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v82 objects:v91 count:16];
    }

    while (v13);
  }

  v30 = xpc_dictionary_get_value(xdict, "graphs_array");
  count = xpc_array_get_count(v30);
  v32 = objc_loadWeakRetained(&self->_transitionManager);
  v33 = [v32 executionSession];
  v34 = [v33 shouldUseOptimizedVsyncPath];

  if ((v34 & 1) != 0 || !count)
  {
LABEL_40:

    v66 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v35 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = getpid();
      *buf = 67109120;
      LODWORD(v87) = v36;
      _os_log_impl(&dword_25EA3A000, v35, OS_LOG_TYPE_DEFAULT, "Sending a message to the listener xpc service for client %d", buf, 8u);
    }

    v71 = v30;

    v37 = objc_loadWeakRetained(&self->_transitionManager);
    v38 = [v37 executionSession];
    v39 = [v38 systemGraphSession];
    error_out = 0;
    v40 = xpc_session_send_message_with_reply_sync(v39, xdict, &error_out);
    v41 = error_out;

    v76 = v40;
    if (v40 || !v41)
    {
      v70 = v41;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      obj = [v4 addedGraphs];
      v42 = [obj countByEnumeratingWithState:&v77 objects:v90 count:16];
      if (!v42)
      {
        goto LABEL_39;
      }

      v43 = v42;
      v44 = *v78;
      while (1)
      {
        for (j = 0; j != v43; ++j)
        {
          if (*v78 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v46 = *(*(&v77 + 1) + 8 * j);
          v47 = [v46 name];
          v48 = xpc_dictionary_get_value(v76, [v47 UTF8String]);

          if (!v48)
          {
            v63 = __PLSLogSharedInstance();
            if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
            {
              v65 = [v46 name];
              *buf = 138477827;
              v87 = v65;
              _os_log_impl(&dword_25EA3A000, v63, OS_LOG_TYPE_DEBUG, "GST not assigned to graph %{private}@", buf, 0xCu);
            }

LABEL_36:

            goto LABEL_37;
          }

          uint64 = xpc_dictionary_get_uint64(v48, "gst_idx");
          v50 = __PLSLogSharedInstance();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
          {
            v51 = [v46 name];
            v52 = [v51 UTF8String];
            *buf = 134218242;
            v87 = uint64;
            v88 = 2080;
            v89 = v52;
            _os_log_impl(&dword_25EA3A000, v50, OS_LOG_TYPE_DEBUG, "Received a gst index = %llu for graph %s", buf, 0x16u);
          }

          if (uint64 == 0xFFFFFFFF)
          {
            [(PSGraphCompiler *)buf createGroupedTriggersOverXPCForTransitionBlock:v46];
LABEL_42:
            [(PSGraphCompiler *)buf createGroupedTriggersOverXPCForTransitionBlock:?];
          }

          v53 = objc_loadWeakRetained(&self->_transitionManager);
          v54 = [v53 executionSession];
          gst = ps_gsm_get_gst([v54 gsm], uint64);

          graphGSTMap = self->_graphGSTMap;
          v57 = [MEMORY[0x277CCAE60] valueWithPointer:gst];
          [(NSMapTable *)graphGSTMap setObject:v57 forKey:v46];

          if ([v46 executionType] == 1)
          {
            uint64 = *([v46 executionContext] + 8);
            v58 = xpc_dictionary_get_uint64(v48, "shared_trigger_idx");
            if (v58 == 0xFFFFFFFF)
            {
              goto LABEL_42;
            }

            v59 = v58;
            v60 = __PLSLogSharedInstance();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
            {
              v61 = [v46 name];
              v62 = [v61 UTF8String];
              *buf = 134218242;
              v87 = v59;
              v88 = 2080;
              v89 = v62;
              _os_log_impl(&dword_25EA3A000, v60, OS_LOG_TYPE_DEBUG, "Received a sharedTriggerIndex = %llu for graph %s", buf, 0x16u);
            }

            v63 = objc_loadWeakRetained(&self->_transitionManager);
            v64 = [v63 executionSession];
            *(uint64 + 352) = ps_gsm_get_shared_trigger([v64 gsm], v59);

            goto LABEL_36;
          }

LABEL_37:
        }

        v43 = [obj countByEnumeratingWithState:&v77 objects:v90 count:16];
        if (!v43)
        {
LABEL_39:

          v30 = v71;
          goto LABEL_40;
        }
      }
    }

    v67 = [(PSGraphCompiler *)buf createGroupedTriggersOverXPCForTransitionBlock:v41];
    [(PSGraphCompiler *)v67 createGroupedTriggersForTransitionBlock:v68, v69];
  }
}

- (void)createGroupedTriggersForTransitionBlock:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v25 = [v4 postTransitionGraphs];
  v26 = [(PSGraphCompiler *)self getProducerOutputRates:?];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = [v4 addedGraphs];
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = [v10 tasks];
        v12 = [v11 count];

        if (v12)
        {
          [(PSGraphCompiler *)self setThreadPoolIDForGraph:v10 withTransitionBlock:v4];
          [(PSGraphCompiler *)self addGraphToThreadPool:v10];
          WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
          v14 = [WeakRetained executionSession];
          v15 = [v14 shouldUseOptimizedVsyncPath];

          if ((v15 & 1) == 0)
          {
            v16 = objc_loadWeakRetained(&self->_transitionMonitor);
            [v16 lock];

            v17 = MEMORY[0x277CCACA8];
            v18 = [v10 name];
            v19 = [v17 stringWithFormat:@"%@", v18];
            v20 = objc_loadWeakRetained(&self->_transitionMonitor);
            [v20 setTransitionStateGroupedTriggersInitCurGST:v19];

            v21 = objc_loadWeakRetained(&self->_transitionMonitor);
            [v21 unlock];

            if (![(PSGraphCompiler *)self createCadenceGroupedTriggerForGraph:v10 withProducerOutputRates:v26 withTransitionBlock:v4])
            {
              v22 = __PLSLogSharedInstance();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
              {
                v23 = [v10 name];
                *buf = 138477827;
                v32 = v23;
                _os_log_impl(&dword_25EA3A000, v22, OS_LOG_TYPE_DEBUG, "Falling back to legacy GST for graph %{private}@", buf, 0xCu);
              }

              [(PSGraphCompiler *)self createLegacyGroupedTriggerForGraph:v10 withProducerOutputRates:v26 withTransitionBlock:v4];
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v7);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)checkForBufferSyncGroupedSources:(id)a3 intermediateWaitSources:(id)a4 graph:(id)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v33 = a4;
  v8 = a5;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v9 = [v8 tasks];
  v29 = [v9 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v29)
  {
    v10 = *v39;
    v31 = v9;
    v32 = v8;
    v28 = *v39;
    do
    {
      v11 = 0;
      do
      {
        if (*v39 != v10)
        {
          objc_enumerationMutation(v9);
        }

        v30 = v11;
        v12 = *(*(&v38 + 1) + 8 * v11);
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v13 = [v12 inputs];
        v14 = [v13 countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v35;
          while (2)
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v35 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v34 + 1) + 8 * i);
              v19 = [v18 type];
              v20 = [v18 resourceKey];
              if ([v7 containsObject:v20])
              {
                v21 = 0;
              }

              else
              {
                v22 = [v18 resourceKey];
                v23 = [v33 containsObject:v22];

                v21 = v23 ^ 1;
              }

              if (!v19 && (v21 & 1) == 0 && [v18 capacity] > 1)
              {

                v25 = 0;
                v24 = v31;
                v8 = v32;
                goto LABEL_23;
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v34 objects:v42 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        v11 = v30 + 1;
        v9 = v31;
        v8 = v32;
        v10 = v28;
      }

      while (v30 + 1 != v29);
      v29 = [v31 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v29);
  }

  v24 = [v8 resolvedDomain];
  v25 = [v24 isGroupable];
LABEL_23:

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

- (BOOL)isCameraDomain:(id)a3 withContext:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [a4 allStreams];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 domain];
        if ([v11 isEqual:v5])
        {
          if ([v10 type] == 3)
          {

LABEL_15:
            LOBYTE(v7) = 1;
            goto LABEL_16;
          }

          v12 = [v10 type];

          if (v12 == 5)
          {
            goto LABEL_15;
          }
        }

        else
        {
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)setupGSMSourceDescriptors:(id *)a3 storageModes:(unsigned __int8 *)a4 graphName:(id)a5 graphFrequencey:(unint64_t)a6 systemSources:(id)a7 intermediateSources:(id)a8 producedOutputRates:(id)a9 device:(id)a10 context:(id)a11 syncedBuffers:(BOOL)a12
{
  v107 = *MEMORY[0x277D85DE8];
  v75 = a5;
  v15 = a7;
  v77 = a8;
  v82 = a9;
  v83 = a10;
  v89 = a11;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  obj = v15;
  v16 = [obj countByEnumeratingWithState:&v97 objects:v106 count:16];
  v87 = a6;
  if (v16)
  {
    v17 = v16;
    LODWORD(v18) = 0;
    v85 = *v98;
    do
    {
      v19 = 0;
      v18 = v18;
      v20 = &a3[v18];
      do
      {
        if (*v98 != v85)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *&v19[*(&v97 + 1)];
        v22 = [v83 propertiesForKey:v21];
        v23 = [v89 resourceStreamForKey:v21];
        v90 = v22;
        if ([v23 framerate])
        {
          v24 = [v23 framerate];
          if (v24 < a6 || (v25 = v24, v26 = v24 / a6, v24 % a6))
          {
            [PSGraphCompiler setupGSMSourceDescriptors:buf storageModes:? graphName:? graphFrequencey:? systemSources:? intermediateSources:? producedOutputRates:? device:? context:? syncedBuffers:?];
LABEL_56:
            v92 = 0;
            asprintf(&v92, "Producer rate (%lu Hz) for key %s is an invalid multiple of the requested rate (%llu Hz) for graph %s", [v22 unsignedLongValue], objc_msgSend(v19, "UTF8String"), a6, objc_msgSend(v75, "UTF8String"));
            v68 = __PLSLogSharedInstance();
            if (os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
            {
              v69 = [v22 unsignedLongValue];
              v70 = [v19 UTF8String];
              v71 = [v75 UTF8String];
              *buf = 136316418;
              *v102 = "[PSGraphCompiler setupGSMSourceDescriptors:storageModes:graphName:graphFrequencey:systemSources:intermediateSources:producedOutputRates:device:context:syncedBuffers:]";
              *&v102[8] = 1024;
              *&v102[10] = 3008;
              *&v102[14] = 2048;
              *&v102[16] = v69;
              *&v102[24] = 2080;
              *&v102[26] = v70;
              *&v102[34] = 2048;
              *&v102[36] = a6;
              v103 = 2080;
              v104 = v71;
              _os_log_impl(&dword_25EA3A000, v68, OS_LOG_TYPE_FAULT, "%s:%d Producer rate (%lu Hz) for key %s is an invalid multiple of the requested rate (%llu Hz) for graph %s", buf, 0x3Au);
            }

            v72 = OSLogFlushBuffers();
            if (v72)
            {
              goto LABEL_62;
            }

            usleep(0x1E8480u);
LABEL_65:
            abort_with_reason();
          }

          v20->var1 = v26;
          if ([v22 rcFrameID])
          {
            v27 = 0x5A / v25;
          }

          else
          {
            v27 = 1;
          }

          v28 = __PLSLogSharedInstance();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134218498;
            *v102 = v26;
            *&v102[8] = 2048;
            *&v102[10] = 0x5A / v25;
            *&v102[18] = 2112;
            *&v102[20] = v21;
            _os_log_impl(&dword_25EA3A000, v28, OS_LOG_TYPE_DEBUG, "GST Down Sample Factor %llu Stride Factor %lu Key %@", buf, 0x20u);
          }
        }

        else
        {
          v28 = __PLSLogSharedInstance();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v29 = [v23 framerate];
            *buf = 138478083;
            *v102 = v21;
            *&v102[8] = 2048;
            *&v102[10] = v29;
            _os_log_impl(&dword_25EA3A000, v28, OS_LOG_TYPE_ERROR, "source camera key %{private}@ rate %lu should be > 0", buf, 0x16u);
          }

          v27 = 1;
        }

        v20->var2 = v27;
        [v21 cStringUsingEncoding:4];
        __strlcpy_chk();
        a4[v18++] = [v23 options] != 1;

        v19 += 8;
        ++v20;
        --v17;
        a6 = v87;
      }

      while (v17);
      v17 = [obj countByEnumeratingWithState:&v97 objects:v106 count:16];
    }

    while (v17);
  }

  else
  {
    LODWORD(v18) = 0;
  }

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v78 = v77;
  v30 = [v78 countByEnumeratingWithState:&v93 objects:v105 count:16];
  v31 = v89;
  if (!v30)
  {
    goto LABEL_54;
  }

  v32 = v30;
  v80 = *v94;
  do
  {
    v33 = 0;
    v18 = v18;
    v34 = &a3[v18];
    do
    {
      if (*v94 != v80)
      {
        objc_enumerationMutation(v78);
      }

      v19 = *(*(&v93 + 1) + v33);
      v35 = [v82 valueForKey:v19];
      if (!v35)
      {
        goto LABEL_61;
      }

      v22 = v35;
      if ([v35 unsignedLongValue] % a6)
      {
        goto LABEL_56;
      }

      v84 = [v22 unsignedLongValue] / a6;
      v34->var1 = v84;
      v36 = [v31 resourceStreamForKey:v19];
      if (!v36)
      {
        [PSGraphCompiler setupGSMSourceDescriptors:buf storageModes:v19 graphName:? graphFrequencey:? systemSources:? intermediateSources:? producedOutputRates:? device:? context:? syncedBuffers:?];
LABEL_61:
        v72 = [PSGraphCompiler setupGSMSourceDescriptors:buf storageModes:v19 graphName:? graphFrequencey:? systemSources:? intermediateSources:? producedOutputRates:? device:? context:? syncedBuffers:?];
LABEL_62:
        v73 = v72;
        v74 = __PLSLogSharedInstance();
        if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *v102 = "[PSGraphCompiler setupGSMSourceDescriptors:storageModes:graphName:graphFrequencey:systemSources:intermediateSources:producedOutputRates:device:context:syncedBuffers:]";
          *&v102[8] = 1024;
          *&v102[10] = v73;
          _os_log_impl(&dword_25EA3A000, v74, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
        }

        goto LABEL_65;
      }

      v37 = v36;
      v86 = v32;
      v91 = [v22 unsignedLongValue];
      v38 = [v37 resolvedDomain];
      v39 = [(PSGraphCompiler *)self isCameraDomain:v38 withContext:v31];

      v40 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        if (v39)
        {
          v41 = "camera";
        }

        else
        {
          v41 = "non-camera";
        }

        v42 = [v37 resolvedDomain];
        v43 = [v19 UTF8String];
        *buf = 136315906;
        *v102 = v41;
        *&v102[8] = 2112;
        *&v102[10] = v42;
        *&v102[18] = 2080;
        *&v102[20] = v43;
        *&v102[28] = 2048;
        *&v102[30] = v91;
        _os_log_impl(&dword_25EA3A000, v40, OS_LOG_TYPE_DEBUG, "Found %s stream domain %@ for key %s, producer rate %llu", buf, 0x2Au);

        a6 = v87;
      }

      if (v39)
      {
        v44 = 0x5A / v91;
        goto LABEL_44;
      }

      v45 = [v37 resolvedDomain];
      v46 = [MEMORY[0x277D3E6C8] customDomain:PLSResourceKeyVsync[0]];
      v47 = [v45 isEqual:v46];

      if (v47)
      {
        v48 = 90;
LABEL_43:
        v44 = v48 / v91;
        a6 = v87;
        goto LABEL_44;
      }

      v49 = [v37 resolvedDomain];
      v50 = [MEMORY[0x277D3E6C8] customDomain:PLSResourceKeyGyro[0]];
      v51 = [v49 isEqual:v50];

      if (v51)
      {
        goto LABEL_42;
      }

      v52 = [v37 resolvedDomain];
      v53 = [MEMORY[0x277D3E6C8] customDomain:PLSResourceKeyAccel[0]];
      v54 = [v52 isEqual:v53];

      if (v54)
      {
        goto LABEL_42;
      }

      v55 = [v37 resolvedDomain];
      v56 = [MEMORY[0x277D3E6C8] customDomain:PLSResourceKeyBioMotion[0]];
      v57 = [v55 isEqual:v56];

      if (v57 || ([v37 resolvedDomain], v58 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277D3E6C8], "customDomain:", PLSResourceKeyVIS[0]), v59 = objc_claimAutoreleasedReturnValue(), v60 = objc_msgSend(v58, "isEqual:", v59), v59, v58, v60))
      {
LABEL_42:
        v48 = 100;
        goto LABEL_43;
      }

      v64 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
      {
        v65 = [v19 UTF8String];
        *buf = 136315138;
        *v102 = v65;
        _os_log_impl(&dword_25EA3A000, v64, OS_LOG_TYPE_DEBUG, "No matching stream domain found for %s", buf, 0xCu);
      }

      LODWORD(v44) = 1;
      a6 = v87;
LABEL_44:
      v61 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
      {
        v62 = [v19 UTF8String];
        *buf = 67109378;
        *v102 = v44;
        *&v102[4] = 2080;
        *&v102[6] = v62;
        _os_log_impl(&dword_25EA3A000, v61, OS_LOG_TYPE_DEBUG, "Got stride %d for resource %s", buf, 0x12u);
      }

      v34->var2 = v44;
      [v19 cStringUsingEncoding:4];
      __strlcpy_chk();
      v63 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        *v102 = v19;
        *&v102[8] = 1024;
        *&v102[10] = v84;
        _os_log_impl(&dword_25EA3A000, v63, OS_LOG_TYPE_DEBUG, "GST external graph source Key %@, downsample factor %u", buf, 0x12u);
      }

      a4[v18++] = [v37 options] != 1;
      v33 += 8;
      ++v34;
      v32 = v86 - 1;
      v31 = v89;
    }

    while (v86 != 1);
    v66 = [v78 countByEnumeratingWithState:&v93 objects:v105 count:16];
    v32 = v66;
  }

  while (v66);
LABEL_54:

  v67 = *MEMORY[0x277D85DE8];
}

- (BOOL)validOffsetForGraph:(id)a3 inputs:(id)a4 highestStride:(unsigned int *)a5 desiredOffset:(unsigned int *)a6
{
  v85 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v11 = [v10 objectEnumerator];
  v12 = [v11 countByEnumeratingWithState:&v68 objects:v84 count:16];
  if (!v12)
  {
    v13 = v11;
    goto LABEL_37;
  }

  v56 = a6;
  v57 = a5;
  v58 = v10;
  v13 = 0;
  v14 = 0;
  v15 = *v69;
  do
  {
    for (i = 0; i != v12; i = (i + 1))
    {
      if (*v69 != v15)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v68 + 1) + 8 * i);
      v18 = [v17 stride];
      v19 = [v18 unsignedIntValue];

      if (v14 < v19)
      {
        v20 = [v17 stride];
        v14 = [v20 unsignedIntValue];

        v21 = v17;
        v13 = v21;
      }
    }

    v12 = [v11 countByEnumeratingWithState:&v68 objects:v84 count:16];
  }

  while (v12);

  if (!v13)
  {
    LOBYTE(v12) = 0;
    v10 = v58;
    goto LABEL_38;
  }

  v22 = [(PSGraphCompiler *)self context];
  v23 = [v13 resourceKey];
  v24 = [v22 resourceStreamForKey:v23];

  v25 = [v24 supportedStrides];
  v26 = [v25 count];

  if (!v26)
  {
    v12 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v44 = [v13 resourceKey];
      v45 = [v9 name];
      *buf = 138478083;
      v73 = v44;
      v74 = 2113;
      *v75 = v45;
      _os_log_impl(&dword_25EA3A000, v12, OS_LOG_TYPE_DEFAULT, "Input %{private}@ in graph %{private}@ doesn't support strides", buf, 0x16u);
    }

    LOBYTE(v12) = 0;
    goto LABEL_29;
  }

  v27 = [v24 supportedStrides];
  v28 = [v13 stride];
  v29 = [v27 objectForKeyedSubscript:v28];
  v62 = [v29 offset];

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v58;
  v61 = [obj countByEnumeratingWithState:&v64 objects:v83 count:16];
  if (!v61)
  {
    goto LABEL_21;
  }

  v60 = *v65;
  v54 = v9;
  v55 = v24;
  while (2)
  {
    for (j = 0; j != v61; ++j)
    {
      if (*v65 != v60)
      {
        objc_enumerationMutation(obj);
      }

      v31 = *(*(&v64 + 1) + 8 * j);
      v32 = [v31 stride];
      v33 = [v32 unsignedIntValue];

      v34 = [(PSGraphCompiler *)self context];
      v35 = [v31 resourceKey];
      v36 = [v34 resourceStreamForKey:v35];

      v37 = [v36 supportedStrides];
      v38 = [v37 count];

      if (!v38)
      {
        v46 = __PLSLogSharedInstance();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          v47 = [v31 resourceKey];
          v9 = v54;
          v48 = [v54 name];
          *buf = 138478083;
          v73 = v47;
          v74 = 2113;
          *v75 = v48;
          _os_log_impl(&dword_25EA3A000, v46, OS_LOG_TYPE_DEFAULT, "Input %{private}@ in graph %{private}@ doesn't support strides", buf, 0x16u);

LABEL_35:
          v10 = v58;

          LOBYTE(v12) = 0;
          v24 = v55;
          goto LABEL_36;
        }

LABEL_34:
        v9 = v54;
        goto LABEL_35;
      }

      v39 = [v36 supportedStrides];
      v40 = [v31 stride];
      v41 = [v39 objectForKeyedSubscript:v40];
      v42 = [v41 offset];

      if (v62 % v33 != v42)
      {
        v46 = __PLSLogSharedInstance();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v49 = [v31 resourceKey];
          v9 = v54;
          v50 = [v54 name];
          v51 = [v55 key];
          *buf = 138413826;
          v73 = v49;
          v74 = 2112;
          *v75 = v50;
          *&v75[8] = 1024;
          *v76 = v42;
          *&v76[4] = 1024;
          *&v76[6] = v33;
          v77 = 2112;
          v78 = v51;
          v79 = 1024;
          v80 = v14;
          v81 = 1024;
          v82 = v62;
          _os_log_impl(&dword_25EA3A000, v46, OS_LOG_TYPE_ERROR, "Input %@ in graph %@ has incompatible offset %u for stride %u, max strided input %@ had offset %u for stride %u", buf, 0x38u);

          goto LABEL_35;
        }

        goto LABEL_34;
      }
    }

    v9 = v54;
    v24 = v55;
    v61 = [obj countByEnumeratingWithState:&v64 objects:v83 count:16];
    if (v61)
    {
      continue;
    }

    break;
  }

LABEL_21:

  v12 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v43 = [v9 name];
    *buf = 138413058;
    v73 = v43;
    v74 = 1024;
    *v75 = v14;
    *&v75[4] = 1024;
    *&v75[6] = v62;
    *v76 = 2112;
    *&v76[2] = v13;
    _os_log_impl(&dword_25EA3A000, v12, OS_LOG_TYPE_DEBUG, "Graph %@ using stride %u, offset %u, chosen by stream request %@", buf, 0x22u);
  }

  *v56 = v62;
  *v57 = v14;
  LOBYTE(v12) = 1;
LABEL_29:
  v10 = v58;
LABEL_36:

LABEL_37:
LABEL_38:

  v52 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)createCadenceGroupedTriggerForGraph:(id)a3 withTransitionBlock:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(PSGraphCompiler *)self getStridedGSTWaitSources:v6 transitionBlock:a4];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v24 + 1) + 8 * i) resourceKey];
          [v8 addObject:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v11);
    }

    v15 = [v6 resolvedDomain];
    v16 = [MEMORY[0x277D3E6C8] customDomain:@"dsjcam"];
    if ([v15 isEqual:v16])
    {
      v17 = [v6 currentSystemStride];
      v18 = [v17 integerValue];

      if (v18 > 2)
      {
        v19 = 2;
LABEL_17:
        v21 = [(PSGraphCompiler *)self createCadenceGroupedTriggerForGraph:v6 withSources:v8 withOffset:v19, v24];
        goto LABEL_18;
      }
    }

    else
    {
    }

    v19 = 0;
    goto LABEL_17;
  }

  v8 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v6 name];
    *buf = 138477827;
    v30 = v20;
    _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_DEFAULT, "Unsupported wait resource in graph %{private}@ detected", buf, 0xCu);
  }

  v21 = 0;
LABEL_18:

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)setupForCadenceGroupedTriggerForGraph:(id)a3 withTransitionBlock:(id)a4 withGraphInfo:(id)a5 withGraphSetInfo:(id)a6
{
  v37 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(PSGraphCompiler *)self getStridedGSTWaitSources:v10 transitionBlock:a4];
  if (v13)
  {
    v29 = v11;
    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v15 = v13;
    v16 = [v15 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v31;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v31 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v30 + 1) + 8 * i) resourceKey];
          [v14 addObject:v20];
        }

        v17 = [v15 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v17);
    }

    v21 = [v10 resolvedDomain];
    v22 = [MEMORY[0x277D3E6C8] customDomain:@"dsjcam"];
    if ([v21 isEqual:v22])
    {
      v23 = [v10 currentSystemStride];
      v24 = [v23 integerValue];

      v11 = v29;
      if (v24 > 2)
      {
        v25 = 2;
LABEL_16:
        [(PSGraphCompiler *)self setupForCadenceGroupedTriggerForGraph:v10 withSources:v14 withOffset:v25 withGraphInfo:v11 withGraphSetInfo:v12];
        goto LABEL_17;
      }
    }

    else
    {

      v11 = v29;
    }

    v25 = 0;
    goto LABEL_16;
  }

  v14 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [v10 name];
    *buf = 138477827;
    v36 = v26;
    _os_log_impl(&dword_25EA3A000, v14, OS_LOG_TYPE_DEFAULT, "Unsupported wait resource in graph %{private}@ detected", buf, 0xCu);
  }

LABEL_17:

  v27 = *MEMORY[0x277D85DE8];
  return v13 != 0;
}

- (void)setupForLegacyGroupedTriggerForGraph:(id)a3 withProducerOutputRates:(id)a4 withTransitionBlock:(id)a5 withGraphInfo:(id)a6 withGraphSetInfo:(id)a7
{
  v74 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!v15)
  {
    [PSGraphCompiler setupForLegacyGroupedTriggerForGraph:withProducerOutputRates:withTransitionBlock:withGraphInfo:withGraphSetInfo:];
  }

  v68 = v16;
  v69 = v13;
  v67 = v15;
  v17 = [(PSGraphCompiler *)self getIntermediateSources:v12 withTransitionBlock:v14];
  v66 = v14;
  v18 = [(PSGraphCompiler *)self getSystemSources:v12 withTransitionBlock:v14 withIntermediateSources:v17];
  v19 = [(PSGraphCompiler *)self filterNonANEWaitResources:v17 withGraph:v12];
  v20 = [(PSGraphCompiler *)self filterNonANEWaitResources:v18 withGraph:v12];
  v21 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v71 = v20;
    v72 = 2112;
    v73 = v19;
    _os_log_impl(&dword_25EA3A000, v21, OS_LOG_TYPE_DEBUG, "after nonANEWaitSource filter - systemWaitSources %@ \n intermediateWaitSources %@ \n", buf, 0x16u);
  }

  v22 = [(PSGraphCompiler *)self checkForBufferSyncGroupedSources:v20 intermediateWaitSources:v19 graph:v12];
  v23 = [v20 count];
  v24 = [v19 count] + v23;
  v25 = [v12 systemPulseStride];
  v65 = [v25 unsignedIntValue];

  v26 = v68;
  v27 = v69;
  if (v24 >= 1)
  {
    v63 = v18;
    v64 = v17;
    v28 = v24 & 0x7FFFFFFF;
    v29 = malloc_type_calloc(v28, 0x88uLL, 0x1000040B5CA6940uLL);
    v30 = malloc_type_calloc(v28, 1uLL, 0x100004077774924uLL);
    v31 = [v12 name];
    v58 = v22;
    LOBYTE(v50) = v22;
    v32 = v29;
    v59 = self;
    -[PSGraphCompiler setupGSMSourceDescriptors:storageModes:graphName:graphFrequencey:systemSources:intermediateSources:producedOutputRates:device:context:syncedBuffers:](self, "setupGSMSourceDescriptors:storageModes:graphName:graphFrequencey:systemSources:intermediateSources:producedOutputRates:device:context:syncedBuffers:", v29, v30, v31, [v12 resolvedFrequency], v20, v19, v69, self->_device, self->_context, v50);

    v61 = v20;
    v33 = [v20 count];
    v62 = v19;
    v34 = [v19 count] + v33 != 1;
    if (![v12 executionType])
    {
      [PSGraphCompiler setupForLegacyGroupedTriggerForGraph:buf withProducerOutputRates:v12 withTransitionBlock:? withGraphInfo:? withGraphSetInfo:?];
    }

    v56 = v34;
    empty = xpc_array_create_empty();
    v36 = xpc_array_create_empty();
    v37 = xpc_array_create_empty();
    v38 = xpc_array_create_empty();
    v39 = 0;
    v57 = v32;
    do
    {
      v40 = xpc_string_create(v32);
      xpc_array_append_value(empty, v40);

      v41 = xpc_uint64_create(v32[32]);
      xpc_array_append_value(v36, v41);

      v42 = xpc_uint64_create(v32[33]);
      xpc_array_append_value(v37, v42);

      v43 = xpc_uint64_create(v30[v39]);
      xpc_array_append_value(v38, v43);

      ++v39;
      v32 += 34;
    }

    while (v28 != v39);
    activeThreadPools = v59->_activeThreadPools;
    v45 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v12, "threadPoolID")}];
    v60 = [(NSMutableDictionary *)activeThreadPools objectForKey:v45];

    v46 = [v60 pointerValue];
    v55 = [v12 name];
    v54 = [v55 UTF8String];
    v53 = [v12 executionType];
    v52 = [v12 threadPoolID];
    v51 = [v12 subgraph_idx];
    v47 = [v12 resolvedDomain];
    v48 = [v47 key];
    populateGraphInfo(v67, 1uLL, v54, v28, v56 && v58, v53, v52, (v46 + 72), v51, v65, 0, empty, v38, v36, v37, 0, [v48 UTF8String]);

    v26 = v68;
    appendGraphInfotoGraphSetInfo(v67, v68);
    free(v57);
    free(v30);

    v27 = v69;
    v18 = v63;
    v17 = v64;
    v20 = v61;
    v19 = v62;
  }

  v49 = *MEMORY[0x277D85DE8];
}

- (void)setupForCadenceGroupedTriggerForGraph:(id)a3 withSources:(id)a4 withOffset:(unsigned int)a5 withGraphInfo:(id)a6 withGraphSetInfo:(id)a7
{
  v57 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if (!v14)
  {
    [PSGraphCompiler setupForCadenceGroupedTriggerForGraph:withSources:withOffset:withGraphInfo:withGraphSetInfo:];
  }

  v16 = v15;
  v50 = a5;
  v17 = [v12 currentSystemStride];
  v49 = [v17 unsignedIntValue];

  if (![v12 executionType])
  {
    [PSGraphCompiler setupForCadenceGroupedTriggerForGraph:v12 withSources:? withOffset:? withGraphInfo:? withGraphSetInfo:?];
  }

  v47 = v16;
  v48 = v14;
  empty = xpc_array_create_empty();
  v46 = xpc_array_create_empty();
  v45 = xpc_array_create_empty();
  v19 = xpc_array_create_empty();
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v20 = v13;
  v21 = [v20 countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v52;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v52 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v51 + 1) + 8 * i);
        v26 = xpc_string_create([v25 UTF8String]);
        xpc_array_append_value(empty, v26);

        v27 = [(PSContext *)self->_context resourceStreamForKey:v25];
        v28 = xpc_uint64_create([v27 options] != 1);
        xpc_array_append_value(v19, v28);
      }

      v22 = [v20 countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v22);
  }

  activeThreadPools = self->_activeThreadPools;
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v12, "threadPoolID")}];
  v44 = [(NSMutableDictionary *)activeThreadPools objectForKey:v30];

  v43 = [v44 pointerValue];
  v31 = [v12 resolvedDomain];
  v32 = [MEMORY[0x277D3E6C8] customDomain:@"dsjcam"];
  v33 = [v31 isEqual:v32];

  v34 = [v12 name];
  v42 = [v34 UTF8String];
  v41 = [v20 count];
  v40 = [v12 executionType];
  v39 = [v12 threadPoolID];
  v38 = [v12 subgraph_idx];
  v35 = [v12 resolvedDomain];
  v36 = [v35 key];
  populateGraphInfo(v48, 2uLL, v42, v41, 0, v40, v39, (v43 + 72), v38, v49, v50, empty, v19, v46, v45, v33, [v36 UTF8String]);

  appendGraphInfotoGraphSetInfo(v48, v47);
  v37 = *MEMORY[0x277D85DE8];
}

- (BOOL)setupLegacyGroupedTriggerInfoForGraph:(id)a3 withProducerOutputRates:(id)a4 withTransitionBlock:(id)a5 withGraphInfoDict:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  v15 = [WeakRetained executionSession];
  if ([v15 shouldUseOptimizedVsyncPath])
  {

LABEL_6:
    goto LABEL_7;
  }

  v16 = [v10 workloadWait];

  if (!v16)
  {
    if (!v13)
    {
      [PSGraphCompiler setupLegacyGroupedTriggerInfoForGraph:withProducerOutputRates:withTransitionBlock:withGraphInfoDict:];
    }

    WeakRetained = xpc_dictionary_create(0, 0, 0);
    [(PSGraphCompiler *)self setupForLegacyGroupedTriggerForGraph:v10 withProducerOutputRates:v11 withTransitionBlock:v12 withGraphInfo:WeakRetained withGraphSetInfo:v13];
    goto LABEL_6;
  }

LABEL_7:

  return 1;
}

- (BOOL)setupCadenceGroupedTriggerInfoForGraph:(id)a3 withProducerOutputRates:(id)a4 withTransitionBlock:(id)a5 withGraphInfoDict:(id)a6
{
  v63 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  v15 = [WeakRetained executionSession];
  if ([v15 shouldUseOptimizedVsyncPath])
  {

LABEL_4:
    v17 = 1;
LABEL_5:

    v18 = *MEMORY[0x277D85DE8];
    return v17;
  }

  v16 = [v10 workloadWait];

  if (v16)
  {
    goto LABEL_4;
  }

  if ([v10 executionType])
  {
    v51 = v11;
    v52 = v12;
    v50 = v13;
    if (!v13)
    {
      [PSGraphCompiler setupCadenceGroupedTriggerInfoForGraph:withProducerOutputRates:withTransitionBlock:withGraphInfoDict:];
    }

    v20 = xpc_dictionary_create(0, 0, 0);
    v21 = +[PSExecutionSessionWorkarounds sharedInstance];
    v22 = [v10 resolvedDomain];
    v23 = [v10 name];
    v24 = [(PSGraphCompiler *)self transitionManager];
    v25 = [v24 executionSession];
    v26 = [v25 systemPulseRate];
    v27 = [v21 shouldForceCadencedGSTforDomain:v22 forGraph:v23 systemPulseRate:v26];

    if (v27)
    {
      v12 = v52;
      v13 = v50;
      v17 = [(PSGraphCompiler *)self setupForCadenceGroupedTriggerForGraph:v10 withTransitionBlock:v52 withGraphInfo:v20 withGraphSetInfo:v50];
      v11 = v51;
LABEL_35:

      goto LABEL_5;
    }

    v12 = v52;
    v28 = [(PSGraphCompiler *)self getStridedGSTWaitSources:v10 transitionBlock:v52];
    v11 = v51;
    if (v28)
    {
      v29 = [(PSGraphCompiler *)self matchInputsToGSTStrides:v28];
      v30 = v29;
      if (v29)
      {
        if ([v29 count])
        {
          v57 = 0;
          v17 = [(PSGraphCompiler *)self validOffsetForGraph:v10 inputs:v30 highestStride:&v57 + 4 desiredOffset:&v57];
          if (v17)
          {
            v49 = v28;
            v31 = [MEMORY[0x277CCABB0] numberWithInt:v57];
            [v10 setOffset:v31];

            v32 = objc_alloc_init(MEMORY[0x277CBEB58]);
            v53 = 0u;
            v54 = 0u;
            v55 = 0u;
            v56 = 0u;
            v48 = v30;
            v33 = v30;
            v34 = [v33 countByEnumeratingWithState:&v53 objects:v58 count:16];
            if (v34)
            {
              v35 = v34;
              v36 = *v54;
              do
              {
                for (i = 0; i != v35; ++i)
                {
                  if (*v54 != v36)
                  {
                    objc_enumerationMutation(v33);
                  }

                  v38 = [*(*(&v53 + 1) + 8 * i) resourceKey];
                  [v32 addObject:v38];
                }

                v35 = [v33 countByEnumeratingWithState:&v53 objects:v58 count:16];
              }

              while (v35);
            }

            v13 = v50;
            [(PSGraphCompiler *)self setupForCadenceGroupedTriggerForGraph:v10 withSources:v32 withOffset:v57 withGraphInfo:v20 withGraphSetInfo:v50];
            v12 = v52;
            v30 = v48;
            v28 = v49;
          }

          else
          {
            v32 = __PLSLogSharedInstance();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              v42 = [v10 name];
              *buf = 138477827;
              v60 = v42;
              _os_log_impl(&dword_25EA3A000, v32, OS_LOG_TYPE_DEFAULT, "Stride-based GST creation failed for graph %{private}@, no matching offset", buf, 0xCu);

              v12 = v52;
            }

            v13 = v50;
          }

          v11 = v51;
          goto LABEL_34;
        }

        v17 = 1;
LABEL_28:
        v13 = v50;
LABEL_34:

        goto LABEL_35;
      }

      v40 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        v41 = [v10 name];
        *buf = 138478083;
        v60 = v41;
        v61 = 2113;
        v62 = v28;
        _os_log_impl(&dword_25EA3A000, v40, OS_LOG_TYPE_DEBUG, "Not all inputs for graph %{private}@ have strides, waitSources=%{private}@", buf, 0x16u);

        v12 = v52;
      }
    }

    else
    {
      v30 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v39 = [v10 name];
        *buf = 138477827;
        v60 = v39;
        _os_log_impl(&dword_25EA3A000, v30, OS_LOG_TYPE_DEFAULT, "Unsupported wait resource in graph %{private}@ detected", buf, 0xCu);

        v12 = v52;
      }
    }

    v17 = 0;
    goto LABEL_28;
  }

  v43 = [PSGraphCompiler setupCadenceGroupedTriggerInfoForGraph:buf withProducerOutputRates:v10 withTransitionBlock:? withGraphInfoDict:?];
  return [(PSGraphCompiler *)v43 createCadenceGroupedTriggerForGraph:v44 withProducerOutputRates:v45 withTransitionBlock:v46, v47];
}

- (BOOL)createCadenceGroupedTriggerForGraph:(id)a3 withProducerOutputRates:(id)a4 withTransitionBlock:(id)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  v10 = [WeakRetained executionSession];
  if (([v10 shouldUseOptimizedVsyncPath] & 1) == 0)
  {
    v11 = [v7 workloadWait];

    if (v11)
    {
      goto LABEL_4;
    }

    v15 = +[PSExecutionSessionWorkarounds sharedInstance];
    v16 = [v7 resolvedDomain];
    v17 = [v7 name];
    v18 = [(PSGraphCompiler *)self transitionManager];
    v19 = [v18 executionSession];
    v20 = [v19 systemPulseRate];
    v21 = [v15 shouldForceCadencedGSTforDomain:v16 forGraph:v17 systemPulseRate:v20];

    if (v21)
    {
      v12 = [(PSGraphCompiler *)self createCadenceGroupedTriggerForGraph:v7 withTransitionBlock:v8];
      goto LABEL_5;
    }

    v22 = [(PSGraphCompiler *)self getStridedGSTWaitSources:v7 transitionBlock:v8];
    if (v22)
    {
      v23 = [(PSGraphCompiler *)self matchInputsToGSTStrides:v22];
      v24 = v23;
      if (v23)
      {
        if ([v23 count])
        {
          v41 = 0;
          if ([(PSGraphCompiler *)self validOffsetForGraph:v7 inputs:v24 highestStride:&v41 + 4 desiredOffset:&v41])
          {
            v36 = v22;
            v25 = [MEMORY[0x277CCABB0] numberWithInt:v41];
            [v7 setOffset:v25];

            v26 = objc_alloc_init(MEMORY[0x277CBEB58]);
            v37 = 0u;
            v38 = 0u;
            v39 = 0u;
            v40 = 0u;
            v27 = v24;
            v28 = [v27 countByEnumeratingWithState:&v37 objects:v42 count:16];
            if (v28)
            {
              v29 = v28;
              v30 = *v38;
              do
              {
                for (i = 0; i != v29; ++i)
                {
                  if (*v38 != v30)
                  {
                    objc_enumerationMutation(v27);
                  }

                  v32 = [*(*(&v37 + 1) + 8 * i) resourceKey];
                  [v26 addObject:v32];
                }

                v29 = [v27 countByEnumeratingWithState:&v37 objects:v42 count:16];
              }

              while (v29);
            }

            v12 = [(PSGraphCompiler *)self createCadenceGroupedTriggerForGraph:v7 withSources:v26 withOffset:v41];
            v22 = v36;
          }

          else
          {
            v26 = __PLSLogSharedInstance();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              v35 = [v7 name];
              *buf = 138477827;
              v44 = v35;
              _os_log_impl(&dword_25EA3A000, v26, OS_LOG_TYPE_DEFAULT, "Stride-based GST creation failed for graph %{private}@, no matching offset", buf, 0xCu);
            }

            v12 = 0;
          }
        }

        else
        {
          v12 = 1;
        }

        goto LABEL_31;
      }

      v33 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        v34 = [v7 name];
        *buf = 138478083;
        v44 = v34;
        v45 = 2113;
        v46 = v22;
        _os_log_impl(&dword_25EA3A000, v33, OS_LOG_TYPE_DEBUG, "Not all inputs for graph %{private}@ had strides, waitSources=%{private}@", buf, 0x16u);
      }
    }

    else
    {
      v24 = __PLSLogSharedInstance();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
LABEL_25:
        v12 = 0;
LABEL_31:

        goto LABEL_5;
      }

      v33 = [v7 name];
      *buf = 138477827;
      v44 = v33;
      _os_log_impl(&dword_25EA3A000, v24, OS_LOG_TYPE_DEFAULT, "Unsupported wait resource in graph %{private}@ detected", buf, 0xCu);
    }

    goto LABEL_25;
  }

LABEL_4:
  v12 = 1;
LABEL_5:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)createLegacyGroupedTriggerForGraph:(id)a3 withProducerOutputRates:(id)a4 withTransitionBlock:(id)a5
{
  *(&v68[2] + 2) = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  v12 = [WeakRetained executionSession];
  if ([v12 shouldUseOptimizedVsyncPath])
  {

LABEL_20:
    v52 = *MEMORY[0x277D85DE8];
    return;
  }

  v13 = [v8 workloadWait];

  if (v13)
  {
    goto LABEL_20;
  }

  v14 = [(PSGraphCompiler *)self getIntermediateSources:v8 withTransitionBlock:v10];
  v15 = [(PSGraphCompiler *)self getSystemSources:v8 withTransitionBlock:v10 withIntermediateSources:v14];
  v16 = [(PSGraphCompiler *)self filterNonANEWaitResources:v14 withGraph:v8];
  v64 = v15;
  v17 = [(PSGraphCompiler *)self filterNonANEWaitResources:v15 withGraph:v8];
  v18 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v66 = v17;
    v67 = 2112;
    v68[0] = v16;
    _os_log_impl(&dword_25EA3A000, v18, OS_LOG_TYPE_DEBUG, "after nonANEWaitSource filter - systemWaitSources %@ \n intermediateWaitSources %@ \n", buf, 0x16u);
  }

  v19 = [(PSGraphCompiler *)self checkForBufferSyncGroupedSources:v17 intermediateWaitSources:v16 graph:v8];
  v20 = [v17 count];
  v21 = [v16 count] + v20;
  if (v21 < 1)
  {
LABEL_19:

    goto LABEL_20;
  }

  v61 = v14;
  v22 = malloc_type_calloc(v21 & 0x7FFFFFFF, 0x88uLL, 0x1000040B5CA6940uLL);
  v58 = v21;
  v23 = malloc_type_calloc(v21 & 0x7FFFFFFF, 1uLL, 0x100004077774924uLL);
  v24 = [v8 name];
  v59 = v19;
  LOBYTE(v54) = v19;
  v63 = v23;
  -[PSGraphCompiler setupGSMSourceDescriptors:storageModes:graphName:graphFrequencey:systemSources:intermediateSources:producedOutputRates:device:context:syncedBuffers:](self, "setupGSMSourceDescriptors:storageModes:graphName:graphFrequencey:systemSources:intermediateSources:producedOutputRates:device:context:syncedBuffers:", v22, v23, v24, [v8 resolvedFrequency], v17, v16, v9, self->_device, self->_context, v54);

  v60 = v17;
  v25 = [v17 count];
  v57 = [v16 count] + v25 != 1;
  v26 = objc_loadWeakRetained(&self->_transitionManager);
  v27 = [v26 executionSession];
  v56 = [v27 gsm];

  if (![v8 executionType])
  {
    [PSGraphCompiler createLegacyGroupedTriggerForGraph:buf withProducerOutputRates:v8 withTransitionBlock:?];
  }

  v28 = __PLSLogSharedInstance();
  v62 = v22;
  v29 = v22;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v30 = [v8 name];
    v31 = [v30 UTF8String];
    v32 = [v8 subgraph_idx];
    v33 = [v8 threadPoolID];
    *buf = 136315650;
    v66 = v31;
    v29 = v62;
    v67 = 1024;
    LODWORD(v68[0]) = v32;
    WORD2(v68[0]) = 2048;
    *(v68 + 6) = v33;
    _os_log_impl(&dword_25EA3A000, v28, OS_LOG_TYPE_INFO, "Creating GST for Graph: %s, Subgraph_idx: %u, threadPoolID: %llu", buf, 0x1Cu);
  }

  if ([v8 executionType] == 1)
  {
    v34 = *([v8 executionContext] + 8);
    v41 = [v8 name];
    v35 = [v41 UTF8String];
    v55 = *(v34 + 352);
    v36 = v16;
    v37 = v29;
    v38 = [v8 subgraph_idx];
    v39 = getpid();
    v40 = v37;
    v16 = v36;
    muxed_gst = ps_gsm_create_muxed_gst(v56, v35, v58, v40, v63, v57 & v59, v55, v38, v39);
  }

  else
  {
    v41 = [v8 name];
    v42 = [v41 UTF8String];
    v43 = getpid();
    muxed_gst = ps_gsm_create_gst(v56, v42, v58, v29, v63, v57 & v59, v43);
  }

  v45 = muxed_gst;
  v17 = v60;

  v14 = v61;
  if (v45)
  {
    graphGSTMap = self->_graphGSTMap;
    v47 = [MEMORY[0x277CCAE60] valueWithPointer:v45];
    [(NSMapTable *)graphGSTMap setObject:v47 forKey:v8];

    free(v62);
    free(v63);
    v48 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      v49 = [v8 name];
      *buf = 138412546;
      v66 = v49;
      v67 = 2112;
      v68[0] = v60;
      _os_log_impl(&dword_25EA3A000, v48, OS_LOG_TYPE_DEBUG, "Created system-level PSInputPolicyWait GSTs for graph %@ for sources: %@", buf, 0x16u);
    }

    v50 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      v51 = [v8 name];
      *buf = 138412546;
      v66 = v51;
      v67 = 2112;
      v68[0] = v16;
      _os_log_impl(&dword_25EA3A000, v50, OS_LOG_TYPE_DEBUG, "Created intermediate PSInputPolicyWait GSTs for graph %@ for sources: %@", buf, 0x16u);
    }

    goto LABEL_19;
  }

  v53 = [PSGraphCompiler createLegacyGroupedTriggerForGraph:buf withProducerOutputRates:v8 withTransitionBlock:?];
  [PSGraphCompiler createExecSubGraphWithFreeSlot:v53 withClientGraph:?];
}

- (void)createExecSubGraphWithFreeSlot:(uint64_t)a3 withClientGraph:(void *)a4
{
  v6 = a4;
  ps_exec_init_subgraph(a3);
  [a1 initializeExecSubGraphProperties:a3 withClientGraph:v6];
  [a1 initializeExecSubGraphTasks:a3 withClientGraph:v6];
  [a1 initializeExecSubGraphTaskDependencies:a3 withClientGraph:v6];

  *(a3 + 6800) = [a1 deterministicReplay];

  ps_exec_finalize_subgraph(a3);
}

- (void)validateCriticality:(unint64_t)a3 withCriticalityEntitlement:(unint64_t)a4 withGraph:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a5;
  if (a3 < a4)
  {
    v17 = v7;
    v18 = 0;
    v9 = [v7 name];
    asprintf(&v18, "Client requested a graph above their criticalityEntitlement. Graph: %s, criticalityEntitlement: %lu, requested criticality: %lu", [v9 UTF8String], a4, a3);

    v10 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v11 = [v17 name];
      v12 = [v11 UTF8String];
      *buf = 136316162;
      v20 = "[PSGraphCompiler validateCriticality:withCriticalityEntitlement:withGraph:]";
      v21 = 1024;
      v22 = 3601;
      v23 = 2080;
      v24 = v12;
      v25 = 2048;
      v26 = a4;
      v27 = 2048;
      v28 = a3;
      _os_log_impl(&dword_25EA3A000, v10, OS_LOG_TYPE_FAULT, "%s:%d Client requested a graph above their criticalityEntitlement. Graph: %s, criticalityEntitlement: %lu, requested criticality: %lu", buf, 0x30u);
    }

    v13 = OSLogFlushBuffers();
    if (v13)
    {
      v14 = v13;
      v15 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v20 = "[PSGraphCompiler validateCriticality:withCriticalityEntitlement:withGraph:]";
        v21 = 1024;
        v22 = v14;
        _os_log_impl(&dword_25EA3A000, v15, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
      }
    }

    else
    {
      usleep(0x1E8480u);
    }

    v16 = abort_with_reason();
    [PSGraphCompiler initializeSubgraphLiveness:v16 withRelativeDeadline:? withClientGraph:?];
  }

  else
  {
    v8 = *MEMORY[0x277D85DE8];
  }
}

- (void)initializeSubgraphLiveness:(uint64_t)a3 withRelativeDeadline:(uint64_t)a4 withClientGraph:(void *)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = ps_liveness_node_allocate();
  if (v9 == -1)
  {
    v20 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v8 name];
      v23 = 136315138;
      v24 = [v21 UTF8String];
      _os_log_impl(&dword_25EA3A000, v20, OS_LOG_TYPE_DEFAULT, "Can't allocate liveness node for graph %s", &v23, 0xCu);
    }
  }

  else
  {
    v10 = v9;
    header = ps_liveness_get_header();
    node_metadata_address = _liveness_get_node_metadata_address(header, v10);
    node_address = _liveness_get_node_address(header, v10);
    *(a3 + 48) = node_metadata_address + 168;
    *(a3 + 56) = node_address;
    *(a3 + 64) = v10;
    v14 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a3 + 376);
      v16 = *(a3 + 384);
      v23 = 136315907;
      v24 = a3 + 113;
      v25 = 2049;
      v26 = v15;
      v27 = 1025;
      v28 = v16;
      v29 = 1024;
      v30 = v10;
      _os_log_impl(&dword_25EA3A000, v14, OS_LOG_TYPE_DEFAULT, "Creating new exec subgraph with name %s, frequency %{private}llu, qos %{private}d, liveness node %08xd", &v23, 0x22u);
    }

    ps_liveness_node_set_base_info(v10, 0, (a3 + 113));
    ps_liveness_node_set_aux_string(v10, "Graph");
    ps_liveness_node_set_deadlines(v10, *(a3 + 376), a4);
    ps_liveness_node_set_qos(v10, *(a3 + 384));
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v18 = [WeakRetained executionSession];
    v19 = [v18 name];
    ps_liveness_node_set_session(v10, [v19 UTF8String]);

    ps_liveness_node_finalize(v10, 0);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)initializeGroupedTriggersForSubgraph:(uint64_t)a3 withClientGraph:(void *)a4
{
  v13 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = [WeakRetained executionSession];
  v8 = [v7 gsm];

  *(a3 + 520) = v8;
  *(a3 + 528) = 0u;
  v9 = [*(a1 + 48) objectForKey:v13];
  v10 = v9;
  if (v9)
  {
    v11 = *(*(a3 + 6792) + 4);
    v12 = [v9 pointerValue];
    if (v11)
    {
      *(a3 + 528) = v12;
      if (!v12)
      {
        [PSGraphCompiler initializeGroupedTriggersForSubgraph:withClientGraph:];
      }
    }

    else
    {
      *(a3 + 536) = v12;
      if (!v12)
      {
        [PSGraphCompiler initializeGroupedTriggersForSubgraph:withClientGraph:];
      }
    }
  }
}

- (void)initializeExecSubGraphProperties:(uint64_t)a3 withClientGraph:(void *)a4
{
  v62 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [v6 name];
  [v7 UTF8String];
  __strlcpy_chk();

  *(a3 + 376) = [v6 resolvedFrequency];
  *(a3 + 40) = v6;
  *(a3 + 544) |= 0xFFFFFFFFFFFFuLL;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v9 = [WeakRetained executionSession];
  v10 = [v9 isUniqueSession];

  v11 = objc_alloc(MEMORY[0x277CCACA8]);
  if (v10)
  {
    v12 = [MEMORY[0x277CCAC38] processInfo];
    v13 = [v12 processName];
    v14 = [v6 name];
    v15 = [v11 initWithFormat:@"%@-%@", v13, v14];
    *(a3 + 6784) = [v15 hash];
  }

  else
  {
    v12 = objc_loadWeakRetained((a1 + 56));
    v13 = [v12 executionSession];
    v14 = [v13 name];
    v15 = [v6 name];
    v16 = [v11 initWithFormat:@"%@-%@", v14, v15];
    *(a3 + 6784) = [v16 hash];
  }

  v17 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a3 + 6784);
    *buf = 136315394;
    *v60 = a3 + 113;
    *&v60[8] = 1024;
    *&v60[10] = v18;
    _os_log_impl(&dword_25EA3A000, v17, OS_LOG_TYPE_DEFAULT, "Ariadne Graph & Error Log Buffer Info: Graph=%s KeyHash=%u", buf, 0x12u);
  }

  v19 = +[PLSSettings currentSettings];
  v20 = [v19 criticalityEntitlement];

  [a1 validateCriticality:objc_msgSend(v6 withCriticalityEntitlement:"criticalityCPU") withGraph:{v20, v6}];
  [a1 validateCriticality:objc_msgSend(v6 withCriticalityEntitlement:"criticalityGPU") withGraph:{v20, v6}];
  v21 = [v6 resolvedCriticalityCPU];
  if (v21 <= 3)
  {
    *(a3 + 384) = v21;
  }

  v22 = objc_loadWeakRetained((a1 + 56));

  if (v22)
  {
    *&v60[12] = 0;
    v58 = objc_loadWeakRetained((a1 + 56));
    v57 = [v58 executionSession];
    v56 = [v57 caNameHash];
    *buf = [v56 unsignedIntValue];
    v55 = [v6 caNameHash];
    *v60 = [v55 unsignedIntValue];
    v23 = [v6 systemPulseStride];
    *&v60[4] = [v23 unsignedLongLongValue];
    v24 = +[PSCoreAnalyticsIDManager sharedInstance];
    v25 = a1;
    v26 = objc_loadWeakRetained((a1 + 56));
    v27 = [v26 executionSession];
    v28 = [v27 caName];
    v29 = [v6 caName];
    v30 = [v6 systemPulseStride];
    *&v60[12] = [v24 opaqueIDForSession:v28 graph:v29 stride:v30];

    a1 = v25;
    graph_per_frame_handle = ps_ca_create_graph_per_frame_handle(buf, &__block_literal_global_5);
    *(a3 + 6808) = graph_per_frame_handle;
    ps_ca_gst_drops_init(graph_per_frame_handle);
    ps_ca_graph_exec_init(*(a3 + 6808));
    ps_ca_deadline_miss_init(*(a3 + 6808));
    ps_ca_workgroup_counters_init(*(a3 + 6808));
  }

  if ([v6 workloadWait])
  {
    *(a3 + 496) = [v6 workloadWait];
    *(a3 + 504) = [v6 workloadWaitContext];
    v32 = objc_loadWeakRetained((a1 + 56));
    v33 = [v32 executionSession];
    v34 = [v33 shouldUseOptimizedVsyncPath];

    if (v34)
    {
      *(a3 + 513) = 1;
    }
  }

  else
  {
    v35 = objc_loadWeakRetained((a1 + 56));
    v36 = [v35 executionSession];
    v37 = [v36 shouldUseOptimizedVsyncPath];

    if ((v37 & 1) == 0)
    {
      if ([a1 deterministicReplay])
      {
        *(a3 + 616) = tailTaskCallback;
        *(a3 + 624) = a1;
      }

      *(a3 + 440) = groupedSourcePoolAcquireHandler;
      *(a3 + 448) = groupedSourcePoolRelinquishHandler;
      v38 = [*(a1 + 192) objectForKey:v6];
      *(a3 + 456) = [v38 pointerValue];
    }
  }

  *(a3 + 72) = [v6 init_function];
  *(a3 + 80) = [v6 deinit_function];
  *(a3 + 88) = [v6 init_context];
  *(a3 + 96) = [v6 deinit_context];
  *(a3 + 112) = 0;
  *(a3 + 408) = notifyGraphStartCallback;
  *(a3 + 424) = 0;
  *(a3 + 432) = 0;
  *(a3 + 416) = notifyGraphFinishCallback;
  v39 = +[PLSSettings currentSettings];
  v40 = [v39 overrideDeadlinePercentage];

  v41 = +[PLSSettings currentSettings];
  if (![v41 expectRelativeDeadline])
  {

LABEL_22:
    v43 = 0x3B9ACA00uLL / *(a3 + 376);
    goto LABEL_23;
  }

  v42 = [v6 relativeDeadline];

  if (!v42)
  {
    goto LABEL_22;
  }

  v43 = [v6 relativeDeadline];
  if (!v43)
  {
    goto LABEL_22;
  }

LABEL_23:
  [v6 setResolvedDeadline:v43];
  v44 = ((v43 * v40) / 100.0);
  v45 = dword_27FD126F4;
  if (!dword_27FD126F4)
  {
    mach_timebase_info(&initializeExecSubGraphProperties_withClientGraph__timebase_info);
    v45 = dword_27FD126F4;
  }

  *(a3 + 552) = v45 * v44 / initializeExecSubGraphProperties_withClientGraph__timebase_info;
  v46 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
  {
    v47 = *(a3 + 552);
    v48 = [v6 name];
    v49 = [v48 UTF8String];
    *buf = 134218498;
    *v60 = v44;
    *&v60[8] = 2048;
    *&v60[10] = v47;
    *&v60[18] = 2080;
    v61 = v49;
    _os_log_impl(&dword_25EA3A000, v46, OS_LOG_TYPE_DEBUG, "Set up a relative deadline of (%llu)ns, machtime: (%llu), for graph: (%s)", buf, 0x20u);
  }

  v50 = +[PSGraphCompiler deadlineThresholdsForCriticality:](PSGraphCompiler, "deadlineThresholdsForCriticality:", [v6 criticalityCPU]);
  v51 = [v50 objectForKeyedSubscript:@"deadline-miss-threshold"];
  *(a3 + 564) = [v51 unsignedIntegerValue];

  v52 = [v50 objectForKeyedSubscript:@"iterations-to-track"];
  *(a3 + 560) = [v52 unsignedIntegerValue];

  *(a3 + 592) = systemHealthDeadlineMissHandler;
  *(a3 + 600) = a1;
  if ([v6 needsLiveness])
  {
    [a1 initializeSubgraphLiveness:a3 withRelativeDeadline:v44 withClientGraph:v6];
  }

  *[v6 executionContext] = a3;
  *([v6 executionContext] + 16) = _get_iosurface_count;
  *([v6 executionContext] + 24) = _get_iosurfaces;
  v53 = *(a1 + 160);
  *([v6 executionContext] + 32) = v53;

  v54 = *MEMORY[0x277D85DE8];
}

- (id)createWorkgroupIntervalForThreadPool:(ps_exec_shared_thread_pool_s *)a3
{
  v21 = *MEMORY[0x277D85DE8];
  memset(v20, 0, sizeof(v20));
  v19 = 0u;
  v18 = 0u;
  v17 = 799564724;
  v4 = os_workgroup_attr_set_interval_type();
  if (v4)
  {
    v5 = v4;
    v6 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      p_var5 = &a3[1].var5;
      v15 = 1024;
      v16 = v5;
      v7 = "Could not set attribute type arkit for threadpool:(%s) error:(%d)";
LABEL_7:
      _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_ERROR, v7, &v13, 0x12u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v8 = os_workgroup_attr_set_telemetry_flavor();
  if (v8)
  {
    v9 = v8;
    v6 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      p_var5 = &a3[1].var5;
      v15 = 1024;
      v16 = v9;
      v7 = "Couldn't set telemetry flavor on workgroup attributes for threadpool:(%s) error:(%d)";
      goto LABEL_7;
    }

LABEL_8:

    v10 = 0;
    goto LABEL_9;
  }

  [*MEMORY[0x277D3E6F0] UTF8String];
  v10 = os_workgroup_interval_create_with_workload_id();
LABEL_9:
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)createWorkgroupIntervalForGraph:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  memset(v30, 0, sizeof(v30));
  v29 = 0u;
  v28 = 0u;
  v27 = 799564724;
  v5 = os_workgroup_attr_set_telemetry_flavor();
  if (v5)
  {
    v6 = v5;
    v7 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v4 name];
      v23 = 138412546;
      v24 = v8;
      v25 = 1024;
      v26 = v6;
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_ERROR, "Couldn't set telemetry flavor on workgroup attributes for graph:(%@) error:(%d)", &v23, 0x12u);
    }

    goto LABEL_15;
  }

  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  v10 = [WeakRetained isSystemCompositor];

  if (v10)
  {
    [*MEMORY[0x277D3E710] UTF8String];
    v11 = os_workgroup_attr_set_interval_type();
    if (v11)
    {
      v12 = v11;
      v7 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v13 = [v4 name];
        v23 = 138412546;
        v24 = v13;
        v25 = 1024;
        v26 = v12;
        v14 = "Could not set attribute type compositor for graph:(%@) error:(%d)";
LABEL_14:
        _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_ERROR, v14, &v23, 0x12u);

        goto LABEL_15;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v15 = [v4 tag];
    v16 = [v15 isEqualToString:*MEMORY[0x277D3E6F8]];

    if (v16)
    {
      [v4 name];
    }

    else
    {
      [v4 tag];
    }
    v17 = ;
    [v17 UTF8String];

    v18 = os_workgroup_attr_set_interval_type();
    if (v18)
    {
      v19 = v18;
      v7 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v13 = [v4 name];
        v23 = 138412546;
        v24 = v13;
        v25 = 1024;
        v26 = v19;
        v14 = "Could not set attribute type arkit for graph:(%@) error:(%d)";
        goto LABEL_14;
      }

LABEL_15:
      v20 = 0;
      goto LABEL_16;
    }
  }

  v7 = [v4 name];
  [v7 UTF8String];
  v20 = os_workgroup_interval_create_with_workload_id();
LABEL_16:

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)initializeExecSubGraphTasks:(uint64_t)a3 withClientGraph:(void *)a4
{
  v66 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v7 = [v6 tasks];
  v8 = [v7 countByEnumeratingWithState:&v52 objects:v65 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v53;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v53 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v10 |= [*(*(&v52 + 1) + 8 * i) computeAgent] == 1;
      }

      v9 = [v7 countByEnumeratingWithState:&v52 objects:v65 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v14 = [WeakRetained executionSession];
  v15 = [v14 shouldUseOptimizedVsyncPath];

  if ((v10 & 1) == 0 && !v15)
  {
    v16 = 0;
LABEL_18:
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = v6;
    obj = [v6 tasks];
    v17 = [obj countByEnumeratingWithState:&v48 objects:v64 count:16];
    if (!v17)
    {
      goto LABEL_40;
    }

    v18 = v17;
    v47 = *v49;
    while (1)
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v49 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v48 + 1) + 8 * j);
        v21 = __PLSLogSharedInstance();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          v22 = [v20 name];
          v23 = [v20 inputs];
          v24 = [v20 outputs];
          *buf = 138413058;
          v57 = v22;
          v58 = 2080;
          v59 = a3 + 113;
          v60 = 2112;
          v61 = v23;
          v62 = 2112;
          v63 = v24;
          _os_log_impl(&dword_25EA3A000, v21, OS_LOG_TYPE_DEBUG, "PS_EXEC: Adding new task %@ for graph %s\nRequires inputs: %@\nProduces outputs: %@", buf, 0x2Au);
        }

        if (*(a3 + 496))
        {
          v25 = [v20 name];
          string_id = ps_telemetry_create_string_id([v25 UTF8String]);
          v27 = [v46 name];
          v28 = ps_telemetry_create_string_id([v27 UTF8String]);
          v29 = ps_task_wrapper_create(v46, v20, 0, a3 + 400, string_id, v28, *(a3 + 6808));

          v30 = objc_loadWeakRetained((a1 + 56));
          v31 = [v30 executionSession];
          LODWORD(v27) = [v31 shouldUseOptimizedVsyncPath];

          v32 = [v20 name];
          v33 = [v32 UTF8String];
          if (v27)
          {
            v34 = ps_task_wrapper_execute_sync;
          }

          else
          {
            v34 = taskWrapperExecutionHandler;
          }

          ps_exec_add_task(a3, v33, v29, v34, workloadWrapperCleanupHandler);
        }

        else
        {
          v35 = objc_loadWeakRetained((a1 + 56));
          v36 = [v35 executionSession];
          v37 = [v36 shouldUseOptimizedVsyncPath];

          if (v37)
          {
            v29 = 0;
            goto LABEL_34;
          }

          v38 = [a1 createBlockFromTask:v20 withGraph:v46 withExecSubgraph:a3 withMtlQueue:v16 withGraphStringId:a3 + 400];
          v32 = [v20 name];
          ps_exec_add_task(a3, [v32 UTF8String], v38, ps_exec_block_execute_task_instance, ps_exec_block_destroy);
          v29 = 0;
        }

LABEL_34:
        v39 = objc_loadWeakRetained((a1 + 56));
        v40 = [v39 executionSession];
        v41 = [v40 shouldUseOptimizedVsyncPath];

        if (v41)
        {
          if (!v16)
          {
            goto LABEL_42;
          }

          if (!v29)
          {
            [PSGraphCompiler initializeExecSubGraphTasks:buf withClientGraph:?];
LABEL_42:
            [PSGraphCompiler initializeExecSubGraphTasks:buf withClientGraph:?];
          }

          *(v29 + 20) = 1;
          v42 = *(a1 + 96);
          ps_task_wrapper_setup_gpu_resources(v29);
        }
      }

      v18 = [obj countByEnumeratingWithState:&v48 objects:v64 count:16];
      if (!v18)
      {
LABEL_40:

        v43 = *MEMORY[0x277D85DE8];
        return;
      }
    }
  }

  if ([v6 criticalityGPU])
  {
    [a1 createMtlCommandQueueBestEffort];
  }

  else
  {
    [a1 createMtlCommandQueueRealTime];
  }
  v16 = ;
  if (v16)
  {
    [*(a1 + 152) setObject:v16 forKey:v6];
    goto LABEL_18;
  }

  v44 = [PSGraphCompiler initializeExecSubGraphTasks:buf withClientGraph:v6];
  workloadWrapperCleanupHandler(v44);
}

- (void)createBlockFromTask:(void *)a3 withGraph:(void *)a4 withExecSubgraph:(uint64_t)a5 withMtlQueue:(void *)a6 withGraphStringId:(uint64_t)a7
{
  v45 = a7;
  v54 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v47 = a6;
  v11 = ps_exec_block_create(v9);
  ps_exec_block_setup_task(v11, v9);
  if (ps_exec_block_setup_autoreleasepool(v11, [v9 enableAutoreleasePool]))
  {
    v12 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v9 name];
      *buf = 136315138;
      *&buf[4] = [v13 UTF8String];
      _os_log_impl(&dword_25EA3A000, v12, OS_LOG_TYPE_ERROR, "Unable to set autoreleasepool settings for task %s", buf, 0xCu);
    }
  }

  v14 = *(a1 + 184);
  v15 = [a1 getGraphTaskHash:v10 withTask:{v9, v45}];
  v16 = [v14 objectForKey:v15];

  v50 = v16;
  if (!v16)
  {
    [PSGraphCompiler createBlockFromTask:buf withGraph:v9 withExecSubgraph:? withMtlQueue:? withGraphStringId:?];
  }

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:getpid()];
  v18 = [v17 hash];
  v19 = *(a1 + 28);
  *(a1 + 28) = v19 + 1;

  ps_exec_block_setup_task_resources(v11, [v16 pointerValue]);
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v18 + v19];
  LODWORD(v18) = [v20 hash];
  v21 = [v9 name];
  string_id = ps_telemetry_create_string_id([v21 UTF8String]);
  v49 = v10;
  v23 = [v10 name];
  v24 = ps_telemetry_create_string_id([v23 UTF8String]);
  ps_exec_block_setup_perf_values(v11, v18, string_id, v24, v46);

  if ([v9 computeAgent] == 1)
  {
    v25 = *(a1 + 96);
  }

  else
  {
    v25 = 0;
  }

  v26 = [v9 segments];

  v27 = v49;
  if (v26)
  {
    ps_exec_block_init_task_segments(v11, v9);
  }

  *buf = 0u;
  v53 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 56));

  if (WeakRetained)
  {
    v29 = objc_loadWeakRetained((a1 + 56));
    v30 = [v29 executionSession];
    v31 = [v30 caNameHash];
    *buf = [v31 unsignedIntValue];

    v32 = [v49 caNameHash];
    *&buf[4] = [v32 unsignedIntValue];

    v33 = [v49 systemPulseStride];
    *&buf[8] = [v33 unsignedLongLongValue];

    v34 = [v9 caNameHash];
    DWORD2(v53) = [v34 unsignedIntValue];

    v35 = +[PSCoreAnalyticsIDManager sharedInstance];
    v36 = [v9 caName];
    v37 = [v49 caName];
    v38 = [v49 systemPulseStride];
    v39 = objc_loadWeakRetained((a1 + 56));
    [v39 executionSession];
    v41 = v40 = v25;
    v42 = [v41 caName];
    LODWORD(v53) = [v35 opaqueIDForTask:v36 graph:v37 stride:v38 session:v42];

    v25 = v40;
    v27 = v49;
  }

  ps_exec_block_setup_task_context(v11, v25, v47, v27, *(a5 + 6808), buf);
  [a1 initializeComplexityUpdateHandler:v27 withExecSubgraph:a5 withExecBlock:v11];

  v43 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)initializeComplexityUpdateHandler:(void *)a3 withExecSubgraph:(uint64_t)a4 withExecBlock:(uint64_t)a5
{
  v7 = a3;
  v8 = [v7 tag];
  if (v8 == *MEMORY[0x277D3E708])
  {
    v11 = 1;
  }

  else
  {
    v9 = [v7 tag];
    if (v9 == *MEMORY[0x277D3E700])
    {
      v11 = 1;
    }

    else
    {
      v10 = [v7 tag];
      v11 = v10 == *MEMORY[0x277D3E718];
    }
  }

  v15[1] = a4;
  v15[0] = v11;
  v15[2] = complexityUpdateHandler;
  if (ps_exec_block_set_complexity_update_context(a5, v15))
  {
    v12 = [PSGraphCompiler initializeComplexityUpdateHandler:v7 withExecSubgraph:? withExecBlock:?];
    complexityUpdateHandler(v12, v13);
  }

  else
  {
  }
}

- (id)generateDependencyGraphWithClientGraph:(id)a3
{
  v138 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CCAB00]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6 = objc_alloc_init(MEMORY[0x277CCAB00]);
  v7 = objc_alloc_init(MEMORY[0x277CCAB00]);
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v68 = v3;
  obj = [v3 tasks];
  v76 = v7;
  v77 = [obj countByEnumeratingWithState:&v124 objects:v137 count:16];
  v80 = v5;
  if (v77)
  {
    v74 = *v125;
    do
    {
      v8 = 0;
      do
      {
        if (*v125 != v74)
        {
          objc_enumerationMutation(obj);
        }

        v82 = v8;
        v9 = *(*(&v124 + 1) + 8 * v8);
        v120 = 0u;
        v121 = 0u;
        v122 = 0u;
        v123 = 0u;
        v10 = [v9 waitBarriers];
        v11 = [v10 countByEnumeratingWithState:&v120 objects:v136 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v121;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v121 != v13)
              {
                objc_enumerationMutation(v10);
              }

              [v5 addObject:*(*(&v120 + 1) + 8 * i)];
            }

            v12 = [v10 countByEnumeratingWithState:&v120 objects:v136 count:16];
          }

          while (v12);
        }

        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v15 = [v9 updateBarriers];
        v16 = [v15 countByEnumeratingWithState:&v116 objects:v135 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v117;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v117 != v18)
              {
                objc_enumerationMutation(v15);
              }

              [v5 addObject:*(*(&v116 + 1) + 8 * j)];
            }

            v17 = [v15 countByEnumeratingWithState:&v116 objects:v135 count:16];
          }

          while (v17);
        }

        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        v20 = [v9 outputs];
        v21 = [v20 countByEnumeratingWithState:&v112 objects:v134 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v113;
          do
          {
            for (k = 0; k != v22; ++k)
            {
              if (*v113 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = [*(*(&v112 + 1) + 8 * k) resourceKey];
              [v7 setObject:v9 forKey:v25];
            }

            v22 = [v20 countByEnumeratingWithState:&v112 objects:v134 count:16];
          }

          while (v22);
        }

        v110 = 0u;
        v111 = 0u;
        v108 = 0u;
        v109 = 0u;
        v85 = [v9 inputs];
        v26 = [v85 countByEnumeratingWithState:&v108 objects:v133 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v109;
          do
          {
            for (m = 0; m != v27; ++m)
            {
              if (*v109 != v28)
              {
                objc_enumerationMutation(v85);
              }

              v30 = *(*(&v108 + 1) + 8 * m);
              if (![v30 type])
              {
                [v30 resolvedResourceKey];
                v32 = v31 = v6;
                v33 = [v31 objectForKey:v32];

                if (!v33)
                {
                  v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
                  v35 = [v30 resolvedResourceKey];
                  [v31 setObject:v34 forKey:v35];
                }

                v36 = [v30 resolvedResourceKey];
                v37 = [v31 objectForKey:v36];

                [v37 addObject:v9];
                v7 = v76;
                v6 = v31;
              }
            }

            v27 = [v85 countByEnumeratingWithState:&v108 objects:v133 count:16];
          }

          while (v27);
        }

        v5 = v80;
        v8 = v82 + 1;
      }

      while ((v82 + 1) != v77);
      v77 = [obj countByEnumeratingWithState:&v124 objects:v137 count:16];
    }

    while (v77);
  }

  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v38 = v6;
  v70 = v38;
  v83 = [v38 countByEnumeratingWithState:&v104 objects:v132 count:16];
  if (v83)
  {
    v78 = *v105;
    do
    {
      for (n = 0; n != v83; ++n)
      {
        if (*v105 != v78)
        {
          objc_enumerationMutation(v38);
        }

        v40 = *(*(&v104 + 1) + 8 * n);
        v41 = [v38 objectForKey:v40];
        v42 = [v7 objectForKey:v40];

        if (v42)
        {
          v43 = [v7 objectForKey:v40];
          v100 = 0u;
          v101 = 0u;
          v102 = 0u;
          v103 = 0u;
          v86 = v41;
          v44 = v41;
          v45 = [v44 countByEnumeratingWithState:&v100 objects:v131 count:16];
          if (v45)
          {
            v46 = v45;
            v47 = *v101;
            do
            {
              for (ii = 0; ii != v46; ++ii)
              {
                if (*v101 != v47)
                {
                  objc_enumerationMutation(v44);
                }

                v49 = *(*(&v100 + 1) + 8 * ii);
                v50 = [v4 objectForKey:v43];

                if (!v50)
                {
                  v51 = objc_alloc_init(MEMORY[0x277CBEB58]);
                  [v4 setObject:v51 forKey:v43];
                }

                v52 = [v4 objectForKey:v43];
                [v52 addObject:v49];
              }

              v46 = [v44 countByEnumeratingWithState:&v100 objects:v131 count:16];
            }

            while (v46);
          }

          v7 = v76;
          v5 = v80;
          v38 = v70;
          v41 = v86;
        }
      }

      v83 = [v38 countByEnumeratingWithState:&v104 objects:v132 count:16];
    }

    while (v83);
  }

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v69 = v5;
  obja = [v69 countByEnumeratingWithState:&v96 objects:v130 count:16];
  if (obja)
  {
    v71 = *v97;
    do
    {
      v53 = 0;
      do
      {
        if (*v97 != v71)
        {
          objc_enumerationMutation(v69);
        }

        v75 = v53;
        v54 = *(*(&v96 + 1) + 8 * v53);
        v92 = 0u;
        v93 = 0u;
        v94 = 0u;
        v95 = 0u;
        v84 = v54;
        v79 = [v54 unblockingTasks];
        v87 = [v79 countByEnumeratingWithState:&v92 objects:v129 count:16];
        if (v87)
        {
          v81 = *v93;
          do
          {
            for (jj = 0; jj != v87; jj = jj + 1)
            {
              if (*v93 != v81)
              {
                objc_enumerationMutation(v79);
              }

              v56 = *(*(&v92 + 1) + 8 * jj);
              v88 = 0u;
              v89 = 0u;
              v90 = 0u;
              v91 = 0u;
              v57 = [v84 blockingTasks];
              v58 = [v57 countByEnumeratingWithState:&v88 objects:v128 count:16];
              if (v58)
              {
                v59 = v58;
                v60 = *v89;
                do
                {
                  for (kk = 0; kk != v59; ++kk)
                  {
                    if (*v89 != v60)
                    {
                      objc_enumerationMutation(v57);
                    }

                    v62 = *(*(&v88 + 1) + 8 * kk);
                    v63 = [v4 objectForKey:v56];

                    if (!v63)
                    {
                      v64 = objc_alloc_init(MEMORY[0x277CBEB58]);
                      [v4 setObject:v64 forKey:v56];
                    }

                    v65 = [v4 objectForKey:v56];
                    [v65 addObject:v62];
                  }

                  v59 = [v57 countByEnumeratingWithState:&v88 objects:v128 count:16];
                }

                while (v59);
              }
            }

            v87 = [v79 countByEnumeratingWithState:&v92 objects:v129 count:16];
          }

          while (v87);
        }

        v53 = v75 + 1;
      }

      while ((v75 + 1) != obja);
      obja = [v69 countByEnumeratingWithState:&v96 objects:v130 count:16];
    }

    while (obja);
  }

  v66 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)initializeExecSubGraphTaskDependencies:(uint64_t)a3 withClientGraph:(void *)a4
{
  v58 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x277CCAB00]);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v31 = v5;
  v7 = [v5 tasks];
  v8 = [v7 countByEnumeratingWithState:&v45 objects:v57 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v46;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v46 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v45 + 1) + 8 * i);
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v10];
        [v6 setObject:v14 forKey:v13];

        v10 = (v10 + 1);
      }

      v9 = [v7 countByEnumeratingWithState:&v45 objects:v57 count:16];
    }

    while (v9);
  }

  PSGenerateDependencyGraphWithClientGraph();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v44 = 0u;
  v33 = [obj countByEnumeratingWithState:&v41 objects:v56 count:16];
  if (v33)
  {
    v32 = *v42;
    v36 = a3 + 640;
    do
    {
      v15 = 0;
      do
      {
        if (*v42 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v35 = v15;
        v16 = *(*(&v41 + 1) + 8 * v15);
        v17 = [obj objectForKey:v16];
        v18 = [v6 objectForKey:v16];
        v19 = [v18 unsignedIntValue];

        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v20 = v17;
        v21 = [v20 countByEnumeratingWithState:&v37 objects:v55 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v38;
          do
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v38 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = [v6 objectForKey:*(*(&v37 + 1) + 8 * j)];
              v26 = [v25 unsignedIntValue];

              ps_exec_add_dependency(a3, v19, v26);
              v27 = __PLSLogSharedInstance();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
              {
                v28 = *(v36 + 96 * v19 + 8);
                v29 = *(v36 + 96 * v26 + 8);
                *buf = 136315650;
                v50 = a3 + 113;
                v51 = 2080;
                v52 = v28;
                v53 = 2080;
                v54 = v29;
                _os_log_impl(&dword_25EA3A000, v27, OS_LOG_TYPE_DEBUG, "PS_EXEC: Found a dependency in subgraph %s for src %s, dst %s", buf, 0x20u);
              }
            }

            v22 = [v20 countByEnumeratingWithState:&v37 objects:v55 count:16];
          }

          while (v22);
        }

        v15 = v35 + 1;
      }

      while (v35 + 1 != v33);
      v33 = [obj countByEnumeratingWithState:&v41 objects:v56 count:16];
    }

    while (v33);
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)removeMTLCommandQueuesForTransitionBlock:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [a3 removedGraphs];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [(NSMapTable *)self->_retainedMtlQueues objectForKey:v9];

        if (v10)
        {
          [(NSMapTable *)self->_retainedMtlQueues removeObjectForKey:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)performWithKeytoWriterLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_keytoWriterMapLock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_keytoWriterMapLock);
}

- (void)withWriterForKey:(id)a3 perform:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__PSGraphCompiler_withWriterForKey_perform___block_invoke;
  v10[3] = &unk_279A483A0;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(PSGraphCompiler *)self performWithKeytoWriterLock:v10];
}

uint64_t __44__PSGraphCompiler_withWriterForKey_perform___block_invoke(void *a1)
{
  [*(a1[4] + 208) objectForKey:a1[5]];
  if (objc_claimAutoreleasedReturnValue())
  {
    (*(a1[6] + 16))();
  }

  return MEMORY[0x2821F96F8]();
}

- (void)setWriterForKey:(id)a3 writer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__PSGraphCompiler_setWriterForKey_writer___block_invoke;
  v10[3] = &unk_279A483C8;
  v10[4] = self;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  [(PSGraphCompiler *)self performWithKeytoWriterLock:v10];
}

- (void)removeWriterForKey:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__PSGraphCompiler_removeWriterForKey___block_invoke;
  v6[3] = &unk_279A483F0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(PSGraphCompiler *)self performWithKeytoWriterLock:v6];
}

- (void)destroyGroupedTriggersForTransitionBlock:(id)a3
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  v5 = [WeakRetained executionSession];
  v6 = [v5 shouldUseOptimizedVsyncPath];

  if ((v6 & 1) == 0)
  {
    v7 = [v8 removedGraphs];
    [(PSGraphCompiler *)self removeGroupedTriggersForGraphs:v7];
  }
}

- (void)removeGroupedTriggersForGraphs:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (![v9 workloadWait])
        {
          [(NSMapTable *)self->_graphGSTMap removeObjectForKey:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeSourceTasksForTransitionBlock:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = [a3 removedGraphs];
  v29 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
  if (v29)
  {
    v28 = *v36;
    do
    {
      v4 = 0;
      do
      {
        if (*v36 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v30 = v4;
        v5 = *(*(&v35 + 1) + 8 * v4);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v6 = [v5 sourceTasks];
        v7 = [v6 countByEnumeratingWithState:&v31 objects:v41 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v32;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v32 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v31 + 1) + 8 * i);
              retainedSourceWriterBlocks = self->_retainedSourceWriterBlocks;
              v13 = [v11 name];
              v14 = [(NSMutableDictionary *)retainedSourceWriterBlocks objectForKey:v13];

              if (v14)
              {
                WeakRetained = objc_loadWeakRetained(&self->_transitionMonitor);
                [WeakRetained lock];

                v16 = MEMORY[0x277CCACA8];
                v17 = [v11 name];
                v18 = [v16 stringWithFormat:@"%@ (PSSourceTask)", v17];
                v19 = objc_loadWeakRetained(&self->_transitionMonitor);
                [v19 setTransitionStateBufferDeinitCurResource:v18];

                v20 = objc_loadWeakRetained(&self->_transitionMonitor);
                [v20 unlock];

                [v14 stop];
                v21 = __PLSLogSharedInstance();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                {
                  v22 = [v11 name];
                  v23 = [v22 UTF8String];
                  *buf = 136315138;
                  v40 = v23;
                  _os_log_impl(&dword_25EA3A000, v21, OS_LOG_TYPE_DEFAULT, "Deleting source task %s.", buf, 0xCu);
                }

                v24 = self->_retainedSourceWriterBlocks;
                v25 = [v11 name];
                [(NSMutableDictionary *)v24 removeObjectForKey:v25];
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v31 objects:v41 count:16];
          }

          while (v8);
        }

        v4 = v30 + 1;
      }

      while (v30 + 1 != v29);
      v29 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
    }

    while (v29);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)destroyWritersForTransitionBlock:(id)a3
{
  v113 = *MEMORY[0x277D85DE8];
  v79 = a3;
  v4 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_DEFAULT, "Destroying PSWriters.", buf, 2u);
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  obj = [v79 removedGraphs];
  v76 = [obj countByEnumeratingWithState:&v97 objects:v112 count:16];
  if (v76)
  {
    v75 = *v98;
    v80 = self;
    do
    {
      v5 = 0;
      do
      {
        if (*v98 != v75)
        {
          objc_enumerationMutation(obj);
        }

        v77 = v5;
        v6 = *(*(&v97 + 1) + 8 * v5);
        v93 = 0u;
        v94 = 0u;
        v95 = 0u;
        v96 = 0u;
        v78 = [v6 writers];
        v82 = [v78 countByEnumeratingWithState:&v93 objects:v111 count:16];
        if (v82)
        {
          v81 = *v94;
          do
          {
            for (i = 0; i != v82; ++i)
            {
              if (*v94 != v81)
              {
                objc_enumerationMutation(v78);
              }

              v8 = *(*(&v93 + 1) + 8 * i);
              v9 = [(NSMapTable *)self->_retainedWriterBlocks objectForKey:v8];
              v10 = v9;
              if (v9)
              {
                v83 = v9;
                v91 = 0u;
                v92 = 0u;
                v89 = 0u;
                v90 = 0u;
                v11 = [v79 addedGraphs];
                v12 = [v11 countByEnumeratingWithState:&v89 objects:v110 count:16];
                if (!v12)
                {
                  goto LABEL_29;
                }

                v13 = v12;
                v14 = *v90;
                while (2)
                {
                  for (j = 0; j != v13; ++j)
                  {
                    if (*v90 != v14)
                    {
                      objc_enumerationMutation(v11);
                    }

                    v16 = *(*(&v89 + 1) + 8 * j);
                    v85 = 0u;
                    v86 = 0u;
                    v87 = 0u;
                    v88 = 0u;
                    v17 = [v16 writers];
                    v18 = [v17 countByEnumeratingWithState:&v85 objects:v109 count:16];
                    if (v18)
                    {
                      v19 = v18;
                      v20 = *v86;
LABEL_21:
                      v21 = 0;
                      while (1)
                      {
                        if (*v86 != v20)
                        {
                          objc_enumerationMutation(v17);
                        }

                        if (v8 == *(*(&v85 + 1) + 8 * v21))
                        {
                          break;
                        }

                        if (v19 == ++v21)
                        {
                          v19 = [v17 countByEnumeratingWithState:&v85 objects:v109 count:16];
                          if (!v19)
                          {
                            goto LABEL_27;
                          }

                          goto LABEL_21;
                        }
                      }

                      v41 = __PLSLogSharedInstance();
                      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                      {
                        v50 = [v8 name];
                        v51 = [v50 UTF8String];
                        *buf = 136315138;
                        v102 = v51;
                        _os_log_impl(&dword_25EA3A000, v41, OS_LOG_TYPE_DEFAULT, "Added PSWriter already found for %s. Continuing without deleting the current writer.", buf, 0xCu);
                      }

                      self = v80;
                      goto LABEL_59;
                    }

LABEL_27:

                    self = v80;
                  }

                  v13 = [v11 countByEnumeratingWithState:&v89 objects:v110 count:16];
                  if (v13)
                  {
                    continue;
                  }

                  break;
                }

LABEL_29:

                v22 = __PLSLogSharedInstance();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                {
                  v23 = [v8 output];
                  v24 = [v23 resourceKey];
                  v25 = [v24 UTF8String];
                  *buf = 136315138;
                  v102 = v25;
                  _os_log_impl(&dword_25EA3A000, v22, OS_LOG_TYPE_DEFAULT, "Deleting PSWriter (%s)", buf, 0xCu);
                }

                WeakRetained = objc_loadWeakRetained(&self->_transitionMonitor);
                [WeakRetained lock];

                v27 = MEMORY[0x277CCACA8];
                v28 = [v8 output];
                v29 = [v28 resourceKey];
                v30 = [v27 stringWithFormat:@"%@ (PSWriter)", v29];
                v31 = objc_loadWeakRetained(&self->_transitionMonitor);
                [v31 setTransitionStateBufferDeinitCurResource:v30];

                v32 = objc_loadWeakRetained(&self->_transitionMonitor);
                [v32 unlock];

                v33 = [v8 context];
                if (ps_writer_state_update())
                {
                  goto LABEL_68;
                }

                v34 = [v8 output];
                v35 = [v34 resourceKey];
                [(PSGraphCompiler *)self removeWriterForKey:v35];

                v36 = objc_loadWeakRetained(&self->_transitionManager);
                v37 = [v36 executionSession];
                v38 = [v37 context];
                v39 = [v8 output];
                v40 = [v39 resourceKey];
                v41 = [v38 resourceStreamForKey:v40];

                retainedBufferIndexers = self->_retainedBufferIndexers;
                v43 = [v8 output];
                v44 = [v43 resourceKey];
                v45 = [(NSMutableDictionary *)retainedBufferIndexers objectForKey:v44];

                if (v45)
                {
                  v46 = [v45 resPointerArr];
                  v47 = [v41 resourceClass];
                  switch(v47)
                  {
                    case 8:
                      v57 = v41;
                      if (![v46 count])
                      {
                        goto LABEL_56;
                      }

                      v33 = 0;
                      while (1)
                      {
                        v58 = [v46 pointerAtIndex:v33];
                        if (![v57 deallocator])
                        {
                          break;
                        }

                        ([v57 deallocator])(v58);
                        if (++v33 >= [v46 count])
                        {
                          goto LABEL_56;
                        }
                      }

                      [PSGraphCompiler destroyWritersForTransitionBlock:buf];
                      break;
                    case 7:
                      v55 = v41;
                      if (![v46 count])
                      {
                        goto LABEL_56;
                      }

                      v33 = 0;
                      while (1)
                      {
                        v56 = [v46 pointerAtIndex:v33];
                        if (![v55 deallocator])
                        {
                          break;
                        }

                        ([v55 deallocator])(v56);
                        if (++v33 >= [v46 count])
                        {
                          goto LABEL_56;
                        }
                      }

                      break;
                    case 4:
                      v48 = v41;
                      if ([v46 count])
                      {
                        v33 = 0;
                        while (1)
                        {
                          v49 = [v46 pointerAtIndex:v33];
                          if (![v48 deallocator])
                          {
                            break;
                          }

                          ([v48 deallocator])(v49);
                          if (++v33 >= [v46 count])
                          {
                            goto LABEL_56;
                          }
                        }

LABEL_67:
                        [(PSGraphCompiler *)buf destroyWritersForTransitionBlock:v8];
LABEL_68:
                        v84 = 0;
                        v63 = [v8 name];
                        v64 = [v63 UTF8String];
                        v65 = (v33 + 80);
                        v66 = atomic_load((v33 + 80));
                        asprintf(&v84, "Unable to set writer (%s) state to _UNAVAILABLE. Current state %d. Maybe a write was in progress?", v64, v66);

                        v67 = __PLSLogSharedInstance();
                        if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
                        {
                          v68 = [v8 name];
                          v69 = [v68 UTF8String];
                          v70 = atomic_load(v65);
                          *buf = 136315906;
                          v102 = "[PSGraphCompiler destroyWritersForTransitionBlock:]";
                          v103 = 1024;
                          v104 = 4351;
                          v105 = 2080;
                          v106 = v69;
                          v107 = 1024;
                          v108 = v70;
                          _os_log_impl(&dword_25EA3A000, v67, OS_LOG_TYPE_FAULT, "%s:%d Unable to set writer (%s) state to _UNAVAILABLE. Current state %d. Maybe a write was in progress?", buf, 0x22u);
                        }

                        v71 = OSLogFlushBuffers();
                        if (v71)
                        {
                          v72 = v71;
                          v73 = __PLSLogSharedInstance();
                          if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 136315394;
                            v102 = "[PSGraphCompiler destroyWritersForTransitionBlock:]";
                            v103 = 1024;
                            v104 = v72;
                            _os_log_impl(&dword_25EA3A000, v73, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
                          }
                        }

                        else
                        {
                          usleep(0x1E8480u);
                        }

                        abort_with_reason();
LABEL_76:
                        [(PSGraphCompiler *)buf destroyWritersForTransitionBlock:v8];
LABEL_77:
                        [PSGraphCompiler destroyWritersForTransitionBlock:buf];
                      }

LABEL_56:

                      v59 = self->_retainedBufferIndexers;
                      v60 = [v8 output];
                      v61 = [v60 resourceKey];
                      [(NSMutableDictionary *)v59 removeObjectForKey:v61];

LABEL_57:
                      goto LABEL_58;
                    default:
                      goto LABEL_76;
                  }

                  [(PSGraphCompiler *)buf destroyWritersForTransitionBlock:v8];
                  goto LABEL_67;
                }

                [v41 options];
                v53 = v52;
                if ([v41 resourceClass]== 10)
                {
                  v54 = v41;
                  if (v53 != 2)
                  {
                    goto LABEL_77;
                  }

                  v46 = v54;
                  [v54 deallocateIOSurfaceRefArray];
                  goto LABEL_57;
                }

LABEL_58:
                [(NSMapTable *)self->_retainedWriterBlocks removeObjectForKey:v8];

LABEL_59:
                v10 = v83;
              }
            }

            v82 = [v78 countByEnumeratingWithState:&v93 objects:v111 count:16];
          }

          while (v82);
        }

        v5 = v77 + 1;
      }

      while (v77 + 1 != v76);
      v76 = [obj countByEnumeratingWithState:&v97 objects:v112 count:16];
    }

    while (v76);
  }

  v62 = *MEMORY[0x277D85DE8];
}

- (void)destroyReadersForTransitionBlock:(id)a3
{
  v88 = *MEMORY[0x277D85DE8];
  v58 = a3;
  v4 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_DEFAULT, "Destroying PSReaders.", buf, 2u);
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = [v58 removedGraphs];
  v53 = [obj countByEnumeratingWithState:&v74 objects:v87 count:16];
  if (v53)
  {
    v52 = *v75;
    v55 = self;
    do
    {
      v5 = 0;
      do
      {
        if (*v75 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v54 = v5;
        v6 = *(*(&v74 + 1) + 8 * v5);
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v57 = [v6 readers];
        v60 = [v57 countByEnumeratingWithState:&v70 objects:v86 count:16];
        if (v60)
        {
          v7 = *v71;
          v56 = *v71;
          do
          {
            for (i = 0; i != v60; ++i)
            {
              if (*v71 != v7)
              {
                objc_enumerationMutation(v57);
              }

              v9 = *(*(&v70 + 1) + 8 * i);
              v10 = [(NSMapTable *)self->_retainedReaderBlocks objectForKey:v9];
              if (v10)
              {
                v68 = 0u;
                v69 = 0u;
                v66 = 0u;
                v67 = 0u;
                v11 = [v58 addedGraphs];
                v12 = [v11 countByEnumeratingWithState:&v66 objects:v85 count:16];
                if (v12)
                {
                  v13 = v12;
                  v14 = *v67;
                  v59 = v10;
                  do
                  {
                    for (j = 0; j != v13; ++j)
                    {
                      v16 = v14;
                      if (*v67 != v14)
                      {
                        objc_enumerationMutation(v11);
                      }

                      v17 = *(*(&v66 + 1) + 8 * j);
                      v62 = 0u;
                      v63 = 0u;
                      v64 = 0u;
                      v65 = 0u;
                      v18 = [v17 readers];
                      v19 = [v18 countByEnumeratingWithState:&v62 objects:v84 count:16];
                      if (v19)
                      {
                        v20 = v19;
                        v21 = *v63;
                        while (2)
                        {
                          for (k = 0; k != v20; ++k)
                          {
                            if (*v63 != v21)
                            {
                              objc_enumerationMutation(v18);
                            }

                            if (v9 == *(*(&v62 + 1) + 8 * k))
                            {

                              v37 = __PLSLogSharedInstance();
                              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                              {
                                v38 = [v9 name];
                                v39 = [v38 UTF8String];
                                *buf = 136380675;
                                v79 = v39;
                                _os_log_impl(&dword_25EA3A000, v37, OS_LOG_TYPE_DEFAULT, "Added PSReader already found for %{private}s. Continuing without deleting the current reader.", buf, 0xCu);
                              }

                              self = v55;
                              v7 = v56;
                              v10 = v59;
                              goto LABEL_36;
                            }
                          }

                          v20 = [v18 countByEnumeratingWithState:&v62 objects:v84 count:16];
                          if (v20)
                          {
                            continue;
                          }

                          break;
                        }
                      }

                      v14 = v16;
                    }

                    v13 = [v11 countByEnumeratingWithState:&v66 objects:v85 count:16];
                    self = v55;
                    v7 = v56;
                    v10 = v59;
                  }

                  while (v13);
                }

                WeakRetained = objc_loadWeakRetained(&self->_transitionMonitor);
                [WeakRetained lock];

                v24 = MEMORY[0x277CCACA8];
                v25 = [v9 input];
                v26 = [v25 resourceKey];
                v27 = [v24 stringWithFormat:@"%@ (PSReader)", v26];
                v28 = objc_loadWeakRetained(&self->_transitionMonitor);
                [v28 setTransitionStateBufferDeinitCurResource:v27];

                v29 = objc_loadWeakRetained(&self->_transitionMonitor);
                [v29 unlock];

                v30 = [v9 context];
                if (ps_reader_state_update())
                {
                  v61 = 0;
                  v41 = [v9 name];
                  v42 = [v41 UTF8String];
                  v43 = atomic_load((v30 + 24));
                  asprintf(&v61, "Unable to set reader (%s) state to _UNAVAILABLE. Current state %d. Maybe a read is in progress?", v42, v43);

                  v44 = __PLSLogSharedInstance();
                  if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
                  {
                    v45 = [v9 name];
                    v46 = [v45 UTF8String];
                    v47 = atomic_load((v30 + 24));
                    *buf = 136315906;
                    v79 = "[PSGraphCompiler destroyReadersForTransitionBlock:]";
                    v80 = 1024;
                    *v81 = 4484;
                    *&v81[4] = 2080;
                    *&v81[6] = v46;
                    v82 = 1024;
                    v83 = v47;
                    _os_log_impl(&dword_25EA3A000, v44, OS_LOG_TYPE_FAULT, "%s:%d Unable to set reader (%s) state to _UNAVAILABLE. Current state %d. Maybe a read is in progress?", buf, 0x22u);
                  }

                  v48 = OSLogFlushBuffers();
                  if (v48)
                  {
                    v49 = v48;
                    v50 = __PLSLogSharedInstance();
                    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315394;
                      v79 = "[PSGraphCompiler destroyReadersForTransitionBlock:]";
                      v80 = 1024;
                      *v81 = v49;
                      _os_log_impl(&dword_25EA3A000, v50, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
                    }
                  }

                  else
                  {
                    usleep(0x1E8480u);
                  }

                  abort_with_reason();
                }

                v31 = __PLSLogSharedInstance();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                {
                  v32 = [v9 name];
                  v33 = [v32 UTF8String];
                  v34 = [v9 input];
                  v35 = [v34 resourceKey];
                  v36 = [v35 UTF8String];
                  *buf = 136380931;
                  v79 = v33;
                  v80 = 2081;
                  *v81 = v36;
                  _os_log_impl(&dword_25EA3A000, v31, OS_LOG_TYPE_DEFAULT, "Deleting PSReader (%{private}s) for resource key %{private}s.", buf, 0x16u);
                }

                [(NSMapTable *)self->_retainedReaderBlocks removeObjectForKey:v9];
              }

LABEL_36:
            }

            v60 = [v57 countByEnumeratingWithState:&v70 objects:v86 count:16];
          }

          while (v60);
        }

        v5 = v54 + 1;
      }

      while (v54 + 1 != v53);
      v53 = [obj countByEnumeratingWithState:&v74 objects:v87 count:16];
    }

    while (v53);
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (void)destroyPRMInstancesForTransitionBlock:(id)a3
{
  v128 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  v6 = [WeakRetained executionSession];
  v7 = [v6 shouldUseOptimizedVsyncPath];

  if ((v7 & 1) == 0)
  {
    v88 = v4;
    v8 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_DEFAULT, "Destroying graph PRMInstances.", buf, 2u);
    }

    v93 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v9 = [v4 removedGraphs];
    v86 = [v9 countByEnumeratingWithState:&v115 objects:v127 count:16];
    if (v86)
    {
      v10 = *v116;
      v84 = *v116;
      v85 = v9;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v116 != v10)
          {
            objc_enumerationMutation(v9);
          }

          v87 = v11;
          v12 = *(*(&v115 + 1) + 8 * v11);
          v13 = objc_loadWeakRetained(&self->_transitionMonitor);
          [v13 lock];

          v14 = MEMORY[0x277CCACA8];
          v15 = [v12 name];
          v16 = [v14 stringWithFormat:@"Graph %@ (PRMInstances)", v15];
          v17 = objc_loadWeakRetained(&self->_transitionMonitor);
          [v17 setTransitionStateBufferDeinitCurResource:v16];

          v18 = objc_loadWeakRetained(&self->_transitionMonitor);
          [v18 unlock];

          v113 = 0u;
          v114 = 0u;
          v111 = 0u;
          v112 = 0u;
          obj = [v12 tasks];
          v19 = [obj countByEnumeratingWithState:&v111 objects:v126 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v112;
            v89 = *v112;
            v90 = v12;
            do
            {
              v22 = 0;
              v91 = v20;
              do
              {
                if (*v112 != v21)
                {
                  objc_enumerationMutation(obj);
                }

                v23 = *(*(&v111 + 1) + 8 * v22);
                prmTaskResources = self->_prmTaskResources;
                v25 = [(PSGraphCompiler *)self getGraphTaskHash:v12 withTask:v23];
                v26 = [(NSMapTable *)prmTaskResources objectForKey:v25];

                if (v26)
                {
                  [v93 addObject:v26];
                  v27 = self->_prmTaskResources;
                  v28 = [(PSGraphCompiler *)self getGraphTaskHash:v12 withTask:v23];
                  [(NSMapTable *)v27 removeObjectForKey:v28];

                  v109 = 0u;
                  v110 = 0u;
                  v107 = 0u;
                  v108 = 0u;
                  v29 = [v23 outputs];
                  v98 = [v29 countByEnumeratingWithState:&v107 objects:v125 count:16];
                  if (!v98)
                  {
                    goto LABEL_44;
                  }

                  v94 = v26;
                  v95 = v22;
                  v96 = v29;
                  v97 = *v108;
                  while (1)
                  {
                    for (i = 0; i != v98; ++i)
                    {
                      if (*v108 != v97)
                      {
                        objc_enumerationMutation(v29);
                      }

                      v31 = *(*(&v107 + 1) + 8 * i);
                      retainedBufferIndexers = self->_retainedBufferIndexers;
                      v33 = [v31 resourceKey];
                      v34 = [(NSMutableDictionary *)retainedBufferIndexers objectForKey:v33];

                      if (v34)
                      {
                        v35 = [v34 resPointerArr];
                        v36 = self;
                        v37 = objc_loadWeakRetained(&self->_transitionManager);
                        v38 = [v37 executionSession];
                        v39 = [v38 context];
                        v40 = [v31 resourceKey];
                        v41 = [v39 resourceStreamForKey:v40];

                        v42 = [v41 resourceClass];
                        switch(v42)
                        {
                          case 8:
                            v49 = v41;
                            if ([v35 count])
                            {
                              v50 = 0;
                              while (1)
                              {
                                v51 = [v35 pointerAtIndex:v50];
                                if (![v49 deallocator])
                                {
                                  break;
                                }

                                ([v49 deallocator])(v51);
                                if (++v50 >= [v35 count])
                                {
                                  goto LABEL_38;
                                }
                              }

                              [(PSGraphCompiler *)buf destroyPRMInstancesForTransitionBlock:v31];
                              goto LABEL_72;
                            }

                            break;
                          case 7:
                            v46 = v41;
                            if ([v35 count])
                            {
                              v47 = 0;
                              while (1)
                              {
                                v48 = [v35 pointerAtIndex:v47];
                                if (![v46 deallocator])
                                {
                                  break;
                                }

                                ([v46 deallocator])(v48);
                                if (++v47 >= [v35 count])
                                {
                                  goto LABEL_38;
                                }
                              }

LABEL_72:
                              [(PSGraphCompiler *)buf destroyPRMInstancesForTransitionBlock:v31];
LABEL_73:
                              [(PSGraphCompiler *)buf destroyPRMInstancesForTransitionBlock:v31];
LABEL_74:
                              [(PSGraphCompiler *)buf destroyPRMInstancesForTransitionBlock:v31];
                            }

                            break;
                          case 4:
                            v43 = v41;
                            if ([v35 count])
                            {
                              v44 = 0;
                              while (1)
                              {
                                v45 = [v35 pointerAtIndex:v44];
                                if (![v43 deallocator])
                                {
                                  goto LABEL_73;
                                }

                                ([v43 deallocator])(v45);
                                if (++v44 >= [v35 count])
                                {
                                  goto LABEL_38;
                                }
                              }
                            }

                            break;
                          default:
                            goto LABEL_74;
                        }

LABEL_38:

                        self = v36;
                        v52 = v36->_retainedBufferIndexers;
                        v53 = [v31 resourceKey];
                        [(NSMutableDictionary *)v52 removeObjectForKey:v53];

                        v29 = v96;
                      }
                    }

                    v98 = [v29 countByEnumeratingWithState:&v107 objects:v125 count:16];
                    if (!v98)
                    {
                      v21 = v89;
                      v12 = v90;
                      v20 = v91;
                      v26 = v94;
                      v22 = v95;
                      goto LABEL_44;
                    }
                  }
                }

                v29 = __PLSLogSharedInstance();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  v54 = [v23 name];
                  v55 = [v12 name];
                  *buf = 138478083;
                  v122 = v54;
                  v123 = 2113;
                  v124 = v55;
                  _os_log_impl(&dword_25EA3A000, v29, OS_LOG_TYPE_ERROR, "New task %{private}@ found in graph %{private}@ that wasn't present on addition. Ignoring", buf, 0x16u);
                }

LABEL_44:

                ++v22;
              }

              while (v22 != v20);
              v20 = [obj countByEnumeratingWithState:&v111 objects:v126 count:16];
            }

            while (v20);
          }

          v56 = [(NSMapTable *)self->_prmGroupedSourcePools objectForKey:v12];
          v57 = [v56 pointerValue];

          if (!v57)
          {
            v81 = [(PSGraphCompiler *)buf destroyPRMInstancesForTransitionBlock:v12];
            [(PSGraphCompiler *)v81 deinitializeLocalSystemSourcesForTransitionBlock:v82, v83];
            return;
          }

          v58 = objc_loadWeakRetained(&self->_transitionMonitor);
          [v58 lock];

          v59 = MEMORY[0x277CCACA8];
          v60 = [v12 name];
          v61 = [v59 stringWithFormat:@"Graph %@ (GSP)", v60];
          v62 = objc_loadWeakRetained(&self->_transitionMonitor);
          [v62 setTransitionStateBufferDeinitCurResource:v61];

          v63 = objc_loadWeakRetained(&self->_transitionMonitor);
          [v63 unlock];

          ps_grouped_source_pool_destroy(v57);
          [(NSMapTable *)self->_prmGroupedSourcePools removeObjectForKey:v12];
          v11 = v87 + 1;
          v10 = v84;
          v9 = v85;
        }

        while (v87 + 1 != v86);
        v86 = [v85 countByEnumeratingWithState:&v115 objects:v127 count:16];
        if (v86)
        {
          continue;
        }

        break;
      }
    }

    if ([v93 count])
    {
      v64 = objc_loadWeakRetained(&self->_transitionMonitor);
      [v64 lock];

      v65 = objc_loadWeakRetained(&self->_transitionMonitor);
      [v65 setTransitionStateBufferDeinitCurResource:@"(specific resources unknown) (PRMInstances)"];

      v66 = objc_loadWeakRetained(&self->_transitionMonitor);
      [v66 unlock];

      v67 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25EA3A000, v67, OS_LOG_TYPE_DEFAULT, "Deleting reader instances for removed graphs, if any.", buf, 2u);
      }

      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v68 = v93;
      v69 = [v68 countByEnumeratingWithState:&v103 objects:v120 count:16];
      if (v69)
      {
        v70 = v69;
        v71 = *v104;
        do
        {
          for (j = 0; j != v70; ++j)
          {
            if (*v104 != v71)
            {
              objc_enumerationMutation(v68);
            }

            ps_task_resources_destroy_inputs([*(*(&v103 + 1) + 8 * j) pointerValue]);
          }

          v70 = [v68 countByEnumeratingWithState:&v103 objects:v120 count:16];
        }

        while (v70);
      }

      v73 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25EA3A000, v73, OS_LOG_TYPE_DEFAULT, "Deleting writer instances for removed graphs, if any.", buf, 2u);
      }

      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v74 = v68;
      v75 = [v74 countByEnumeratingWithState:&v99 objects:v119 count:16];
      if (v75)
      {
        v76 = v75;
        v77 = *v100;
        do
        {
          for (k = 0; k != v76; ++k)
          {
            if (*v100 != v77)
            {
              objc_enumerationMutation(v74);
            }

            v79 = [*(*(&v99 + 1) + 8 * k) pointerValue];
            ps_task_resources_destroy_outputs(v79);
            ps_task_resources_destroy(v79);
          }

          v76 = [v74 countByEnumeratingWithState:&v99 objects:v119 count:16];
        }

        while (v76);
      }
    }

    v4 = v88;
  }

  v80 = *MEMORY[0x277D85DE8];
}

- (void)deinitializeLocalSystemSourcesForTransitionBlock:(id)a3
{
  v13 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  v5 = [WeakRetained executionSession];
  v6 = [v5 shouldUseOptimizedVsyncPath];

  if ((v6 & 1) == 0)
  {
    v7 = [v13 preTransitionGraphs];
    v8 = [v13 postTransitionGraphs];
    v9 = [(PSGraphCompiler *)self getRemovedResourcesWithOldGraphs:v7 withNewGraphs:v8];

    v10 = [(PSGraphCompiler *)self extractLocalSystemSourceKeys:v9];
    v11 = [v13 preTransitionGraphs];
    v12 = [(PSGraphCompiler *)self getAllOutputsForGraphs:v11];
    [v10 minusSet:v12];

    [(PSGraphCompiler *)self stopLocalSystemSources:v10];
  }
}

- (void)stopLocalSystemSources:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        WeakRetained = objc_loadWeakRetained(&self->_transitionMonitor);
        [WeakRetained lock];

        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ (Polaris Source)", v9];
        v12 = objc_loadWeakRetained(&self->_transitionMonitor);
        [v12 setTransitionStateLocalSourceDeinitCurResource:v11];

        v13 = objc_loadWeakRetained(&self->_transitionMonitor);
        [v13 unlock];

        [(PSLocalStreamManager *)self->_localStreamManager stopSourceForKey:v9];
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)getProducerOutputRates:(id)a3
{
  v83 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = v3;
  v40 = [obj countByEnumeratingWithState:&v73 objects:v82 count:16];
  if (v40)
  {
    v41 = *v74;
    do
    {
      v5 = 0;
      do
      {
        if (*v74 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v43 = v5;
        v6 = *(*(&v73 + 1) + 8 * v5);
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v44 = [v6 tasks];
        v48 = [v44 countByEnumeratingWithState:&v69 objects:v81 count:16];
        if (v48)
        {
          v46 = *v70;
          do
          {
            v7 = 0;
            do
            {
              if (*v70 != v46)
              {
                objc_enumerationMutation(v44);
              }

              v50 = v7;
              v8 = *(*(&v69 + 1) + 8 * v7);
              v65 = 0u;
              v66 = 0u;
              v67 = 0u;
              v68 = 0u;
              v9 = [v8 outputs];
              v10 = [v9 countByEnumeratingWithState:&v65 objects:v80 count:16];
              if (v10)
              {
                v11 = v10;
                v12 = *v66;
                do
                {
                  for (i = 0; i != v11; ++i)
                  {
                    if (*v66 != v12)
                    {
                      objc_enumerationMutation(v9);
                    }

                    v14 = *(*(&v65 + 1) + 8 * i);
                    v15 = [v14 resourceKey];
                    v16 = [v4 valueForKey:v15];

                    if (v16)
                    {
                      [(PSGraphCompiler *)&v64 getProducerOutputRates:v14];
LABEL_50:
                      [(PSGraphCompiler *)&v64 getProducerOutputRates:v14];
LABEL_51:
                      [(PSGraphCompiler *)&v64 getProducerOutputRates:v9];
                    }

                    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "resolvedFrequency")}];
                    v18 = [v14 resourceKey];
                    [v4 setValue:v17 forKey:v18];
                  }

                  v11 = [v9 countByEnumeratingWithState:&v65 objects:v80 count:16];
                }

                while (v11);
              }

              v7 = v50 + 1;
            }

            while (v50 + 1 != v48);
            v48 = [v44 countByEnumeratingWithState:&v69 objects:v81 count:16];
          }

          while (v48);
        }

        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v45 = [v6 sourceTasks];
        v49 = [v45 countByEnumeratingWithState:&v60 objects:v79 count:16];
        if (v49)
        {
          v47 = *v61;
          do
          {
            v19 = 0;
            do
            {
              if (*v61 != v47)
              {
                objc_enumerationMutation(v45);
              }

              v51 = v19;
              v20 = *(*(&v60 + 1) + 8 * v19);
              v56 = 0u;
              v57 = 0u;
              v58 = 0u;
              v59 = 0u;
              v9 = [v20 outputs];
              v21 = [v9 countByEnumeratingWithState:&v56 objects:v78 count:16];
              if (v21)
              {
                v22 = v21;
                v23 = *v57;
                do
                {
                  for (j = 0; j != v22; ++j)
                  {
                    if (*v57 != v23)
                    {
                      objc_enumerationMutation(v9);
                    }

                    v14 = *(*(&v56 + 1) + 8 * j);
                    v25 = [v14 resourceKey];
                    v26 = [v4 valueForKey:v25];

                    if (v26)
                    {
                      goto LABEL_50;
                    }

                    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "resolvedFrequency")}];
                    v28 = [v14 resourceKey];
                    [v4 setValue:v27 forKey:v28];
                  }

                  v22 = [v9 countByEnumeratingWithState:&v56 objects:v78 count:16];
                }

                while (v22);
              }

              v19 = v51 + 1;
            }

            while (v51 + 1 != v49);
            v49 = [v45 countByEnumeratingWithState:&v60 objects:v79 count:16];
          }

          while (v49);
        }

        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v29 = [v6 writers];
        v30 = [v29 countByEnumeratingWithState:&v52 objects:v77 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v53;
          do
          {
            for (k = 0; k != v31; ++k)
            {
              if (*v53 != v32)
              {
                objc_enumerationMutation(v29);
              }

              v9 = [*(*(&v52 + 1) + 8 * k) output];
              v34 = [v9 resourceKey];
              v35 = [v4 valueForKey:v34];

              if (v35)
              {
                goto LABEL_51;
              }

              v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "resolvedFrequency")}];
              v37 = [v9 resourceKey];
              [v4 setValue:v36 forKey:v37];
            }

            v31 = [v29 countByEnumeratingWithState:&v52 objects:v77 count:16];
          }

          while (v31);
        }

        v5 = v43 + 1;
      }

      while (v43 + 1 != v40);
      v40 = [obj countByEnumeratingWithState:&v73 objects:v82 count:16];
    }

    while (v40);
  }

  v38 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)getSystemSources:(id)a3 withTransitionBlock:(id)a4 withIntermediateSources:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = [(PSGraphCompiler *)self getAllInputsForGraph:v7];
  v25 = v8;
  [v9 minusSet:v8];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v26 = v7;
  obj = [v7 tasks];
  v10 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v28 = *v34;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v34 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v33 + 1) + 8 * i);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v14 = [v13 outputs];
        v15 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v30;
          do
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v30 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v29 + 1) + 8 * j);
              v20 = [v19 resourceKey];
              v21 = [v9 containsObject:v20];

              if (v21)
              {
                v22 = [v19 resourceKey];
                [v9 removeObject:v22];
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v16);
        }
      }

      v11 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v11);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)getStridedGSTWaitSources:(id)a3 transitionBlock:(id)a4
{
  v64 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CCA940]);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v42 = v5;
  v7 = [v5 tasks];
  v39 = [v7 countByEnumeratingWithState:&v56 objects:v63 count:16];
  if (v39)
  {
    v8 = *v57;
    v38 = *v57;
    do
    {
      v9 = 0;
      do
      {
        if (*v57 != v8)
        {
          objc_enumerationMutation(v7);
        }

        v40 = v9;
        v10 = *(*(&v56 + 1) + 8 * v9);
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        obj = [v10 inputs];
        v11 = [obj countByEnumeratingWithState:&v52 objects:v62 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v53;
          while (2)
          {
            v14 = 0;
            v41 = v12;
            do
            {
              if (*v53 != v13)
              {
                objc_enumerationMutation(obj);
              }

              v15 = *(*(&v52 + 1) + 8 * v14);
              context = self->_context;
              v17 = [v15 resourceKey];
              v18 = [(PSContext *)context resourceStreamForKey:v17];

              if (![v15 type])
              {
                if ([v18 resourceClass] == 10)
                {

                  v34 = 0;
                  goto LABEL_34;
                }

                v19 = [v15 resolvedResourceKey];
                v20 = [v42 systemPulseStride];
                v21 = [PSResourceRequest requestWithKey:v19 stride:v20 inputType:0 graph:v42];
                [v6 addObject:v21];

                v12 = v41;
              }

              ++v14;
            }

            while (v12 != v14);
            v12 = [obj countByEnumeratingWithState:&v52 objects:v62 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        ++v9;
        v8 = v38;
      }

      while (v40 + 1 != v39);
      v39 = [v7 countByEnumeratingWithState:&v56 objects:v63 count:16];
    }

    while (v39);
  }

  v37 = v6;

  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v22 = [v42 tasks];
  v23 = [v22 countByEnumeratingWithState:&v48 objects:v61 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v49;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v49 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v48 + 1) + 8 * i);
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v28 = [v27 outputs];
        v29 = [v28 countByEnumeratingWithState:&v44 objects:v60 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v45;
          do
          {
            for (j = 0; j != v30; ++j)
            {
              if (*v45 != v31)
              {
                objc_enumerationMutation(v28);
              }

              v33 = [*(*(&v44 + 1) + 8 * j) resourceKey];
              [v7 addObject:v33];
            }

            v30 = [v28 countByEnumeratingWithState:&v44 objects:v60 count:16];
          }

          while (v30);
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v48 objects:v61 count:16];
    }

    while (v24);
  }

  v6 = v37;
  [v37 filterOutResourceKeys:v7];
  v34 = v37;
LABEL_34:

  v35 = *MEMORY[0x277D85DE8];

  return v34;
}

- (id)getStridedSystemSources:(id)a3 withTransitionBlock:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PSGraphCompiler *)self getAllStridedInputsForGraph:v6];
  v25 = v7;
  v9 = [(PSGraphCompiler *)self getStridedIntermediateSources:v6 withTransitionBlock:v7];
  [v8 minusSet:v9];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v26 = v6;
  obj = [v6 tasks];
  v10 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v28 = *v34;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v34 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v33 + 1) + 8 * i);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v14 = [v13 outputs];
        v15 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v30;
          do
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v30 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v29 + 1) + 8 * j);
              v20 = [v19 resourceKey];
              v21 = [v8 containsResourceKey:v20];

              if (v21)
              {
                v22 = [v19 resourceKey];
                [v8 removeResourceKey:v22];
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v16);
        }
      }

      v11 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v11);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)getStridedIntermediateSources:(id)a3 withTransitionBlock:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PSGraphCompiler *)self getAllStridedInputsForGraph:v6];
  v27 = v7;
  v9 = [v7 postTransitionGraphs];
  v10 = [(PSGraphCompiler *)self getAllLocallyProducedOutputsForGraphs:v9];

  v26 = v10;
  [v8 filterMatchingResourceKeys:v10];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v28 = v6;
  obj = [v6 tasks];
  v11 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v11)
  {
    v12 = v11;
    v30 = *v36;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v36 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v35 + 1) + 8 * i);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v15 = [v14 outputs];
        v16 = [v15 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v32;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v32 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v31 + 1) + 8 * j);
              v21 = [v20 resourceKey];
              v22 = [v8 containsResourceKey:v21];

              if (v22)
              {
                v23 = [v20 resourceKey];
                [v8 removeResourceKey:v23];
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v31 objects:v39 count:16];
          }

          while (v17);
        }
      }

      v12 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v12);
  }

  v24 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)getIntermediateSources:(id)a3 withTransitionBlock:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PSGraphCompiler *)self getAllInputsForGraph:v6];
  v27 = v7;
  v9 = [v7 postTransitionGraphs];
  v10 = [(PSGraphCompiler *)self getAllLocallyProducedOutputsForGraphs:v9];

  v26 = v10;
  [v8 intersectSet:v10];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v28 = v6;
  obj = [v6 tasks];
  v11 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v11)
  {
    v12 = v11;
    v30 = *v36;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v36 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v35 + 1) + 8 * i);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v15 = [v14 outputs];
        v16 = [v15 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v32;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v32 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v31 + 1) + 8 * j);
              v21 = [v20 resourceKey];
              v22 = [v8 containsObject:v21];

              if (v22)
              {
                v23 = [v20 resourceKey];
                [v8 removeObject:v23];
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v31 objects:v39 count:16];
          }

          while (v17);
        }
      }

      v12 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v12);
  }

  v24 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)getAllStridedInputsForGraph:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CCA940]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [v3 tasks];
  v20 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v20)
  {
    v19 = *v27;
    do
    {
      v5 = 0;
      do
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = v5;
        v6 = *(*(&v26 + 1) + 8 * v5);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v7 = [v6 inputs];
        v8 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v23;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v23 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v22 + 1) + 8 * i);
              v13 = [v12 resolvedResourceKey];
              v14 = [v3 systemPulseStride];
              v15 = +[PSResourceRequest requestWithKey:stride:inputType:graph:](PSResourceRequest, "requestWithKey:stride:inputType:graph:", v13, v14, [v12 type], v3);
              [v4 addObject:v15];
            }

            v9 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v9);
        }

        v5 = v21 + 1;
      }

      while (v21 + 1 != v20);
      v20 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v20);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)getAllInputsForGraph:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v19 = v3;
  v5 = [v3 tasks];
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v11 = [v10 inputs];
        v12 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v21;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v21 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = [*(*(&v20 + 1) + 8 * j) resolvedResourceKey];
              [v4 addObject:v16];
            }

            v13 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v13);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)getAllLocallyProducedOutputsForGraphs:(id)a3
{
  v75 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = v3;
  v42 = [obj countByEnumeratingWithState:&v65 objects:v74 count:16];
  if (v42)
  {
    v41 = *v66;
    do
    {
      v5 = 0;
      do
      {
        if (*v66 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v65 + 1) + 8 * v5);
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v43 = v5;
        v44 = v6;
        v7 = [v6 tasks];
        v8 = [v7 countByEnumeratingWithState:&v61 objects:v73 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v62;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v62 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v61 + 1) + 8 * i);
              v57 = 0u;
              v58 = 0u;
              v59 = 0u;
              v60 = 0u;
              v13 = [v12 outputs];
              v14 = [v13 countByEnumeratingWithState:&v57 objects:v72 count:16];
              if (v14)
              {
                v15 = v14;
                v16 = *v58;
                do
                {
                  for (j = 0; j != v15; ++j)
                  {
                    if (*v58 != v16)
                    {
                      objc_enumerationMutation(v13);
                    }

                    v18 = [*(*(&v57 + 1) + 8 * j) resourceKey];
                    [v4 addObject:v18];
                  }

                  v15 = [v13 countByEnumeratingWithState:&v57 objects:v72 count:16];
                }

                while (v15);
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v61 objects:v73 count:16];
          }

          while (v9);
        }

        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v19 = [v44 sourceTasks];
        v20 = [v19 countByEnumeratingWithState:&v53 objects:v71 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v54;
          do
          {
            for (k = 0; k != v21; ++k)
            {
              if (*v54 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v53 + 1) + 8 * k);
              v49 = 0u;
              v50 = 0u;
              v51 = 0u;
              v52 = 0u;
              v25 = [v24 outputs];
              v26 = [v25 countByEnumeratingWithState:&v49 objects:v70 count:16];
              if (v26)
              {
                v27 = v26;
                v28 = *v50;
                do
                {
                  for (m = 0; m != v27; ++m)
                  {
                    if (*v50 != v28)
                    {
                      objc_enumerationMutation(v25);
                    }

                    v30 = [*(*(&v49 + 1) + 8 * m) resourceKey];
                    [v4 addObject:v30];
                  }

                  v27 = [v25 countByEnumeratingWithState:&v49 objects:v70 count:16];
                }

                while (v27);
              }
            }

            v21 = [v19 countByEnumeratingWithState:&v53 objects:v71 count:16];
          }

          while (v21);
        }

        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v31 = [v44 writers];
        v32 = [v31 countByEnumeratingWithState:&v45 objects:v69 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v46;
          do
          {
            for (n = 0; n != v33; ++n)
            {
              if (*v46 != v34)
              {
                objc_enumerationMutation(v31);
              }

              v36 = [*(*(&v45 + 1) + 8 * n) output];
              v37 = [v36 resourceKey];
              [v4 addObject:v37];
            }

            v33 = [v31 countByEnumeratingWithState:&v45 objects:v69 count:16];
          }

          while (v33);
        }

        v5 = v43 + 1;
      }

      while (v43 + 1 != v42);
      v42 = [obj countByEnumeratingWithState:&v65 objects:v74 count:16];
    }

    while (v42);
  }

  v38 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)filterANEWaitResources:(id)a3 withGraph:(id)a4
{
  v6 = MEMORY[0x277CBEB58];
  v7 = a4;
  v8 = [v6 setWithSet:a3];
  v9 = [(PSGraphCompiler *)self getANEWaitResources:v7];

  [v8 intersectSet:v9];

  return v8;
}

- (id)filterNonANEWaitResources:(id)a3 withGraph:(id)a4
{
  v6 = MEMORY[0x277CBEB58];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithSet:v8];

  v10 = [(PSGraphCompiler *)self getPolicyWaitResources:v7];
  v11 = [(PSGraphCompiler *)self getANEWaitResources:v7];

  [v9 intersectSet:v10];
  [v9 minusSet:v11];

  return v9;
}

- (id)getPolicyWaitResources:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v20 = v3;
  v5 = [v3 tasks];
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v11 = [v10 inputs];
        v12 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v22;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v22 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v21 + 1) + 8 * j);
              if (![v16 type])
              {
                v17 = [v16 resolvedResourceKey];
                [v4 addObject:v17];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v13);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)getANEWaitResources:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v20 = v4;
  obj = [v4 tasks];
  v23 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v23)
  {
    v22 = *v29;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v28 + 1) + 8 * i);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v8 = [v7 inputs];
        v9 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v25;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v25 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v24 + 1) + 8 * j);
              context = self->_context;
              v15 = [v13 resourceKey];
              v16 = [(PSContext *)context resourceStreamForKey:v15];

              if (![v13 type] && objc_msgSend(v16, "resourceClass") == 10)
              {
                v17 = [v13 resolvedResourceKey];
                [v5 addObject:v17];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v10);
        }
      }

      v23 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v23);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)getThreadPoolHashIDForGraph:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 resolvedDomain];
  v7 = [v6 key];
  v8 = [v4 resolvedFrequency];

  v9 = [v5 initWithFormat:@"%@-%d", v7, v8];

  return v9;
}

- (BOOL)shouldUseSharedTriggerForGraph:(id)a3 withTransitionBlock:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[PLSSettings currentSettings];
  v9 = [v8 enableThreadCoalescing];

  if (!v9)
  {
    goto LABEL_20;
  }

  if ([v6 workloadWait])
  {
    goto LABEL_20;
  }

  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  v11 = [WeakRetained executionSession];
  v12 = [v11 shouldUseOptimizedVsyncPath];

  if (v12)
  {
    goto LABEL_20;
  }

  if ([v6 criticalityCPU] == 2)
  {
    if ([v6 disableThreadSharing])
    {
      v13 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v6 name];
        v26 = 136380675;
        v27 = [v14 UTF8String];
        v15 = "ThreadPool: Graph (%{private}s) will not be coalesced - Graph Disabled Thread Sharing";
LABEL_18:
        _os_log_impl(&dword_25EA3A000, v13, OS_LOG_TYPE_DEFAULT, v15, &v26, 0xCu);
      }
    }

    else
    {
      if (![v6 teardownType])
      {
        if (shouldUseSharedTriggerForGraph_withTransitionBlock__once_token != -1)
        {
          [PSGraphCompiler shouldUseSharedTriggerForGraph:withTransitionBlock:];
        }

        v16 = shouldUseSharedTriggerForGraph_withTransitionBlock__mixedDomain;
        v17 = [v6 resolvedDomain];
        LODWORD(v16) = [v16 isEqual:v17];

        if (!v16)
        {
          v21 = [(PSGraphCompiler *)self getIntermediateSources:v6 withTransitionBlock:v7];
          v22 = [(PSGraphCompiler *)self getSystemSources:v6 withTransitionBlock:v7 withIntermediateSources:v21];
          v23 = [(PSGraphCompiler *)self filterNonANEWaitResources:v21 withGraph:v6];
          v24 = [(PSGraphCompiler *)self filterNonANEWaitResources:v22 withGraph:v6];
          v25 = [v23 count];
          v18 = v25 + [v24 count] != 0;

          goto LABEL_21;
        }

        v13 = __PLSLogSharedInstance();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_19;
        }

        v14 = [v6 name];
        v26 = 136380675;
        v27 = [v14 UTF8String];
        v15 = "ThreadPool: Graph (%{private}s) will not be coalesced - Mixed Domain";
        goto LABEL_18;
      }

      v13 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v6 name];
        v26 = 136380675;
        v27 = [v14 UTF8String];
        v15 = "ThreadPool: Graph (%{private}s) will not be coalesced - Non Standard Teardown Type";
        goto LABEL_18;
      }
    }
  }

  else
  {
    v13 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v6 name];
      v26 = 136380675;
      v27 = [v14 UTF8String];
      v15 = "ThreadPool: Graph (%{private}s) will not be coalesced - Graph is not Best Effort";
      goto LABEL_18;
    }
  }

LABEL_19:

LABEL_20:
  v18 = 0;
LABEL_21:

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t __70__PSGraphCompiler_shouldUseSharedTriggerForGraph_withTransitionBlock___block_invoke()
{
  shouldUseSharedTriggerForGraph_withTransitionBlock__mixedDomain = [MEMORY[0x277D3E6C8] mixedDomain];

  return MEMORY[0x2821F96F8]();
}

- (void)setThreadPoolIDForGraph:(id)a3 withTransitionBlock:(id)a4
{
  v12 = a3;
  v6 = a4;
  if (setThreadPoolIDForGraph_withTransitionBlock__onceToken != -1)
  {
    [PSGraphCompiler setThreadPoolIDForGraph:withTransitionBlock:];
  }

  [v12 setThreadPoolID:0];
  [v12 setExecutionType:0];
  if ([(PSGraphCompiler *)self shouldUseSharedTriggerForGraph:v12 withTransitionBlock:v6])
  {
    v7 = [(PSGraphCompiler *)self getThreadPoolHashIDForGraph:v12];
    v8 = [setThreadPoolIDForGraph_withTransitionBlock__bestEffortHashMap objectForKey:v7];
    v9 = v8;
    if (v8)
    {
      [v12 setThreadPoolID:{objc_msgSend(v8, "unsignedLongLongValue")}];
    }

    else
    {
      [v12 setThreadPoolID:ps_util_generate_uuid()];
      v10 = setThreadPoolIDForGraph_withTransitionBlock__bestEffortHashMap;
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v12, "threadPoolID")}];
      [v10 setObject:v11 forKey:v7];
    }

    [v12 setExecutionType:1];
  }

  else
  {
    [v12 setThreadPoolID:ps_util_generate_uuid()];
    [v12 setExecutionType:2];
  }
}

void __63__PSGraphCompiler_setThreadPoolIDForGraph_withTransitionBlock___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = setThreadPoolIDForGraph_withTransitionBlock__bestEffortHashMap;
  setThreadPoolIDForGraph_withTransitionBlock__bestEffortHashMap = v0;

  v2 = +[PLSSettings currentSettings];
  v3 = [v2 enableThreadCoalescing];

  v4 = __PLSLogSharedInstance();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v9 = 0;
      v6 = "Thread Coalescing is enabled";
      v7 = &v9;
LABEL_6:
      _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
    }
  }

  else if (v5)
  {
    v8 = 0;
    v6 = "Thread Coalescing is disabled";
    v7 = &v8;
    goto LABEL_6;
  }
}

- (id)threadPoolExecPathToString:(ps_exec_shared_thread_pool_s *)a3
{
  v28 = *MEMORY[0x277D85DE8];
  var1 = a3->var1;
  if (var1 >= 4)
  {
    v17 = 0;
    p_var5 = &a3[1].var5;
    asprintf(&v17, "Unknown ThreadPool Path (%u) for thread_pool (%s) with id: %llu", var1, &a3[1].var5, a3->var8);
    v7 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = a3->var1;
      var8 = a3->var8;
      *buf = 136316162;
      v19 = "[PSGraphCompiler threadPoolExecPathToString:]";
      v20 = 1024;
      v21 = 5066;
      v22 = 1024;
      v23 = v8;
      v24 = 2080;
      v25 = p_var5;
      v26 = 2048;
      v27 = var8;
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_FAULT, "%s:%d Unknown ThreadPool Path (%u) for thread_pool (%s) with id: %llu", buf, 0x2Cu);
    }

    v10 = OSLogFlushBuffers();
    if (v10)
    {
      v11 = v10;
      v12 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v19 = "[PSGraphCompiler threadPoolExecPathToString:]";
        v20 = 1024;
        v21 = v11;
        _os_log_impl(&dword_25EA3A000, v12, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
      }
    }

    else
    {
      usleep(0x1E8480u);
    }

    v13 = abort_with_reason();
    [(PSGraphCompiler *)v13 addGraphToThreadPool:v14, v15];
  }

  else
  {
    result = off_279A48410[var1];
    v5 = *MEMORY[0x277D85DE8];
  }

  return result;
}

- (void)addGraphToThreadPool:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *[v4 executionContext];
  activeThreadPools = self->_activeThreadPools;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "threadPoolID")}];
  v8 = [(NSMutableDictionary *)activeThreadPools objectForKey:v7];

  if (!v8)
  {
    inited = ps_exec_init_shared_thread_pool();
    *(inited + 4) = [v4 threadPoolID];
    WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
    v16 = [WeakRetained executionSession];
    *(inited + 42) = [v16 gsm];

    v17 = objc_loadWeakRetained(&self->_transitionManager);
    v18 = [v17 executionSession];
    v19 = [v18 shouldUseOptimizedVsyncPath];

    if (v19)
    {
      v20 = 2;
    }

    else if ([v4 workloadWait])
    {
      v20 = 3;
    }

    else
    {
      if ([v4 executionType] == 1)
      {
        *(inited + 1) = 0;
        goto LABEL_12;
      }

      v20 = 1;
    }

    *(inited + 1) = v20;
LABEL_12:
    v21 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v4 name];
      v23 = [v22 UTF8String];
      v24 = [(PSGraphCompiler *)self threadPoolExecPathToString:inited];
      *buf = 136315650;
      v48 = v23;
      v49 = 2080;
      v50 = [v24 UTF8String];
      v51 = 2048;
      v52 = [v4 threadPoolID];
      _os_log_impl(&dword_25EA3A000, v21, OS_LOG_TYPE_DEFAULT, "ThreadPool: New Threadpool for Graph (%s) on Execution Path (%s) with ID (%llu)", buf, 0x20u);
    }

    if (*(inited + 1))
    {
      *(inited + 2) = [v4 resolvedThreadPoolSize];
      v25 = [v4 name];
      [v25 UTF8String];
      __strlcpy_chk();

      *(inited + 6) = v5;
      v26 = [v4 resolvedCriticalityCPU];
      if (v26 > 1)
      {
        if (v26 == 2)
        {
          v27 = 2;
          goto LABEL_30;
        }

        if (v26 == 3)
        {
          v27 = 3;
          goto LABEL_30;
        }
      }

      else if (v26)
      {
        if (v26 == 1)
        {
          v27 = 1;
LABEL_30:
          *(inited + 17) = v27;
        }
      }

      else
      {
        *(inited + 17) = 0;
      }

LABEL_31:
      *(inited + 93) = 0;
      v42 = *(inited + 45);
      *(inited + 45) = 0;

      v43 = self->_activeThreadPools;
      v10 = [MEMORY[0x277CCAE60] valueWithPointer:inited];
      v44 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "threadPoolID")}];
      [(NSMutableDictionary *)v43 setObject:v10 forKey:v44];

      goto LABEL_32;
    }

    *(inited + 2) = 1;
    *(inited + 17) = 2;
    inited[24] = 1;
    v28 = MEMORY[0x277CCACA8];
    v29 = best_effort_thread_pool_name;
    v30 = [v4 resolvedDomain];
    v31 = [v30 key];
    v32 = [v28 stringWithFormat:@"%s-%@-%lu", v29, v31, objc_msgSend(v4, "resolvedFrequency")];

    [v32 UTF8String];
    __strlcpy_chk();
    v33 = +[PLSSettings currentSettings];
    v46 = v5;
    if ([v33 enableFastTransition])
    {
      v34 = objc_loadWeakRetained(&self->_transitionManager);
      v35 = [v34 executionSession];
      v36 = [v35 systemGraphSession];

      if (v36)
      {
LABEL_27:
        v40 = getpid();
        v41 = mach_absolute_time();
        snprintf(buf, 0x80uLL, "%d-%04llx-%s", v40, v41 & 0xFFFFF, inited + 72);

        v5 = v46;
        goto LABEL_31;
      }
    }

    else
    {
    }

    v37 = *(inited + 42);
    v38 = getpid();
    shared_trigger = ps_gsm_create_shared_trigger(v37, inited + 72, v38);
    *(inited + 44) = shared_trigger;
    if (!shared_trigger)
    {
      [(PSGraphCompiler *)buf addGraphToThreadPool:?];
    }

    goto LABEL_27;
  }

  inited = [v8 pointerValue];
  atomic_fetch_add(inited + 4, 1u);
  atomic_fetch_add(inited + 5, 1u);
  v10 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v4 name];
    v12 = [v11 UTF8String];
    v13 = [v4 threadPoolID];
    v14 = atomic_load(inited + 4);
    *buf = 136315906;
    v48 = v12;
    v49 = 2080;
    v50 = (inited + 72);
    v51 = 2048;
    v52 = v13;
    v53 = 1024;
    v54 = v14;
    _os_log_impl(&dword_25EA3A000, v10, OS_LOG_TYPE_DEFAULT, "ThreadPool: Adding Graph (%s) for existing ThreadPool (%s) with ID (%llu) with Count (%d)", buf, 0x26u);
  }

LABEL_32:

  *(v5 + 6792) = inited;
  *([v4 executionContext] + 8) = inited;

  v45 = *MEMORY[0x277D85DE8];
}

- (void)removeGraphFromThreadPool:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  activeThreadPools = self->_activeThreadPools;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "threadPoolID")}];
  v7 = [(NSMutableDictionary *)activeThreadPools objectForKey:v6];

  if (!v7)
  {
    [(PSGraphCompiler *)&v25 removeGraphFromThreadPool:v4];
  }

  v8 = [v7 pointerValue];
  add = atomic_fetch_add((v8 + 16), 0xFFFFFFFF);
  if (add <= 0)
  {
    [PSGraphCompiler removeGraphFromThreadPool:];
  }

  v10 = v8;
  v11 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v4 name];
    v13 = [v12 UTF8String];
    v14 = *(v10 + 32);
    v15 = atomic_load((v10 + 16));
    v25 = 136381443;
    v26 = v13;
    v27 = 2080;
    v28 = v10 + 72;
    v29 = 2048;
    v30 = v14;
    v31 = 1024;
    v32 = v15;
    _os_log_impl(&dword_25EA3A000, v11, OS_LOG_TYPE_DEFAULT, "ThreadPool: Removing Graph (%{private}s) from ThreadPool (%s) with ID (%llu) with Count (%d)", &v25, 0x26u);
  }

  if (add == 1)
  {
    v16 = *(v10 + 24);
    v17 = __PLSLogSharedInstance();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v16 == 1)
    {
      if (v18)
      {
        v19 = *(v10 + 32);
        v20 = [(PSGraphCompiler *)self threadPoolExecPathToString:v10];
        v25 = 136315650;
        v26 = v10 + 72;
        v27 = 2048;
        v28 = v19;
        v29 = 2112;
        v30 = v20;
        _os_log_impl(&dword_25EA3A000, v17, OS_LOG_TYPE_DEFAULT, "ThreadPool: Keeping alive ThreadPool (%s) with ID (%llu) on path (%@) with no subgraphs subscribed to it", &v25, 0x20u);
      }
    }

    else
    {
      if (v18)
      {
        v21 = *(v10 + 32);
        v22 = [(PSGraphCompiler *)self threadPoolExecPathToString:v10];
        v25 = 136315650;
        v26 = v10 + 72;
        v27 = 2048;
        v28 = v21;
        v29 = 2112;
        v30 = v22;
        _os_log_impl(&dword_25EA3A000, v17, OS_LOG_TYPE_DEFAULT, "ThreadPool: Tearing down ThreadPool (%s) with ID (%llu) on path (%@)", &v25, 0x20u);
      }

      ps_exec_destroy_shared_thread_pool(v10);
      v23 = self->_activeThreadPools;
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "threadPoolID")}];
      [(NSMutableDictionary *)v23 removeObjectForKey:v17];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)initThreadPoolForGraph:(id)a3 withExecutorGraph:(ps_exec_graph_s *)a4
{
  v6 = a3;
  if ([v6 threadPoolID])
  {
    activeThreadPools = self->_activeThreadPools;
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v6, "threadPoolID")}];
    v9 = [(NSMutableDictionary *)activeThreadPools objectForKey:v8];

    if (v9)
    {
      v10 = [v9 pointerValue];
      v11 = atomic_load(v10);
      if (v11 == 1)
      {
        *(v10 + 328) = a4;
        atomic_store(2u, v10);
        ps_exec_launch_threadpool();
      }
    }

    else
    {
      v12 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_impl(&dword_25EA3A000, v12, OS_LOG_TYPE_ERROR, "ThreadPool does not exist in _activeThreadPools", v13, 2u);
      }
    }
  }
}

- (void)destroyAllThreadPools
{
  v55 = *MEMORY[0x277D85DE8];
  if ([(NSMutableDictionary *)self->_activeThreadPools count])
  {
    v2 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_DEFAULT, "ThreadPool: Destroying all ThreadPools", buf, 2u);
    }

    [(NSMutableDictionary *)self->_activeThreadPools allValues];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v3 = v44 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v41 objects:v54 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v42;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v42 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [*(*(&v41 + 1) + 8 * i) pointerValue];
          if (atomic_load((v8 + 16)))
          {
            [PSGraphCompiler destroyAllThreadPools];
          }

          v10 = v8;
          if (atomic_load((v8 + 20)))
          {
            [PSGraphCompiler destroyAllThreadPools];
          }

          ps_exec_terminate_shared_thread_pool(v8);
          ps_gsm_shared_trigger_remove_waiter(*(v10 + 336), *(v10 + 352));
        }

        v5 = [v3 countByEnumeratingWithState:&v41 objects:v54 count:16];
      }

      while (v5);
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = v3;
    v12 = [obj countByEnumeratingWithState:&v37 objects:v53 count:16];
    if (v12)
    {
      v14 = v12;
      v15 = *v38;
      v16 = 0x279A47000uLL;
      *&v13 = 134217984;
      v34 = v13;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v38 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v18 = [*(*(&v37 + 1) + 8 * j) pointerValue];
          v19 = *(v18 + 32);
          v20 = __PLSLogSharedInstance();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = v16;
            v22 = *(v18 + 32);
            v23 = [(PSGraphCompiler *)self threadPoolExecPathToString:v18];
            *buf = 136315906;
            v46 = "[PSGraphCompiler destroyAllThreadPools]";
            v47 = 2080;
            v48 = v18 + 72;
            v49 = 2048;
            v50 = v22;
            v16 = v21;
            v51 = 2112;
            v52 = v23;
            _os_log_impl(&dword_25EA3A000, v20, OS_LOG_TYPE_DEFAULT, "ThreadPool: %s Tearing down ThreadPool (%s) with ID (%llu) on path (%@)", buf, 0x2Au);
          }

          ps_exec_destroy_shared_thread_pool(v18);
          v24 = [*(v16 + 1680) currentSettings];
          if ([v24 enableFastTransition])
          {
            WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
            v26 = [WeakRetained executionSession];
            v27 = [v26 systemGraphSession];

            if (!v27)
            {
              continue;
            }

            v28 = __PLSLogSharedInstance();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v34;
              v46 = v19;
              _os_log_impl(&dword_25EA3A000, v28, OS_LOG_TYPE_DEFAULT, "Sending an XPC message to remove ThreadPool with ID (%llu)", buf, 0xCu);
            }

            v24 = xpc_dictionary_create(0, 0, 0);
            populateRemoveThreadPoolInfo(v24, v19);
            v29 = objc_loadWeakRetained(&self->_transitionManager);
            v30 = [v29 executionSession];
            v31 = [v30 systemGraphSession];
            v32 = xpc_session_send_message(v31, v24);

            if (v32)
            {
              [PSGraphCompiler destroyAllThreadPools];
            }
          }
        }

        v14 = [obj countByEnumeratingWithState:&v37 objects:v53 count:16];
      }

      while (v14);
    }

    [(NSMutableDictionary *)self->_activeThreadPools removeAllObjects];
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (id)getAllResourcesForGraphs:(id)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v4;
  v34 = [obj countByEnumeratingWithState:&v51 objects:v58 count:16];
  if (v34)
  {
    v33 = *v52;
    do
    {
      v6 = 0;
      do
      {
        if (*v52 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v35 = v6;
        v7 = *(*(&v51 + 1) + 8 * v6);
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v36 = [v7 tasks];
        v38 = [v36 countByEnumeratingWithState:&v47 objects:v57 count:16];
        if (v38)
        {
          v37 = *v48;
          do
          {
            for (i = 0; i != v38; ++i)
            {
              if (*v48 != v37)
              {
                objc_enumerationMutation(v36);
              }

              v9 = *(*(&v47 + 1) + 8 * i);
              v43 = 0u;
              v44 = 0u;
              v45 = 0u;
              v46 = 0u;
              v10 = [v9 inputs];
              v11 = [v10 countByEnumeratingWithState:&v43 objects:v56 count:16];
              if (v11)
              {
                v12 = v11;
                v13 = *v44;
                do
                {
                  for (j = 0; j != v12; ++j)
                  {
                    if (*v44 != v13)
                    {
                      objc_enumerationMutation(v10);
                    }

                    v15 = *(*(&v43 + 1) + 8 * j);
                    v16 = [v15 resolvedResourceKey];
                    [v5 addObject:v16];

                    device = self->_device;
                    v18 = [v15 resolvedResourceKey];
                    v19 = [(PLSDevice *)device propertiesForKey:v18];

                    v20 = [v19 syncedKey];
                    if (v20)
                    {
                      [v5 addObject:v20];
                    }
                  }

                  v12 = [v10 countByEnumeratingWithState:&v43 objects:v56 count:16];
                }

                while (v12);
              }

              v41 = 0u;
              v42 = 0u;
              v39 = 0u;
              v40 = 0u;
              v21 = [v9 outputs];
              v22 = [v21 countByEnumeratingWithState:&v39 objects:v55 count:16];
              if (v22)
              {
                v23 = v22;
                v24 = *v40;
                do
                {
                  for (k = 0; k != v23; ++k)
                  {
                    if (*v40 != v24)
                    {
                      objc_enumerationMutation(v21);
                    }

                    v26 = [*(*(&v39 + 1) + 8 * k) resourceKey];
                    [v5 addObject:v26];
                  }

                  v23 = [v21 countByEnumeratingWithState:&v39 objects:v55 count:16];
                }

                while (v23);
              }
            }

            v38 = [v36 countByEnumeratingWithState:&v47 objects:v57 count:16];
          }

          while (v38);
        }

        v6 = v35 + 1;
      }

      while (v35 + 1 != v34);
      v34 = [obj countByEnumeratingWithState:&v51 objects:v58 count:16];
    }

    while (v34);
  }

  v27 = [(PSGraphCompiler *)self getSourceTaskOutputResourcesForGraphs:obj];
  [v5 unionSet:v27];

  v28 = [(PSGraphCompiler *)self getWriterResourcesForGraphs:obj];
  [v5 unionSet:v28];

  v29 = [(PSGraphCompiler *)self getReaderResourcesForGraphs:obj];
  [v5 unionSet:v29];

  v30 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)getAllStridedInputsForGraphs:(id)a3
{
  v72 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CCA940]);
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = v3;
  v40 = [obj countByEnumeratingWithState:&v64 objects:v71 count:16];
  if (v40)
  {
    v39 = *v65;
    v50 = v4;
    do
    {
      v5 = 0;
      do
      {
        if (*v65 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v64 + 1) + 8 * v5);
        v7 = [v6 currentSystemStride];

        v41 = v5;
        if (v7)
        {
          v8 = [v6 currentSystemStride];
        }

        else
        {
          v8 = [v6 systemPulseStride];
          [v6 setCurrentSystemStride:v8];
        }

        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v42 = [v6 tasks];
        v44 = [v42 countByEnumeratingWithState:&v60 objects:v70 count:16];
        if (v44)
        {
          v43 = *v61;
          do
          {
            v9 = 0;
            do
            {
              if (*v61 != v43)
              {
                objc_enumerationMutation(v42);
              }

              v46 = v9;
              v10 = *(*(&v60 + 1) + 8 * v9);
              v56 = 0u;
              v57 = 0u;
              v58 = 0u;
              v59 = 0u;
              v48 = [v10 inputs];
              v11 = [v48 countByEnumeratingWithState:&v56 objects:v69 count:16];
              if (v11)
              {
                v12 = v11;
                v13 = *v57;
                do
                {
                  for (i = 0; i != v12; ++i)
                  {
                    if (*v57 != v13)
                    {
                      objc_enumerationMutation(v48);
                    }

                    v15 = *(*(&v56 + 1) + 8 * i);
                    v16 = [v15 resolvedResourceKey];
                    v17 = +[PSResourceRequest requestWithKey:stride:inputType:graph:](PSResourceRequest, "requestWithKey:stride:inputType:graph:", v16, v8, [v15 type], v6);
                    [v4 addObject:v17];

                    device = self->_device;
                    v19 = [v15 resolvedResourceKey];
                    v20 = [(PLSDevice *)device propertiesForKey:v19];

                    v21 = [v20 syncedKey];
                    if (v21)
                    {
                      v4 = v50;
                      v22 = +[PSResourceRequest requestWithKey:stride:inputType:graph:](PSResourceRequest, "requestWithKey:stride:inputType:graph:", v21, v8, [v15 type], v6);
                      [v50 addObject:v22];
                    }
                  }

                  v12 = [v48 countByEnumeratingWithState:&v56 objects:v69 count:16];
                }

                while (v12);
              }

              v9 = v46 + 1;
            }

            while ((v46 + 1) != v44);
            v44 = [v42 countByEnumeratingWithState:&v60 objects:v70 count:16];
          }

          while (v44);
        }

        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v45 = [v6 readers];
        v49 = [v45 countByEnumeratingWithState:&v52 objects:v68 count:16];
        if (v49)
        {
          v47 = *v53;
          do
          {
            for (j = 0; j != v49; j = j + 1)
            {
              if (*v53 != v47)
              {
                objc_enumerationMutation(v45);
              }

              v24 = *(*(&v52 + 1) + 8 * j);
              v25 = [v24 input];
              v26 = [v25 resolvedResourceKey];
              v27 = [v24 input];
              v28 = +[PSResourceRequest requestWithKey:stride:inputType:graph:](PSResourceRequest, "requestWithKey:stride:inputType:graph:", v26, v8, [v27 type], v6);
              [v50 addObject:v28];

              v29 = self->_device;
              v30 = [v24 input];
              v31 = [v30 resolvedResourceKey];
              v32 = [(PLSDevice *)v29 propertiesForKey:v31];

              v33 = [v32 syncedKey];
              if (v33)
              {
                v34 = [v24 input];
                v35 = +[PSResourceRequest requestWithKey:stride:inputType:graph:](PSResourceRequest, "requestWithKey:stride:inputType:graph:", v33, v8, [v34 type], v6);
                [v50 addObject:v35];
              }
            }

            v49 = [v45 countByEnumeratingWithState:&v52 objects:v68 count:16];
          }

          while (v49);
        }

        v5 = v41 + 1;
        v4 = v50;
      }

      while (v41 + 1 != v40);
      v40 = [obj countByEnumeratingWithState:&v64 objects:v71 count:16];
    }

    while (v40);
  }

  v36 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)getAllInputsForGraphs:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v4;
  v40 = [obj countByEnumeratingWithState:&v57 objects:v64 count:16];
  if (v40)
  {
    v39 = *v58;
    do
    {
      v6 = 0;
      do
      {
        if (*v58 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v57 + 1) + 8 * v6);
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v41 = v7;
        v42 = v6;
        v43 = [v7 tasks];
        v8 = [v43 countByEnumeratingWithState:&v53 objects:v63 count:16];
        if (v8)
        {
          v9 = v8;
          v44 = *v54;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v54 != v44)
              {
                objc_enumerationMutation(v43);
              }

              v11 = *(*(&v53 + 1) + 8 * i);
              v49 = 0u;
              v50 = 0u;
              v51 = 0u;
              v52 = 0u;
              v12 = [v11 inputs];
              v13 = [v12 countByEnumeratingWithState:&v49 objects:v62 count:16];
              if (v13)
              {
                v14 = v13;
                v15 = *v50;
                do
                {
                  for (j = 0; j != v14; ++j)
                  {
                    if (*v50 != v15)
                    {
                      objc_enumerationMutation(v12);
                    }

                    v17 = *(*(&v49 + 1) + 8 * j);
                    v18 = [v17 resolvedResourceKey];
                    [v5 addObject:v18];

                    device = self->_device;
                    v20 = [v17 resolvedResourceKey];
                    v21 = [(PLSDevice *)device propertiesForKey:v20];

                    v22 = [v21 syncedKey];
                    if (v22)
                    {
                      [v5 addObject:v22];
                    }
                  }

                  v14 = [v12 countByEnumeratingWithState:&v49 objects:v62 count:16];
                }

                while (v14);
              }
            }

            v9 = [v43 countByEnumeratingWithState:&v53 objects:v63 count:16];
          }

          while (v9);
        }

        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v23 = [v41 readers];
        v24 = [v23 countByEnumeratingWithState:&v45 objects:v61 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v46;
          do
          {
            for (k = 0; k != v25; ++k)
            {
              if (*v46 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v28 = *(*(&v45 + 1) + 8 * k);
              v29 = [v28 input];
              v30 = [v29 resolvedResourceKey];
              [v5 addObject:v30];

              v31 = self->_device;
              v32 = [v28 input];
              v33 = [v32 resolvedResourceKey];
              v34 = [(PLSDevice *)v31 propertiesForKey:v33];

              v35 = [v34 syncedKey];
              if (v35)
              {
                [v5 addObject:v35];
              }
            }

            v25 = [v23 countByEnumeratingWithState:&v45 objects:v61 count:16];
          }

          while (v25);
        }

        v6 = v42 + 1;
      }

      while (v42 + 1 != v40);
      v40 = [obj countByEnumeratingWithState:&v57 objects:v64 count:16];
    }

    while (v40);
  }

  v36 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)getAllOutputsForGraphs:(id)a3
{
  v75 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = v3;
  v42 = [obj countByEnumeratingWithState:&v65 objects:v74 count:16];
  if (v42)
  {
    v41 = *v66;
    do
    {
      v5 = 0;
      do
      {
        if (*v66 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v65 + 1) + 8 * v5);
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v43 = v5;
        v44 = v6;
        v7 = [v6 tasks];
        v8 = [v7 countByEnumeratingWithState:&v61 objects:v73 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v62;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v62 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v61 + 1) + 8 * i);
              v57 = 0u;
              v58 = 0u;
              v59 = 0u;
              v60 = 0u;
              v13 = [v12 outputs];
              v14 = [v13 countByEnumeratingWithState:&v57 objects:v72 count:16];
              if (v14)
              {
                v15 = v14;
                v16 = *v58;
                do
                {
                  for (j = 0; j != v15; ++j)
                  {
                    if (*v58 != v16)
                    {
                      objc_enumerationMutation(v13);
                    }

                    v18 = [*(*(&v57 + 1) + 8 * j) resourceKey];
                    [v4 addObject:v18];
                  }

                  v15 = [v13 countByEnumeratingWithState:&v57 objects:v72 count:16];
                }

                while (v15);
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v61 objects:v73 count:16];
          }

          while (v9);
        }

        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v19 = [v44 sourceTasks];
        v20 = [v19 countByEnumeratingWithState:&v53 objects:v71 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v54;
          do
          {
            for (k = 0; k != v21; ++k)
            {
              if (*v54 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v53 + 1) + 8 * k);
              v49 = 0u;
              v50 = 0u;
              v51 = 0u;
              v52 = 0u;
              v25 = [v24 outputs];
              v26 = [v25 countByEnumeratingWithState:&v49 objects:v70 count:16];
              if (v26)
              {
                v27 = v26;
                v28 = *v50;
                do
                {
                  for (m = 0; m != v27; ++m)
                  {
                    if (*v50 != v28)
                    {
                      objc_enumerationMutation(v25);
                    }

                    v30 = [*(*(&v49 + 1) + 8 * m) resourceKey];
                    [v4 addObject:v30];
                  }

                  v27 = [v25 countByEnumeratingWithState:&v49 objects:v70 count:16];
                }

                while (v27);
              }
            }

            v21 = [v19 countByEnumeratingWithState:&v53 objects:v71 count:16];
          }

          while (v21);
        }

        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v31 = [v44 writers];
        v32 = [v31 countByEnumeratingWithState:&v45 objects:v69 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v46;
          do
          {
            for (n = 0; n != v33; ++n)
            {
              if (*v46 != v34)
              {
                objc_enumerationMutation(v31);
              }

              v36 = [*(*(&v45 + 1) + 8 * n) output];
              v37 = [v36 resourceKey];
              [v4 addObject:v37];
            }

            v33 = [v31 countByEnumeratingWithState:&v45 objects:v69 count:16];
          }

          while (v33);
        }

        v5 = v43 + 1;
      }

      while (v43 + 1 != v42);
      v42 = [obj countByEnumeratingWithState:&v65 objects:v74 count:16];
    }

    while (v42);
  }

  v38 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)getUniqueResourcesFromGraphs:(id)a3 notPresentInGraphs:(id)a4
{
  v6 = a4;
  v7 = [(PSGraphCompiler *)self getAllResourcesForGraphs:a3];
  v8 = [(PSGraphCompiler *)self getAllResourcesForGraphs:v6];

  v9 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:v7];
  [v9 minusSet:v8];

  return v9;
}

- (id)getAddedInputsWithOldGraphs:(id)a3 withNewGraphs:(id)a4
{
  v6 = a3;
  v7 = [(PSGraphCompiler *)self getAllInputsForGraphs:a4];
  v8 = [(PSGraphCompiler *)self getAllInputsForGraphs:v6];

  v9 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:v7];
  [v9 minusSet:v8];

  return v9;
}

- (id)getRemovedInputsWithOldGraphs:(id)a3 withNewGraphs:(id)a4
{
  v6 = a4;
  v7 = [(PSGraphCompiler *)self getAllInputsForGraphs:a3];
  v8 = [(PSGraphCompiler *)self getAllInputsForGraphs:v6];

  v9 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:v7];
  [v9 minusSet:v8];

  return v9;
}

- (id)getAddedOutputsWithOldGraphs:(id)a3 withNewGraphs:(id)a4
{
  v6 = a4;
  v7 = [(PSGraphCompiler *)self getAllOutputsForGraphs:a3];
  v8 = [(PSGraphCompiler *)self getAllOutputsForGraphs:v6];

  v9 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:v8];
  [v9 minusSet:v7];

  return v9;
}

- (id)getRemovedOutputsWithOldGraphs:(id)a3 withNewGraphs:(id)a4
{
  v6 = a4;
  v7 = [(PSGraphCompiler *)self getAllOutputsForGraphs:a3];
  v8 = [(PSGraphCompiler *)self getAllOutputsForGraphs:v6];

  v9 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:v7];
  [v9 minusSet:v8];

  return v9;
}

- (unint64_t)getMaxRateForKey:(id)a3 forGraphs:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = a4;
  v23 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
  v6 = 0;
  if (v23)
  {
    v22 = *v37;
    do
    {
      v7 = 0;
      do
      {
        if (*v37 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = v7;
        v8 = *(*(&v36 + 1) + 8 * v7);
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v25 = [v8 tasks];
        v27 = [v25 countByEnumeratingWithState:&v32 objects:v41 count:16];
        if (v27)
        {
          v26 = *v33;
          do
          {
            v9 = 0;
            do
            {
              if (*v33 != v26)
              {
                objc_enumerationMutation(v25);
              }

              v10 = *(*(&v32 + 1) + 8 * v9);
              v28 = 0u;
              v29 = 0u;
              v30 = 0u;
              v31 = 0u;
              v11 = [v10 inputs];
              v12 = [v11 countByEnumeratingWithState:&v28 objects:v40 count:16];
              if (v12)
              {
                v13 = v12;
                v14 = *v29;
                do
                {
                  v15 = 0;
                  do
                  {
                    if (*v29 != v14)
                    {
                      objc_enumerationMutation(v11);
                    }

                    v16 = [*(*(&v28 + 1) + 8 * v15) resolvedResourceKey];
                    v17 = [v16 isEqualToString:v5];

                    if (v17)
                    {
                      v18 = [v8 resolvedFrequency];
                      if (v18 > v6)
                      {
                        v6 = v18;
                      }
                    }

                    ++v15;
                  }

                  while (v13 != v15);
                  v13 = [v11 countByEnumeratingWithState:&v28 objects:v40 count:16];
                }

                while (v13);
              }

              ++v9;
            }

            while (v9 != v27);
            v27 = [v25 countByEnumeratingWithState:&v32 objects:v41 count:16];
          }

          while (v27);
        }

        v7 = v24 + 1;
      }

      while (v24 + 1 != v23);
      v23 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v23);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)getGraphTaskHash:(id)a3 withTask:(id)a4
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a4;
  v7 = a3;
  v8 = [v7 name];
  v9 = [v6 name];

  v10 = [v5 stringWithFormat:@"%@-%@-%p", v8, v9, v7];

  return v10;
}

- (id)getPSResourceKeysInitializing
{
  v3 = objc_alloc_init(MEMORY[0x277CBEA60]);
  [(NSLock *)self->_keysInitializingLock lock];
  v4 = [(NSMutableArray *)self->_keysInitializing copy];

  [(NSLock *)self->_keysInitializingLock unlock];

  return v4;
}

- (BOOL)getStreamOptionsForKey:(id)a3 options:(ps_input_resource_options_s *)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (getStreamOptionsForKey_options__onceToken != -1)
  {
    [PSGraphCompiler getStreamOptionsForKey:options:];
  }

  if (getStreamOptionsForKey_options__streamDefaults)
  {
    v6 = [getStreamOptionsForKey_options__streamDefaults objectForKeyedSubscript:v5];
    v7 = v6;
    v8 = v6 != 0;
    if (!v6)
    {
      v9 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v17 = 138412290;
        v18 = v5;
        v11 = "rdar://85615537 defaults: No settings for stream %@";
        v12 = v9;
        v13 = OS_LOG_TYPE_DEBUG;
        v14 = 12;
        goto LABEL_13;
      }

LABEL_14:

      goto LABEL_15;
    }

    if ([v6 staleExpiryFramePeriod])
    {
      a4->var0 = [v7 staleExpiryFramePeriod];
      v9 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        var0 = a4->var0;
        v17 = 138412546;
        v18 = v5;
        v19 = 1024;
        v20 = var0;
        v11 = "rdar://85615537 defaults: Setting stale expiry for stream %@ to %d";
        v12 = v9;
        v13 = OS_LOG_TYPE_DEFAULT;
        v14 = 18;
LABEL_13:
        _os_log_impl(&dword_25EA3A000, v12, v13, v11, &v17, v14);
        goto LABEL_14;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v7 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_DEBUG, "rdar://85615537 defaults: No streams have settings defined", &v17, 2u);
    }
  }

  v8 = 0;
LABEL_15:

  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

void __50__PSGraphCompiler_getStreamOptionsForKey_options___block_invoke()
{
  v2 = +[PLSSettings currentSettings];
  v0 = [v2 streamDefaults];
  v1 = getStreamOptionsForKey_options__streamDefaults;
  getStreamOptionsForKey_options__streamDefaults = v0;
}

- (BOOL)getDropFramesOptionForKey:(id)a3 options:(ps_task_output_resource_options_s *)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (getDropFramesOptionForKey_options__onceToken != -1)
  {
    [PSGraphCompiler getDropFramesOptionForKey:options:];
  }

  if (getDropFramesOptionForKey_options__streamDefaults)
  {
    v6 = [getDropFramesOptionForKey_options__streamDefaults objectForKeyedSubscript:v5];
    v7 = v6;
    v8 = v6 != 0;
    if (!v6)
    {
      v9 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v17 = 138412290;
        v18 = v5;
        v11 = "rdar://95213276 defaults: No settings for stream %@";
        v12 = v9;
        v13 = OS_LOG_TYPE_DEBUG;
        v14 = 12;
        goto LABEL_13;
      }

LABEL_14:

      goto LABEL_15;
    }

    if ([v6 dropFrames])
    {
      a4->var0 = [v7 dropFrames];
      v9 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        var0 = a4->var0;
        v17 = 138412546;
        v18 = v5;
        v19 = 1024;
        v20 = var0;
        v11 = "rdar://95213276 defaults: Setting Dropping frames attribute for stream %@ to %d";
        v12 = v9;
        v13 = OS_LOG_TYPE_DEFAULT;
        v14 = 18;
LABEL_13:
        _os_log_impl(&dword_25EA3A000, v12, v13, v11, &v17, v14);
        goto LABEL_14;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v7 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_DEBUG, "rdar://95213276 defaults: No streams have settings defined", &v17, 2u);
    }
  }

  v8 = 0;
LABEL_15:

  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

void __53__PSGraphCompiler_getDropFramesOptionForKey_options___block_invoke()
{
  v2 = +[PLSSettings currentSettings];
  v0 = [v2 streamDefaults];
  v1 = getDropFramesOptionForKey_options__streamDefaults;
  getDropFramesOptionForKey_options__streamDefaults = v0;
}

- (id)createMtlCommandQueueBestEffort
{
  v2 = [(MTLDeviceSPI *)self->_mtlDevice newCommandQueue];

  return v2;
}

- (id)createMtlCommandQueueRealTime
{
  v3 = [MEMORY[0x277CD6CF8] commandQueueDescriptor];
  [v3 setQosLevel:0];
  v4 = [(MTLDeviceSPI *)self->_mtlDevice newCommandQueueWithDescriptor:v3];
  [v4 setGPUPriority:5];

  return v4;
}

- (void)dealloc
{
  ps_exec_dealloc(self->_synchronizer);
  v3.receiver = self;
  v3.super_class = PSGraphCompiler;
  [(PSGraphCompiler *)&v3 dealloc];
}

- (PSTransitionManager)transitionManager
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);

  return WeakRetained;
}

- (PSTransitionMonitor)transitionMonitor
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionMonitor);

  return WeakRetained;
}

- (uint64_t)matchInputsToGSTStrides:(char *)a1 .cold.1(char **a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 resourceKey];
  asprintf(a1, "Matching GST strides: Resource %s is not a Wait input", [v4 UTF8String]);

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 resourceKey];
    [v6 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Matching GST strides: Resource %s is not a Wait input", v9, v10, v11, v12, v22, v23, v24);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler createWritersForTransitionBlock:v20];
}

- (uint64_t)resolveStreamDomainsForTransitionBlock:(char *)a1 .cold.1(char **a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 localizedDescription];
  asprintf(a1, "An error occurred while resolving stream domains: %s", [v4 UTF8String]);

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 localizedDescription];
    [v6 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d An error occurred while resolving stream domains: %s", v9, v10, v11, v12, v22, v23, v24);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler resolveStreamDomainsForTransitionBlock:v20];
}

- (uint64_t)resolveStreamDomainsForTransitionBlock:(char *)a1 .cold.2(char **a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 name];
  asprintf(a1, "No resolved stream domain found for graph %s", [v4 UTF8String]);

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 name];
    [v6 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d No resolved stream domain found for graph %s", v9, v10, v11, v12, v22, v23, v24);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler createSourceTasksForTransitionBlock:v20];
}

- (uint64_t)createSourceTasksForTransitionBlock:(char *)a1 .cold.1(char **a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 name];
  asprintf(a1, "Source task already created for key %s", [v4 UTF8String]);

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 name];
    [v6 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Source task already created for key %s", v9, v10, v11, v12, v22, v23, v24);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler createPRMInstancesForTransitionBlock:v20];
}

- (uint64_t)createPRMInstancesForTransitionBlock:(char *)a1 .cold.1(char **a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 resourceKey];
  asprintf(a1, "Output object for %s was used in multiple graphs.", [v4 UTF8String]);

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 resourceKey];
    [v6 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Output object for %s was used in multiple graphs.", v9, v10, v11, v12, v22, v23, v24);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler createPRMInstancesForTransitionBlock:v20];
}

- (uint64_t)createPRMInstancesForTransitionBlock:(char *)a1 .cold.2(char **a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 name];
  asprintf(a1, "Could not find PRM task for %s", [v4 UTF8String]);

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 name];
    [v6 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Could not find PRM task for %s", v9, v10, v11, v12, v22, v23, v24);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler createPRMInstancesForTransitionBlock:v20];
}

- (uint64_t)createPRMInstancesForTransitionBlock:(char *)a1 .cold.3(char **a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 name];
  asprintf(a1, "Could not find PRM task for %s", [v4 UTF8String]);

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 name];
    [v6 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Could not find PRM task for %s", v9, v10, v11, v12, v22, v23, v24);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler createPRMInstancesForTransitionBlock:v20];
}

- (void)createPRMInstancesForTransitionBlock:(char *)a1 .cold.4(char **a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 name];
  asprintf(a1, "Could not find PRM task for %s", [v4 UTF8String]);

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 name];
    [v6 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Could not find PRM task for %s", v9, v10, v11, v12, v21, v22, v23);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v21, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  [PSGraphCompiler populateBufferExpiryOffset:v20 forKey:?];
}

- (uint64_t)populateBufferExpiryOffset:(char *)a1 forKey:(void *)a2 .cold.2(char **a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a2, a1, *MEMORY[0x277D85DE8]);
  asprintf(a1, "Invalid call to set buffer expiry on uninitialized ps_task_input_resource_t with Key %s", [a2 UTF8String]);
  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d Invalid call to set buffer expiry on uninitialized ps_task_input_resource_t with Key %s", v8, v9, v10, v11, v22, v23, v24);
  }

  if (OSLogFlushBuffers())
  {
    v12 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler populateOptsMetadataType:v19 forProviderType:v20];
}

+ (uint64_t)populateOptsMetadataType:(char *)a1 forProviderType:(int)a2 .cold.1(char **a1, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Metadata ill-defined for provider type %d", a2);
  v4 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    v18 = 2357;
    v19 = v5;
    v20 = a2;
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_FAULT, "%s:%d Metadata ill-defined for provider type %d", buf, 0x18u);
  }

  if (OSLogFlushBuffers())
  {
    v6 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v6))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v7, v8, "%s() failed to flush buffers with error code: %d", v9, v10, v11, v12, v15, v16, buf[0]);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v13 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler populateWriterOpts:v13 forKey:? withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
}

+ (uint64_t)populateWriterOpts:(char *)a1 forKey:(void *)a2 withCapacity:forGraph:withResStream:withContext:retainedBufferIndexers:withGSM:.cold.1(char **a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a2, a1, *MEMORY[0x277D85DE8]);
  asprintf(a1, "Capacity > 1 is disallowed for %s writers", [a2 UTF8String]);
  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d Capacity > 1 is disallowed for %s writers", v8, v9, v10, v11, v21, v22, v23);
  }

  if (OSLogFlushBuffers())
  {
    v12 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler populateWriterOpts:v19 forKey:? withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
}

+ (uint64_t)populateWriterOpts:(char *)a1 forKey:(void *)a2 withCapacity:forGraph:withResStream:withContext:retainedBufferIndexers:withGSM:.cold.5(char **a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 key];
  asprintf(a1, "Can't have iosurface metadata without the metadata iosurface properties configured for key: %s", [v4 UTF8String]);

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 key];
    [v6 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Can't have iosurface metadata without the metadata iosurface properties configured for key: %s", v9, v10, v11, v12, v22, v23, v24);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler populateWriterOpts:v20 forKey:? withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
}

+ (uint64_t)populateWriterOpts:(char *)a1 forKey:(void *)a2 withCapacity:forGraph:withResStream:withContext:retainedBufferIndexers:withGSM:.cold.7(char **a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 key];
  asprintf(a1, "Can't have iosurface metadata without the metadata iosurface properties configured for key: %s", [v4 UTF8String]);

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 key];
    [v6 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Can't have iosurface metadata without the metadata iosurface properties configured for key: %s", v9, v10, v11, v12, v22, v23, v24);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler populateWriterOpts:v20 forKey:? withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
}

+ (uint64_t)populateWriterOpts:(char *)a1 forKey:(void *)a2 withCapacity:forGraph:withResStream:withContext:retainedBufferIndexers:withGSM:.cold.8(char **a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 key];
  asprintf(a1, "Can't have iosurface metadata without the metadata iosurface properties configured for key: %s", [v4 UTF8String]);

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 key];
    [v6 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Can't have iosurface metadata without the metadata iosurface properties configured for key: %s", v9, v10, v11, v12, v22, v23, v24);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler populateWriterOpts:v20 forKey:? withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
}

+ (uint64_t)populateWriterOpts:(char *)a1 forKey:(void *)a2 withCapacity:forGraph:withResStream:withContext:retainedBufferIndexers:withGSM:.cold.9(char **a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 key];
  asprintf(a1, "Can't have iosurface metadata without the metadata iosurface properties configured for key: %s", [v4 UTF8String]);

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 key];
    [v6 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Can't have iosurface metadata without the metadata iosurface properties configured for key: %s", v9, v10, v11, v12, v22, v23, v24);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler populateWriterOpts:v20 forKey:? withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
}

+ (uint64_t)populateWriterOpts:(char *)a1 forKey:(void *)a2 withCapacity:forGraph:withResStream:withContext:retainedBufferIndexers:withGSM:.cold.12(char **a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a2, a1, *MEMORY[0x277D85DE8]);
  asprintf(a1, "Received an invalid class type for %s", [a2 UTF8String]);
  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d Received an invalid class type for %s", v8, v9, v10, v11, v21, v22, v23);
  }

  if (OSLogFlushBuffers())
  {
    v12 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler populateWriterOpts:v19 forKey:? withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
}

+ (uint64_t)populateWriterOpts:(char *)a1 forKey:(void *)a2 withCapacity:forGraph:withResStream:withContext:retainedBufferIndexers:withGSM:.cold.13(char **a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a2, a1, *MEMORY[0x277D85DE8]);
  asprintf(a1, "Max Capacity is 1000 for %s writers", [a2 UTF8String]);
  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d Max Capacity is 1000 for %s writers", v8, v9, v10, v11, v21, v22, v23);
  }

  if (OSLogFlushBuffers())
  {
    v12 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler populateWriterOpts:v19 forKey:? withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
}

+ (uint64_t)populateWriterOpts:(char *)a1 forKey:(void *)a2 withCapacity:forGraph:withResStream:withContext:retainedBufferIndexers:withGSM:.cold.15(char **a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a2, a1, *MEMORY[0x277D85DE8]);
  asprintf(a1, "No storage mode defined for %s", [a2 UTF8String]);
  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d No storage mode defined for %s", v8, v9, v10, v11, v21, v22, v23);
  }

  if (OSLogFlushBuffers())
  {
    v12 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler populateWriterOpts:v19 forKey:? withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
}

+ (uint64_t)populateWriterOpts:(char *)a1 forKey:(void *)a2 withCapacity:forGraph:withResStream:withContext:retainedBufferIndexers:withGSM:.cold.16(char **a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a2, a1, *MEMORY[0x277D85DE8]);
  asprintf(a1, "No creation mode defined for %s", [a2 UTF8String]);
  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d No creation mode defined for %s", v8, v9, v10, v11, v21, v22, v23);
  }

  if (OSLogFlushBuffers())
  {
    v12 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler populateWriterOpts:v19 forKey:? withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
}

+ (uint64_t)populateWriterOpts:(char *)a1 forKey:(void *)a2 withCapacity:forGraph:withResStream:withContext:retainedBufferIndexers:withGSM:.cold.17(char **a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a2, a1, *MEMORY[0x277D85DE8]);
  asprintf(a1, "Output for key %s not defined in PSContext.", [a2 UTF8String]);
  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d Output for key %s not defined in PSContext.", v8, v9, v10, v11, v21, v22, v23);
  }

  if (OSLogFlushBuffers())
  {
    v12 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler populateReaderOpts:v19 forKey:? forGraph:? withCapacity:? withForwardingCount:?];
}

- (uint64_t)populateReaderOpts:(char *)a1 forKey:(void *)a2 forGraph:withCapacity:withForwardingCount:.cold.1(char **a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a2, a1, *MEMORY[0x277D85DE8]);
  asprintf(a1, "Resource %s had no storage mode defined", [a2 UTF8String]);
  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d Resource %s had no storage mode defined", v8, v9, v10, v11, v21, v22, v23);
  }

  if (OSLogFlushBuffers())
  {
    v12 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler populateReaderOpts:v19 forKey:? forGraph:? withCapacity:? withForwardingCount:?];
}

- (uint64_t)populateReaderOpts:(char *)a1 forKey:(void *)a2 forGraph:withCapacity:withForwardingCount:.cold.2(char **a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a2, a1, *MEMORY[0x277D85DE8]);
  asprintf(a1, "Resource %s had no class defined", [a2 UTF8String]);
  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d Resource %s had no class defined", v8, v9, v10, v11, v21, v22, v23);
  }

  if (OSLogFlushBuffers())
  {
    v12 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler populateReaderOpts:v19 forKey:? forGraph:? withCapacity:? withForwardingCount:?];
}

- (uint64_t)populateReaderOpts:(char *)a1 forKey:(void *)a2 forGraph:withCapacity:withForwardingCount:.cold.3(char **a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a2, a1, *MEMORY[0x277D85DE8]);
  asprintf(a1, "Could not find stream definition for reader key %s", [a2 UTF8String]);
  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d Could not find stream definition for reader key %s", v8, v9, v10, v11, v21, v22, v23);
  }

  if (OSLogFlushBuffers())
  {
    v12 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler createGroupedTriggersOverXPCForTransitionBlock:v19];
}

- (uint64_t)createGroupedTriggersOverXPCForTransitionBlock:(char *)a1 .cold.1(char **a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "ThreadPool (%s) failed to acquire a shared trigger", (a2 + 72));
  v3 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d ThreadPool (%s) failed to acquire a shared trigger", v6, v7, v8, v9, v19, v20, v21);
  }

  if (OSLogFlushBuffers())
  {
    v10 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v10))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v11, v12, "%s() failed to flush buffers with error code: %d", v13, v14, v15, v16, v19, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v17 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler createGroupedTriggersOverXPCForTransitionBlock:v17];
}

- (uint64_t)createGroupedTriggersOverXPCForTransitionBlock:(char *)a1 .cold.2(char **a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 name];
  asprintf(a1, "GST creation failed for graph %s, aborting", [v4 UTF8String]);

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 name];
    [v6 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d GST creation failed for graph %s, aborting", v9, v10, v11, v12, v23, v24, v25);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v23, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [(PSGraphCompiler *)v20 createGroupedTriggersOverXPCForTransitionBlock:v21];
}

- (uint64_t)createGroupedTriggersOverXPCForTransitionBlock:(char *)a1 .cold.3(char **a1, xpc_rich_error_t error)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v5 = xpc_rich_error_copy_description(error);
  asprintf(a1, "Did not a receive a reply from polarisd for graph addition, aborting! Error = %s", v5);
  v6 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v6))
  {
    xpc_rich_error_copy_description(error);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Did not a receive a reply from polarisd for graph addition, aborting! Error = %s", v9, v10, v11, v12, v22, v23, v24);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler setupGSMSourceDescriptors:v20 storageModes:? graphName:? graphFrequencey:? systemSources:? intermediateSources:? producedOutputRates:? device:? context:? syncedBuffers:?];
}

- (uint64_t)setupGSMSourceDescriptors:(char *)a1 storageModes:(void *)a2 graphName:graphFrequencey:systemSources:intermediateSources:producedOutputRates:device:context:syncedBuffers:.cold.2(char **a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a2, a1, *MEMORY[0x277D85DE8]);
  asprintf(a1, "No res stream for key %s", [a2 UTF8String]);
  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d No res stream for key %s", v8, v9, v10, v11, v21, v22, v23);
  }

  if (OSLogFlushBuffers())
  {
    v12 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler setupGSMSourceDescriptors:v19 storageModes:? graphName:? graphFrequencey:? systemSources:? intermediateSources:? producedOutputRates:? device:? context:? syncedBuffers:?];
}

- (uint64_t)setupGSMSourceDescriptors:(char *)a1 storageModes:(void *)a2 graphName:graphFrequencey:systemSources:intermediateSources:producedOutputRates:device:context:syncedBuffers:.cold.3(char **a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a2, a1, *MEMORY[0x277D85DE8]);
  asprintf(a1, "Could not find output rate for key %s.", [a2 UTF8String]);
  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d Could not find output rate for key %s.", v8, v9, v10, v11, v21, v22, v23);
  }

  if (OSLogFlushBuffers())
  {
    v12 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler setupForLegacyGroupedTriggerForGraph:v19 withProducerOutputRates:? withTransitionBlock:? withGraphInfo:? withGraphSetInfo:?];
}

- (void)setupForLegacyGroupedTriggerForGraph:(char *)a1 withProducerOutputRates:(void *)a2 withTransitionBlock:withGraphInfo:withGraphSetInfo:.cold.1(char **a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 name];
  asprintf(a1, "Graph (%s) ThreadPoolID is unused but gst create about to be called", [v4 UTF8String]);

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 name];
    [v6 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Graph (%s) ThreadPoolID is unused but gst create about to be called", v9, v10, v11, v12, v21, v22, v23);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v21, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  [PSGraphCompiler setupForLegacyGroupedTriggerForGraph:v20 withProducerOutputRates:? withTransitionBlock:? withGraphInfo:? withGraphSetInfo:?];
}

- (void)setupForCadenceGroupedTriggerForGraph:(char *)a1 withSources:(void *)a2 withOffset:withGraphInfo:withGraphSetInfo:.cold.1(char **a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 name];
  asprintf(a1, "Graph (%s) ThreadPoolID is unused but gst create about to be called", [v4 UTF8String]);

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 name];
    [v6 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Graph (%s) ThreadPoolID is unused but gst create about to be called", v9, v10, v11, v12, v21, v22, v23);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v21, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  [PSGraphCompiler setupForCadenceGroupedTriggerForGraph:v20 withSources:? withOffset:? withGraphInfo:? withGraphSetInfo:?];
}

- (uint64_t)setupCadenceGroupedTriggerInfoForGraph:(char *)a1 withProducerOutputRates:(void *)a2 withTransitionBlock:withGraphInfoDict:.cold.2(char **a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 name];
  asprintf(a1, "Graph (%s) ThreadPoolID is unused but gst create about to be called", [v4 UTF8String]);

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 name];
    [v6 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Graph (%s) ThreadPoolID is unused but gst create about to be called", v9, v10, v11, v12, v22, v23, v24);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler createCadenceGroupedTriggerForGraph:v20 withSources:? withOffset:?];
}

- (uint64_t)createCadenceGroupedTriggerForGraph:(char *)a1 withSources:(void *)a2 withOffset:.cold.1(char **a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 name];
  asprintf(a1, "Stride-based GST creation failed for graph %s", [v4 UTF8String]);

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 name];
    [v6 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Stride-based GST creation failed for graph %s", v9, v10, v11, v12, v22, v23, v24);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler createCadenceGroupedTriggerForGraph:v20 withSources:? withOffset:?];
}

- (uint64_t)createCadenceGroupedTriggerForGraph:(char *)a1 withSources:(void *)a2 withOffset:.cold.2(char **a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 name];
  asprintf(a1, "Stride-based GST creation failed for graph %s for shared trigger", [v4 UTF8String]);

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 name];
    [v6 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Stride-based GST creation failed for graph %s for shared trigger", v9, v10, v11, v12, v22, v23, v24);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler createCadenceGroupedTriggerForGraph:v20 withSources:? withOffset:?];
}

- (uint64_t)createCadenceGroupedTriggerForGraph:(char *)a1 withSources:(void *)a2 withOffset:.cold.3(char **a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 name];
  asprintf(a1, "Graph (%s) ThreadPoolID is unused but gst create about to be called", [v4 UTF8String]);

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 name];
    [v6 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Graph (%s) ThreadPoolID is unused but gst create about to be called", v9, v10, v11, v12, v22, v23, v24);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler createLegacyGroupedTriggerForGraph:v20 withProducerOutputRates:? withTransitionBlock:?];
}

- (uint64_t)createLegacyGroupedTriggerForGraph:(char *)a1 withProducerOutputRates:(void *)a2 withTransitionBlock:.cold.1(char **a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 name];
  asprintf(a1, "GST creation failed for graph %s", [v4 UTF8String]);

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 name];
    [v6 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d GST creation failed for graph %s", v9, v10, v11, v12, v22, v23, v24);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler createLegacyGroupedTriggerForGraph:v20 withProducerOutputRates:? withTransitionBlock:?];
}

- (void)createLegacyGroupedTriggerForGraph:(char *)a1 withProducerOutputRates:(void *)a2 withTransitionBlock:.cold.2(char **a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 name];
  asprintf(a1, "Graph (%s) ThreadPoolID is unused but gst create about to be called", [v4 UTF8String]);

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 name];
    [v6 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Graph (%s) ThreadPoolID is unused but gst create about to be called", v9, v10, v11, v12, v21, v22, v23);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v21, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  [PSGraphCompiler initializeGroupedTriggersForSubgraph:v20 withClientGraph:?];
}

- (uint64_t)initializeExecSubGraphTasks:(char *)a1 withClientGraph:(void *)a2 .cold.3(char **a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 name];
  asprintf(a1, "MTLQueue was nil for graph %s", [v4 UTF8String]);

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 name];
    [v6 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d MTLQueue was nil for graph %s", v9, v10, v11, v12, v22, v23, v24);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler createBlockFromTask:v20 withGraph:? withExecSubgraph:? withMtlQueue:? withGraphStringId:?];
}

- (uint64_t)createBlockFromTask:(char *)a1 withGraph:(void *)a2 withExecSubgraph:withMtlQueue:withGraphStringId:.cold.1(char **a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 name];
  asprintf(a1, "Could not find prm_task for key %s", [v4 UTF8String]);

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 name];
    [v6 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Could not find prm_task for key %s", v9, v10, v11, v12, v22, v23, v24);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler initializeComplexityUpdateHandler:v20 withExecSubgraph:? withExecBlock:?];
}

- (uint64_t)initializeComplexityUpdateHandler:(char *)a1 withExecSubgraph:(void *)a2 withExecBlock:.cold.1(char **a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 name];
  asprintf(a1, "Unable to create complexity update context for graph %s", [v4 UTF8String]);

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 name];
    [v6 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Unable to create complexity update context for graph %s", v9, v10, v11, v12, v22, v23, v24);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler destroyWritersForTransitionBlock:v20];
}

- (uint64_t)destroyPRMInstancesForTransitionBlock:(char *)a1 .cold.1(char **a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 resourceKey];
  asprintf(a1, "No deallocator specified with allocator for key (%s). Something is wrong.", [v4 UTF8String]);

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 resourceKey];
    [v6 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d No deallocator specified with allocator for key (%s). Something is wrong.", v9, v10, v11, v12, v22, v23, v24);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler destroyPRMInstancesForTransitionBlock:v20];
}

- (uint64_t)destroyPRMInstancesForTransitionBlock:(char *)a1 .cold.2(char **a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 resourceKey];
  asprintf(a1, "No deallocator specified with allocator for key (%s). Something is wrong.", [v4 UTF8String]);

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 resourceKey];
    [v6 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d No deallocator specified with allocator for key (%s). Something is wrong.", v9, v10, v11, v12, v22, v23, v24);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler destroyPRMInstancesForTransitionBlock:v20];
}

- (uint64_t)destroyPRMInstancesForTransitionBlock:(char *)a1 .cold.3(char **a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 resourceKey];
  asprintf(a1, "No deallocator specified with allocator for key (%s). Something is wrong.", [v4 UTF8String]);

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 resourceKey];
    [v6 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d No deallocator specified with allocator for key (%s). Something is wrong.", v9, v10, v11, v12, v22, v23, v24);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler destroyPRMInstancesForTransitionBlock:v20];
}

- (uint64_t)destroyPRMInstancesForTransitionBlock:(char *)a1 .cold.4(char **a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 resourceKey];
  asprintf(a1, "No resource present for key (%s) to deallocate. Something is wrong.", [v4 UTF8String]);

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 resourceKey];
    [v6 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d No resource present for key (%s) to deallocate. Something is wrong.", v9, v10, v11, v12, v22, v23, v24);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler destroyPRMInstancesForTransitionBlock:v20];
}

- (uint64_t)destroyPRMInstancesForTransitionBlock:(char *)a1 .cold.5(char **a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 name];
  asprintf(a1, "Could not find GSP for graph %s", [v4 UTF8String]);

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 name];
    [v6 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Could not find GSP for graph %s", v9, v10, v11, v12, v22, v23, v24);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler getProducerOutputRates:v20];
}

- (uint64_t)getProducerOutputRates:(char *)a1 .cold.1(char **a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 resourceKey];
  asprintf(a1, "Multiple producing tasks found for output %s", [v4 UTF8String]);

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 resourceKey];
    [v6 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Multiple producing tasks found for output %s", v9, v10, v11, v12, v22, v23, v24);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler getProducerOutputRates:v20];
}

- (uint64_t)getProducerOutputRates:(char *)a1 .cold.2(char **a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 resourceKey];
  asprintf(a1, "Multiple producing tasks found for output %s", [v4 UTF8String]);

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 resourceKey];
    [v6 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Multiple producing tasks found for output %s", v9, v10, v11, v12, v22, v23, v24);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler getProducerOutputRates:v20];
}

- (uint64_t)getProducerOutputRates:(char *)a1 .cold.3(char **a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 resourceKey];
  asprintf(a1, "Multiple producers (tasks/sourcetasks/writers) found for output %s", [v4 UTF8String]);

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 resourceKey];
    [v6 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Multiple producers (tasks/sourcetasks/writers) found for output %s", v9, v10, v11, v12, v22, v23, v24);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler shouldUseSharedTriggerForGraph:v20 withTransitionBlock:?];
}

- (void)addGraphToThreadPool:(char *)a1 .cold.1(char **a1, const char *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "ThreadPool (%s) failed to acquire a shared trigger", a2);
  v3 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d ThreadPool (%s) failed to acquire a shared trigger", v6, v7, v8, v9, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v10 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v10))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v11, v12, "%s() failed to flush buffers with error code: %d", v13, v14, v15, v16, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v17 = OUTLINED_FUNCTION_0();
  [PSGraphCompiler removeGraphFromThreadPool:v17];
}

- (void)removeGraphFromThreadPool:(char *)a1 .cold.2(char **a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 name];
  asprintf(a1, "%s called for graph (%s) not belonging to any threadpool", "-[PSGraphCompiler removeGraphFromThreadPool:]", [v4 UTF8String]);

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 name];
    [v6 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v7, v8, "%s:%d %s called for graph (%s) not belonging to any threadpool", v9, v10, v11, v12, v21, v22, v23);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v21, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  [(PSGraphCompiler *)v20 destroyAllThreadPools];
}

@end