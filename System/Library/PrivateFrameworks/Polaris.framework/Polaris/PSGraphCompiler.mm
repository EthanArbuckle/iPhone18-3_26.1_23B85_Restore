@interface PSGraphCompiler
+ (id)deadlineThresholdsForCriticality:(unint64_t)criticality;
+ (void)populateOptsMetadataType:(PSResourceManagerOptions *)type forProviderType:(int)providerType;
+ (void)populateWriterOpts:(PSResourceManagerOptions *)opts forKey:(id)key withCapacity:(unint64_t)capacity forGraph:(id)graph withResStream:(id)stream withContext:(id)context retainedBufferIndexers:(id)indexers withGSM:(ps_gsm_s *)self0;
- (BOOL)checkForBufferSyncGroupedSources:(id)sources intermediateWaitSources:(id)waitSources graph:(id)graph;
- (BOOL)createCadenceGroupedTriggerForGraph:(id)graph withProducerOutputRates:(id)rates withTransitionBlock:(id)block;
- (BOOL)createCadenceGroupedTriggerForGraph:(id)graph withTransitionBlock:(id)block;
- (BOOL)getDropFramesOptionForKey:(id)key options:(ps_task_output_resource_options_s *)options;
- (BOOL)getStreamOptionsForKey:(id)key options:(ps_input_resource_options_s *)options;
- (BOOL)isCameraDomain:(id)domain withContext:(id)context;
- (BOOL)setupCadenceGroupedTriggerInfoForGraph:(id)graph withProducerOutputRates:(id)rates withTransitionBlock:(id)block withGraphInfoDict:(id)dict;
- (BOOL)setupForCadenceGroupedTriggerForGraph:(id)graph withTransitionBlock:(id)block withGraphInfo:(id)info withGraphSetInfo:(id)setInfo;
- (BOOL)setupLegacyGroupedTriggerInfoForGraph:(id)graph withProducerOutputRates:(id)rates withTransitionBlock:(id)block withGraphInfoDict:(id)dict;
- (BOOL)shouldUseSharedTriggerForGraph:(id)graph withTransitionBlock:(id)block;
- (BOOL)transition:(id)transition addedResources:(id *)resources removedResources:(id *)removedResources;
- (BOOL)validOffsetForGraph:(id)graph inputs:(id)inputs highestStride:(unsigned int *)stride desiredOffset:(unsigned int *)offset;
- (PSGraphCompiler)initWithTransitionManager:(id)manager withContext:(id)context withSystemGraphClient:(id)client withComputeDevices:(id)devices withPLSDevice:(id)device withPRMManager:(PSResourceManager *)mManager;
- (PSTransitionManager)transitionManager;
- (PSTransitionMonitor)transitionMonitor;
- (id)createMtlCommandQueueBestEffort;
- (id)createMtlCommandQueueRealTime;
- (id)createWorkgroupIntervalForGraph:(id)graph;
- (id)createWorkgroupIntervalForThreadPool:(ps_exec_shared_thread_pool_s *)pool;
- (id)extractLocalSystemSourceKeys:(id)keys;
- (id)filterANEWaitResources:(id)resources withGraph:(id)graph;
- (id)filterNonANEWaitResources:(id)resources withGraph:(id)graph;
- (id)generateDependencyGraphWithClientGraph:(id)graph;
- (id)getANEWaitResources:(id)resources;
- (id)getAddedInputsWithOldGraphs:(id)graphs withNewGraphs:(id)newGraphs;
- (id)getAddedOutputsWithOldGraphs:(id)graphs withNewGraphs:(id)newGraphs;
- (id)getAllInputsForGraph:(id)graph;
- (id)getAllInputsForGraphs:(id)graphs;
- (id)getAllLocallyProducedOutputsForGraphs:(id)graphs;
- (id)getAllOutputsForGraphs:(id)graphs;
- (id)getAllResourcesForGraphs:(id)graphs;
- (id)getAllStridedInputsForGraph:(id)graph;
- (id)getAllStridedInputsForGraphs:(id)graphs;
- (id)getGraphTaskHash:(id)hash withTask:(id)task;
- (id)getIntermediateSources:(id)sources withTransitionBlock:(id)block;
- (id)getPSResourceKeysInitializing;
- (id)getPolicyWaitResources:(id)resources;
- (id)getProducerOutputRates:(id)rates;
- (id)getReaderResourcesForGraphs:(id)graphs;
- (id)getRemovedInputsWithOldGraphs:(id)graphs withNewGraphs:(id)newGraphs;
- (id)getRemovedOutputsWithOldGraphs:(id)graphs withNewGraphs:(id)newGraphs;
- (id)getResourceKeys:(id)keys;
- (id)getSourceTaskOutputResourcesForGraphs:(id)graphs;
- (id)getStridedGSTWaitSources:(id)sources transitionBlock:(id)block;
- (id)getStridedIntermediateSources:(id)sources withTransitionBlock:(id)block;
- (id)getStridedSystemSources:(id)sources withTransitionBlock:(id)block;
- (id)getSystemSources:(id)sources withTransitionBlock:(id)block withIntermediateSources:(id)intermediateSources;
- (id)getThreadPoolHashIDForGraph:(id)graph;
- (id)getUniqueResourcesFromGraphs:(id)graphs notPresentInGraphs:(id)inGraphs;
- (id)getWriterResourcesForGraphs:(id)graphs;
- (id)matchInputsToGSTStrides:(id)strides;
- (id)matchInputsToSystemGraphRequest:(id)request;
- (id)systemGraphResourceRequest:(id)request;
- (id)systemGraphResourceWithStridesRequest:(id)request;
- (id)threadPoolExecPathToString:(ps_exec_shared_thread_pool_s *)string;
- (id)transitionAddedResources:(id)resources;
- (unint64_t)getMaxRateForKey:(id)key forGraphs:(id)graphs;
- (unint64_t)populateBufferExpiryOffset:(ps_task_input_resource_s *)offset forKey:(id)key;
- (void)addGraphToThreadPool:(id)pool;
- (void)createBlockFromTask:(void *)task withGraph:(void *)graph withExecSubgraph:(uint64_t)subgraph withMtlQueue:(void *)queue withGraphStringId:(uint64_t)id;
- (void)createExecSubGraphWithFreeSlot:(uint64_t)slot withClientGraph:(void *)graph;
- (void)createGroupedTriggersForTransitionBlock:(id)block;
- (void)createGroupedTriggersOverXPCForTransitionBlock:(id)block;
- (void)createLegacyGroupedTriggerForGraph:(id)graph withProducerOutputRates:(id)rates withTransitionBlock:(id)block;
- (void)createPRMInstancesForTransitionBlock:(id)block;
- (void)createReadersForTransitionBlock:(id)block;
- (void)createSourceTasksForTransitionBlock:(id)block;
- (void)createWritersForTransitionBlock:(id)block;
- (void)dealloc;
- (void)deinitializeLocalSystemSourcesForTransitionBlock:(id)block;
- (void)destroyAllThreadPools;
- (void)destroyGroupedTriggersForTransitionBlock:(id)block;
- (void)destroyPRMInstancesForTransitionBlock:(id)block;
- (void)destroyReadersForTransitionBlock:(id)block;
- (void)destroyWritersForTransitionBlock:(id)block;
- (void)initThreadPoolForGraph:(id)graph withExecutorGraph:(ps_exec_graph_s *)executorGraph;
- (void)initializeComplexityUpdateHandler:(void *)handler withExecSubgraph:(uint64_t)subgraph withExecBlock:(uint64_t)block;
- (void)initializeExecSubGraphProperties:(uint64_t)properties withClientGraph:(void *)graph;
- (void)initializeExecSubGraphTaskDependencies:(uint64_t)dependencies withClientGraph:(void *)graph;
- (void)initializeExecSubGraphTasks:(uint64_t)tasks withClientGraph:(void *)graph;
- (void)initializeGroupedTriggersForSubgraph:(uint64_t)subgraph withClientGraph:(void *)graph;
- (void)initializeGroupedTriggersForTransitionBlock:(id)block;
- (void)initializeLocalSystemSourcesForTransitionBlock:(id)block;
- (void)initializeSubgraphLiveness:(uint64_t)liveness withRelativeDeadline:(uint64_t)deadline withClientGraph:(void *)graph;
- (void)notifySystemGraphTransitionCompleted:(id)completed;
- (void)performWithKeytoWriterLock:(id)lock;
- (void)populateReaderOpts:(PSResourceManagerOptions *)opts forKey:(id)key forGraph:(id)graph withCapacity:(unint64_t)capacity withForwardingCount:(unint64_t)count;
- (void)removeGraphFromThreadPool:(id)pool;
- (void)removeGroupedTriggersForGraphs:(id)graphs;
- (void)removeMTLCommandQueuesForTransitionBlock:(id)block;
- (void)removeSourceTasksForTransitionBlock:(id)block;
- (void)removeWriterForKey:(id)key;
- (void)resolveStreamDomainsForTransitionBlock:(id)block;
- (void)resolveTimerStreamsForTransitionBlock:(id)block;
- (void)setBufferDepthsForTransitionBlock:(id)block;
- (void)setThreadPoolIDForGraph:(id)graph withTransitionBlock:(id)block;
- (void)setWriterForKey:(id)key writer:(id)writer;
- (void)setupForCadenceGroupedTriggerForGraph:(id)graph withSources:(id)sources withOffset:(unsigned int)offset withGraphInfo:(id)info withGraphSetInfo:(id)setInfo;
- (void)setupForLegacyGroupedTriggerForGraph:(id)graph withProducerOutputRates:(id)rates withTransitionBlock:(id)block withGraphInfo:(id)info withGraphSetInfo:(id)setInfo;
- (void)setupGSMSourceDescriptors:(id *)descriptors storageModes:(unsigned __int8 *)modes graphName:(id)name graphFrequencey:(unint64_t)frequencey systemSources:(id)sources intermediateSources:(id)intermediateSources producedOutputRates:(id)rates device:(id)self0 context:(id)self1 syncedBuffers:(BOOL)self2;
- (void)startLocalSystemSources:(id)sources;
- (void)stopLocalSystemSources:(id)sources;
- (void)validateCriticality:(unint64_t)criticality withCriticalityEntitlement:(unint64_t)entitlement withGraph:(id)graph;
- (void)withWriterForKey:(id)key perform:(id)perform;
@end

@implementation PSGraphCompiler

- (PSGraphCompiler)initWithTransitionManager:(id)manager withContext:(id)context withSystemGraphClient:(id)client withComputeDevices:(id)devices withPLSDevice:(id)device withPRMManager:(PSResourceManager *)mManager
{
  managerCopy = manager;
  contextCopy = context;
  clientCopy = client;
  devicesCopy = devices;
  deviceCopy = device;
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

    mtlDevice = [devicesCopy mtlDevice];
    mtlDevice = v19->_mtlDevice;
    v19->_mtlDevice = mtlDevice;

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

    objc_storeWeak(&v19->_transitionManager, managerCopy);
    [managerCopy transitionMonitor];
    v62 = deviceCopy;
    v39 = v38 = contextCopy;
    objc_storeWeak(&v19->_transitionMonitor, v39);

    objc_storeStrong(&v19->_device, device);
    objc_storeStrong(&v19->_systemGraphClient, client);
    objc_storeStrong(&v19->_context, context);
    v19->_nextExecBlockTraceKey = 0;
    v19->_synchronizer = ps_synchronizer_init();
    v19->_deterministicReplay = 0;
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    priorGraphDomains = v19->_priorGraphDomains;
    v19->_priorGraphDomains = strongToStrongObjectsMapTable;

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
    v19->_prm_mgr = mManager;
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
    executionSession = [v56 executionSession];
    v58 = -[PSLocalStreamManager initWithContext:withTransitionManager:withDevice:withGSM:withPRMManager:](v52, "initWithContext:withTransitionManager:withDevice:withGSM:withPRMManager:", context, v56, device, [executionSession gsm], v19->_prm_mgr);

    localStreamManager = v19->_localStreamManager;
    v19->_localStreamManager = v58;
    contextCopy = v38;
    deviceCopy = v62;

    prm_mgr = v19->_prm_mgr;
    if (prm_mgr)
    {
      ps_prm_register_thread_creator(prm_mgr, _prm_thread_creator, 0);
    }
  }

  return v19;
}

- (void)setBufferDepthsForTransitionBlock:(id)block
{
  v108 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v57 = blockCopy;
  obj = [blockCopy addedGraphs];
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
        tasks = [v7 tasks];
        v66 = [tasks countByEnumeratingWithState:&v89 objects:v106 count:16];
        if (v66)
        {
          v64 = *v90;
          do
          {
            for (i = 0; i != v66; ++i)
            {
              if (*v90 != v64)
              {
                objc_enumerationMutation(tasks);
              }

              v9 = *(*(&v89 + 1) + 8 * i);
              v85 = 0u;
              v86 = 0u;
              v87 = 0u;
              v88 = 0u;
              outputs = [v9 outputs];
              v11 = [outputs countByEnumeratingWithState:&v85 objects:v105 count:16];
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
                      objc_enumerationMutation(outputs);
                    }

                    v15 = *(*(&v85 + 1) + 8 * j);
                    retainedInputs = [v15 retainedInputs];
                    v17 = [retainedInputs count];

                    if (!v17)
                    {
                      context = self->_context;
                      resourceKey = [v15 resourceKey];
                      v20 = [(PSContext *)context resourceStreamForKey:resourceKey];

                      if (v20)
                      {
                        [v5 addObject:v20];
                      }
                    }
                  }

                  v12 = [outputs countByEnumeratingWithState:&v85 objects:v105 count:16];
                }

                while (v12);
              }
            }

            v66 = [tasks countByEnumeratingWithState:&v89 objects:v106 count:16];
          }

          while (v66);
        }

        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        sourceTasks = [v62 sourceTasks];
        v21 = [sourceTasks countByEnumeratingWithState:&v81 objects:v104 count:16];
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
                objc_enumerationMutation(sourceTasks);
              }

              v24 = *(*(&v81 + 1) + 8 * k);
              v77 = 0u;
              v78 = 0u;
              v79 = 0u;
              v80 = 0u;
              outputs2 = [v24 outputs];
              v26 = [outputs2 countByEnumeratingWithState:&v77 objects:v103 count:16];
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
                      objc_enumerationMutation(outputs2);
                    }

                    v30 = self->_context;
                    resourceKey2 = [*(*(&v77 + 1) + 8 * m) resourceKey];
                    v32 = [(PSContext *)v30 resourceStreamForKey:resourceKey2];

                    if (v32)
                    {
                      [v5 addObject:v32];
                    }
                  }

                  v27 = [outputs2 countByEnumeratingWithState:&v77 objects:v103 count:16];
                }

                while (v27);
              }
            }

            v22 = [sourceTasks countByEnumeratingWithState:&v81 objects:v104 count:16];
          }

          while (v22);
        }

        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        writers = [v62 writers];
        v34 = [writers countByEnumeratingWithState:&v73 objects:v102 count:16];
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
                objc_enumerationMutation(writers);
              }

              v38 = self->_context;
              output = [*(*(&v73 + 1) + 8 * n) output];
              resourceKey3 = [output resourceKey];
              v41 = [(PSContext *)v38 resourceStreamForKey:resourceKey3];

              if (v41)
              {
                [v5 addObject:v41];
              }
            }

            v35 = [writers countByEnumeratingWithState:&v73 objects:v102 count:16];
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
          totalBufferCountHint = [v47 totalBufferCountHint];
          v49 = totalBufferCountHint - [v47 reservedForReaderBufferCountHint];
          reservedForReaderBufferCountHint = [v47 reservedForReaderBufferCountHint];
          v51 = [v47 key];
          v68 = 0;
          LOBYTE(v49) = [PSConstants setBufferDepthsForKey:v51 writerDepth:v49 readerDepth:reservedForReaderBufferCountHint error:&v68];
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

- (void)resolveTimerStreamsForTransitionBlock:(id)block
{
  v57 = *MEMORY[0x277D85DE8];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = [block addedGraphs];
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
        tasks = [v5 tasks];
        v34 = [tasks countByEnumeratingWithState:&v45 objects:v55 count:16];
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
                objc_enumerationMutation(tasks);
              }

              v35 = v6;
              v7 = *(*(&v45 + 1) + 8 * v6);
              v41 = 0u;
              v42 = 0u;
              v43 = 0u;
              v44 = 0u;
              inputs = [v7 inputs];
              v9 = [inputs countByEnumeratingWithState:&v41 objects:v54 count:16];
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
                      objc_enumerationMutation(inputs);
                    }

                    v13 = *(*(&v41 + 1) + 8 * i);
                    resourceKey = [v13 resourceKey];
                    v15 = [resourceKey isEqualToString:@"timer"];

                    if (v15)
                    {
                      v16 = -[PLSDevice populateTimerContextForFrequency:](self->_device, "populateTimerContextForFrequency:", [v5 frequency]);
                      [v13 setResolvedResourceKey:v16];
                    }
                  }

                  v10 = [inputs countByEnumeratingWithState:&v41 objects:v54 count:16];
                }

                while (v10);
              }

              v6 = v35 + 1;
            }

            while (v35 + 1 != v34);
            v34 = [tasks countByEnumeratingWithState:&v45 objects:v55 count:16];
          }

          while (v34);
        }

        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        readers = [v5 readers];
        v17 = [readers countByEnumeratingWithState:&v37 objects:v53 count:16];
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
                objc_enumerationMutation(readers);
              }

              v21 = *(*(&v37 + 1) + 8 * j);
              input = [v21 input];
              resourceKey2 = [input resourceKey];
              v24 = [resourceKey2 isEqualToString:@"timer"];

              if (v24)
              {
                v25 = -[PLSDevice populateTimerContextForFrequency:](self->_device, "populateTimerContextForFrequency:", [v5 frequency]);
                input2 = [v21 input];
                [input2 setResolvedResourceKey:v25];
              }
            }

            v18 = [readers countByEnumeratingWithState:&v37 objects:v53 count:16];
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

+ (id)deadlineThresholdsForCriticality:(unint64_t)criticality
{
  v19[2] = *MEMORY[0x277D85DE8];
  v4 = +[PLSSettings currentSettings];
  iterationsToTrackForDeadlineMisses = [v4 iterationsToTrackForDeadlineMisses];

  if (criticality > 1)
  {
    if (criticality == 2)
    {
      v6 = +[PLSSettings currentSettings];
      bestEffortDeadlineThreshold = [v6 bestEffortDeadlineThreshold];
      goto LABEL_10;
    }

    if (criticality == 3)
    {
      v6 = +[PLSSettings currentSettings];
      bestEffortDeadlineThreshold = [v6 applicationSupportDeadlineThreshold];
      goto LABEL_10;
    }

LABEL_13:
    v14 = [PSGraphCompiler deadlineThresholdsForCriticality:?];
    return [(PSGraphCompiler *)v14 systemGraphResourceRequest:v15, v16];
  }

  if (!criticality)
  {
    v6 = +[PLSSettings currentSettings];
    bestEffortDeadlineThreshold = [v6 realTimeDeadlineThreshold];
    goto LABEL_10;
  }

  if (criticality != 1)
  {
    goto LABEL_13;
  }

  v6 = +[PLSSettings currentSettings];
  bestEffortDeadlineThreshold = [v6 criticalDeadlineThreshold];
LABEL_10:
  v8 = bestEffortDeadlineThreshold;

  v18[0] = @"deadline-miss-threshold";
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
  v18[1] = @"iterations-to-track";
  v19[0] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:iterationsToTrackForDeadlineMisses];
  v19[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)systemGraphResourceRequest:(id)request
{
  v55 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  preTransitionGraphs = [requestCopy preTransitionGraphs];
  postTransitionGraphs = [requestCopy postTransitionGraphs];
  v9 = [(PSGraphCompiler *)self getAddedInputsWithOldGraphs:preTransitionGraphs withNewGraphs:postTransitionGraphs];

  postTransitionGraphs2 = [requestCopy postTransitionGraphs];
  v11 = [(PSGraphCompiler *)self getAllLocallyProducedOutputsForGraphs:postTransitionGraphs2];

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

  preTransitionGraphs2 = [requestCopy preTransitionGraphs];
  postTransitionGraphs3 = [requestCopy postTransitionGraphs];
  v24 = [(PSGraphCompiler *)self getRemovedInputsWithOldGraphs:preTransitionGraphs2 withNewGraphs:postTransitionGraphs3];

  v44 = requestCopy;
  preTransitionGraphs3 = [requestCopy preTransitionGraphs];
  v26 = [(PSGraphCompiler *)self getAllLocallyProducedOutputsForGraphs:preTransitionGraphs3];

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

- (id)transitionAddedResources:(id)resources
{
  v8 = 0;
  v4 = [(PSGraphCompiler *)self transition:resources addedResources:&v8 removedResources:0];
  v5 = v8;
  v6 = 0;
  if (v4)
  {
    v6 = [(PSGraphCompiler *)self getResourceKeys:v5];
  }

  return v6;
}

- (BOOL)transition:(id)transition addedResources:(id *)resources removedResources:(id *)removedResources
{
  removedResourcesCopy = removedResources;
  v35 = *MEMORY[0x277D85DE8];
  transitionCopy = transition;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  addedGraphs = [transitionCopy addedGraphs];
  v9 = [addedGraphs countByEnumeratingWithState:&v30 objects:v34 count:16];
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
          objc_enumerationMutation(addedGraphs);
        }

        [*(*(&v30 + 1) + 8 * i) setCurrentSystemStride:{0, removedResourcesCopy}];
      }

      v10 = [addedGraphs countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v10);
  }

  addedGraphs2 = [transitionCopy addedGraphs];
  v14 = [(PSGraphCompiler *)self getAllStridedInputsForGraphs:addedGraphs2];

  removedGraphs = [transitionCopy removedGraphs];
  v16 = [(PSGraphCompiler *)self getAllStridedInputsForGraphs:removedGraphs];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__PSGraphCompiler_transition_addedResources_removedResources___block_invoke;
  aBlock[3] = &unk_279A48358;
  aBlock[4] = self;
  v17 = _Block_copy(aBlock);
  v18 = [v14 copy];
  postTransitionGraphs = [transitionCopy postTransitionGraphs];
  v20 = [(PSGraphCompiler *)self getAllLocallyProducedOutputsForGraphs:postTransitionGraphs];

  [v18 filterOutResourceKeys:v20];
  [v18 filterWithBlock:v17];
  v21 = [v16 copy];
  preTransitionGraphs = [transitionCopy preTransitionGraphs];
  v23 = [(PSGraphCompiler *)self getAllLocallyProducedOutputsForGraphs:preTransitionGraphs];

  [v21 filterOutResourceKeys:v23];
  [v21 filterWithBlock:v17];
  if (resources)
  {
    v24 = v18;
    *resources = v18;
  }

  if (removedResourcesCopy)
  {
    v25 = v21;
    *removedResourcesCopy = v21;
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

- (id)systemGraphResourceWithStridesRequest:(id)request
{
  v15 = 0;
  v16 = 0;
  v4 = [(PSGraphCompiler *)self transition:request addedResources:&v16 removedResources:&v15];
  v5 = v16;
  v6 = v15;
  v7 = 0;
  if (v4)
  {
    v7 = objc_alloc_init(MEMORY[0x277D3E820]);
    v8 = [(PSGraphCompiler *)self matchInputsToSystemGraphRequest:v5];
    flattenedRequestArray = [v8 flattenedRequestArray];
    [v7 setResourcesWantedWithStrides:flattenedRequestArray];

    v10 = [(PSGraphCompiler *)self getResourceKeys:v5];
    [v7 setResourcesWanted:v10];

    v11 = [(PSGraphCompiler *)self matchInputsToSystemGraphRequest:v6];
    flattenedRequestArray2 = [v11 flattenedRequestArray];
    [v7 setResourcesNoLongerWantedWithStrides:flattenedRequestArray2];

    v13 = [(PSGraphCompiler *)self getResourceKeys:v6];
    [v7 setResourcesNoLongerWanted:v13];
  }

  return v7;
}

- (id)matchInputsToSystemGraphRequest:(id)request
{
  v77 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = objc_alloc_init(MEMORY[0x277CCA940]);
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v6 = requestCopy;
  v57 = [v6 countByEnumeratingWithState:&v64 objects:v76 count:16];
  if (!v57)
  {
    goto LABEL_39;
  }

  v7 = *v65;
  v56 = *v65;
  selfCopy = self;
  while (2)
  {
    for (i = 0; i != v57; ++i)
    {
      if (*v65 != v7)
      {
        objc_enumerationMutation(v6);
      }

      v9 = *(*(&v64 + 1) + 8 * i);
      context = [(PSGraphCompiler *)self context];
      resourceKey = [v9 resourceKey];
      v12 = [context resourceStreamForKey:resourceKey];

      if (!v12)
      {
        v43 = __PLSLogSharedInstance();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          resourceKey2 = [v9 resourceKey];
          uTF8String = [resourceKey2 UTF8String];
          *buf = 136315138;
          v69 = uTF8String;
          _os_log_impl(&dword_25EA3A000, v43, OS_LOG_TYPE_ERROR, "Stream %s should already be in the context!", buf, 0xCu);
        }

        goto LABEL_39;
      }

      supportedStrides = [v12 supportedStrides];
      allKeys = [supportedStrides allKeys];

      v58 = allKeys;
      v59 = v12;
      if ([allKeys count])
      {
        if ([v9 inputType])
        {
          [v9 resourceKey];
          v16 = v15 = self;
          defaultStride = [v12 defaultStride];
          inputType = [v9 inputType];
          [v9 graph];
          v20 = v19 = i;
          v21 = [PSResourceRequest requestWithKey:v16 stride:defaultStride inputType:inputType graph:v20];

          i = v19;
          resourceKey5 = v16;
          self = v15;
LABEL_10:
          v7 = v56;
          goto LABEL_25;
        }

        resourceKey5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:0];
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v74 = resourceKey5;
        v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v74 count:1];
        defaultStride = [allKeys sortedArrayUsingDescriptors:v26];

        v21 = [defaultStride countByEnumeratingWithState:&v60 objects:v75 count:16];
        if (!v21)
        {
          goto LABEL_10;
        }

        v54 = resourceKey5;
        v55 = i;
        v27 = *v61;
        while (2)
        {
          for (j = 0; j != v21; j = j + 1)
          {
            if (*v61 != v27)
            {
              objc_enumerationMutation(defaultStride);
            }

            v29 = *(*(&v60 + 1) + 8 * j);
            stride = [v9 stride];
            unsignedIntValue = [stride unsignedIntValue];
            v32 = unsignedIntValue % [v29 unsignedIntValue];

            if (!v32)
            {
              resourceKey3 = [v9 resourceKey];
              inputType2 = [v9 inputType];
              graph = [v9 graph];
              v21 = [PSResourceRequest requestWithKey:resourceKey3 stride:v29 inputType:inputType2 graph:graph];

              goto LABEL_24;
            }
          }

          v21 = [defaultStride countByEnumeratingWithState:&v60 objects:v75 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }

LABEL_24:
        self = selfCopy;
        i = v55;
        v7 = v56;
        resourceKey5 = v54;
      }

      else
      {
        v23 = __PLSLogSharedInstance();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          resourceKey4 = [v9 resourceKey];
          *buf = 138477827;
          v69 = resourceKey4;
          _os_log_impl(&dword_25EA3A000, v23, OS_LOG_TYPE_DEBUG, "Stream %{private}@ requested but doesn't support strides - assuming this is a legacy stream request...", buf, 0xCu);
        }

        resourceKey5 = [v9 resourceKey];
        inputType3 = [v9 inputType];
        defaultStride = [v9 graph];
        v21 = [PSResourceRequest requestWithKey:resourceKey5 stride:0 inputType:inputType3 graph:defaultStride];
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
          unsignedIntValue2 = [v41 unsignedIntValue];
          *buf = 138412546;
          v69 = v39;
          v70 = 1024;
          LODWORD(v71) = unsignedIntValue2;
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

  totalCount = [v5 totalCount];
  if (totalCount == [v6 totalCount])
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

- (id)matchInputsToGSTStrides:(id)strides
{
  v61 = *MEMORY[0x277D85DE8];
  stridesCopy = strides;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = [stridesCopy objectEnumerator];
  v40 = [obj countByEnumeratingWithState:&v50 objects:v60 count:16];
  if (v40)
  {
    v41 = *v51;
    v38 = stridesCopy;
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

      context = [(PSGraphCompiler *)self context];
      resourceKey = [v6 resourceKey];
      v9 = [context resourceStreamForKey:resourceKey];

      if (!v9)
      {
        break;
      }

      supportedStrides = [v9 supportedStrides];
      allKeys = [supportedStrides allKeys];

      if (![allKeys count])
      {
        v34 = __PLSLogSharedInstance();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          resourceKey2 = [v6 resourceKey];
          *buf = 138412290;
          v55 = resourceKey2;
          _os_log_impl(&dword_25EA3A000, v34, OS_LOG_TYPE_DEBUG, "Attempting to match strided GST to stream %@ without supported strides, falling back to legacy GST", buf, 0xCu);
        }

LABEL_31:
        stridesCopy = v38;

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
      v44 = allKeys;
      v14 = [allKeys sortedArrayUsingDescriptors:v13];

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
          stride = [v6 stride];
          unsignedIntValue = [stride unsignedIntValue];
          *buf = 138412546;
          v55 = v29;
          v56 = 1024;
          v57 = unsignedIntValue;
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
        stride2 = [v6 stride];
        unsignedIntValue2 = [stride2 unsignedIntValue];
        v22 = unsignedIntValue2 % [v19 unsignedIntValue];

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

      resourceKey3 = [v6 resourceKey];
      inputType = [v6 inputType];
      graph = [v6 graph];
      v26 = [PSResourceRequest requestWithKey:resourceKey3 stride:v19 inputType:inputType graph:graph];

      if (!v26)
      {
        goto LABEL_23;
      }

      [v4 addObject:v26];

      if (++v5 == v40)
      {
        stridesCopy = v38;
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
      resourceKey4 = [v6 resourceKey];
      uTF8String = [resourceKey4 UTF8String];
      *buf = 136315138;
      v55 = uTF8String;
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

- (id)getResourceKeys:(id)keys
{
  v18 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  v4 = [MEMORY[0x277CBEB58] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  objectEnumerator = [keysCopy objectEnumerator];
  v6 = [objectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        resourceKey = [*(*(&v13 + 1) + 8 * i) resourceKey];
        [v4 addObject:resourceKey];
      }

      v7 = [objectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)notifySystemGraphTransitionCompleted:(id)completed
{
  v171 = *MEMORY[0x277D85DE8];
  completedCopy = completed;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v83 = completedCopy;
  [completedCopy addedGraphs];
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
        tasks = [v8 tasks];
        v102 = [tasks countByEnumeratingWithState:&v151 objects:v169 count:16];
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
                objc_enumerationMutation(tasks);
              }

              v106 = v9;
              v10 = *(*(&v151 + 1) + 8 * v9);
              v147 = 0u;
              v148 = 0u;
              v149 = 0u;
              v150 = 0u;
              outputs = [v10 outputs];
              v12 = [outputs countByEnumeratingWithState:&v147 objects:v168 count:16];
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
                      objc_enumerationMutation(outputs);
                    }

                    v16 = *(*(&v147 + 1) + 8 * i);
                    context = self->_context;
                    resourceKey = [v16 resourceKey];
                    v19 = [(PSContext *)context resourceStreamForKey:resourceKey];

                    if ([v19 options] == 2)
                    {
                      resourceKey2 = [v16 resourceKey];
                      [v5 addObject:resourceKey2];
                    }
                  }

                  v13 = [outputs countByEnumeratingWithState:&v147 objects:v168 count:16];
                }

                while (v13);
              }

              v9 = v106 + 1;
            }

            while (v106 + 1 != v102);
            v102 = [tasks countByEnumeratingWithState:&v151 objects:v169 count:16];
          }

          while (v102);
        }

        v145 = 0u;
        v146 = 0u;
        v143 = 0u;
        v144 = 0u;
        sourceTasks = [v92 sourceTasks];
        v103 = [sourceTasks countByEnumeratingWithState:&v143 objects:v167 count:16];
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
                objc_enumerationMutation(sourceTasks);
              }

              v107 = v21;
              v22 = *(*(&v143 + 1) + 8 * v21);
              v139 = 0u;
              v140 = 0u;
              v141 = 0u;
              v142 = 0u;
              outputs2 = [v22 outputs];
              v24 = [outputs2 countByEnumeratingWithState:&v139 objects:v166 count:16];
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
                      objc_enumerationMutation(outputs2);
                    }

                    v28 = *(*(&v139 + 1) + 8 * j);
                    v29 = self->_context;
                    resourceKey3 = [v28 resourceKey];
                    v31 = [(PSContext *)v29 resourceStreamForKey:resourceKey3];

                    if ([v31 options] == 2)
                    {
                      resourceKey4 = [v28 resourceKey];
                      [v5 addObject:resourceKey4];
                    }
                  }

                  v25 = [outputs2 countByEnumeratingWithState:&v139 objects:v166 count:16];
                }

                while (v25);
              }

              v21 = v107 + 1;
            }

            while (v107 + 1 != v103);
            v103 = [sourceTasks countByEnumeratingWithState:&v143 objects:v167 count:16];
          }

          while (v103);
        }

        v137 = 0u;
        v138 = 0u;
        v135 = 0u;
        v136 = 0u;
        writers = [v92 writers];
        v33 = [writers countByEnumeratingWithState:&v135 objects:v165 count:16];
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
                objc_enumerationMutation(writers);
              }

              output = [*(*(&v135 + 1) + 8 * k) output];
              v38 = self->_context;
              resourceKey5 = [output resourceKey];
              v40 = [(PSContext *)v38 resourceStreamForKey:resourceKey5];

              if ([v40 options] == 2)
              {
                resourceKey6 = [output resourceKey];
                [v5 addObject:resourceKey6];
              }
            }

            v34 = [writers countByEnumeratingWithState:&v135 objects:v165 count:16];
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
        tasks2 = [v43 tasks];
        v104 = [tasks2 countByEnumeratingWithState:&v127 objects:v163 count:16];
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
                objc_enumerationMutation(tasks2);
              }

              v109 = v44;
              v45 = *(*(&v127 + 1) + 8 * v44);
              v123 = 0u;
              v124 = 0u;
              v125 = 0u;
              v126 = 0u;
              outputs3 = [v45 outputs];
              v47 = [outputs3 countByEnumeratingWithState:&v123 objects:v162 count:16];
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
                      objc_enumerationMutation(outputs3);
                    }

                    v51 = *(*(&v123 + 1) + 8 * m);
                    v52 = self->_context;
                    resourceKey7 = [v51 resourceKey];
                    v54 = [(PSContext *)v52 resourceStreamForKey:resourceKey7];

                    if ([v54 options] == 2)
                    {
                      resourceKey8 = [v51 resourceKey];
                      [v6 addObject:resourceKey8];
                    }
                  }

                  v48 = [outputs3 countByEnumeratingWithState:&v123 objects:v162 count:16];
                }

                while (v48);
              }

              v44 = v109 + 1;
            }

            while (v109 + 1 != v104);
            v104 = [tasks2 countByEnumeratingWithState:&v127 objects:v163 count:16];
          }

          while (v104);
        }

        v121 = 0u;
        v122 = 0u;
        v119 = 0u;
        v120 = 0u;
        sourceTasks2 = [v93 sourceTasks];
        v105 = [sourceTasks2 countByEnumeratingWithState:&v119 objects:v161 count:16];
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
                objc_enumerationMutation(sourceTasks2);
              }

              v110 = v56;
              v57 = *(*(&v119 + 1) + 8 * v56);
              v115 = 0u;
              v116 = 0u;
              v117 = 0u;
              v118 = 0u;
              outputs4 = [v57 outputs];
              v59 = [outputs4 countByEnumeratingWithState:&v115 objects:v160 count:16];
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
                      objc_enumerationMutation(outputs4);
                    }

                    v63 = *(*(&v115 + 1) + 8 * n);
                    v64 = self->_context;
                    resourceKey9 = [v63 resourceKey];
                    v66 = [(PSContext *)v64 resourceStreamForKey:resourceKey9];

                    if ([v66 options] == 2)
                    {
                      resourceKey10 = [v63 resourceKey];
                      [v6 addObject:resourceKey10];
                    }
                  }

                  v60 = [outputs4 countByEnumeratingWithState:&v115 objects:v160 count:16];
                }

                while (v60);
              }

              v56 = v110 + 1;
            }

            while (v110 + 1 != v105);
            v105 = [sourceTasks2 countByEnumeratingWithState:&v119 objects:v161 count:16];
          }

          while (v105);
        }

        v113 = 0u;
        v114 = 0u;
        v111 = 0u;
        v112 = 0u;
        writers2 = [v93 writers];
        v69 = [writers2 countByEnumeratingWithState:&v111 objects:v159 count:16];
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
                objc_enumerationMutation(writers2);
              }

              output2 = [*(*(&v111 + 1) + 8 * ii) output];
              v74 = self->_context;
              resourceKey11 = [output2 resourceKey];
              v76 = [(PSContext *)v74 resourceStreamForKey:resourceKey11];

              if ([v76 options] == 2)
              {
                resourceKey12 = [output2 resourceKey];
                [v6 addObject:resourceKey12];
              }
            }

            v70 = [writers2 countByEnumeratingWithState:&v111 objects:v159 count:16];
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
  shouldNotifySystemGraphOnTransitionComplete = [v78 shouldNotifySystemGraphOnTransitionComplete];

  if (shouldNotifySystemGraphOnTransitionComplete && [v5 count])
  {
    transitionManager = [(PSGraphCompiler *)self transitionManager];
    executionSession = [transitionManager executionSession];
    [executionSession requestedResourcesAreBeingProduced:v5];
  }

  v82 = *MEMORY[0x277D85DE8];
}

- (id)getWriterResourcesForGraphs:(id)graphs
{
  v30 = *MEMORY[0x277D85DE8];
  graphsCopy = graphs;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = graphsCopy;
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
        writers = [v9 writers];
        v11 = [writers countByEnumeratingWithState:&v20 objects:v28 count:16];
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
                objc_enumerationMutation(writers);
              }

              output = [*(*(&v20 + 1) + 8 * j) output];
              resourceKey = [output resourceKey];
              [v4 addObject:resourceKey];
            }

            v12 = [writers countByEnumeratingWithState:&v20 objects:v28 count:16];
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

- (id)getReaderResourcesForGraphs:(id)graphs
{
  v37 = *MEMORY[0x277D85DE8];
  graphsCopy = graphs;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = graphsCopy;
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
        readers = [v7 readers];
        v9 = [readers countByEnumeratingWithState:&v27 objects:v35 count:16];
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
                objc_enumerationMutation(readers);
              }

              v13 = *(*(&v27 + 1) + 8 * i);
              input = [v13 input];
              resolvedResourceKey = [input resolvedResourceKey];
              [v5 addObject:resolvedResourceKey];

              device = self->_device;
              input2 = [v13 input];
              resolvedResourceKey2 = [input2 resolvedResourceKey];
              v19 = [(PLSDevice *)device propertiesForKey:resolvedResourceKey2];

              syncedKey = [v19 syncedKey];
              if (syncedKey)
              {
                [v5 addObject:syncedKey];
              }
            }

            v10 = [readers countByEnumeratingWithState:&v27 objects:v35 count:16];
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

- (id)getSourceTaskOutputResourcesForGraphs:(id)graphs
{
  v40 = *MEMORY[0x277D85DE8];
  graphsCopy = graphs;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = graphsCopy;
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
        sourceTasks = [v6 sourceTasks];
        v8 = [sourceTasks countByEnumeratingWithState:&v29 objects:v38 count:16];
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
                objc_enumerationMutation(sourceTasks);
              }

              v12 = *(*(&v29 + 1) + 8 * i);
              v25 = 0u;
              v26 = 0u;
              v27 = 0u;
              v28 = 0u;
              outputs = [v12 outputs];
              v14 = [outputs countByEnumeratingWithState:&v25 objects:v37 count:16];
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
                      objc_enumerationMutation(outputs);
                    }

                    resourceKey = [*(*(&v25 + 1) + 8 * j) resourceKey];
                    [v4 addObject:resourceKey];
                  }

                  v15 = [outputs countByEnumeratingWithState:&v25 objects:v37 count:16];
                }

                while (v15);
              }
            }

            v9 = [sourceTasks countByEnumeratingWithState:&v29 objects:v38 count:16];
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

- (void)createWritersForTransitionBlock:(id)block
{
  v292 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v4 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v280) = 0;
    _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_DEFAULT, "Creating PSWriters.", &v280, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  executionSession = [WeakRetained executionSession];
  v239 = executionSession[1];

  v7 = objc_loadWeakRetained(&self->_transitionManager);
  v7[9] = 0;

  v278 = 0u;
  v279 = 0u;
  v276 = 0u;
  v277 = 0u;
  addedGraphs = [blockCopy addedGraphs];
  v233 = [addedGraphs countByEnumeratingWithState:&v276 objects:v291 count:16];
  if (v233)
  {
    v232 = *v277;
    *&v8 = 136315138;
    v244 = v8;
    selfCopy = self;
    do
    {
      v9 = 0;
      do
      {
        if (*v277 != v232)
        {
          v10 = v9;
          objc_enumerationMutation(addedGraphs);
          v9 = v10;
        }

        v234 = v9;
        v11 = *(*(&v276 + 1) + 8 * v9);
        v272 = 0u;
        v273 = 0u;
        v274 = 0u;
        v275 = 0u;
        v255 = v11;
        writers = [v11 writers];
        v256 = [writers countByEnumeratingWithState:&v272 objects:v290 count:16];
        if (v256)
        {
          v253 = *v273;
          do
          {
            for (i = 0; i != v256; i = v179 + 1)
            {
              if (*v273 != v253)
              {
                objc_enumerationMutation(writers);
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
                removedGraphs = [blockCopy removedGraphs];
                v17 = [removedGraphs countByEnumeratingWithState:&v268 objects:v289 count:16];
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
                    objc_enumerationMutation(removedGraphs);
                  }

                  v21 = *(*(&v268 + 1) + 8 * v20);
                  v264 = 0u;
                  v265 = 0u;
                  v266 = 0u;
                  v267 = 0u;
                  writers2 = [v21 writers];
                  v23 = [writers2 countByEnumeratingWithState:&v264 objects:v288 count:16];
                  if (v23)
                  {
                    break;
                  }

LABEL_27:

                  if (++v20 == v18)
                  {
                    v18 = [removedGraphs countByEnumeratingWithState:&v268 objects:v289 count:16];
                    if (!v18)
                    {
LABEL_117:

                      v261 = 0;
                      name = [v13 name];
                      asprintf(&v261, "Writer block already created for writer with name %s", [name UTF8String]);

                      v195 = __PLSLogSharedInstance();
                      if (os_log_type_enabled(v195, OS_LOG_TYPE_FAULT))
                      {
                        name2 = [v13 name];
                        uTF8String = [name2 UTF8String];
                        v280 = 136315650;
                        v281 = "[PSGraphCompiler createWritersForTransitionBlock:]";
                        v282 = 1024;
                        v283 = 1144;
                        v284 = 2080;
                        v285[0] = uTF8String;
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
                    objc_enumerationMutation(writers2);
                  }

                  if (v13 == *(*(&v264 + 1) + 8 * v26))
                  {
                    break;
                  }

                  if (v24 == ++v26)
                  {
                    v24 = [writers2 countByEnumeratingWithState:&v264 objects:v288 count:16];
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
                  name3 = [v13 name];
                  uTF8String2 = [name3 UTF8String];
                  v280 = v244;
                  v281 = uTF8String2;
                  _os_log_impl(&dword_25EA3A000, v27, OS_LOG_TYPE_DEFAULT, "To-be-removed PSWriter already found for %s. Continuing without creating a new writer.", &v280, 0xCu);
                }

                self = selfCopy;
                goto LABEL_107;
              }

              v30 = __PLSLogSharedInstance();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
              {
                output = [v13 output];
                resourceKey = [output resourceKey];
                uTF8String3 = [resourceKey UTF8String];
                v280 = v244;
                v281 = uTF8String3;
                _os_log_impl(&dword_25EA3A000, v30, OS_LOG_TYPE_DEBUG, "Creating PSWriter (%s)", &v280, 0xCu);
              }

              v34 = objc_loadWeakRetained(&self->_transitionMonitor);
              [v34 lock];

              v35 = MEMORY[0x277CCACA8];
              output2 = [v13 output];
              resourceKey2 = [output2 resourceKey];
              v38 = [v35 stringWithFormat:@"%@ (PSWriter)", resourceKey2];
              v39 = objc_loadWeakRetained(&self->_transitionMonitor);
              [v39 setTransitionStateBufferInitCurResource:v38];

              v40 = objc_loadWeakRetained(&self->_transitionMonitor);
              [v40 unlock];

              v41 = ps_prm_opts_create();
              output3 = [v13 output];
              resourceKey3 = [output3 resourceKey];

              v44 = [(PSContext *)self->_context resourceStreamForKey:resourceKey3];
              resourceClass = [v44 resourceClass];
              v46 = 9;
              v47 = 1;
              v252 = v41;
              if (resourceClass <= 0xB)
              {
                v48 = 1;
                v49 = 1;
                if (((1 << resourceClass) & 0xB80) == 0)
                {
                  goto LABEL_53;
                }

                provider = [v44 provider];
                v46 = provider;
                if (provider <= 8)
                {
                  if (((1 << provider) & 0x49) != 0)
                  {
                    v51 = __PLSLogSharedInstance();
                    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
                    {
                      name4 = [v13 name];
                      uTF8String4 = [name4 UTF8String];
                      v280 = v244;
                      v281 = uTF8String4;
                      v54 = v51;
                      v55 = "PSWriter (%s) Camera Provider Type: ClosedLoop";
LABEL_44:
                      _os_log_impl(&dword_25EA3A000, v54, OS_LOG_TYPE_DEFAULT, v55, &v280, 0xCu);
                    }
                  }

                  else
                  {
                    if (((1 << provider) & 0x92) == 0)
                    {
                      v57 = __PLSLogSharedInstance();
                      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                      {
                        name5 = [v13 name];
                        uTF8String5 = [name5 UTF8String];
                        v280 = v244;
                        v281 = uTF8String5;
                        _os_log_impl(&dword_25EA3A000, v57, OS_LOG_TYPE_DEFAULT, "PSWriter (%s) Camera Provider Type: Superframe", &v280, 0xCu);
                      }

                      v60 = +[PLSSettings currentSettings];
                      enableHybridLoop = [v60 enableHybridLoop];

                      if (enableHybridLoop)
                      {
                        v62 = +[PSExecutionSessionWorkarounds sharedInstance];
                        v63 = [v62 shouldUsePRMCameraForSuperframe:resourceKey3];

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
                      name4 = [v13 name];
                      uTF8String6 = [name4 UTF8String];
                      v280 = v244;
                      v281 = uTF8String6;
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
              LODWORD(bytesPerRow) = v48;
              LODWORD(context) = v47;
              LODWORD(elementWidth) = v46;
              v246 = resourceKey3;
              v251 = v44;
              v261 = 0;
              unsignedLongLongValue = 0;
              v263 = 0;
              v254 = objc_loadWeakRetained(&self->_transitionManager);
              executionSession2 = [v254 executionSession];
              caNameHash = [executionSession2 caNameHash];
              LODWORD(v261) = [caNameHash unsignedIntValue];
              v64 = v255;
              caNameHash2 = [v255 caNameHash];
              HIDWORD(v261) = [caNameHash2 unsignedIntValue];
              systemPulseStride = [v64 systemPulseStride];
              unsignedLongLongValue = [systemPulseStride unsignedLongLongValue];
              v65 = +[PSCoreAnalyticsIDManager sharedInstance];
              output4 = [v13 output];
              resourceKey4 = [output4 resourceKey];
              caName = [v64 caName];
              systemPulseStride2 = [v64 systemPulseStride];
              v70 = objc_loadWeakRetained(&self->_transitionManager);
              executionSession3 = [v70 executionSession];
              caName2 = [executionSession3 caName];
              LODWORD(v263) = [v65 opaqueIDForResource:resourceKey4 graph:caName stride:systemPulseStride2 session:caName2];

              if ((context & 1) == 0 && (bytesPerRow & 1) == 0)
              {
                v73 = v252;
                v74 = elementWidth;
                [PSGraphCompiler populateOptsMetadataType:v252 forProviderType:elementWidth];
                resource_metadata_type = ps_prm_opts_get_resource_metadata_type(v73);
                v76 = v251;
                if (resource_metadata_type != 1)
                {
                  goto LABEL_66;
                }

                if ([v251 resourceClass] == 11)
                {
                  pearlBufferPools = [v13 pearlBufferPools];
                  v78 = [pearlBufferPools objectAtIndexedSubscript:0];
                  v79 = [v78 count];
                }

                else
                {
                  pearlBufferPools = [v13 imageBufferPool];
                  v79 = [pearlBufferPools count];
                }

                metadataBufferPool = [v13 metadataBufferPool];

                if (!metadataBufferPool)
                {
                  [PSGraphCompiler createWritersForTransitionBlock:?];
                  goto LABEL_140;
                }

                metadataBufferPool2 = [v13 metadataBufferPool];
                v101 = [metadataBufferPool2 count];

                if (v101 != v79)
                {
                  v260 = 0;
                  metadataBufferPool3 = [v13 metadataBufferPool];
                  asprintf(&v260, "The writer count %lu does not match the image buffer count %llu", [metadataBufferPool3 count], v79);

                  v215 = __PLSLogSharedInstance();
                  if (os_log_type_enabled(v215, OS_LOG_TYPE_FAULT))
                  {
                    metadataBufferPool4 = [v13 metadataBufferPool];
                    v217 = [metadataBufferPool4 count];
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
                LODWORD(executionSession2) = [PSRCConstants getCameraDepthForKey:v102];

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
                v108 = objc_loadWeakRetained(&selfCopy->_transitionManager);
                executionSession4 = [v108 executionSession];
                ps_prm_opts_set_resource_avail_context(v73, [executionSession4 gsm]);

                ps_prm_opts_set_provider_type(v73, v74);
                ps_prm_opts_set_is_camera_stream(v73, 1);
                ps_prm_opts_set_use_prm_camera_reader(v73, 0);
                resourceClass2 = [v76 resourceClass];
                resourceClass3 = [v76 resourceClass];
                if ((resourceClass3 - 7) >= 3)
                {
                  v130 = executionSession2;
                  if (resourceClass3 == 11)
                  {
                    pearlBufferPools2 = [v13 pearlBufferPools];
                    v132 = [pearlBufferPools2 count];

                    if (v132 == 4)
                    {
                      pearlBufferPools3 = [v13 pearlBufferPools];
                      v134 = [pearlBufferPools3 objectAtIndexedSubscript:0];
                      context = [v134 count];

                      v135 = 0;
                      v136 = v106 + v104 + v130 + [v76 retainedISPRCCount];
                      while (1)
                      {
                        pearlBufferPools4 = [v13 pearlBufferPools];
                        v138 = [pearlBufferPools4 objectAtIndexedSubscript:v135];
                        v139 = [v138 count];

                        if (v139 != v136)
                        {
                          break;
                        }

                        if (++v135 == 4)
                        {
                          caNameHash2 = &v230;
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
                          caNameHash = &v230 - v141;
                          bzero(&v230 - v141, v142);
                          if (v140)
                          {
                            v146 = 0;
                            v147 = 1;
                            do
                            {
                              pearlBufferPools5 = [v13 pearlBufferPools];
                              v149 = [pearlBufferPools5 objectAtIndexedSubscript:0];
                              v150 = [v149 objectAtIndexedSubscript:v146];
                              *&v254[8 * v146] = v150;

                              pearlBufferPools6 = [v13 pearlBufferPools];
                              v152 = [pearlBufferPools6 objectAtIndexedSubscript:1];
                              v153 = [v152 objectAtIndexedSubscript:v146];
                              *&v143[8 * v146] = v153;

                              pearlBufferPools7 = [v13 pearlBufferPools];
                              v155 = [pearlBufferPools7 objectAtIndexedSubscript:2];
                              v156 = [v155 objectAtIndexedSubscript:v146];
                              *&v144[8 * v146] = v156;

                              pearlBufferPools8 = [v13 pearlBufferPools];
                              v158 = [pearlBufferPools8 objectAtIndexedSubscript:3];
                              v159 = [v158 objectAtIndexedSubscript:v146];
                              *&v145[8 * v146] = v159;

                              if (resource_metadata_type == 1)
                              {
                                metadataBufferPool5 = [v13 metadataBufferPool];
                                v161 = [metadataBufferPool5 objectAtIndexedSubscript:v146];
                                *&caNameHash[8 * v146] = v161;
                              }

                              v146 = v147;
                            }

                            while (context > v147++);
                          }

                          v76 = v251;
                          retainedISPRCCount = [v251 retainedISPRCCount];
                          v87 = v252;
                          ps_prm_opts_set_camera_pearlbuffer(v252, retainedISPRCCount, executionSession2, v254, v143, v144, v145, caNameHash, context);
                          v164 = [PSWriterBlock alloc];
                          self = selfCopy;
                          v92 = [(PSWriterBlock *)v164 initWithWriter:v13 graph:v255 withStream:v76 withWriterOptions:v87 withPRMManager:selfCopy->_prm_mgr withDevice:selfCopy->_device withResourceOptions:0 withCAWriterDimensions:&v261 withFrameHistoryClientHandle:v239];
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
                      uTF8String7 = [v181 UTF8String];
                      pearlBufferPools9 = [v13 pearlBufferPools];
                      v184 = [pearlBufferPools9 objectAtIndexedSubscript:v135];
                      asprintf(&v260, "Incorrect number of buffers provided for Pearl Bank %d for stream name: %s. Received: %lu expecting: %llu", v135, uTF8String7, [v184 count], v136);

                      v185 = __PLSLogSharedInstance();
                      if (os_log_type_enabled(v185, OS_LOG_TYPE_FAULT))
                      {
                        v186 = [v76 key];
                        uTF8String8 = [v186 UTF8String];
                        pearlBufferPools10 = [v13 pearlBufferPools];
                        v189 = [pearlBufferPools10 objectAtIndexedSubscript:v135];
                        v190 = [v189 count];
                        v280 = 136316418;
                        v281 = "[PSGraphCompiler createWritersForTransitionBlock:]";
                        v282 = 1024;
                        v283 = 1409;
                        v284 = 1024;
                        LODWORD(v285[0]) = v135;
                        WORD2(v285[0]) = 2080;
                        *(v285 + 6) = uTF8String8;
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
                  v112 = ((resourceClass2 - 9) & 0xFFFFFFFFFFFFFFFDLL) == 0;
                  imageBufferPool = [v13 imageBufferPool];
                  v114 = [imageBufferPool count];

                  retainedISPRCCount2 = [v76 retainedISPRCCount];
                  v116 = ((v106 + v104) << (2 * v112)) + executionSession2 + retainedISPRCCount2;
                  if (v116 != v114)
                  {
                    v260 = 0;
                    v209 = [v76 key];
                    asprintf(&v260, "Incorrect number of buffers provided for: %s. Received: %d expecting: %d", [v209 UTF8String], v114, v116);

                    v210 = __PLSLogSharedInstance();
                    if (os_log_type_enabled(v210, OS_LOG_TYPE_FAULT))
                    {
                      v211 = [v76 key];
                      uTF8String9 = [v211 UTF8String];
                      v280 = 136316162;
                      v281 = "[PSGraphCompiler createWritersForTransitionBlock:]";
                      v282 = 1024;
                      v283 = 1323;
                      v284 = 2080;
                      v285[0] = uTF8String9;
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
                      imageBufferPool2 = [v13 imageBufferPool];
                      v124 = [imageBufferPool2 objectAtIndexedSubscript:j];
                      *&v119[8 * j] = v124;

                      if (resource_metadata_type == 1)
                      {
                        metadataBufferPool6 = [v13 metadataBufferPool];
                        v126 = [metadataBufferPool6 objectAtIndexedSubscript:j];
                        *&v121[8 * j] = v126;
                      }
                    }
                  }

                  resourceClass4 = [v76 resourceClass];
                  if (resourceClass4 == 7)
                  {
                    [v76 provider];
                    if (ps_resource_stream_provider_is_superframe())
                    {
                      v167 = v76;
                      LODWORD(v254) = [v167 retainedISPRCCount];
                      caNameHash = [v167 width];
                      caNameHash2 = [v167 height];
                      bytesPerElement = [v167 bytesPerElement];
                      bytesPerRow = [v167 bytesPerRow];
                      elementWidth = [v167 elementWidth];
                      elementHeight = [v167 elementHeight];
                      pixelFormat = [v167 pixelFormat];
                      systemPulseStride = [v167 superframePlaneOffsets];
                      v241 = [systemPulseStride objectAtIndexedSubscript:0];
                      unsignedIntValue = [v241 unsignedIntValue];
                      superframePlaneBytesPerRow = [v167 superframePlaneBytesPerRow];
                      v169 = [superframePlaneBytesPerRow objectAtIndexedSubscript:0];
                      unsignedIntValue2 = [v169 unsignedIntValue];
                      height = [v167 height];

                      v172 = height * unsignedIntValue2;
                      v76 = v251;
                      v228 = bytesPerElement;
                      v129 = v252;
                      ps_prm_opts_set_camera_cvpixelbuffer_superframe(v252, v254, executionSession2, v119, v121, v114, caNameHash, caNameHash2, v228, bytesPerRow, elementWidth, elementHeight, pixelFormat, unsignedIntValue, v172);
                    }

                    else
                    {
                      retainedISPRCCount3 = [v76 retainedISPRCCount];
                      v129 = v252;
                      ps_prm_opts_set_camera_cvpixelbuffer(v252, retainedISPRCCount3, executionSession2, v119, v121, v114);
                    }

                    self = selfCopy;
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

                  self = selfCopy;
                  v27 = v246;
                  if (resourceClass4 == 8)
                  {
                    retainedISPRCCount4 = [v76 retainedISPRCCount];
                    v129 = v252;
                    ps_prm_opts_set_camera_cvdatabuffer(v252, retainedISPRCCount4, executionSession2, v119, v121, v114);
                    goto LABEL_102;
                  }

                  if (resourceClass4 == 9)
                  {
                    retainedISPRCCount5 = [v76 retainedISPRCCount];
                    v129 = v252;
                    ps_prm_opts_set_camera_jasperbuffer(v252, retainedISPRCCount5, executionSession2, v119, v121, v114);
                    goto LABEL_102;
                  }

LABEL_140:
                  [PSGraphCompiler createWritersForTransitionBlock:?];
LABEL_141:
                  v260 = 0;
                  v219 = [v76 key];
                  uTF8String10 = [v219 UTF8String];
                  pearlBufferPools11 = [v13 pearlBufferPools];
                  asprintf(&v260, "Incorrect number of buffer pools for Pearl for %s: Received: %d expecting: %d", uTF8String10, [pearlBufferPools11 count], 4);

                  v222 = __PLSLogSharedInstance();
                  if (os_log_type_enabled(v222, OS_LOG_TYPE_FAULT))
                  {
                    v223 = [v76 key];
                    uTF8String11 = [v223 UTF8String];
                    pearlBufferPools12 = [v13 pearlBufferPools];
                    v226 = [pearlBufferPools12 count];
                    v280 = 136316162;
                    v281 = "[PSGraphCompiler createWritersForTransitionBlock:]";
                    v282 = 1024;
                    v283 = 1397;
                    v284 = 2080;
                    v285[0] = uTF8String11;
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
                sourceTask = [v13 sourceTask];
                self = selfCopy;
                synchronizer = selfCopy->_synchronizer;
                v97 = objc_loadWeakRetained(&selfCopy->_transitionManager);
                v98 = [(PSSourceWriterBlock *)v94 initWithSourceTask:sourceTask synchronizer:synchronizer transitionManager:v97 frameStepping:[(PSGraphCompiler *)self deterministicReplay]];

                [(PSSourceWriterBlock *)v98 setupResultsWithContext:self->_context device:self->_device];
                v92 = [[PSWriterBlock alloc] initWithWriter:v13 withSourceBlock:v98 withPRMManager:self->_prm_mgr];

                v76 = v251;
                v87 = v252;
                goto LABEL_96;
              }

              output5 = [v13 output];
              capacity = [output5 capacity];
              v82 = selfCopy;
              context = selfCopy->_context;
              retainedBufferIndexers = selfCopy->_retainedBufferIndexers;
              v84 = objc_loadWeakRetained(&selfCopy->_transitionManager);
              executionSession5 = [v84 executionSession];
              v86 = [executionSession5 gsm];
              v229 = retainedBufferIndexers;
              v87 = v252;
              v27 = v246;
              v88 = capacity;
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
              context = [v13 context];
              if (ps_writer_state_update())
              {
                v260 = 0;
                name6 = [v13 name];
                uTF8String12 = [name6 UTF8String];
                v201 = (context + 80);
                v202 = atomic_load((context + 80));
                asprintf(&v260, "Unable to set writer (%s) state to _READY. Current state %d", uTF8String12, v202);

                v203 = __PLSLogSharedInstance();
                if (os_log_type_enabled(v203, OS_LOG_TYPE_FAULT))
                {
                  name7 = [v13 name];
                  uTF8String13 = [name7 UTF8String];
                  v206 = atomic_load(v201);
                  v280 = 136315906;
                  v281 = "[PSGraphCompiler createWritersForTransitionBlock:]";
                  v282 = 1024;
                  v283 = 1510;
                  v284 = 2080;
                  v285[0] = uTF8String13;
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

            v256 = [writers countByEnumeratingWithState:&v272 objects:v290 count:16];
          }

          while (v256);
        }

        v9 = v234 + 1;
      }

      while (v234 + 1 != v233);
      v233 = [addedGraphs countByEnumeratingWithState:&v276 objects:v291 count:16];
    }

    while (v233);
  }

  v180 = *MEMORY[0x277D85DE8];
}

- (void)createReadersForTransitionBlock:(id)block
{
  v140 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v4 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_DEFAULT, "Creating PSReaders.", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  executionSession = [WeakRetained executionSession];
  v101 = executionSession[1];

  v7 = objc_loadWeakRetained(&self->_transitionManager);
  v7[8] = 0;

  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  obj = [blockCopy addedGraphs];
  v98 = [obj countByEnumeratingWithState:&v126 objects:v139 count:16];
  if (v98)
  {
    v99 = *v127;
    selfCopy = self;
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
        readers = [v9 readers];
        v108 = [readers countByEnumeratingWithState:&v122 objects:v138 count:16];
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
                objc_enumerationMutation(readers);
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
                removedGraphs = [blockCopy removedGraphs];
                v15 = [removedGraphs countByEnumeratingWithState:&v118 objects:v137 count:16];
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
                    objc_enumerationMutation(removedGraphs);
                  }

                  v19 = *(*(&v118 + 1) + 8 * v18);
                  v114 = 0u;
                  v115 = 0u;
                  v116 = 0u;
                  v117 = 0u;
                  readers2 = [v19 readers];
                  v21 = [readers2 countByEnumeratingWithState:&v114 objects:v136 count:16];
                  if (v21)
                  {
                    break;
                  }

LABEL_27:

                  if (++v18 == v16)
                  {
                    v16 = [removedGraphs countByEnumeratingWithState:&v118 objects:v137 count:16];
                    if (!v16)
                    {
LABEL_49:

                      v111[0] = 0;
                      name = [v11 name];
                      asprintf(v111, "Reader block already created for reader with name %s", [name UTF8String]);

                      v80 = __PLSLogSharedInstance();
                      if (os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
                      {
                        name2 = [v11 name];
                        uTF8String = [name2 UTF8String];
                        *buf = 136315650;
                        v131 = "[PSGraphCompiler createReadersForTransitionBlock:]";
                        v132 = 1024;
                        *v133 = 1553;
                        *&v133[4] = 2080;
                        *&v133[6] = uTF8String;
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
                    objc_enumerationMutation(readers2);
                  }

                  if (v11 == *(*(&v114 + 1) + 8 * v24))
                  {
                    break;
                  }

                  if (v22 == ++v24)
                  {
                    v22 = [readers2 countByEnumeratingWithState:&v114 objects:v136 count:16];
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
                  name3 = [v11 name];
                  uTF8String2 = [name3 UTF8String];
                  *buf = 136315138;
                  v131 = uTF8String2;
                  _os_log_impl(&dword_25EA3A000, v25, OS_LOG_TYPE_DEFAULT, "To-be-removed PSReader already found for %s. Continuing without creating a new reader.", buf, 0xCu);
                }

                self = selfCopy;
              }

              else
              {
                v28 = __PLSLogSharedInstance();
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                {
                  name4 = [v11 name];
                  uTF8String3 = [name4 UTF8String];
                  input = [v11 input];
                  resourceKey = [input resourceKey];
                  uTF8String4 = [resourceKey UTF8String];
                  *buf = 136315394;
                  v131 = uTF8String3;
                  v132 = 2080;
                  *v133 = uTF8String4;
                  _os_log_impl(&dword_25EA3A000, v28, OS_LOG_TYPE_DEFAULT, "Creating PSReader (%s) for resource key %s.", buf, 0x16u);
                }

                v34 = objc_loadWeakRetained(&self->_transitionMonitor);
                [v34 lock];

                v35 = MEMORY[0x277CCACA8];
                input2 = [v11 input];
                resourceKey2 = [input2 resourceKey];
                v38 = [v35 stringWithFormat:@"%@ (PSReader)", resourceKey2];
                v39 = objc_loadWeakRetained(&self->_transitionMonitor);
                [v39 setTransitionStateBufferInitCurResource:v38];

                v40 = objc_loadWeakRetained(&self->_transitionMonitor);
                [v40 unlock];

                v41 = ps_prm_opts_create();
                v113 = 0;
                input3 = [v11 input];
                resourceKey3 = [input3 resourceKey];
                LODWORD(resourceKey2) = [(PSGraphCompiler *)self getStreamOptionsForKey:resourceKey3 options:&v113];

                if (resourceKey2)
                {
                  v44 = &v113;
                }

                else
                {
                  v44 = 0;
                }

                input4 = [v11 input];
                resolvedResourceKey = [input4 resolvedResourceKey];

                input5 = [v11 input];
                capacity = [input5 capacity];
                input6 = [v11 input];
                v50 = v106;
                -[PSGraphCompiler populateReaderOpts:forKey:forGraph:withCapacity:withForwardingCount:](self, "populateReaderOpts:forKey:forGraph:withCapacity:withForwardingCount:", v41, resolvedResourceKey, v106, capacity, [input6 forwardingCount]);

                *v111 = 0u;
                v112 = 0u;
                v51 = objc_loadWeakRetained(&self->_transitionManager);

                if (v51)
                {
                  v52 = objc_loadWeakRetained(&self->_transitionManager);
                  executionSession2 = [v52 executionSession];
                  caNameHash = [executionSession2 caNameHash];
                  LODWORD(v111[0]) = [caNameHash unsignedIntValue];

                  caNameHash2 = [v106 caNameHash];
                  HIDWORD(v111[0]) = [caNameHash2 unsignedIntValue];

                  systemPulseStride = [v106 systemPulseStride];
                  v111[1] = [systemPulseStride unsignedLongLongValue];

                  v57 = +[PSCoreAnalyticsIDManager sharedInstance];
                  input7 = [v11 input];
                  resourceKey4 = [input7 resourceKey];
                  caName = [v106 caName];
                  v102 = v44;
                  v61 = objc_loadWeakRetained(&selfCopy->_transitionManager);
                  [v61 executionSession];
                  v103 = v41;
                  v63 = v62 = resolvedResourceKey;
                  caName2 = [v63 caName];
                  HIDWORD(v112) = [v57 opaqueIDForResource:resourceKey4 graph:caName session:caName2 bufferExpired:1];

                  v65 = +[PSCoreAnalyticsIDManager sharedInstance];
                  input8 = [v11 input];
                  resourceKey5 = [input8 resourceKey];
                  caName3 = [v106 caName];
                  v69 = objc_loadWeakRetained(&selfCopy->_transitionManager);
                  executionSession3 = [v69 executionSession];
                  caName4 = [executionSession3 caName];
                  DWORD2(v112) = [v65 opaqueIDForResource:resourceKey5 graph:caName3 session:caName4 bufferExpired:0];

                  resolvedResourceKey = v62;
                  v41 = v103;

                  v44 = v102;
                  v50 = v106;

                  self = selfCopy;
                }

                v72 = [[PSReaderBlock alloc] initWithReader:v11 graph:v50 readerOptions:v41 resourceOptions:v44 withPRMManager:self->_prm_mgr forCABufferExpiry:v111 withFrameHistoryClientHandle:v101];
                getContext = [v11 getContext];
                if (*(*getContext + 8) != 1)
                {
                  [PSGraphCompiler createReadersForTransitionBlock:];
                }

                v74 = [(PSGraphCompiler *)self populateBufferExpiryOffset:**(*getContext + 40) forKey:resolvedResourceKey];
                input9 = [v11 input];
                [input9 setBufferExpiryOffset:v74];

                self = selfCopy;
                [(NSMapTable *)selfCopy->_retainedReaderBlocks setObject:v72 forKey:v11];
                ps_prm_opts_destroy(v41);
                context = [v11 context];
                if (ps_reader_state_update())
                {
                  v110 = 0;
                  name5 = [v11 name];
                  uTF8String5 = [name5 UTF8String];
                  v86 = (context + 24);
                  v87 = atomic_load((context + 24));
                  asprintf(&v110, "Unable to set reader (%s) state to _READY. Current state %d", uTF8String5, v87);

                  v88 = __PLSLogSharedInstance();
                  if (os_log_type_enabled(v88, OS_LOG_TYPE_FAULT))
                  {
                    name6 = [v11 name];
                    uTF8String6 = [name6 UTF8String];
                    v91 = atomic_load(v86);
                    *buf = 136315906;
                    v131 = "[PSGraphCompiler createReadersForTransitionBlock:]";
                    v132 = 1024;
                    *v133 = 1624;
                    *&v133[4] = 2080;
                    *&v133[6] = uTF8String6;
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
                prm_mgr = selfCopy->_prm_mgr;
                *([v50 executionContext] + 32) = prm_mgr;
              }
            }

            v108 = [readers countByEnumeratingWithState:&v122 objects:v138 count:16];
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

- (void)resolveStreamDomainsForTransitionBlock:(id)block
{
  v82 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v5 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_DEFAULT, "Resolving stream domains.", buf, 2u);
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  preTransitionGraphs = [blockCopy preTransitionGraphs];
  [v6 unionSet:preTransitionGraphs];

  removedGraphs = [blockCopy removedGraphs];
  [v6 minusSet:removedGraphs];

  context = self->_context;
  postTransitionGraphs = [blockCopy postTransitionGraphs];
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
  postTransitionGraphs2 = [blockCopy postTransitionGraphs];
  v13 = [postTransitionGraphs2 countByEnumeratingWithState:&v66 objects:v81 count:16];
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
        objc_enumerationMutation(postTransitionGraphs2);
      }

      v17 = *(*(&v66 + 1) + 8 * i);
      resolvedDomain = [v17 resolvedDomain];

      if (!resolvedDomain)
      {
        [(PSGraphCompiler *)buf resolveStreamDomainsForTransitionBlock:v17];
LABEL_31:
        v61 = 0;
        name = [resolvedDomain name];
        uTF8String = [name UTF8String];
        v40 = [v17 description];
        uTF8String2 = [v40 UTF8String];
        v42 = [postTransitionGraphs2 description];
        asprintf(&v61, "Stream domain for common graph %s changed during transition. Pre-transition domain: %s. Post-transition domain: %s.", uTF8String, uTF8String2, [v42 UTF8String]);

        v43 = __PLSLogSharedInstance();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
        {
          name2 = [resolvedDomain name];
          uTF8String3 = [name2 UTF8String];
          v46 = [v17 description];
          uTF8String4 = [v46 UTF8String];
          v48 = [postTransitionGraphs2 description];
          uTF8String5 = [v48 UTF8String];
          *buf = 136316162;
          v73 = "[PSGraphCompiler resolveStreamDomainsForTransitionBlock:]";
          v74 = 1024;
          *v75 = 1691;
          *&v75[4] = 2080;
          *&v75[6] = uTF8String3;
          v76 = 2080;
          v77 = uTF8String4;
          v78 = 2080;
          v79 = uTF8String5;
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

    v14 = [postTransitionGraphs2 countByEnumeratingWithState:&v66 objects:v81 count:16];
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

        resolvedDomain = *(*(&v62 + 1) + 8 * j);
        v17 = [(NSMapTable *)self->_priorGraphDomains objectForKey:resolvedDomain];
        postTransitionGraphs2 = [resolvedDomain resolvedDomain];
        if (([v17 isEqual:postTransitionGraphs2] & 1) == 0)
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
  v55 = blockCopy;
  obj = [blockCopy postTransitionGraphs];
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
          resolvedDomain2 = [v28 resolvedDomain];
          v31 = [resolvedDomain2 description];
          uTF8String6 = [v31 UTF8String];
          name3 = [v28 name];
          uTF8String7 = [name3 UTF8String];
          *buf = 136315394;
          v73 = uTF8String6;
          v74 = 2080;
          *v75 = uTF8String7;
          _os_log_impl(&dword_25EA3A000, v29, OS_LOG_TYPE_DEBUG, "STREAMDOMAIN: Resolved to domain [%s] for graph %s", buf, 0x16u);
        }

        priorGraphDomains = self->_priorGraphDomains;
        resolvedDomain3 = [v28 resolvedDomain];
        [(NSMapTable *)priorGraphDomains setObject:resolvedDomain3 forKey:v28];
      }

      v25 = [obj countByEnumeratingWithState:&v57 objects:v71 count:16];
    }

    while (v25);
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)createSourceTasksForTransitionBlock:(id)block
{
  v74 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  WeakRetained[6] = 0;

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v46 = blockCopy;
  obj = [blockCopy addedGraphs];
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
        sourceTasks = [v7 sourceTasks];
        v53 = [sourceTasks countByEnumeratingWithState:&v61 objects:v72 count:16];
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
                objc_enumerationMutation(sourceTasks);
              }

              v9 = *(*(&v61 + 1) + 8 * v8);
              retainedSourceWriterBlocks = selfCopy->_retainedSourceWriterBlocks;
              name = [v9 name];
              v12 = [(NSMutableDictionary *)retainedSourceWriterBlocks objectForKeyedSubscript:name];

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
              outputs = [v9 outputs];
              v14 = [outputs countByEnumeratingWithState:&v57 objects:v71 count:16];
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
                      objc_enumerationMutation(outputs);
                    }

                    v18 = *(*(&v57 + 1) + 8 * i);
                    resourceKey = [v18 resourceKey];
                    uTF8String = [resourceKey UTF8String];
                    if (uTF8String)
                    {
                      v21 = *uTF8String;
                      if (*uTF8String)
                      {
                        v22 = uTF8String + 1;
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

                    v25 = objc_loadWeakRetained(&selfCopy->_transitionManager);
                    executionSession = [v25 executionSession];
                    v27 = executionSession[1];
                    resourceKey2 = [v18 resourceKey];
                    ps_frame_history_buffer_service_map_string_with_hash(v27, [resourceKey2 UTF8String], v23);
                  }

                  v15 = [outputs countByEnumeratingWithState:&v57 objects:v71 count:16];
                }

                while (v15);
              }

              v29 = objc_loadWeakRetained(&selfCopy->_transitionManager);
              ++v29[6];

              v30 = __PLSLogSharedInstance();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                name2 = [v54 name];
                uTF8String2 = [name2 UTF8String];
                *buf = 136315138;
                v70 = uTF8String2;
                _os_log_impl(&dword_25EA3A000, v30, OS_LOG_TYPE_DEFAULT, "Creating source task for key %s.", buf, 0xCu);
              }

              v33 = objc_loadWeakRetained(&selfCopy->_transitionMonitor);
              [v33 lock];

              v34 = MEMORY[0x277CCACA8];
              name3 = [v54 name];
              v36 = [v34 stringWithFormat:@"%@ (PSSourceTask)", name3];
              v37 = objc_loadWeakRetained(&selfCopy->_transitionMonitor);
              [v37 setTransitionStateBufferInitCurResource:v36];

              v38 = objc_loadWeakRetained(&selfCopy->_transitionMonitor);
              [v38 unlock];

              v39 = [PSSourceWriterBlock alloc];
              synchronizer = selfCopy->_synchronizer;
              v41 = objc_loadWeakRetained(&selfCopy->_transitionManager);
              v42 = [(PSSourceWriterBlock *)v39 initWithSourceTask:v54 synchronizer:synchronizer transitionManager:v41 frameStepping:[(PSGraphCompiler *)selfCopy deterministicReplay]];

              [(PSSourceWriterBlock *)v42 setupResultsWithContext:selfCopy->_context device:selfCopy->_device];
              v43 = selfCopy->_retainedSourceWriterBlocks;
              name4 = [v54 name];
              [(NSMutableDictionary *)v43 setObject:v42 forKeyedSubscript:name4];

              v8 = v55 + 1;
            }

            while (v55 + 1 != v53);
            v53 = [sourceTasks countByEnumeratingWithState:&v61 objects:v72 count:16];
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

- (void)initializeLocalSystemSourcesForTransitionBlock:(id)block
{
  v34 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  executionSession = [WeakRetained executionSession];
  shouldUseOptimizedVsyncPath = [executionSession shouldUseOptimizedVsyncPath];

  if ((shouldUseOptimizedVsyncPath & 1) == 0)
  {
    preTransitionGraphs = [blockCopy preTransitionGraphs];
    v27 = blockCopy;
    postTransitionGraphs = [blockCopy postTransitionGraphs];
    v10 = [(PSGraphCompiler *)self getAddedResourcesWithOldGraphs:preTransitionGraphs withNewGraphs:postTransitionGraphs];

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
          uTF8String = [v15 UTF8String];
          if (uTF8String)
          {
            v17 = *uTF8String;
            if (*uTF8String)
            {
              v18 = uTF8String + 1;
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
          executionSession2 = [v21 executionSession];
          ps_frame_history_buffer_service_map_string_with_hash(executionSession2[1], [v15 UTF8String], v19);
        }

        v12 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v12);
    }

    blockCopy = v27;
    postTransitionGraphs2 = [v27 postTransitionGraphs];
    v24 = [(PSGraphCompiler *)self getAllOutputsForGraphs:postTransitionGraphs2];
    [obj minusSet:v24];

    [(PSGraphCompiler *)self startLocalSystemSources:obj];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (id)extractLocalSystemSourceKeys:(id)keys
{
  v20 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = keysCopy;
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

- (void)startLocalSystemSources:(id)sources
{
  v20 = *MEMORY[0x277D85DE8];
  sourcesCopy = sources;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [sourcesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(sourcesCopy);
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
      v6 = [sourcesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)createPRMInstancesForTransitionBlock:(id)block
{
  v488 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  executionSession = [WeakRetained executionSession];
  shouldUseOptimizedVsyncPath = [executionSession shouldUseOptimizedVsyncPath];

  if ((shouldUseOptimizedVsyncPath & 1) == 0)
  {
    addedGraphs = [blockCopy addedGraphs];
    v9 = [addedGraphs count];

    if (v9)
    {
      v320 = blockCopy;
      strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
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
      obj = [blockCopy addedGraphs];
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
            tasks = [v12 tasks];
            v14 = [tasks countByEnumeratingWithState:&v459 objects:v486 count:16];
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
                    objc_enumerationMutation(tasks);
                  }

                  v18 = *(*(&v459 + 1) + 8 * i);
                  inputs = [v18 inputs];
                  v20 = [inputs count];

                  outputs = [v18 outputs];
                  v22 = [outputs count];

                  v23 = __PLSLogSharedInstance();
                  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
                  {
                    name = [v18 name];
                    uTF8String = [name UTF8String];
                    *buf = 136380675;
                    v471 = uTF8String;
                    _os_log_impl(&dword_25EA3A000, v23, OS_LOG_TYPE_DEBUG, "Creating task instance for key %{private}s", buf, 0xCu);
                  }

                  name2 = [v18 name];
                  v27 = ps_task_resources_create(v20, v22, [name2 UTF8String], selfCopy->_prm_mgr, 0);

                  prmTaskResources = selfCopy->_prmTaskResources;
                  v29 = [MEMORY[0x277CCAE60] valueWithPointer:v27];
                  v30 = [(PSGraphCompiler *)selfCopy getGraphTaskHash:v12 withTask:v18];
                  [(NSMapTable *)prmTaskResources setObject:v29 forKey:v30];
                }

                v15 = [tasks countByEnumeratingWithState:&v459 objects:v486 count:16];
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

      v31 = selfCopy;
      v32 = objc_loadWeakRetained(&selfCopy->_transitionManager);
      v32[7] = 0;

      v33 = objc_loadWeakRetained(&selfCopy->_transitionManager);
      v33[4] = 0;

      v34 = objc_loadWeakRetained(&selfCopy->_transitionManager);
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
      addedGraphs2 = [v320 addedGraphs];
      v37 = strongToStrongObjectsMapTable;
      v333 = [addedGraphs2 countByEnumeratingWithState:&v455 objects:v485 count:16];
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
              objc_enumerationMutation(addedGraphs2);
            }

            v338 = v38;
            v39 = *(*(&v455 + 1) + 8 * v38);
            v40 = __PLSLogSharedInstance();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              name3 = [v39 name];
              uTF8String2 = [name3 UTF8String];
              *buf = 136315138;
              v471 = uTF8String2;
              _os_log_impl(&dword_25EA3A000, v40, OS_LOG_TYPE_DEFAULT, "Creating writer instances for graph %s.", buf, 0xCu);
            }

            v454 = 0u;
            v453 = 0u;
            v452 = 0u;
            v451 = 0u;
            tasks2 = [v39 tasks];
            v348 = [tasks2 countByEnumeratingWithState:&v451 objects:v484 count:16];
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
                    objc_enumerationMutation(tasks2);
                  }

                  v356 = v43;
                  v44 = *(*(&v451 + 1) + 8 * v43);
                  v45 = objc_loadWeakRetained(&v31->_transitionManager);
                  ++v45[7];

                  resourceKey6 = v31->_prmTaskResources;
                  v47 = [(PSGraphCompiler *)v31 getGraphTaskHash:v39 withTask:v44];
                  v48 = [resourceKey6 objectForKey:v47];

                  pointerValue = [v48 pointerValue];
                  if (!pointerValue)
                  {
                    goto LABEL_213;
                  }

                  v352 = v48;
                  v450 = 0u;
                  v449 = 0u;
                  v448 = 0u;
                  v447 = 0u;
                  outputs2 = [v44 outputs];
                  v31 = selfCopy;
                  v380 = [outputs2 countByEnumeratingWithState:&v447 objects:v483 count:16];
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
                          objc_enumerationMutation(outputs2);
                        }

                        v384 = v49;
                        resourceKey6 = *(*(&v447 + 1) + 8 * v49);
                        v50 = objc_loadWeakRetained(&v31->_transitionManager);
                        ++v50[5];

                        v51 = __PLSLogSharedInstance();
                        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
                        {
                          name4 = [v44 name];
                          uTF8String3 = [name4 UTF8String];
                          resourceKey = [resourceKey6 resourceKey];
                          uTF8String4 = [resourceKey UTF8String];
                          *buf = 136380931;
                          v471 = uTF8String3;
                          v472 = 2081;
                          *v473 = uTF8String4;
                          _os_log_impl(&dword_25EA3A000, v51, OS_LOG_TYPE_DEBUG, "Creating writer instance for task %{private}s, resource %{private}s.", buf, 0x16u);
                        }

                        v56 = objc_loadWeakRetained(&v31->_transitionMonitor);
                        [v56 lock];

                        v57 = MEMORY[0x277CCACA8];
                        resourceKey2 = [resourceKey6 resourceKey];
                        name5 = [v39 name];
                        v60 = [v57 stringWithFormat:@"%@ (Output for %@)", resourceKey2, name5];
                        v61 = objc_loadWeakRetained(&v31->_transitionMonitor);
                        [v61 setTransitionStateBufferInitCurResource:v60];

                        v62 = objc_loadWeakRetained(&v31->_transitionMonitor);
                        [v62 unlock];

                        v63 = ps_prm_opts_create();
                        context = v31->_context;
                        resourceKey3 = [resourceKey6 resourceKey];
                        v390 = [(PSContext *)context resourceStreamForKey:resourceKey3];

                        resourceKey4 = [resourceKey6 resourceKey];
                        capacity = [resourceKey6 capacity];
                        v68 = v31->_context;
                        retainedBufferIndexers = v31->_retainedBufferIndexers;
                        v70 = objc_loadWeakRetained(&v31->_transitionManager);
                        executionSession2 = [v70 executionSession];
                        +[PSGraphCompiler populateWriterOpts:forKey:withCapacity:forGraph:withResStream:withContext:retainedBufferIndexers:withGSM:](PSGraphCompiler, "populateWriterOpts:forKey:withCapacity:forGraph:withResStream:withContext:retainedBufferIndexers:withGSM:", v63, resourceKey4, capacity, v39, v390, v68, retainedBufferIndexers, [executionSession2 gsm]);

                        retainedInputs = [resourceKey6 retainedInputs];
                        v73 = ps_task_resources_add_output(pointerValue, v63, [retainedInputs count]);

                        ps_prm_opts_destroy(v63);
                        retainedInputs2 = [resourceKey6 retainedInputs];
                        v75 = [retainedInputs2 count];

                        if (v75)
                        {
                          v76 = [strongToStrongObjectsMapTable objectForKey:resourceKey6];

                          if (v76)
                          {
                            [(PSGraphCompiler *)buf createPRMInstancesForTransitionBlock:resourceKey6];
LABEL_187:
                            v412[0] = 0;
                            resourceKey5 = [resourceKey6 resourceKey];
                            uTF8String5 = [resourceKey5 UTF8String];
                            name6 = [v76 name];
                            uTF8String6 = [name6 UTF8String];
                            name7 = [pointerValue name];
                            asprintf(v412, "Mismatched task input found for retained bundle input %s for task %s, graph %s", uTF8String5, uTF8String6, [name7 UTF8String]);

                            v44 = __PLSLogSharedInstance();
                            if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
                            {
                              resourceKey6 = [resourceKey6 resourceKey];
                              uTF8String7 = [resourceKey6 UTF8String];
                              name8 = [v76 name];
                              uTF8String8 = [name8 UTF8String];
                              name9 = [pointerValue name];
                              uTF8String9 = [name9 UTF8String];
                              *buf = 136316162;
                              v471 = "[PSGraphCompiler createPRMInstancesForTransitionBlock:]";
                              v472 = 1024;
                              *v473 = 2222;
                              *&v473[4] = 2080;
                              *&v473[6] = uTF8String7;
                              *&v473[14] = 2080;
                              *&v473[16] = uTF8String8;
                              *&v473[24] = 2080;
                              *&v473[26] = uTF8String9;
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
                          [strongToStrongObjectsMapTable setObject:v77 forKey:resourceKey6];
                        }

                        v31 = selfCopy;
                        v49 = v384 + 1;
                        v44 = v366;
                      }

                      while (v380 != v384 + 1);
                      v380 = [outputs2 countByEnumeratingWithState:&v447 objects:v483 count:16];
                    }

                    while (v380);
                  }

                  v43 = v356 + 1;
                  v37 = strongToStrongObjectsMapTable;
                }

                while (v356 + 1 != v348);
                v348 = [tasks2 countByEnumeratingWithState:&v451 objects:v484 count:16];
              }

              while (v348);
            }

            v38 = v338 + 1;
          }

          while (v338 + 1 != v333);
          v36 = v320;
          v333 = [addedGraphs2 countByEnumeratingWithState:&v455 objects:v485 count:16];
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
      addedGraphs3 = [v36 addedGraphs];
      v80 = [addedGraphs3 countByEnumeratingWithState:&v443 objects:v482 count:16];
      if (v80)
      {
        v81 = *v444;
        v326 = 136315394;
        v311 = *v444;
        v312 = addedGraphs3;
        do
        {
          v82 = 0;
          v313 = v80;
          do
          {
            if (*v444 != v81)
            {
              objc_enumerationMutation(addedGraphs3);
            }

            v316 = v82;
            v83 = *(*(&v443 + 1) + 8 * v82);
            v84 = __PLSLogSharedInstance();
            if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
            {
              name10 = [v83 name];
              uTF8String10 = [name10 UTF8String];
              *buf = 136315138;
              v471 = uTF8String10;
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
            strongToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
            strongToStrongObjectsMapTable3 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
            v381 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v385 = objc_alloc_init(MEMORY[0x277CBEB58]);
            v92 = objc_alloc_init(MEMORY[0x277CBEB58]);
            v93 = objc_alloc_init(MEMORY[0x277CBEB58]);
            v94 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v95 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v96 = v83;
            v97 = objc_alloc_init(MEMORY[0x277CBEB38]);
            [strongToStrongObjectsMapTable2 setObject:v385 forKey:&unk_2870CAC38];
            [strongToStrongObjectsMapTable2 setObject:v92 forKey:&unk_2870CAC50];
            v391 = strongToStrongObjectsMapTable2;
            [strongToStrongObjectsMapTable2 setObject:v93 forKey:&unk_2870CAC68];
            [strongToStrongObjectsMapTable3 setObject:v94 forKey:&unk_2870CAC38];
            [strongToStrongObjectsMapTable3 setObject:v95 forKey:&unk_2870CAC50];
            v332 = strongToStrongObjectsMapTable3;
            [strongToStrongObjectsMapTable3 setObject:v97 forKey:&unk_2870CAC68];

            v442 = 0u;
            v441 = 0u;
            v440 = 0u;
            v439 = 0u;
            pointerValue = v96;
            tasks3 = [v96 tasks];
            objb = [tasks3 countByEnumeratingWithState:&v439 objects:v481 count:16];
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
                    objc_enumerationMutation(tasks3);
                  }

                  v386 = v98;
                  v99 = *(*(&v439 + 1) + 8 * v98);
                  v435 = 0u;
                  v436 = 0u;
                  v437 = 0u;
                  v438 = 0u;
                  inputs2 = [v99 inputs];
                  v101 = [inputs2 countByEnumeratingWithState:&v435 objects:v480 count:16];
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
                          objc_enumerationMutation(inputs2);
                        }

                        v105 = *(*(&v435 + 1) + 8 * j);
                        resolvedResourceKey = [v105 resolvedResourceKey];
                        if ([v357 containsObject:resolvedResourceKey])
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
                            [v108 addObject:resolvedResourceKey];
                            v112 = [v110 objectForKeyedSubscript:resolvedResourceKey];
                            v113 = v112;
                            if (!v112 || (v114 = [v112 unsignedLongValue], objc_msgSend(v105, "capacity") > v114))
                            {
                              v115 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v105, "capacity")}];
                              [v110 setObject:v115 forKeyedSubscript:resolvedResourceKey];
                            }
                          }

                          v116 = [v381 objectForKeyedSubscript:resolvedResourceKey];
                          v117 = v116;
                          if (!v116 || (v118 = [v116 unsignedLongValue], objc_msgSend(v105, "forwardingCount") > v118))
                          {
                            v119 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v105, "forwardingCount")}];
                            [v381 setObject:v119 forKeyedSubscript:resolvedResourceKey];
                          }
                        }
                      }

                      v102 = [inputs2 countByEnumeratingWithState:&v435 objects:v480 count:16];
                    }

                    while (v102);
                  }

                  v98 = v386 + 1;
                }

                while ((v386 + 1) != objb);
                objb = [tasks3 countByEnumeratingWithState:&v439 objects:v481 count:16];
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

            prm_mgr = selfCopy->_prm_mgr;
            name11 = [pointerValue name];
            uTF8String11 = [name11 UTF8String];
            systemPulseStride = [pointerValue systemPulseStride];
            v131 = ps_grouped_source_pool_create(prm_mgr, uTF8String11, v123, systemPulseStride, 1, [(PSGraphCompiler *)selfCopy deterministicReplay]);

            prmGroupedSourcePools = selfCopy->_prmGroupedSourcePools;
            v133 = pointerValue;
            v363 = v131;
            v134 = [MEMORY[0x277CCAE60] valueWithPointer:v131];
            [(NSMapTable *)prmGroupedSourcePools setObject:v134 forKey:pointerValue];

            strongToStrongObjectsMapTable4 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
            v136 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v137 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v138 = objc_alloc_init(MEMORY[0x277CBEB38]);
            [strongToStrongObjectsMapTable4 setObject:v136 forKey:&unk_2870CAC38];
            [strongToStrongObjectsMapTable4 setObject:v137 forKey:&unk_2870CAC50];
            v337 = strongToStrongObjectsMapTable4;
            [strongToStrongObjectsMapTable4 setObject:v138 forKey:&unk_2870CAC68];

            strongToStrongObjectsMapTable5 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
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
                  integerValue = [v140 integerValue];
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
                        unsignedLongValue = [v147 unsignedLongValue];

                        v149 = [v381 objectForKeyedSubscript:v146];
                        unsignedLongValue2 = [v149 unsignedLongValue];

                        v151 = __PLSLogSharedInstance();
                        if (os_log_type_enabled(v151, OS_LOG_TYPE_DEBUG))
                        {
                          uTF8String12 = [v146 UTF8String];
                          *buf = 134218754;
                          v471 = integerValue;
                          v472 = 2080;
                          *v473 = uTF8String12;
                          *&v473[8] = 2048;
                          *&v473[10] = unsignedLongValue;
                          *&v473[18] = 2048;
                          *&v473[20] = unsignedLongValue2;
                          _os_log_impl(&dword_25EA3A000, v151, OS_LOG_TYPE_DEBUG, "Creating a GSP res (type %lu) for key %s, capacity %llu, fwdCount:%llu", buf, 0x2Au);
                        }

                        v153 = objc_loadWeakRetained(&selfCopy->_transitionMonitor);
                        [v153 lock];

                        v154 = MEMORY[0x277CCACA8];
                        name12 = [v133 name];
                        v155 = [v154 stringWithFormat:@"%@ (GSP input for %@)", v146, name12];
                        v157 = objc_loadWeakRetained(&selfCopy->_transitionMonitor);
                        [v157 setTransitionStateBufferInitCurResource:v155];

                        v133 = pointerValue;
                        v158 = objc_loadWeakRetained(&selfCopy->_transitionMonitor);
                        [v158 unlock];

                        v159 = ps_prm_opts_create();
                        [(PSGraphCompiler *)selfCopy populateReaderOpts:v159 forKey:v146 forGraph:pointerValue withCapacity:unsignedLongValue withForwardingCount:unsignedLongValue2];
                        v160 = objc_loadWeakRetained(&selfCopy->_transitionManager);
                        [v160 isBiometricKit];

                        v161 = ps_grouped_source_pool_add_input(v363, v159, integerValue);
                        v162 = objc_loadWeakRetained(&selfCopy->_transitionManager);
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
            tasks4 = [v133 tasks];
            v36 = v320;
            v31 = selfCopy;
            v321 = [tasks4 countByEnumeratingWithState:&v419 objects:v476 count:16];
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
                    objc_enumerationMutation(tasks4);
                  }

                  v323 = v164;
                  resourceKey6 = *(*(&v419 + 1) + 8 * v164);
                  strongToStrongObjectsMapTable6 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
                  [strongToStrongObjectsMapTable5 setObject:strongToStrongObjectsMapTable6 forKey:resourceKey6];
                  v166 = v31->_prmTaskResources;
                  v167 = [(PSGraphCompiler *)v31 getGraphTaskHash:v133 withTask:resourceKey6];
                  v168 = [(NSMapTable *)v166 objectForKey:v167];

                  v322 = v168;
                  pointerValue2 = [v168 pointerValue];
                  if (!pointerValue2)
                  {
                    goto LABEL_214;
                  }

                  v170 = pointerValue2;
                  v417 = 0u;
                  v418 = 0u;
                  v415 = 0u;
                  v416 = 0u;
                  inputs3 = [resourceKey6 inputs];
                  v342 = [inputs3 countByEnumeratingWithState:&v415 objects:v475 count:16];
                  if (v342)
                  {
                    v171 = resourceKey6;
                    v334 = *v416;
                    v329 = resourceKey6;
                    v388 = strongToStrongObjectsMapTable6;
                    v339 = v170;
                    do
                    {
                      v172 = 0;
                      do
                      {
                        if (*v416 != v334)
                        {
                          objc_enumerationMutation(inputs3);
                        }

                        v359 = v172;
                        v173 = *(*(&v415 + 1) + 8 * v172);
                        v174 = __PLSLogSharedInstance();
                        if (os_log_type_enabled(v174, OS_LOG_TYPE_DEBUG))
                        {
                          name13 = [v171 name];
                          uTF8String13 = [name13 UTF8String];
                          resourceKey7 = [v173 resourceKey];
                          uTF8String14 = [resourceKey7 UTF8String];
                          *buf = 136315394;
                          v471 = uTF8String13;
                          v31 = selfCopy;
                          v472 = 2080;
                          *v473 = uTF8String14;
                          _os_log_impl(&dword_25EA3A000, v174, OS_LOG_TYPE_DEBUG, "Populating input for task %s, resource %s", buf, 0x16u);
                        }

                        resolvedResourceKey2 = [v173 resolvedResourceKey];
                        v180 = objc_loadWeakRetained(&v31->_transitionManager);
                        ++v180[4];

                        v181 = objc_loadWeakRetained(&v31->_transitionMonitor);
                        [v181 lock];

                        v182 = MEMORY[0x277CCACA8];
                        resourceKey8 = [v173 resourceKey];
                        name14 = [v133 name];
                        v184 = [v182 stringWithFormat:@"%@ (Input for %@)", resourceKey8, name14];
                        v186 = objc_loadWeakRetained(&selfCopy->_transitionMonitor);
                        [v186 setTransitionStateBufferInitCurResource:v184];

                        v187 = resolvedResourceKey2;
                        v31 = selfCopy;

                        v188 = objc_loadWeakRetained(&selfCopy->_transitionMonitor);
                        [v188 unlock];

                        v189 = ps_prm_opts_create();
                        v414 = 0;
                        resourceKey9 = [v173 resourceKey];
                        LODWORD(resourceKey8) = [(PSGraphCompiler *)selfCopy getStreamOptionsForKey:resourceKey9 options:&v414];

                        v191 = &v414;
                        if (!resourceKey8)
                        {
                          v191 = 0;
                        }

                        v354 = v191;
                        objd = v189;
                        -[PSGraphCompiler populateReaderOpts:forKey:forGraph:withCapacity:withForwardingCount:](selfCopy, "populateReaderOpts:forKey:forGraph:withCapacity:withForwardingCount:", v189, v187, v133, [v173 capacity], objc_msgSend(v173, "forwardingCount"));
                        v192 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v173, "type")}];
                        v193 = [v337 objectForKey:v192];

                        v369 = v193;
                        if (v193 && ([v193 objectForKeyedSubscript:v187], v194 = objc_claimAutoreleasedReturnValue(), v194, v194))
                        {
                          v195 = __PLSLogSharedInstance();
                          if (os_log_type_enabled(v195, OS_LOG_TYPE_DEBUG))
                          {
                            uTF8String15 = [v187 UTF8String];
                            name15 = [v171 name];
                            uTF8String16 = [name15 UTF8String];
                            name16 = [v133 name];
                            uTF8String17 = [name16 UTF8String];
                            type = [v173 type];
                            *buf = 136381443;
                            v471 = uTF8String15;
                            v472 = 2081;
                            *v473 = uTF8String16;
                            strongToStrongObjectsMapTable6 = v388;
                            *&v473[8] = 2081;
                            *&v473[10] = uTF8String17;
                            *&v473[18] = 2048;
                            *&v473[20] = type;
                            _os_log_impl(&dword_25EA3A000, v195, OS_LOG_TYPE_DEBUG, "Initializing key %{private}s in task %{private}s, graph %{private}s as a (%lu) GSP resource.", buf, 0x2Au);

                            v170 = v339;
                            v31 = selfCopy;
                          }

                          v202 = [v369 objectForKeyedSubscript:v187];
                          unsignedIntValue = [v202 unsignedIntValue];

                          v350 = v363;
                        }

                        else
                        {
                          unsignedIntValue = 0;
                          v350 = 0;
                        }

                        *v412 = 0u;
                        v413 = 0u;
                        v204 = objc_loadWeakRetained(&v31->_transitionManager);

                        if (v204)
                        {
                          v205 = objc_loadWeakRetained(&v31->_transitionManager);
                          [v205 executionSession];
                          v206 = v345 = unsignedIntValue;
                          caNameHash = [v206 caNameHash];
                          LODWORD(v412[0]) = [caNameHash unsignedIntValue];

                          caNameHash2 = [v133 caNameHash];
                          HIDWORD(v412[0]) = [caNameHash2 unsignedIntValue];

                          systemPulseStride2 = [v133 systemPulseStride];
                          v412[1] = [systemPulseStride2 unsignedLongLongValue];

                          v210 = +[PSCoreAnalyticsIDManager sharedInstance];
                          resourceKey10 = [v173 resourceKey];
                          caName = [v133 caName];
                          v213 = objc_loadWeakRetained(&selfCopy->_transitionManager);
                          executionSession3 = [v213 executionSession];
                          caName2 = [executionSession3 caName];
                          HIDWORD(v413) = [v210 opaqueIDForResource:resourceKey10 graph:caName session:caName2 bufferExpired:1];

                          v171 = v329;
                          v216 = +[PSCoreAnalyticsIDManager sharedInstance];
                          resourceKey11 = [v173 resourceKey];
                          caName3 = [v133 caName];
                          v219 = objc_loadWeakRetained(&selfCopy->_transitionManager);
                          executionSession4 = [v219 executionSession];
                          caName4 = [executionSession4 caName];
                          DWORD2(v413) = [v216 opaqueIDForResource:resourceKey11 graph:caName3 session:caName4 bufferExpired:0];

                          v170 = v339;
                          strongToStrongObjectsMapTable6 = v388;

                          v31 = selfCopy;
                          unsignedIntValue = v345;
                        }

                        type2 = [v173 type];
                        if (type2 >= 3)
                        {
                          if (type2 != 3)
                          {
                            v234 = 0;
                            goto LABEL_151;
                          }

                          v346 = unsignedIntValue;
                          v410 = 0u;
                          v411 = 0u;
                          v408 = 0u;
                          v409 = 0u;
                          inputs4 = [v171 inputs];
                          v224 = [inputs4 countByEnumeratingWithState:&v408 objects:v474 count:16];
                          if (!v224)
                          {

LABEL_205:
                            v407 = 0;
                            resourceKey12 = [v173 resourceKey];
                            resourceKey6 = [resourceKey12 UTF8String];
                            name17 = [v133 name];
                            uTF8String18 = [name17 UTF8String];
                            name18 = [v171 name];
                            asprintf(&v407, "Could not find source input for synced key %s in graph %s, task %s", resourceKey6, uTF8String18, [name18 UTF8String]);

                            v44 = __PLSLogSharedInstance();
                            if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
                            {
                              [v173 resourceKey];
                              v305 = v304 = v171;
                              uTF8String19 = [v305 UTF8String];
                              resourceKey6 = [v133 name];
                              uTF8String20 = [resourceKey6 UTF8String];
                              name19 = [v304 name];
                              uTF8String21 = [name19 UTF8String];
                              *buf = 136316162;
                              v471 = "[PSGraphCompiler createPRMInstancesForTransitionBlock:]";
                              v472 = 1024;
                              *v473 = 2170;
                              *&v473[4] = 2080;
                              *&v473[6] = uTF8String19;
                              *&v473[14] = 2080;
                              *&v473[16] = uTF8String20;
                              *&v473[24] = 2080;
                              *&v473[26] = uTF8String21;
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
                          unsignedIntValue2 = 0;
                          v227 = *v409;
                          do
                          {
                            for (n = 0; n != v225; ++n)
                            {
                              if (*v409 != v227)
                              {
                                objc_enumerationMutation(inputs4);
                              }

                              v229 = *(*(&v408 + 1) + 8 * n);
                              resourceKey13 = [v229 resourceKey];
                              sourceInputResourceKey = [v173 sourceInputResourceKey];
                              v232 = [resourceKey13 isEqualToString:sourceInputResourceKey];

                              if (v232)
                              {
                                v233 = [v388 objectForKey:v229];
                                unsignedIntValue2 = [v233 unsignedIntValue];

                                v226 = 1;
                              }
                            }

                            v225 = [inputs4 countByEnumeratingWithState:&v408 objects:v474 count:16];
                          }

                          while (v225);

                          v133 = pointerValue;
                          v171 = v329;
                          strongToStrongObjectsMapTable6 = v388;
                          v170 = v339;
                          v187 = v325;
                          unsignedIntValue = v346;
                          if ((v226 & 1) == 0)
                          {
                            goto LABEL_205;
                          }
                        }

                        else
                        {
                          unsignedIntValue2 = -1;
                        }

                        v234 = ps_task_resources_add_input(v170, [v173 type], unsignedIntValue2, objd, v350, unsignedIntValue, v354, v412, 1);
                        v31 = selfCopy;
LABEL_151:
                        [v173 setBufferExpiryOffset:{-[PSGraphCompiler populateBufferExpiryOffset:forKey:](v31, "populateBufferExpiryOffset:forKey:", *(*(v170 + 40) + 8 * (*(v170 + 12) - 1)), v187)}];
                        v235 = [strongToStrongObjectsMapTable6 objectForKey:v173];

                        if (v235)
                        {
                          v407 = 0;
                          resourceKey14 = [v173 resourceKey];
                          resourceKey6 = [resourceKey14 UTF8String];
                          name20 = [v133 name];
                          uTF8String22 = [name20 UTF8String];
                          name21 = [v171 name];
                          asprintf(&v407, "Found a duplicate PSTaskInput for key %s in graph %s, task %s", resourceKey6, uTF8String22, [name21 UTF8String]);

                          v44 = __PLSLogSharedInstance();
                          if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
                          {
                            [v173 resourceKey];
                            v294 = v293 = v171;
                            uTF8String23 = [v294 UTF8String];
                            resourceKey6 = [v133 name];
                            uTF8String24 = [resourceKey6 UTF8String];
                            name22 = [v293 name];
                            uTF8String25 = [name22 UTF8String];
                            *buf = 136316162;
                            v471 = "[PSGraphCompiler createPRMInstancesForTransitionBlock:]";
                            v472 = 1024;
                            *v473 = 2186;
                            *&v473[4] = 2080;
                            *&v473[6] = uTF8String23;
                            *&v473[14] = 2080;
                            *&v473[16] = uTF8String24;
                            *&v473[24] = 2080;
                            *&v473[26] = uTF8String25;
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
                        [strongToStrongObjectsMapTable6 setObject:v236 forKey:v173];

                        ps_prm_opts_destroy(objd);
                        v172 = v359 + 1;
                      }

                      while ((v359 + 1) != v342);
                      v342 = [inputs3 countByEnumeratingWithState:&v415 objects:v475 count:16];
                    }

                    while (v342);
                  }

                  v164 = v323 + 1;
                  v36 = v320;
                }

                while (v323 + 1 != v321);
                v321 = [tasks4 countByEnumeratingWithState:&v419 objects:v476 count:16];
              }

              while (v321);
            }

            v405 = 0u;
            v406 = 0u;
            v403 = 0u;
            v404 = 0u;
            tasks5 = [v133 tasks];
            v330 = [tasks5 countByEnumeratingWithState:&v403 objects:v469 count:16];
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
                    objc_enumerationMutation(tasks5);
                  }

                  v343 = v237;
                  v238 = *(*(&v403 + 1) + 8 * v237);
                  v239 = [strongToStrongObjectsMapTable5 objectForKey:v238];
                  v240 = v31->_prmTaskResources;
                  v241 = [(PSGraphCompiler *)v31 getGraphTaskHash:pointerValue withTask:v238];
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
                  outputs3 = [v238 outputs];
                  v355 = [outputs3 countByEnumeratingWithState:&v399 objects:v468 count:16];
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
                          objc_enumerationMutation(outputs3);
                        }

                        v244 = *(*(&v399 + 1) + 8 * ii);
                        retainedInputs3 = [v244 retainedInputs];
                        v246 = [retainedInputs3 count];

                        if (v246)
                        {
                          v360 = ii;
                          v247 = [strongToStrongObjectsMapTable objectForKey:v244];
                          unsignedIntValue3 = [v247 unsignedIntValue];

                          v397 = 0u;
                          v398 = 0u;
                          v395 = 0u;
                          v396 = 0u;
                          retainedInputs4 = [v244 retainedInputs];
                          v248 = [retainedInputs4 countByEnumeratingWithState:&v395 objects:v467 count:16];
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
                                objc_enumerationMutation(retainedInputs4);
                              }

                              resourceKey6 = *(*(&v395 + 1) + 8 * jj);
                              v251 = [v239 objectForKey:resourceKey6];

                              v76 = v370;
                              if (!v251)
                              {
                                v412[0] = 0;
                                v46ResourceKey = [resourceKey6 resourceKey];
                                uTF8String26 = [v46ResourceKey UTF8String];
                                name23 = [v370 name];
                                uTF8String27 = [name23 UTF8String];
                                name24 = [pointerValue name];
                                asprintf(v412, "No input found matching retained bundle input %s for task %s, graph %s", uTF8String26, uTF8String27, [name24 UTF8String]);

                                v44 = __PLSLogSharedInstance();
                                if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
                                {
                                  resourceKey6 = [resourceKey6 resourceKey];
                                  uTF8String28 = [resourceKey6 UTF8String];
                                  name25 = [v370 name];
                                  uTF8String29 = [name25 UTF8String];
                                  name26 = [pointerValue name];
                                  uTF8String30 = [name26 UTF8String];
                                  *buf = 136316162;
                                  v471 = "[PSGraphCompiler createPRMInstancesForTransitionBlock:]";
                                  v472 = 1024;
                                  *v473 = 2215;
                                  *&v473[4] = 2080;
                                  *&v473[6] = uTF8String28;
                                  *&v473[14] = 2080;
                                  *&v473[16] = uTF8String29;
                                  *&v473[24] = 2080;
                                  *&v473[26] = uTF8String30;
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
                                [(PSGraphCompiler *)buf createPRMInstancesForTransitionBlock:resourceKey6];
                              }

                              inputs5 = [v370 inputs];
                              v253 = [inputs5 containsObject:resourceKey6];

                              if ((v253 & 1) == 0)
                              {
                                goto LABEL_187;
                              }

                              v254 = [v239 objectForKey:resourceKey6];
                              unsignedIntValue4 = [v254 unsignedIntValue];

                              v256 = ps_prm_opts_create();
                              resolvedResourceKey3 = [resourceKey6 resolvedResourceKey];
                              -[PSGraphCompiler populateReaderOpts:forKey:forGraph:withCapacity:withForwardingCount:](selfCopy, "populateReaderOpts:forKey:forGraph:withCapacity:withForwardingCount:", v256, resolvedResourceKey3, pointerValue, [resourceKey6 capacity], objc_msgSend(resourceKey6, "forwardingCount"));

                              v258 = objc_loadWeakRetained(&selfCopy->_transitionMonitor);
                              [v258 lock];

                              v259 = MEMORY[0x277CCACA8];
                              v46ResourceKey2 = [resourceKey6 resourceKey];
                              name27 = [pointerValue name];
                              v261 = [v259 stringWithFormat:@"%@ (Retained input for %@)", v46ResourceKey2, name27];
                              v263 = objc_loadWeakRetained(&selfCopy->_transitionMonitor);
                              [v263 setTransitionStateBufferInitCurResource:v261];

                              v264 = objc_loadWeakRetained(&selfCopy->_transitionMonitor);
                              [v264 unlock];

                              ps_task_resource_attach_retained_input(obje, v256, unsignedIntValue4, unsignedIntValue3);
                              ps_prm_opts_destroy(v256);
                            }

                            v249 = [retainedInputs4 countByEnumeratingWithState:&v395 objects:v467 count:16];
                            if (!v249)
                            {
LABEL_177:

                              ii = v360;
                              break;
                            }
                          }
                        }
                      }

                      v355 = [outputs3 countByEnumeratingWithState:&v399 objects:v468 count:16];
                    }

                    while (v355);
                  }

                  v237 = v343 + 1;
                  v31 = selfCopy;
                }

                while (v343 + 1 != v330);
                v36 = v320;
                v330 = [tasks5 countByEnumeratingWithState:&v403 objects:v469 count:16];
              }

              while (v330);
            }

            v82 = v316 + 1;
            addedGraphs3 = v312;
            v37 = strongToStrongObjectsMapTable;
            v81 = v311;
          }

          while (v316 + 1 != v313);
          v80 = [v312 countByEnumeratingWithState:&v443 objects:v482 count:16];
        }

        while (v80);
      }

      blockCopy = v36;
    }
  }

  v265 = *MEMORY[0x277D85DE8];
}

- (unint64_t)populateBufferExpiryOffset:(ps_task_input_resource_s *)offset forKey:(id)key
{
  v29 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if (!offset)
  {
    [PSGraphCompiler populateBufferExpiryOffset:buf forKey:keyCopy];
  }

  v7 = [(PSContext *)self->_context resourceStreamForKey:keyCopy];
  info = 0;
  if (mach_timebase_info(&info))
  {
    [PSGraphCompiler populateBufferExpiryOffset:forKey:];
  }

  resourceClass = [v7 resourceClass];
  if ((resourceClass - 7) < 3 || resourceClass == 11)
  {
    provider = [v7 provider];
    v11 = provider > 7 || ((1 << provider) & 0x92) == 0;
    if (!v11 && [v7 framerate])
    {
      v12 = [PSRCConstants getCameraDepthForKey:keyCopy];
      v13 = [PSRCConstants getReaderDepthForKey:keyCopy]+ v12;
      v14 = [PSRCConstants getWriterDepthForKey:keyCopy];
      v15 = v13 + v14 + [v7 retainedISPRCCount] - 1;
      framerate = [v7 framerate];
      v17 = v15 * (0x3B9ACA00 / framerate) * info.denom;
LABEL_16:
      v18 = v17 / info.numer;
      goto LABEL_18;
    }
  }

  else if (resourceClass == 12)
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
    uTF8String = [v20 UTF8String];
    *buf = 136315394;
    v26 = uTF8String;
    v27 = 2048;
    v28 = v18;
    _os_log_impl(&dword_25EA3A000, v19, OS_LOG_TYPE_DEBUG, "Setting Expiry Offset for key (%s) as (%llu)", buf, 0x16u);
  }

  ps_task_input_resource_set_buffer_expiry_offset(offset, v18);
  v22 = *MEMORY[0x277D85DE8];
  return v18;
}

+ (void)populateOptsMetadataType:(PSResourceManagerOptions *)type forProviderType:(int)providerType
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

    ps_prm_opts_set_resource_metadata_type(type, v9);
  }

  else
  {
    v10 = [PSGraphCompiler populateOptsMetadataType:providerType forProviderType:?];
    [(PSGraphCompiler *)v10 populateWriterOpts:v11 forKey:v12 withCapacity:v13 forGraph:v14 withResStream:v15 withContext:v16 retainedBufferIndexers:v17 withGSM:v20, v21];
  }
}

+ (void)populateWriterOpts:(PSResourceManagerOptions *)opts forKey:(id)key withCapacity:(unint64_t)capacity forGraph:(id)graph withResStream:(id)stream withContext:(id)context retainedBufferIndexers:(id)indexers withGSM:(ps_gsm_s *)self0
{
  v79 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  graphCopy = graph;
  streamCopy = stream;
  contextCopy = context;
  indexersCopy = indexers;
  v20 = keyCopy;
  if (([v20 isEqualToString:PLSResourceKeyGCLEDSyncLeft[0]]& 1) != 0)
  {
    v21 = 1;
  }

  else
  {
    v21 = [v20 isEqualToString:PLSResourceKeyGCLEDSyncRight[0]];
  }

  if (capacity < 2)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  if (!streamCopy)
  {
    [PSGraphCompiler populateWriterOpts:buf forKey:v20 withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
    goto LABEL_72;
  }

  [streamCopy options];
  v24 = v23;
  options = [streamCopy options];
  if (!v24)
  {
LABEL_72:
    [PSGraphCompiler populateWriterOpts:buf forKey:v20 withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
    goto LABEL_73;
  }

  v10 = options;
  if (!options)
  {
LABEL_73:
    [PSGraphCompiler populateWriterOpts:buf forKey:v20 withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
    goto LABEL_74;
  }

  if (!capacity)
  {
LABEL_74:
    [PSGraphCompiler populateWriterOpts:buf forKey:? withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
    goto LABEL_75;
  }

  if (capacity >= 0x3E9)
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
    streamCopy = __PLSLogSharedInstance();
    if (os_log_type_enabled(streamCopy, OS_LOG_TYPE_FAULT))
    {
      v56 = v68;
      v55 = HIDWORD(v68);
      uTF8String = [v20 UTF8String];
      *buf = 136316162;
      v70 = "+[PSGraphCompiler populateWriterOpts:forKey:withCapacity:forGraph:withResStream:withContext:retainedBufferIndexers:withGSM:]";
      v71 = 1024;
      v72 = 2415;
      v73 = 1024;
      v74 = v55;
      v75 = 1024;
      v76 = v56;
      v77 = 2080;
      v78 = uTF8String;
      _os_log_impl(&dword_25EA3A000, streamCopy, OS_LOG_TYPE_FAULT, "%s:%d Writer depth (%u) was greater than reader depth (%u) for resource %s", buf, 0x28u);
    }

    v58 = OSLogFlushBuffers();
    if (v58)
    {
      streamCopy = v58;
      v20 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v70 = "+[PSGraphCompiler populateWriterOpts:forKey:withCapacity:forGraph:withResStream:withContext:retainedBufferIndexers:withGSM:]";
        v71 = 1024;
        v72 = streamCopy;
        _os_log_impl(&dword_25EA3A000, v20, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
      }
    }

    else
    {
      usleep(0x1E8480u);
    }

    resourceClass = abort_with_reason();
LABEL_85:
    if (resourceClass != 5)
    {
      goto LABEL_93;
    }

    resourceClass = [PSGraphCompiler populateWriterOpts:streamCopy forKey:buf withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
    goto LABEL_87;
  }

  ps_prm_opts_set_return_capacity(opts, capacity);
  ps_prm_opts_set_resource_key(opts, [v20 UTF8String]);
  ps_prm_opts_set_graph(opts, graphCopy);
  ps_prm_opts_set_resource_class(opts, [streamCopy resourceClass]);
  ps_prm_opts_set_creation_mode(opts, v24);
  ps_prm_opts_set_resource_avail_context(opts, m);
  if ([contextCopy forceAllResourcesLocal])
  {
    v26 = 1;
  }

  else
  {
    v26 = v10;
  }

  ps_prm_opts_set_storage_mode(opts, v26);
  v68 = 0;
  [PSConstants getBufferDepthsForKey:v20 writerDepth:&v68 + 4 readerDepth:&v68];
  v27 = v68;
  LODWORD(v10) = HIDWORD(v68);
  if (HIDWORD(v68) > v68)
  {
    goto LABEL_77;
  }

  ps_prm_opts_set_buffer_depth(opts, v68, SHIDWORD(v68));
  resourceClass = [streamCopy resourceClass];
  if (resourceClass <= 7)
  {
    if (resourceClass <= 3)
    {
      if (resourceClass != 1)
      {
        if (resourceClass == 2)
        {
          ps_prm_opts_set_object_stream(opts, streamCopy);
          goto LABEL_70;
        }

        if (resourceClass == 3)
        {
          ps_prm_opts_set_opaque_stream(opts, streamCopy);
LABEL_70:
          [PSGraphCompiler populateOptsMetadataType:opts forProviderType:[streamCopy provider]];

          v54 = *MEMORY[0x277D85DE8];
          return;
        }

        goto LABEL_93;
      }

      v31 = [streamCopy length];
LABEL_48:
      ps_prm_opts_set_data_size(opts, v31 * capacity);
      goto LABEL_70;
    }

    if (resourceClass <= 5)
    {
      if (resourceClass == 4)
      {
        v32 = streamCopy;
        capacity = v32;
        if (v24 == 1)
        {
          ps_prm_opts_set_iosurface_width(opts, [v32 width]);
          ps_prm_opts_set_iosurface_height(opts, [capacity height]);
          ps_prm_opts_set_iosurface_pixelformat(opts, [capacity pixelFormat]);
          ioSurfaceProperties = [capacity ioSurfaceProperties];

          if (ioSurfaceProperties)
          {
            ioSurfaceProperties2 = [capacity ioSurfaceProperties];

            ps_prm_opts_set_iosurface_properties(opts, ioSurfaceProperties2);
          }
        }

        else
        {
          v44 = [v32 key];
          v45 = [indexersCopy objectForKey:v44];

          if (!v45)
          {
            v45 = [[PSBufferIndexer alloc] initWithResourceStream:capacity];
            [indexersCopy setObject:v45 forKey:v20];
          }

          ps_prm_opts_set_iosurface_allocator(opts, allocatedIOSurfaceBufferIndexer, v45);
        }

        goto LABEL_69;
      }

      goto LABEL_85;
    }

    if (resourceClass != 7)
    {
LABEL_87:
      if (resourceClass == 6)
      {
        [PSGraphCompiler populateWriterOpts:streamCopy forKey:? withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
        goto LABEL_89;
      }

LABEL_93:
      [PSGraphCompiler populateWriterOpts:buf forKey:v20 withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
      goto LABEL_94;
    }

    capacity = streamCopy;
    ps_prm_opts_set_is_camera_stream(opts, 0);
    ps_prm_opts_set_use_prm_camera_reader(opts, 0);
    if (v24 == 1)
    {
      ps_prm_opts_set_cvpixelbuffer_width(opts, [capacity width]);
      ps_prm_opts_set_cvpixelbuffer_height(opts, [capacity height]);
      ps_prm_opts_set_cvpixelbuffer_pixelformat(opts, [capacity pixelFormat]);
      ioSurfaceProperties3 = [capacity ioSurfaceProperties];

      if (ioSurfaceProperties3)
      {
        ioSurfaceProperties4 = [capacity ioSurfaceProperties];

        ps_prm_opts_set_cvpixelbuffer_properties(opts, ioSurfaceProperties4);
      }
    }

    else
    {
      v46 = [capacity key];
      v47 = [indexersCopy objectForKey:v46];

      if (!v47)
      {
        v47 = [[PSBufferIndexer alloc] initWithResourceStream:capacity];
        [indexersCopy setObject:v47 forKey:v20];
      }

      ps_prm_opts_set_cvpixelbuffer_allocator(opts, allocatedCVPixelBufferIndexer, v47);
    }

    [capacity provider];
    if (ps_resource_stream_provider_has_iosurface_metadata())
    {
      metadataIOSurfaceProperties = [capacity metadataIOSurfaceProperties];

      if (!metadataIOSurfaceProperties)
      {
LABEL_94:
        [PSGraphCompiler populateWriterOpts:buf forKey:capacity withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
        goto LABEL_95;
      }

      metadataIOSurfaceProperties2 = [capacity metadataIOSurfaceProperties];

      ps_prm_opts_set_cvpixelbuffer_metadata_iosurface_properties(opts, metadataIOSurfaceProperties2);
    }

    goto LABEL_69;
  }

  if (resourceClass <= 9)
  {
    if (resourceClass == 8)
    {
      capacity = streamCopy;
      ps_prm_opts_set_is_camera_stream(opts, 0);
      ps_prm_opts_set_use_prm_camera_reader(opts, 0);
      if (v24 == 1)
      {
        ps_prm_opts_set_cvdatabuffer_width(opts, [capacity width]);
        ps_prm_opts_set_cvdatabuffer_height(opts, [capacity height]);
        ps_prm_opts_set_cvdatabuffer_pixelformat(opts, [capacity pixelFormat]);
      }

      else
      {
        v50 = [capacity key];
        v51 = [indexersCopy objectForKey:v50];

        if (!v51)
        {
          v51 = [[PSBufferIndexer alloc] initWithResourceStream:capacity];
          [indexersCopy setObject:v51 forKey:v20];
        }

        ps_prm_opts_set_cvdatabuffer_allocator(opts, allocatedCVDataBufferIndexer, v51);
      }

      [capacity provider];
      if (ps_resource_stream_provider_has_iosurface_metadata())
      {
        metadataIOSurfaceProperties3 = [capacity metadataIOSurfaceProperties];

        if (!metadataIOSurfaceProperties3)
        {
LABEL_95:
          [PSGraphCompiler populateWriterOpts:buf forKey:capacity withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
          goto LABEL_96;
        }

        metadataIOSurfaceProperties4 = [capacity metadataIOSurfaceProperties];

        ps_prm_opts_set_cvdatabuffer_metadata_iosurface_properties(opts, metadataIOSurfaceProperties4);
      }
    }

    else
    {
      capacity = streamCopy;
      ps_prm_opts_set_is_camera_stream(opts, 0);
      ps_prm_opts_set_use_prm_camera_reader(opts, 0);
      if (v24 != 1)
      {
LABEL_89:
        [PSGraphCompiler populateWriterOpts:buf forKey:? withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
        goto LABEL_90;
      }

      ps_prm_opts_set_jasperbuffer_width(opts, [capacity width]);
      ps_prm_opts_set_jasperbuffer_height(opts, [capacity height]);
      ps_prm_opts_set_jasperbuffer_pixelformat(opts, [capacity pixelFormat]);
      [capacity provider];
      if (ps_resource_stream_provider_has_iosurface_metadata())
      {
        metadataIOSurfaceProperties5 = [capacity metadataIOSurfaceProperties];

        if (!metadataIOSurfaceProperties5)
        {
LABEL_96:
          [PSGraphCompiler populateWriterOpts:buf forKey:capacity withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
          goto LABEL_97;
        }

        metadataIOSurfaceProperties6 = [capacity metadataIOSurfaceProperties];

        ps_prm_opts_set_jasperbuffer_metadata_iosurface_properties(opts, metadataIOSurfaceProperties6);
      }
    }

    goto LABEL_69;
  }

  if (resourceClass == 10)
  {
    v39 = streamCopy;
    if (v24 != 2)
    {
LABEL_90:
      [PSGraphCompiler populateWriterOpts:buf forKey:? withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
      goto LABEL_91;
    }

    capacity = v39;
    allocateIOSurfaceRefArray = [v39 allocateIOSurfaceRefArray];
    if (!allocateIOSurfaceRefArray)
    {
LABEL_92:
      [PSGraphCompiler populateWriterOpts:buf forKey:? withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
      goto LABEL_93;
    }

    v41 = allocateIOSurfaceRefArray;
    ps_prm_opts_set_buffer_depth(opts, 0, [capacity numberOfBufferSet]);
    ps_prm_opts_set_return_capacity(opts, [capacity numberOfBufferSet]);
    ps_prm_opts_set_storage_mode(opts, 2);
    ps_prm_opts_set_ane_chained_stream(opts, v41, [capacity numberOfSurfaceInSet], objc_msgSend(capacity, "firstEventValue"), objc_msgSend(capacity, "metadataSurfaceIndex"), objc_msgSend(capacity, "eventPort"));
    goto LABEL_69;
  }

  if (resourceClass != 11)
  {
    if (resourceClass == 12)
    {
      v29 = streamCopy;
      ps_prm_opts_set_fastpath_stream(opts, v29);
      v30 = [v29 length];

      v31 = v30;
      goto LABEL_48;
    }

    goto LABEL_93;
  }

  capacity = streamCopy;
  ps_prm_opts_set_is_camera_stream(opts, 0);
  ps_prm_opts_set_use_prm_camera_reader(opts, 0);
  if (v24 != 1)
  {
LABEL_91:
    [PSGraphCompiler populateWriterOpts:buf forKey:? withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
    goto LABEL_92;
  }

  ps_prm_opts_set_pearlbuffer_width(opts, [capacity width], objc_msgSend(capacity, "dxWidth"), objc_msgSend(capacity, "dyWidth"), objc_msgSend(capacity, "scoreWidth"));
  ps_prm_opts_set_pearlbuffer_height(opts, [capacity height], objc_msgSend(capacity, "dxHeight"), objc_msgSend(capacity, "dyHeight"), objc_msgSend(capacity, "scoreHeight"));
  ps_prm_opts_set_pearlbuffer_pixelformat(opts, [capacity pixelFormat], objc_msgSend(capacity, "dxPixelFormat"), objc_msgSend(capacity, "dyPixelFormat"), objc_msgSend(capacity, "scorePixelFormat"));
  ps_prm_opts_set_pearlbuffer_has_attachments(opts, [capacity hasAttachments]);
  [capacity provider];
  if ((ps_resource_stream_provider_has_iosurface_metadata() & 1) == 0)
  {
LABEL_69:

    goto LABEL_70;
  }

  metadataIOSurfaceProperties7 = [capacity metadataIOSurfaceProperties];

  if (metadataIOSurfaceProperties7)
  {
    metadataIOSurfaceProperties8 = [capacity metadataIOSurfaceProperties];

    ps_prm_opts_set_pearlbuffer_metadata_iosurface_properties(opts, metadataIOSurfaceProperties8);
    goto LABEL_69;
  }

LABEL_97:
  v59 = [PSGraphCompiler populateWriterOpts:buf forKey:capacity withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
  [(PSGraphCompiler *)v59 populateReaderOpts:v60 forKey:v61 forGraph:v62 withCapacity:v63 withForwardingCount:v64, v65];
}

- (void)populateReaderOpts:(PSResourceManagerOptions *)opts forKey:(id)key forGraph:(id)graph withCapacity:(unint64_t)capacity withForwardingCount:(unint64_t)count
{
  v35 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  graphCopy = graph;
  v14 = [(PSContext *)self->_context resourceStreamForKey:keyCopy];
  if (!v14)
  {
    [PSGraphCompiler populateReaderOpts:keyCopy forKey:? forGraph:? withCapacity:? withForwardingCount:?];
    goto LABEL_36;
  }

  v15 = v14;
  if (![v14 resourceClass])
  {
LABEL_36:
    [PSGraphCompiler populateReaderOpts:keyCopy forKey:? forGraph:? withCapacity:? withForwardingCount:?];
LABEL_37:
    [PSGraphCompiler populateReaderOpts:keyCopy forKey:? forGraph:? withCapacity:? withForwardingCount:?];
  }

  if (![v15 options])
  {
    goto LABEL_37;
  }

  ps_prm_opts_set_return_capacity(opts, capacity);
  ps_prm_opts_set_resource_key(opts, [keyCopy UTF8String]);
  ps_prm_opts_set_graph(opts, graphCopy);
  ps_prm_opts_set_resource_class(opts, [v15 resourceClass]);
  ps_prm_opts_set_storage_mode(opts, [v15 options]);
  ps_prm_opts_set_forwarding_count(opts, count);
  resourceClass = [v15 resourceClass];
  provider = 9;
  if (resourceClass <= 0xB && ((1 << resourceClass) & 0xB80) != 0)
  {
    provider = [v15 provider];
  }

  if ([v15 resourceClass] == 12)
  {
    is_local_replay_session = ps_prm_is_local_replay_session(self->_prm_mgr);
    if ([keyCopy isEqualToString:PLSResourceKeyFastMagnetometer[0]])
    {
      v19 = is_local_replay_session == 0;
      v20 = 3;
      v21 = 5;
    }

    else
    {
      if (([keyCopy isEqualToString:PLSResourceKeyGCIMULeft[0]] & 1) == 0 && !objc_msgSend(keyCopy, "isEqualToString:", PLSResourceKeyGCIMURight[0]))
      {
        if ([keyCopy containsString:PLSResourceKeyAccessoryTrackingPrefix[0]])
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
            uTF8String = [keyCopy UTF8String];
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
    ps_prm_opts_set_fastpath_data_type(opts, v20);
  }

  [PSGraphCompiler populateOptsMetadataType:opts forProviderType:provider];
  if (!ps_resource_stream_provider_is_rc())
  {
    ps_prm_opts_set_is_camera_stream(opts, 0);
    goto LABEL_26;
  }

  v22 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    uTF8String2 = [keyCopy UTF8String];
    v24 = ps_resource_stream_provider_representation();
    v31 = 136315394;
    uTF8String = uTF8String2;
    v33 = 2080;
    v34 = v24;
    _os_log_impl(&dword_25EA3A000, v22, OS_LOG_TYPE_DEBUG, "Setting reader instance %s as a camera stream with provider type %s", &v31, 0x16u);
  }

  v25 = 1;
  ps_prm_opts_set_is_camera_stream(opts, 1);
  if (provider <= 8 && ((1 << provider) & 0x124) != 0)
  {
    v26 = +[PLSSettings currentSettings];
    if ([v26 enableHybridLoop])
    {
      v27 = +[PSExecutionSessionWorkarounds sharedInstance];
      v28 = [v27 shouldUsePRMCameraForSuperframe:keyCopy];

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
  ps_prm_opts_set_use_prm_camera_reader(opts, v25);
  ps_prm_opts_set_provider_type(opts, provider);
  ps_prm_opts_set_ariadne_id(opts, [PLSDevice getAriadneID:keyCopy]+ 4);

  v29 = *MEMORY[0x277D85DE8];
}

- (void)initializeGroupedTriggersForTransitionBlock:(id)block
{
  blockCopy = block;
  addedGraphs = [blockCopy addedGraphs];
  v6 = [addedGraphs count];

  if (v6)
  {
    v7 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_DEFAULT, "Initializing GSTs for transition block.", v8, 2u);
    }
  }

  [(PSGraphCompiler *)self createGroupedTriggersForTransitionBlock:blockCopy];
}

- (void)createGroupedTriggersOverXPCForTransitionBlock:(id)block
{
  v92 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  postTransitionGraphs = [blockCopy postTransitionGraphs];
  v74 = [(PSGraphCompiler *)self getProducerOutputRates:?];
  v5 = xpc_dictionary_create(0, 0, 0);
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  executionSession = [WeakRetained executionSession];
  name = [executionSession name];
  uTF8String = [name UTF8String];
  v10 = getpid();
  xdict = v5;
  populateGraphSetInfo(v5, 1uLL, uTF8String, v10);

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  addedGraphs = [blockCopy addedGraphs];
  v12 = [addedGraphs countByEnumeratingWithState:&v82 objects:v91 count:16];
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
          objc_enumerationMutation(addedGraphs);
        }

        v16 = *(*(&v82 + 1) + 8 * i);
        tasks = [v16 tasks];
        v18 = [tasks count];

        if (v18)
        {
          [(PSGraphCompiler *)self setThreadPoolIDForGraph:v16 withTransitionBlock:blockCopy];
          [(PSGraphCompiler *)self addGraphToThreadPool:v16];
          v19 = objc_loadWeakRetained(&self->_transitionManager);
          executionSession2 = [v19 executionSession];
          shouldUseOptimizedVsyncPath = [executionSession2 shouldUseOptimizedVsyncPath];

          if ((shouldUseOptimizedVsyncPath & 1) == 0)
          {
            v22 = objc_loadWeakRetained(&self->_transitionMonitor);
            [v22 lock];

            v23 = MEMORY[0x277CCACA8];
            name2 = [v16 name];
            v25 = [v23 stringWithFormat:@"%@", name2];
            v26 = objc_loadWeakRetained(&self->_transitionMonitor);
            [v26 setTransitionStateGroupedTriggersInitCurGST:v25];

            v27 = objc_loadWeakRetained(&self->_transitionMonitor);
            [v27 unlock];

            if (![(PSGraphCompiler *)self setupCadenceGroupedTriggerInfoForGraph:v16 withProducerOutputRates:v74 withTransitionBlock:blockCopy withGraphInfoDict:xdict])
            {
              v28 = __PLSLogSharedInstance();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
              {
                name3 = [v16 name];
                *buf = 138477827;
                v87 = name3;
                _os_log_impl(&dword_25EA3A000, v28, OS_LOG_TYPE_DEBUG, "Falling back to legacy GST for graph %{private}@", buf, 0xCu);
              }

              [(PSGraphCompiler *)self setupLegacyGroupedTriggerInfoForGraph:v16 withProducerOutputRates:v74 withTransitionBlock:blockCopy withGraphInfoDict:xdict];
            }
          }
        }
      }

      v13 = [addedGraphs countByEnumeratingWithState:&v82 objects:v91 count:16];
    }

    while (v13);
  }

  v30 = xpc_dictionary_get_value(xdict, "graphs_array");
  count = xpc_array_get_count(v30);
  v32 = objc_loadWeakRetained(&self->_transitionManager);
  executionSession3 = [v32 executionSession];
  shouldUseOptimizedVsyncPath2 = [executionSession3 shouldUseOptimizedVsyncPath];

  if ((shouldUseOptimizedVsyncPath2 & 1) != 0 || !count)
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
    executionSession4 = [v37 executionSession];
    systemGraphSession = [executionSession4 systemGraphSession];
    error_out = 0;
    v40 = xpc_session_send_message_with_reply_sync(systemGraphSession, xdict, &error_out);
    v41 = error_out;

    v76 = v40;
    if (v40 || !v41)
    {
      v70 = v41;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      obj = [blockCopy addedGraphs];
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
          name4 = [v46 name];
          v48 = xpc_dictionary_get_value(v76, [name4 UTF8String]);

          if (!v48)
          {
            v63 = __PLSLogSharedInstance();
            if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
            {
              name5 = [v46 name];
              *buf = 138477827;
              v87 = name5;
              _os_log_impl(&dword_25EA3A000, v63, OS_LOG_TYPE_DEBUG, "GST not assigned to graph %{private}@", buf, 0xCu);
            }

LABEL_36:

            goto LABEL_37;
          }

          uint64 = xpc_dictionary_get_uint64(v48, "gst_idx");
          v50 = __PLSLogSharedInstance();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
          {
            name6 = [v46 name];
            uTF8String2 = [name6 UTF8String];
            *buf = 134218242;
            v87 = uint64;
            v88 = 2080;
            v89 = uTF8String2;
            _os_log_impl(&dword_25EA3A000, v50, OS_LOG_TYPE_DEBUG, "Received a gst index = %llu for graph %s", buf, 0x16u);
          }

          if (uint64 == 0xFFFFFFFF)
          {
            [(PSGraphCompiler *)buf createGroupedTriggersOverXPCForTransitionBlock:v46];
LABEL_42:
            [(PSGraphCompiler *)buf createGroupedTriggersOverXPCForTransitionBlock:?];
          }

          v53 = objc_loadWeakRetained(&self->_transitionManager);
          executionSession5 = [v53 executionSession];
          gst = ps_gsm_get_gst([executionSession5 gsm], uint64);

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
              name7 = [v46 name];
              uTF8String3 = [name7 UTF8String];
              *buf = 134218242;
              v87 = v59;
              v88 = 2080;
              v89 = uTF8String3;
              _os_log_impl(&dword_25EA3A000, v60, OS_LOG_TYPE_DEBUG, "Received a sharedTriggerIndex = %llu for graph %s", buf, 0x16u);
            }

            v63 = objc_loadWeakRetained(&self->_transitionManager);
            executionSession6 = [v63 executionSession];
            *(uint64 + 352) = ps_gsm_get_shared_trigger([executionSession6 gsm], v59);

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

- (void)createGroupedTriggersForTransitionBlock:(id)block
{
  v34 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  postTransitionGraphs = [blockCopy postTransitionGraphs];
  v26 = [(PSGraphCompiler *)self getProducerOutputRates:?];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  addedGraphs = [blockCopy addedGraphs];
  v6 = [addedGraphs countByEnumeratingWithState:&v27 objects:v33 count:16];
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
          objc_enumerationMutation(addedGraphs);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        tasks = [v10 tasks];
        v12 = [tasks count];

        if (v12)
        {
          [(PSGraphCompiler *)self setThreadPoolIDForGraph:v10 withTransitionBlock:blockCopy];
          [(PSGraphCompiler *)self addGraphToThreadPool:v10];
          WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
          executionSession = [WeakRetained executionSession];
          shouldUseOptimizedVsyncPath = [executionSession shouldUseOptimizedVsyncPath];

          if ((shouldUseOptimizedVsyncPath & 1) == 0)
          {
            v16 = objc_loadWeakRetained(&self->_transitionMonitor);
            [v16 lock];

            v17 = MEMORY[0x277CCACA8];
            name = [v10 name];
            v19 = [v17 stringWithFormat:@"%@", name];
            v20 = objc_loadWeakRetained(&self->_transitionMonitor);
            [v20 setTransitionStateGroupedTriggersInitCurGST:v19];

            v21 = objc_loadWeakRetained(&self->_transitionMonitor);
            [v21 unlock];

            if (![(PSGraphCompiler *)self createCadenceGroupedTriggerForGraph:v10 withProducerOutputRates:v26 withTransitionBlock:blockCopy])
            {
              v22 = __PLSLogSharedInstance();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
              {
                name2 = [v10 name];
                *buf = 138477827;
                v32 = name2;
                _os_log_impl(&dword_25EA3A000, v22, OS_LOG_TYPE_DEBUG, "Falling back to legacy GST for graph %{private}@", buf, 0xCu);
              }

              [(PSGraphCompiler *)self createLegacyGroupedTriggerForGraph:v10 withProducerOutputRates:v26 withTransitionBlock:blockCopy];
            }
          }
        }
      }

      v7 = [addedGraphs countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v7);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)checkForBufferSyncGroupedSources:(id)sources intermediateWaitSources:(id)waitSources graph:(id)graph
{
  v44 = *MEMORY[0x277D85DE8];
  sourcesCopy = sources;
  waitSourcesCopy = waitSources;
  graphCopy = graph;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  tasks = [graphCopy tasks];
  v29 = [tasks countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v29)
  {
    v10 = *v39;
    v31 = tasks;
    v32 = graphCopy;
    v28 = *v39;
    do
    {
      v11 = 0;
      do
      {
        if (*v39 != v10)
        {
          objc_enumerationMutation(tasks);
        }

        v30 = v11;
        v12 = *(*(&v38 + 1) + 8 * v11);
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        inputs = [v12 inputs];
        v14 = [inputs countByEnumeratingWithState:&v34 objects:v42 count:16];
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
                objc_enumerationMutation(inputs);
              }

              v18 = *(*(&v34 + 1) + 8 * i);
              type = [v18 type];
              resourceKey = [v18 resourceKey];
              if ([sourcesCopy containsObject:resourceKey])
              {
                v21 = 0;
              }

              else
              {
                resourceKey2 = [v18 resourceKey];
                v23 = [waitSourcesCopy containsObject:resourceKey2];

                v21 = v23 ^ 1;
              }

              if (!type && (v21 & 1) == 0 && [v18 capacity] > 1)
              {

                isGroupable = 0;
                resolvedDomain = v31;
                graphCopy = v32;
                goto LABEL_23;
              }
            }

            v15 = [inputs countByEnumeratingWithState:&v34 objects:v42 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        v11 = v30 + 1;
        tasks = v31;
        graphCopy = v32;
        v10 = v28;
      }

      while (v30 + 1 != v29);
      v29 = [v31 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v29);
  }

  resolvedDomain = [graphCopy resolvedDomain];
  isGroupable = [resolvedDomain isGroupable];
LABEL_23:

  v26 = *MEMORY[0x277D85DE8];
  return isGroupable;
}

- (BOOL)isCameraDomain:(id)domain withContext:(id)context
{
  v20 = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allStreams = [context allStreams];
  v7 = [allStreams countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(allStreams);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        domain = [v10 domain];
        if ([domain isEqual:domainCopy])
        {
          if ([v10 type] == 3)
          {

LABEL_15:
            LOBYTE(v7) = 1;
            goto LABEL_16;
          }

          type = [v10 type];

          if (type == 5)
          {
            goto LABEL_15;
          }
        }

        else
        {
        }
      }

      v7 = [allStreams countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (void)setupGSMSourceDescriptors:(id *)descriptors storageModes:(unsigned __int8 *)modes graphName:(id)name graphFrequencey:(unint64_t)frequencey systemSources:(id)sources intermediateSources:(id)intermediateSources producedOutputRates:(id)rates device:(id)self0 context:(id)self1 syncedBuffers:(BOOL)self2
{
  v107 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  sourcesCopy = sources;
  intermediateSourcesCopy = intermediateSources;
  ratesCopy = rates;
  deviceCopy = device;
  contextCopy = context;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  obj = sourcesCopy;
  v16 = [obj countByEnumeratingWithState:&v97 objects:v106 count:16];
  frequenceyCopy = frequencey;
  if (v16)
  {
    v17 = v16;
    LODWORD(v18) = 0;
    v85 = *v98;
    do
    {
      v19 = 0;
      v18 = v18;
      v20 = &descriptors[v18];
      do
      {
        if (*v98 != v85)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *&v19[*(&v97 + 1)];
        v22 = [deviceCopy propertiesForKey:v21];
        v23 = [contextCopy resourceStreamForKey:v21];
        v90 = v22;
        if ([v23 framerate])
        {
          framerate = [v23 framerate];
          if (framerate < frequencey || (v25 = framerate, v26 = framerate / frequencey, framerate % frequencey))
          {
            [PSGraphCompiler setupGSMSourceDescriptors:buf storageModes:? graphName:? graphFrequencey:? systemSources:? intermediateSources:? producedOutputRates:? device:? context:? syncedBuffers:?];
LABEL_56:
            v92 = 0;
            asprintf(&v92, "Producer rate (%lu Hz) for key %s is an invalid multiple of the requested rate (%llu Hz) for graph %s", [v22 unsignedLongValue], objc_msgSend(v19, "UTF8String"), frequencey, objc_msgSend(nameCopy, "UTF8String"));
            v68 = __PLSLogSharedInstance();
            if (os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
            {
              unsignedLongValue = [v22 unsignedLongValue];
              uTF8String = [v19 UTF8String];
              uTF8String2 = [nameCopy UTF8String];
              *buf = 136316418;
              *v102 = "[PSGraphCompiler setupGSMSourceDescriptors:storageModes:graphName:graphFrequencey:systemSources:intermediateSources:producedOutputRates:device:context:syncedBuffers:]";
              *&v102[8] = 1024;
              *&v102[10] = 3008;
              *&v102[14] = 2048;
              *&v102[16] = unsignedLongValue;
              *&v102[24] = 2080;
              *&v102[26] = uTF8String;
              *&v102[34] = 2048;
              *&v102[36] = frequencey;
              v103 = 2080;
              v104 = uTF8String2;
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
            framerate2 = [v23 framerate];
            *buf = 138478083;
            *v102 = v21;
            *&v102[8] = 2048;
            *&v102[10] = framerate2;
            _os_log_impl(&dword_25EA3A000, v28, OS_LOG_TYPE_ERROR, "source camera key %{private}@ rate %lu should be > 0", buf, 0x16u);
          }

          v27 = 1;
        }

        v20->var2 = v27;
        [v21 cStringUsingEncoding:4];
        __strlcpy_chk();
        modes[v18++] = [v23 options] != 1;

        v19 += 8;
        ++v20;
        --v17;
        frequencey = frequenceyCopy;
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
  v78 = intermediateSourcesCopy;
  v30 = [v78 countByEnumeratingWithState:&v93 objects:v105 count:16];
  v31 = contextCopy;
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
    v34 = &descriptors[v18];
    do
    {
      if (*v94 != v80)
      {
        objc_enumerationMutation(v78);
      }

      v19 = *(*(&v93 + 1) + v33);
      v35 = [ratesCopy valueForKey:v19];
      if (!v35)
      {
        goto LABEL_61;
      }

      v22 = v35;
      if ([v35 unsignedLongValue] % frequencey)
      {
        goto LABEL_56;
      }

      v84 = [v22 unsignedLongValue] / frequencey;
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
      unsignedLongValue2 = [v22 unsignedLongValue];
      resolvedDomain = [v37 resolvedDomain];
      v39 = [(PSGraphCompiler *)self isCameraDomain:resolvedDomain withContext:v31];

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

        resolvedDomain2 = [v37 resolvedDomain];
        uTF8String3 = [v19 UTF8String];
        *buf = 136315906;
        *v102 = v41;
        *&v102[8] = 2112;
        *&v102[10] = resolvedDomain2;
        *&v102[18] = 2080;
        *&v102[20] = uTF8String3;
        *&v102[28] = 2048;
        *&v102[30] = unsignedLongValue2;
        _os_log_impl(&dword_25EA3A000, v40, OS_LOG_TYPE_DEBUG, "Found %s stream domain %@ for key %s, producer rate %llu", buf, 0x2Au);

        frequencey = frequenceyCopy;
      }

      if (v39)
      {
        v44 = 0x5A / unsignedLongValue2;
        goto LABEL_44;
      }

      resolvedDomain3 = [v37 resolvedDomain];
      v46 = [MEMORY[0x277D3E6C8] customDomain:PLSResourceKeyVsync[0]];
      v47 = [resolvedDomain3 isEqual:v46];

      if (v47)
      {
        v48 = 90;
LABEL_43:
        v44 = v48 / unsignedLongValue2;
        frequencey = frequenceyCopy;
        goto LABEL_44;
      }

      resolvedDomain4 = [v37 resolvedDomain];
      v50 = [MEMORY[0x277D3E6C8] customDomain:PLSResourceKeyGyro[0]];
      v51 = [resolvedDomain4 isEqual:v50];

      if (v51)
      {
        goto LABEL_42;
      }

      resolvedDomain5 = [v37 resolvedDomain];
      v53 = [MEMORY[0x277D3E6C8] customDomain:PLSResourceKeyAccel[0]];
      v54 = [resolvedDomain5 isEqual:v53];

      if (v54)
      {
        goto LABEL_42;
      }

      resolvedDomain6 = [v37 resolvedDomain];
      v56 = [MEMORY[0x277D3E6C8] customDomain:PLSResourceKeyBioMotion[0]];
      v57 = [resolvedDomain6 isEqual:v56];

      if (v57 || ([v37 resolvedDomain], v58 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277D3E6C8], "customDomain:", PLSResourceKeyVIS[0]), v59 = objc_claimAutoreleasedReturnValue(), v60 = objc_msgSend(v58, "isEqual:", v59), v59, v58, v60))
      {
LABEL_42:
        v48 = 100;
        goto LABEL_43;
      }

      v64 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
      {
        uTF8String4 = [v19 UTF8String];
        *buf = 136315138;
        *v102 = uTF8String4;
        _os_log_impl(&dword_25EA3A000, v64, OS_LOG_TYPE_DEBUG, "No matching stream domain found for %s", buf, 0xCu);
      }

      LODWORD(v44) = 1;
      frequencey = frequenceyCopy;
LABEL_44:
      v61 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
      {
        uTF8String5 = [v19 UTF8String];
        *buf = 67109378;
        *v102 = v44;
        *&v102[4] = 2080;
        *&v102[6] = uTF8String5;
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

      modes[v18++] = [v37 options] != 1;
      v33 += 8;
      ++v34;
      v32 = v86 - 1;
      v31 = contextCopy;
    }

    while (v86 != 1);
    v66 = [v78 countByEnumeratingWithState:&v93 objects:v105 count:16];
    v32 = v66;
  }

  while (v66);
LABEL_54:

  v67 = *MEMORY[0x277D85DE8];
}

- (BOOL)validOffsetForGraph:(id)graph inputs:(id)inputs highestStride:(unsigned int *)stride desiredOffset:(unsigned int *)offset
{
  v85 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  inputsCopy = inputs;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  objectEnumerator = [inputsCopy objectEnumerator];
  v12 = [objectEnumerator countByEnumeratingWithState:&v68 objects:v84 count:16];
  if (!v12)
  {
    v13 = objectEnumerator;
    goto LABEL_37;
  }

  offsetCopy = offset;
  strideCopy = stride;
  v58 = inputsCopy;
  v13 = 0;
  unsignedIntValue2 = 0;
  v15 = *v69;
  do
  {
    for (i = 0; i != v12; i = (i + 1))
    {
      if (*v69 != v15)
      {
        objc_enumerationMutation(objectEnumerator);
      }

      v17 = *(*(&v68 + 1) + 8 * i);
      stride = [v17 stride];
      unsignedIntValue = [stride unsignedIntValue];

      if (unsignedIntValue2 < unsignedIntValue)
      {
        stride2 = [v17 stride];
        unsignedIntValue2 = [stride2 unsignedIntValue];

        v21 = v17;
        v13 = v21;
      }
    }

    v12 = [objectEnumerator countByEnumeratingWithState:&v68 objects:v84 count:16];
  }

  while (v12);

  if (!v13)
  {
    LOBYTE(v12) = 0;
    inputsCopy = v58;
    goto LABEL_38;
  }

  context = [(PSGraphCompiler *)self context];
  resourceKey = [v13 resourceKey];
  v24 = [context resourceStreamForKey:resourceKey];

  supportedStrides = [v24 supportedStrides];
  v26 = [supportedStrides count];

  if (!v26)
  {
    v12 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      resourceKey2 = [v13 resourceKey];
      name = [graphCopy name];
      *buf = 138478083;
      v73 = resourceKey2;
      v74 = 2113;
      *v75 = name;
      _os_log_impl(&dword_25EA3A000, v12, OS_LOG_TYPE_DEFAULT, "Input %{private}@ in graph %{private}@ doesn't support strides", buf, 0x16u);
    }

    LOBYTE(v12) = 0;
    goto LABEL_29;
  }

  supportedStrides2 = [v24 supportedStrides];
  stride3 = [v13 stride];
  v29 = [supportedStrides2 objectForKeyedSubscript:stride3];
  offset = [v29 offset];

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
  v54 = graphCopy;
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
      stride4 = [v31 stride];
      unsignedIntValue3 = [stride4 unsignedIntValue];

      context2 = [(PSGraphCompiler *)self context];
      resourceKey3 = [v31 resourceKey];
      v36 = [context2 resourceStreamForKey:resourceKey3];

      supportedStrides3 = [v36 supportedStrides];
      v38 = [supportedStrides3 count];

      if (!v38)
      {
        v46 = __PLSLogSharedInstance();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          resourceKey4 = [v31 resourceKey];
          graphCopy = v54;
          name2 = [v54 name];
          *buf = 138478083;
          v73 = resourceKey4;
          v74 = 2113;
          *v75 = name2;
          _os_log_impl(&dword_25EA3A000, v46, OS_LOG_TYPE_DEFAULT, "Input %{private}@ in graph %{private}@ doesn't support strides", buf, 0x16u);

LABEL_35:
          inputsCopy = v58;

          LOBYTE(v12) = 0;
          v24 = v55;
          goto LABEL_36;
        }

LABEL_34:
        graphCopy = v54;
        goto LABEL_35;
      }

      supportedStrides4 = [v36 supportedStrides];
      stride5 = [v31 stride];
      v41 = [supportedStrides4 objectForKeyedSubscript:stride5];
      offset2 = [v41 offset];

      if (offset % unsignedIntValue3 != offset2)
      {
        v46 = __PLSLogSharedInstance();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          resourceKey5 = [v31 resourceKey];
          graphCopy = v54;
          name3 = [v54 name];
          v51 = [v55 key];
          *buf = 138413826;
          v73 = resourceKey5;
          v74 = 2112;
          *v75 = name3;
          *&v75[8] = 1024;
          *v76 = offset2;
          *&v76[4] = 1024;
          *&v76[6] = unsignedIntValue3;
          v77 = 2112;
          v78 = v51;
          v79 = 1024;
          v80 = unsignedIntValue2;
          v81 = 1024;
          v82 = offset;
          _os_log_impl(&dword_25EA3A000, v46, OS_LOG_TYPE_ERROR, "Input %@ in graph %@ has incompatible offset %u for stride %u, max strided input %@ had offset %u for stride %u", buf, 0x38u);

          goto LABEL_35;
        }

        goto LABEL_34;
      }
    }

    graphCopy = v54;
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
    name4 = [graphCopy name];
    *buf = 138413058;
    v73 = name4;
    v74 = 1024;
    *v75 = unsignedIntValue2;
    *&v75[4] = 1024;
    *&v75[6] = offset;
    *v76 = 2112;
    *&v76[2] = v13;
    _os_log_impl(&dword_25EA3A000, v12, OS_LOG_TYPE_DEBUG, "Graph %@ using stride %u, offset %u, chosen by stream request %@", buf, 0x22u);
  }

  *offsetCopy = offset;
  *strideCopy = unsignedIntValue2;
  LOBYTE(v12) = 1;
LABEL_29:
  inputsCopy = v58;
LABEL_36:

LABEL_37:
LABEL_38:

  v52 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)createCadenceGroupedTriggerForGraph:(id)graph withTransitionBlock:(id)block
{
  v31 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v7 = [(PSGraphCompiler *)self getStridedGSTWaitSources:graphCopy transitionBlock:block];
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

          resourceKey = [*(*(&v24 + 1) + 8 * i) resourceKey];
          [v8 addObject:resourceKey];
        }

        v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v11);
    }

    resolvedDomain = [graphCopy resolvedDomain];
    v16 = [MEMORY[0x277D3E6C8] customDomain:@"dsjcam"];
    if ([resolvedDomain isEqual:v16])
    {
      currentSystemStride = [graphCopy currentSystemStride];
      integerValue = [currentSystemStride integerValue];

      if (integerValue > 2)
      {
        v19 = 2;
LABEL_17:
        v21 = [(PSGraphCompiler *)self createCadenceGroupedTriggerForGraph:graphCopy withSources:v8 withOffset:v19, v24];
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
    name = [graphCopy name];
    *buf = 138477827;
    v30 = name;
    _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_DEFAULT, "Unsupported wait resource in graph %{private}@ detected", buf, 0xCu);
  }

  v21 = 0;
LABEL_18:

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)setupForCadenceGroupedTriggerForGraph:(id)graph withTransitionBlock:(id)block withGraphInfo:(id)info withGraphSetInfo:(id)setInfo
{
  v37 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  infoCopy = info;
  setInfoCopy = setInfo;
  v13 = [(PSGraphCompiler *)self getStridedGSTWaitSources:graphCopy transitionBlock:block];
  if (v13)
  {
    v29 = infoCopy;
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

          resourceKey = [*(*(&v30 + 1) + 8 * i) resourceKey];
          [v14 addObject:resourceKey];
        }

        v17 = [v15 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v17);
    }

    resolvedDomain = [graphCopy resolvedDomain];
    v22 = [MEMORY[0x277D3E6C8] customDomain:@"dsjcam"];
    if ([resolvedDomain isEqual:v22])
    {
      currentSystemStride = [graphCopy currentSystemStride];
      integerValue = [currentSystemStride integerValue];

      infoCopy = v29;
      if (integerValue > 2)
      {
        v25 = 2;
LABEL_16:
        [(PSGraphCompiler *)self setupForCadenceGroupedTriggerForGraph:graphCopy withSources:v14 withOffset:v25 withGraphInfo:infoCopy withGraphSetInfo:setInfoCopy];
        goto LABEL_17;
      }
    }

    else
    {

      infoCopy = v29;
    }

    v25 = 0;
    goto LABEL_16;
  }

  v14 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    name = [graphCopy name];
    *buf = 138477827;
    v36 = name;
    _os_log_impl(&dword_25EA3A000, v14, OS_LOG_TYPE_DEFAULT, "Unsupported wait resource in graph %{private}@ detected", buf, 0xCu);
  }

LABEL_17:

  v27 = *MEMORY[0x277D85DE8];
  return v13 != 0;
}

- (void)setupForLegacyGroupedTriggerForGraph:(id)graph withProducerOutputRates:(id)rates withTransitionBlock:(id)block withGraphInfo:(id)info withGraphSetInfo:(id)setInfo
{
  v74 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  ratesCopy = rates;
  blockCopy = block;
  infoCopy = info;
  setInfoCopy = setInfo;
  if (!infoCopy)
  {
    [PSGraphCompiler setupForLegacyGroupedTriggerForGraph:withProducerOutputRates:withTransitionBlock:withGraphInfo:withGraphSetInfo:];
  }

  v68 = setInfoCopy;
  v69 = ratesCopy;
  v67 = infoCopy;
  v17 = [(PSGraphCompiler *)self getIntermediateSources:graphCopy withTransitionBlock:blockCopy];
  v66 = blockCopy;
  v18 = [(PSGraphCompiler *)self getSystemSources:graphCopy withTransitionBlock:blockCopy withIntermediateSources:v17];
  v19 = [(PSGraphCompiler *)self filterNonANEWaitResources:v17 withGraph:graphCopy];
  v20 = [(PSGraphCompiler *)self filterNonANEWaitResources:v18 withGraph:graphCopy];
  v21 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v71 = v20;
    v72 = 2112;
    v73 = v19;
    _os_log_impl(&dword_25EA3A000, v21, OS_LOG_TYPE_DEBUG, "after nonANEWaitSource filter - systemWaitSources %@ \n intermediateWaitSources %@ \n", buf, 0x16u);
  }

  v22 = [(PSGraphCompiler *)self checkForBufferSyncGroupedSources:v20 intermediateWaitSources:v19 graph:graphCopy];
  v23 = [v20 count];
  v24 = [v19 count] + v23;
  systemPulseStride = [graphCopy systemPulseStride];
  unsignedIntValue = [systemPulseStride unsignedIntValue];

  v26 = v68;
  v27 = v69;
  if (v24 >= 1)
  {
    v63 = v18;
    v64 = v17;
    v28 = v24 & 0x7FFFFFFF;
    v29 = malloc_type_calloc(v28, 0x88uLL, 0x1000040B5CA6940uLL);
    v30 = malloc_type_calloc(v28, 1uLL, 0x100004077774924uLL);
    name = [graphCopy name];
    v58 = v22;
    LOBYTE(v50) = v22;
    v32 = v29;
    selfCopy = self;
    -[PSGraphCompiler setupGSMSourceDescriptors:storageModes:graphName:graphFrequencey:systemSources:intermediateSources:producedOutputRates:device:context:syncedBuffers:](self, "setupGSMSourceDescriptors:storageModes:graphName:graphFrequencey:systemSources:intermediateSources:producedOutputRates:device:context:syncedBuffers:", v29, v30, name, [graphCopy resolvedFrequency], v20, v19, v69, self->_device, self->_context, v50);

    v61 = v20;
    v33 = [v20 count];
    v62 = v19;
    v34 = [v19 count] + v33 != 1;
    if (![graphCopy executionType])
    {
      [PSGraphCompiler setupForLegacyGroupedTriggerForGraph:buf withProducerOutputRates:graphCopy withTransitionBlock:? withGraphInfo:? withGraphSetInfo:?];
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
    activeThreadPools = selfCopy->_activeThreadPools;
    v45 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(graphCopy, "threadPoolID")}];
    v60 = [(NSMutableDictionary *)activeThreadPools objectForKey:v45];

    pointerValue = [v60 pointerValue];
    name2 = [graphCopy name];
    uTF8String = [name2 UTF8String];
    executionType = [graphCopy executionType];
    threadPoolID = [graphCopy threadPoolID];
    subgraph_idx = [graphCopy subgraph_idx];
    resolvedDomain = [graphCopy resolvedDomain];
    v48 = [resolvedDomain key];
    populateGraphInfo(v67, 1uLL, uTF8String, v28, v56 && v58, executionType, threadPoolID, (pointerValue + 72), subgraph_idx, unsignedIntValue, 0, empty, v38, v36, v37, 0, [v48 UTF8String]);

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

- (void)setupForCadenceGroupedTriggerForGraph:(id)graph withSources:(id)sources withOffset:(unsigned int)offset withGraphInfo:(id)info withGraphSetInfo:(id)setInfo
{
  v57 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  sourcesCopy = sources;
  infoCopy = info;
  setInfoCopy = setInfo;
  if (!infoCopy)
  {
    [PSGraphCompiler setupForCadenceGroupedTriggerForGraph:withSources:withOffset:withGraphInfo:withGraphSetInfo:];
  }

  v16 = setInfoCopy;
  offsetCopy = offset;
  currentSystemStride = [graphCopy currentSystemStride];
  unsignedIntValue = [currentSystemStride unsignedIntValue];

  if (![graphCopy executionType])
  {
    [PSGraphCompiler setupForCadenceGroupedTriggerForGraph:graphCopy withSources:? withOffset:? withGraphInfo:? withGraphSetInfo:?];
  }

  v47 = v16;
  v48 = infoCopy;
  empty = xpc_array_create_empty();
  v46 = xpc_array_create_empty();
  v45 = xpc_array_create_empty();
  v19 = xpc_array_create_empty();
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v20 = sourcesCopy;
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
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(graphCopy, "threadPoolID")}];
  v44 = [(NSMutableDictionary *)activeThreadPools objectForKey:v30];

  pointerValue = [v44 pointerValue];
  resolvedDomain = [graphCopy resolvedDomain];
  v32 = [MEMORY[0x277D3E6C8] customDomain:@"dsjcam"];
  v33 = [resolvedDomain isEqual:v32];

  name = [graphCopy name];
  uTF8String = [name UTF8String];
  v41 = [v20 count];
  executionType = [graphCopy executionType];
  threadPoolID = [graphCopy threadPoolID];
  subgraph_idx = [graphCopy subgraph_idx];
  resolvedDomain2 = [graphCopy resolvedDomain];
  v36 = [resolvedDomain2 key];
  populateGraphInfo(v48, 2uLL, uTF8String, v41, 0, executionType, threadPoolID, (pointerValue + 72), subgraph_idx, unsignedIntValue, offsetCopy, empty, v19, v46, v45, v33, [v36 UTF8String]);

  appendGraphInfotoGraphSetInfo(v48, v47);
  v37 = *MEMORY[0x277D85DE8];
}

- (BOOL)setupLegacyGroupedTriggerInfoForGraph:(id)graph withProducerOutputRates:(id)rates withTransitionBlock:(id)block withGraphInfoDict:(id)dict
{
  graphCopy = graph;
  ratesCopy = rates;
  blockCopy = block;
  dictCopy = dict;
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  executionSession = [WeakRetained executionSession];
  if ([executionSession shouldUseOptimizedVsyncPath])
  {

LABEL_6:
    goto LABEL_7;
  }

  workloadWait = [graphCopy workloadWait];

  if (!workloadWait)
  {
    if (!dictCopy)
    {
      [PSGraphCompiler setupLegacyGroupedTriggerInfoForGraph:withProducerOutputRates:withTransitionBlock:withGraphInfoDict:];
    }

    WeakRetained = xpc_dictionary_create(0, 0, 0);
    [(PSGraphCompiler *)self setupForLegacyGroupedTriggerForGraph:graphCopy withProducerOutputRates:ratesCopy withTransitionBlock:blockCopy withGraphInfo:WeakRetained withGraphSetInfo:dictCopy];
    goto LABEL_6;
  }

LABEL_7:

  return 1;
}

- (BOOL)setupCadenceGroupedTriggerInfoForGraph:(id)graph withProducerOutputRates:(id)rates withTransitionBlock:(id)block withGraphInfoDict:(id)dict
{
  v63 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  ratesCopy = rates;
  blockCopy = block;
  dictCopy = dict;
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  executionSession = [WeakRetained executionSession];
  if ([executionSession shouldUseOptimizedVsyncPath])
  {

LABEL_4:
    v17 = 1;
LABEL_5:

    v18 = *MEMORY[0x277D85DE8];
    return v17;
  }

  workloadWait = [graphCopy workloadWait];

  if (workloadWait)
  {
    goto LABEL_4;
  }

  if ([graphCopy executionType])
  {
    v51 = ratesCopy;
    v52 = blockCopy;
    v50 = dictCopy;
    if (!dictCopy)
    {
      [PSGraphCompiler setupCadenceGroupedTriggerInfoForGraph:withProducerOutputRates:withTransitionBlock:withGraphInfoDict:];
    }

    v20 = xpc_dictionary_create(0, 0, 0);
    v21 = +[PSExecutionSessionWorkarounds sharedInstance];
    resolvedDomain = [graphCopy resolvedDomain];
    name = [graphCopy name];
    transitionManager = [(PSGraphCompiler *)self transitionManager];
    executionSession2 = [transitionManager executionSession];
    systemPulseRate = [executionSession2 systemPulseRate];
    v27 = [v21 shouldForceCadencedGSTforDomain:resolvedDomain forGraph:name systemPulseRate:systemPulseRate];

    if (v27)
    {
      blockCopy = v52;
      dictCopy = v50;
      v17 = [(PSGraphCompiler *)self setupForCadenceGroupedTriggerForGraph:graphCopy withTransitionBlock:v52 withGraphInfo:v20 withGraphSetInfo:v50];
      ratesCopy = v51;
LABEL_35:

      goto LABEL_5;
    }

    blockCopy = v52;
    v28 = [(PSGraphCompiler *)self getStridedGSTWaitSources:graphCopy transitionBlock:v52];
    ratesCopy = v51;
    if (v28)
    {
      v29 = [(PSGraphCompiler *)self matchInputsToGSTStrides:v28];
      v30 = v29;
      if (v29)
      {
        if ([v29 count])
        {
          v57 = 0;
          v17 = [(PSGraphCompiler *)self validOffsetForGraph:graphCopy inputs:v30 highestStride:&v57 + 4 desiredOffset:&v57];
          if (v17)
          {
            v49 = v28;
            v31 = [MEMORY[0x277CCABB0] numberWithInt:v57];
            [graphCopy setOffset:v31];

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

                  resourceKey = [*(*(&v53 + 1) + 8 * i) resourceKey];
                  [v32 addObject:resourceKey];
                }

                v35 = [v33 countByEnumeratingWithState:&v53 objects:v58 count:16];
              }

              while (v35);
            }

            dictCopy = v50;
            [(PSGraphCompiler *)self setupForCadenceGroupedTriggerForGraph:graphCopy withSources:v32 withOffset:v57 withGraphInfo:v20 withGraphSetInfo:v50];
            blockCopy = v52;
            v30 = v48;
            v28 = v49;
          }

          else
          {
            v32 = __PLSLogSharedInstance();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              name2 = [graphCopy name];
              *buf = 138477827;
              v60 = name2;
              _os_log_impl(&dword_25EA3A000, v32, OS_LOG_TYPE_DEFAULT, "Stride-based GST creation failed for graph %{private}@, no matching offset", buf, 0xCu);

              blockCopy = v52;
            }

            dictCopy = v50;
          }

          ratesCopy = v51;
          goto LABEL_34;
        }

        v17 = 1;
LABEL_28:
        dictCopy = v50;
LABEL_34:

        goto LABEL_35;
      }

      v40 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        name3 = [graphCopy name];
        *buf = 138478083;
        v60 = name3;
        v61 = 2113;
        v62 = v28;
        _os_log_impl(&dword_25EA3A000, v40, OS_LOG_TYPE_DEBUG, "Not all inputs for graph %{private}@ have strides, waitSources=%{private}@", buf, 0x16u);

        blockCopy = v52;
      }
    }

    else
    {
      v30 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        name4 = [graphCopy name];
        *buf = 138477827;
        v60 = name4;
        _os_log_impl(&dword_25EA3A000, v30, OS_LOG_TYPE_DEFAULT, "Unsupported wait resource in graph %{private}@ detected", buf, 0xCu);

        blockCopy = v52;
      }
    }

    v17 = 0;
    goto LABEL_28;
  }

  v43 = [PSGraphCompiler setupCadenceGroupedTriggerInfoForGraph:buf withProducerOutputRates:graphCopy withTransitionBlock:? withGraphInfoDict:?];
  return [(PSGraphCompiler *)v43 createCadenceGroupedTriggerForGraph:v44 withProducerOutputRates:v45 withTransitionBlock:v46, v47];
}

- (BOOL)createCadenceGroupedTriggerForGraph:(id)graph withProducerOutputRates:(id)rates withTransitionBlock:(id)block
{
  v47 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  executionSession = [WeakRetained executionSession];
  if (([executionSession shouldUseOptimizedVsyncPath] & 1) == 0)
  {
    workloadWait = [graphCopy workloadWait];

    if (workloadWait)
    {
      goto LABEL_4;
    }

    v15 = +[PSExecutionSessionWorkarounds sharedInstance];
    resolvedDomain = [graphCopy resolvedDomain];
    name = [graphCopy name];
    transitionManager = [(PSGraphCompiler *)self transitionManager];
    executionSession2 = [transitionManager executionSession];
    systemPulseRate = [executionSession2 systemPulseRate];
    v21 = [v15 shouldForceCadencedGSTforDomain:resolvedDomain forGraph:name systemPulseRate:systemPulseRate];

    if (v21)
    {
      v12 = [(PSGraphCompiler *)self createCadenceGroupedTriggerForGraph:graphCopy withTransitionBlock:blockCopy];
      goto LABEL_5;
    }

    v22 = [(PSGraphCompiler *)self getStridedGSTWaitSources:graphCopy transitionBlock:blockCopy];
    if (v22)
    {
      v23 = [(PSGraphCompiler *)self matchInputsToGSTStrides:v22];
      v24 = v23;
      if (v23)
      {
        if ([v23 count])
        {
          v41 = 0;
          if ([(PSGraphCompiler *)self validOffsetForGraph:graphCopy inputs:v24 highestStride:&v41 + 4 desiredOffset:&v41])
          {
            v36 = v22;
            v25 = [MEMORY[0x277CCABB0] numberWithInt:v41];
            [graphCopy setOffset:v25];

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

                  resourceKey = [*(*(&v37 + 1) + 8 * i) resourceKey];
                  [v26 addObject:resourceKey];
                }

                v29 = [v27 countByEnumeratingWithState:&v37 objects:v42 count:16];
              }

              while (v29);
            }

            v12 = [(PSGraphCompiler *)self createCadenceGroupedTriggerForGraph:graphCopy withSources:v26 withOffset:v41];
            v22 = v36;
          }

          else
          {
            v26 = __PLSLogSharedInstance();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              name2 = [graphCopy name];
              *buf = 138477827;
              v44 = name2;
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

      name4 = __PLSLogSharedInstance();
      if (os_log_type_enabled(name4, OS_LOG_TYPE_DEBUG))
      {
        name3 = [graphCopy name];
        *buf = 138478083;
        v44 = name3;
        v45 = 2113;
        v46 = v22;
        _os_log_impl(&dword_25EA3A000, name4, OS_LOG_TYPE_DEBUG, "Not all inputs for graph %{private}@ had strides, waitSources=%{private}@", buf, 0x16u);
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

      name4 = [graphCopy name];
      *buf = 138477827;
      v44 = name4;
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

- (void)createLegacyGroupedTriggerForGraph:(id)graph withProducerOutputRates:(id)rates withTransitionBlock:(id)block
{
  *(&v68[2] + 2) = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  ratesCopy = rates;
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  executionSession = [WeakRetained executionSession];
  if ([executionSession shouldUseOptimizedVsyncPath])
  {

LABEL_20:
    v52 = *MEMORY[0x277D85DE8];
    return;
  }

  workloadWait = [graphCopy workloadWait];

  if (workloadWait)
  {
    goto LABEL_20;
  }

  v14 = [(PSGraphCompiler *)self getIntermediateSources:graphCopy withTransitionBlock:blockCopy];
  v15 = [(PSGraphCompiler *)self getSystemSources:graphCopy withTransitionBlock:blockCopy withIntermediateSources:v14];
  v16 = [(PSGraphCompiler *)self filterNonANEWaitResources:v14 withGraph:graphCopy];
  v64 = v15;
  v17 = [(PSGraphCompiler *)self filterNonANEWaitResources:v15 withGraph:graphCopy];
  v18 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v66 = v17;
    v67 = 2112;
    v68[0] = v16;
    _os_log_impl(&dword_25EA3A000, v18, OS_LOG_TYPE_DEBUG, "after nonANEWaitSource filter - systemWaitSources %@ \n intermediateWaitSources %@ \n", buf, 0x16u);
  }

  v19 = [(PSGraphCompiler *)self checkForBufferSyncGroupedSources:v17 intermediateWaitSources:v16 graph:graphCopy];
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
  name = [graphCopy name];
  v59 = v19;
  LOBYTE(v54) = v19;
  v63 = v23;
  -[PSGraphCompiler setupGSMSourceDescriptors:storageModes:graphName:graphFrequencey:systemSources:intermediateSources:producedOutputRates:device:context:syncedBuffers:](self, "setupGSMSourceDescriptors:storageModes:graphName:graphFrequencey:systemSources:intermediateSources:producedOutputRates:device:context:syncedBuffers:", v22, v23, name, [graphCopy resolvedFrequency], v17, v16, ratesCopy, self->_device, self->_context, v54);

  v60 = v17;
  v25 = [v17 count];
  v57 = [v16 count] + v25 != 1;
  v26 = objc_loadWeakRetained(&self->_transitionManager);
  executionSession2 = [v26 executionSession];
  v56 = [executionSession2 gsm];

  if (![graphCopy executionType])
  {
    [PSGraphCompiler createLegacyGroupedTriggerForGraph:buf withProducerOutputRates:graphCopy withTransitionBlock:?];
  }

  v28 = __PLSLogSharedInstance();
  v62 = v22;
  v29 = v22;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    name2 = [graphCopy name];
    uTF8String = [name2 UTF8String];
    subgraph_idx = [graphCopy subgraph_idx];
    threadPoolID = [graphCopy threadPoolID];
    *buf = 136315650;
    v66 = uTF8String;
    v29 = v62;
    v67 = 1024;
    LODWORD(v68[0]) = subgraph_idx;
    WORD2(v68[0]) = 2048;
    *(v68 + 6) = threadPoolID;
    _os_log_impl(&dword_25EA3A000, v28, OS_LOG_TYPE_INFO, "Creating GST for Graph: %s, Subgraph_idx: %u, threadPoolID: %llu", buf, 0x1Cu);
  }

  if ([graphCopy executionType] == 1)
  {
    v34 = *([graphCopy executionContext] + 8);
    name3 = [graphCopy name];
    uTF8String2 = [name3 UTF8String];
    v55 = *(v34 + 352);
    v36 = v16;
    v37 = v29;
    subgraph_idx2 = [graphCopy subgraph_idx];
    v39 = getpid();
    v40 = v37;
    v16 = v36;
    muxed_gst = ps_gsm_create_muxed_gst(v56, uTF8String2, v58, v40, v63, v57 & v59, v55, subgraph_idx2, v39);
  }

  else
  {
    name3 = [graphCopy name];
    uTF8String3 = [name3 UTF8String];
    v43 = getpid();
    muxed_gst = ps_gsm_create_gst(v56, uTF8String3, v58, v29, v63, v57 & v59, v43);
  }

  v45 = muxed_gst;
  v17 = v60;

  v14 = v61;
  if (v45)
  {
    graphGSTMap = self->_graphGSTMap;
    v47 = [MEMORY[0x277CCAE60] valueWithPointer:v45];
    [(NSMapTable *)graphGSTMap setObject:v47 forKey:graphCopy];

    free(v62);
    free(v63);
    v48 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      name4 = [graphCopy name];
      *buf = 138412546;
      v66 = name4;
      v67 = 2112;
      v68[0] = v60;
      _os_log_impl(&dword_25EA3A000, v48, OS_LOG_TYPE_DEBUG, "Created system-level PSInputPolicyWait GSTs for graph %@ for sources: %@", buf, 0x16u);
    }

    v50 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      name5 = [graphCopy name];
      *buf = 138412546;
      v66 = name5;
      v67 = 2112;
      v68[0] = v16;
      _os_log_impl(&dword_25EA3A000, v50, OS_LOG_TYPE_DEBUG, "Created intermediate PSInputPolicyWait GSTs for graph %@ for sources: %@", buf, 0x16u);
    }

    goto LABEL_19;
  }

  v53 = [PSGraphCompiler createLegacyGroupedTriggerForGraph:buf withProducerOutputRates:graphCopy withTransitionBlock:?];
  [PSGraphCompiler createExecSubGraphWithFreeSlot:v53 withClientGraph:?];
}

- (void)createExecSubGraphWithFreeSlot:(uint64_t)slot withClientGraph:(void *)graph
{
  graphCopy = graph;
  ps_exec_init_subgraph(slot);
  [self initializeExecSubGraphProperties:slot withClientGraph:graphCopy];
  [self initializeExecSubGraphTasks:slot withClientGraph:graphCopy];
  [self initializeExecSubGraphTaskDependencies:slot withClientGraph:graphCopy];

  *(slot + 6800) = [self deterministicReplay];

  ps_exec_finalize_subgraph(slot);
}

- (void)validateCriticality:(unint64_t)criticality withCriticalityEntitlement:(unint64_t)entitlement withGraph:(id)graph
{
  v29 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  if (criticality < entitlement)
  {
    v17 = graphCopy;
    v18 = 0;
    name = [graphCopy name];
    asprintf(&v18, "Client requested a graph above their criticalityEntitlement. Graph: %s, criticalityEntitlement: %lu, requested criticality: %lu", [name UTF8String], entitlement, criticality);

    v10 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      name2 = [v17 name];
      uTF8String = [name2 UTF8String];
      *buf = 136316162;
      v20 = "[PSGraphCompiler validateCriticality:withCriticalityEntitlement:withGraph:]";
      v21 = 1024;
      v22 = 3601;
      v23 = 2080;
      v24 = uTF8String;
      v25 = 2048;
      entitlementCopy = entitlement;
      v27 = 2048;
      criticalityCopy = criticality;
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

- (void)initializeSubgraphLiveness:(uint64_t)liveness withRelativeDeadline:(uint64_t)deadline withClientGraph:(void *)graph
{
  v31 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v9 = ps_liveness_node_allocate();
  if (v9 == -1)
  {
    v20 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      name = [graphCopy name];
      v23 = 136315138;
      uTF8String = [name UTF8String];
      _os_log_impl(&dword_25EA3A000, v20, OS_LOG_TYPE_DEFAULT, "Can't allocate liveness node for graph %s", &v23, 0xCu);
    }
  }

  else
  {
    v10 = v9;
    header = ps_liveness_get_header();
    node_metadata_address = _liveness_get_node_metadata_address(header, v10);
    node_address = _liveness_get_node_address(header, v10);
    *(liveness + 48) = node_metadata_address + 168;
    *(liveness + 56) = node_address;
    *(liveness + 64) = v10;
    v14 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(liveness + 376);
      v16 = *(liveness + 384);
      v23 = 136315907;
      uTF8String = liveness + 113;
      v25 = 2049;
      v26 = v15;
      v27 = 1025;
      v28 = v16;
      v29 = 1024;
      v30 = v10;
      _os_log_impl(&dword_25EA3A000, v14, OS_LOG_TYPE_DEFAULT, "Creating new exec subgraph with name %s, frequency %{private}llu, qos %{private}d, liveness node %08xd", &v23, 0x22u);
    }

    ps_liveness_node_set_base_info(v10, 0, (liveness + 113));
    ps_liveness_node_set_aux_string(v10, "Graph");
    ps_liveness_node_set_deadlines(v10, *(liveness + 376), deadline);
    ps_liveness_node_set_qos(v10, *(liveness + 384));
    WeakRetained = objc_loadWeakRetained((self + 56));
    executionSession = [WeakRetained executionSession];
    name2 = [executionSession name];
    ps_liveness_node_set_session(v10, [name2 UTF8String]);

    ps_liveness_node_finalize(v10, 0);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)initializeGroupedTriggersForSubgraph:(uint64_t)subgraph withClientGraph:(void *)graph
{
  graphCopy = graph;
  WeakRetained = objc_loadWeakRetained((self + 56));
  executionSession = [WeakRetained executionSession];
  v8 = [executionSession gsm];

  *(subgraph + 520) = v8;
  *(subgraph + 528) = 0u;
  v9 = [*(self + 48) objectForKey:graphCopy];
  v10 = v9;
  if (v9)
  {
    v11 = *(*(subgraph + 6792) + 4);
    pointerValue = [v9 pointerValue];
    if (v11)
    {
      *(subgraph + 528) = pointerValue;
      if (!pointerValue)
      {
        [PSGraphCompiler initializeGroupedTriggersForSubgraph:withClientGraph:];
      }
    }

    else
    {
      *(subgraph + 536) = pointerValue;
      if (!pointerValue)
      {
        [PSGraphCompiler initializeGroupedTriggersForSubgraph:withClientGraph:];
      }
    }
  }
}

- (void)initializeExecSubGraphProperties:(uint64_t)properties withClientGraph:(void *)graph
{
  v62 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  name = [graphCopy name];
  [name UTF8String];
  __strlcpy_chk();

  *(properties + 376) = [graphCopy resolvedFrequency];
  *(properties + 40) = graphCopy;
  *(properties + 544) |= 0xFFFFFFFFFFFFuLL;
  WeakRetained = objc_loadWeakRetained((self + 56));
  executionSession = [WeakRetained executionSession];
  isUniqueSession = [executionSession isUniqueSession];

  v11 = objc_alloc(MEMORY[0x277CCACA8]);
  if (isUniqueSession)
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];
    name2 = [graphCopy name];
    name3 = [v11 initWithFormat:@"%@-%@", processName, name2];
    *(properties + 6784) = [name3 hash];
  }

  else
  {
    processInfo = objc_loadWeakRetained((self + 56));
    processName = [processInfo executionSession];
    name2 = [processName name];
    name3 = [graphCopy name];
    v16 = [v11 initWithFormat:@"%@-%@", name2, name3];
    *(properties + 6784) = [v16 hash];
  }

  v17 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(properties + 6784);
    *buf = 136315394;
    *v60 = properties + 113;
    *&v60[8] = 1024;
    *&v60[10] = v18;
    _os_log_impl(&dword_25EA3A000, v17, OS_LOG_TYPE_DEFAULT, "Ariadne Graph & Error Log Buffer Info: Graph=%s KeyHash=%u", buf, 0x12u);
  }

  v19 = +[PLSSettings currentSettings];
  criticalityEntitlement = [v19 criticalityEntitlement];

  [self validateCriticality:objc_msgSend(graphCopy withCriticalityEntitlement:"criticalityCPU") withGraph:{criticalityEntitlement, graphCopy}];
  [self validateCriticality:objc_msgSend(graphCopy withCriticalityEntitlement:"criticalityGPU") withGraph:{criticalityEntitlement, graphCopy}];
  resolvedCriticalityCPU = [graphCopy resolvedCriticalityCPU];
  if (resolvedCriticalityCPU <= 3)
  {
    *(properties + 384) = resolvedCriticalityCPU;
  }

  v22 = objc_loadWeakRetained((self + 56));

  if (v22)
  {
    *&v60[12] = 0;
    v58 = objc_loadWeakRetained((self + 56));
    executionSession2 = [v58 executionSession];
    caNameHash = [executionSession2 caNameHash];
    *buf = [caNameHash unsignedIntValue];
    caNameHash2 = [graphCopy caNameHash];
    *v60 = [caNameHash2 unsignedIntValue];
    systemPulseStride = [graphCopy systemPulseStride];
    *&v60[4] = [systemPulseStride unsignedLongLongValue];
    v24 = +[PSCoreAnalyticsIDManager sharedInstance];
    selfCopy = self;
    v26 = objc_loadWeakRetained((self + 56));
    executionSession3 = [v26 executionSession];
    caName = [executionSession3 caName];
    caName2 = [graphCopy caName];
    systemPulseStride2 = [graphCopy systemPulseStride];
    *&v60[12] = [v24 opaqueIDForSession:caName graph:caName2 stride:systemPulseStride2];

    self = selfCopy;
    graph_per_frame_handle = ps_ca_create_graph_per_frame_handle(buf, &__block_literal_global_5);
    *(properties + 6808) = graph_per_frame_handle;
    ps_ca_gst_drops_init(graph_per_frame_handle);
    ps_ca_graph_exec_init(*(properties + 6808));
    ps_ca_deadline_miss_init(*(properties + 6808));
    ps_ca_workgroup_counters_init(*(properties + 6808));
  }

  if ([graphCopy workloadWait])
  {
    *(properties + 496) = [graphCopy workloadWait];
    *(properties + 504) = [graphCopy workloadWaitContext];
    v32 = objc_loadWeakRetained((self + 56));
    executionSession4 = [v32 executionSession];
    shouldUseOptimizedVsyncPath = [executionSession4 shouldUseOptimizedVsyncPath];

    if (shouldUseOptimizedVsyncPath)
    {
      *(properties + 513) = 1;
    }
  }

  else
  {
    v35 = objc_loadWeakRetained((self + 56));
    executionSession5 = [v35 executionSession];
    shouldUseOptimizedVsyncPath2 = [executionSession5 shouldUseOptimizedVsyncPath];

    if ((shouldUseOptimizedVsyncPath2 & 1) == 0)
    {
      if ([self deterministicReplay])
      {
        *(properties + 616) = tailTaskCallback;
        *(properties + 624) = self;
      }

      *(properties + 440) = groupedSourcePoolAcquireHandler;
      *(properties + 448) = groupedSourcePoolRelinquishHandler;
      v38 = [*(self + 192) objectForKey:graphCopy];
      *(properties + 456) = [v38 pointerValue];
    }
  }

  *(properties + 72) = [graphCopy init_function];
  *(properties + 80) = [graphCopy deinit_function];
  *(properties + 88) = [graphCopy init_context];
  *(properties + 96) = [graphCopy deinit_context];
  *(properties + 112) = 0;
  *(properties + 408) = notifyGraphStartCallback;
  *(properties + 424) = 0;
  *(properties + 432) = 0;
  *(properties + 416) = notifyGraphFinishCallback;
  v39 = +[PLSSettings currentSettings];
  overrideDeadlinePercentage = [v39 overrideDeadlinePercentage];

  v41 = +[PLSSettings currentSettings];
  if (![v41 expectRelativeDeadline])
  {

LABEL_22:
    relativeDeadline2 = 0x3B9ACA00uLL / *(properties + 376);
    goto LABEL_23;
  }

  relativeDeadline = [graphCopy relativeDeadline];

  if (!relativeDeadline)
  {
    goto LABEL_22;
  }

  relativeDeadline2 = [graphCopy relativeDeadline];
  if (!relativeDeadline2)
  {
    goto LABEL_22;
  }

LABEL_23:
  [graphCopy setResolvedDeadline:relativeDeadline2];
  v44 = ((relativeDeadline2 * overrideDeadlinePercentage) / 100.0);
  v45 = dword_27FD126F4;
  if (!dword_27FD126F4)
  {
    mach_timebase_info(&initializeExecSubGraphProperties_withClientGraph__timebase_info);
    v45 = dword_27FD126F4;
  }

  *(properties + 552) = v45 * v44 / initializeExecSubGraphProperties_withClientGraph__timebase_info;
  v46 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
  {
    v47 = *(properties + 552);
    name4 = [graphCopy name];
    uTF8String = [name4 UTF8String];
    *buf = 134218498;
    *v60 = v44;
    *&v60[8] = 2048;
    *&v60[10] = v47;
    *&v60[18] = 2080;
    v61 = uTF8String;
    _os_log_impl(&dword_25EA3A000, v46, OS_LOG_TYPE_DEBUG, "Set up a relative deadline of (%llu)ns, machtime: (%llu), for graph: (%s)", buf, 0x20u);
  }

  v50 = +[PSGraphCompiler deadlineThresholdsForCriticality:](PSGraphCompiler, "deadlineThresholdsForCriticality:", [graphCopy criticalityCPU]);
  v51 = [v50 objectForKeyedSubscript:@"deadline-miss-threshold"];
  *(properties + 564) = [v51 unsignedIntegerValue];

  v52 = [v50 objectForKeyedSubscript:@"iterations-to-track"];
  *(properties + 560) = [v52 unsignedIntegerValue];

  *(properties + 592) = systemHealthDeadlineMissHandler;
  *(properties + 600) = self;
  if ([graphCopy needsLiveness])
  {
    [self initializeSubgraphLiveness:properties withRelativeDeadline:v44 withClientGraph:graphCopy];
  }

  *[graphCopy executionContext] = properties;
  *([graphCopy executionContext] + 16) = _get_iosurface_count;
  *([graphCopy executionContext] + 24) = _get_iosurfaces;
  v53 = *(self + 160);
  *([graphCopy executionContext] + 32) = v53;

  v54 = *MEMORY[0x277D85DE8];
}

- (id)createWorkgroupIntervalForThreadPool:(ps_exec_shared_thread_pool_s *)pool
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
      p_var5 = &pool[1].var5;
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
      p_var5 = &pool[1].var5;
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

- (id)createWorkgroupIntervalForGraph:(id)graph
{
  v31 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  memset(v30, 0, sizeof(v30));
  v29 = 0u;
  v28 = 0u;
  v27 = 799564724;
  v5 = os_workgroup_attr_set_telemetry_flavor();
  if (v5)
  {
    v6 = v5;
    name3 = __PLSLogSharedInstance();
    if (os_log_type_enabled(name3, OS_LOG_TYPE_ERROR))
    {
      name = [graphCopy name];
      v23 = 138412546;
      v24 = name;
      v25 = 1024;
      v26 = v6;
      _os_log_impl(&dword_25EA3A000, name3, OS_LOG_TYPE_ERROR, "Couldn't set telemetry flavor on workgroup attributes for graph:(%@) error:(%d)", &v23, 0x12u);
    }

    goto LABEL_15;
  }

  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  isSystemCompositor = [WeakRetained isSystemCompositor];

  if (isSystemCompositor)
  {
    [*MEMORY[0x277D3E710] UTF8String];
    v11 = os_workgroup_attr_set_interval_type();
    if (v11)
    {
      v12 = v11;
      name3 = __PLSLogSharedInstance();
      if (os_log_type_enabled(name3, OS_LOG_TYPE_ERROR))
      {
        name2 = [graphCopy name];
        v23 = 138412546;
        v24 = name2;
        v25 = 1024;
        v26 = v12;
        v14 = "Could not set attribute type compositor for graph:(%@) error:(%d)";
LABEL_14:
        _os_log_impl(&dword_25EA3A000, name3, OS_LOG_TYPE_ERROR, v14, &v23, 0x12u);

        goto LABEL_15;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v15 = [graphCopy tag];
    v16 = [v15 isEqualToString:*MEMORY[0x277D3E6F8]];

    if (v16)
    {
      [graphCopy name];
    }

    else
    {
      [graphCopy tag];
    }
    v17 = ;
    [v17 UTF8String];

    v18 = os_workgroup_attr_set_interval_type();
    if (v18)
    {
      v19 = v18;
      name3 = __PLSLogSharedInstance();
      if (os_log_type_enabled(name3, OS_LOG_TYPE_ERROR))
      {
        name2 = [graphCopy name];
        v23 = 138412546;
        v24 = name2;
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

  name3 = [graphCopy name];
  [name3 UTF8String];
  v20 = os_workgroup_interval_create_with_workload_id();
LABEL_16:

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)initializeExecSubGraphTasks:(uint64_t)tasks withClientGraph:(void *)graph
{
  v66 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  tasks = [graphCopy tasks];
  v8 = [tasks countByEnumeratingWithState:&v52 objects:v65 count:16];
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
          objc_enumerationMutation(tasks);
        }

        v10 |= [*(*(&v52 + 1) + 8 * i) computeAgent] == 1;
      }

      v9 = [tasks countByEnumeratingWithState:&v52 objects:v65 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  WeakRetained = objc_loadWeakRetained((self + 56));
  executionSession = [WeakRetained executionSession];
  shouldUseOptimizedVsyncPath = [executionSession shouldUseOptimizedVsyncPath];

  if ((v10 & 1) == 0 && !shouldUseOptimizedVsyncPath)
  {
    v16 = 0;
LABEL_18:
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = graphCopy;
    obj = [graphCopy tasks];
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
          name = [v20 name];
          inputs = [v20 inputs];
          outputs = [v20 outputs];
          *buf = 138413058;
          v57 = name;
          v58 = 2080;
          v59 = tasks + 113;
          v60 = 2112;
          v61 = inputs;
          v62 = 2112;
          v63 = outputs;
          _os_log_impl(&dword_25EA3A000, v21, OS_LOG_TYPE_DEBUG, "PS_EXEC: Adding new task %@ for graph %s\nRequires inputs: %@\nProduces outputs: %@", buf, 0x2Au);
        }

        if (*(tasks + 496))
        {
          name2 = [v20 name];
          string_id = ps_telemetry_create_string_id([name2 UTF8String]);
          name3 = [v46 name];
          v28 = ps_telemetry_create_string_id([name3 UTF8String]);
          v29 = ps_task_wrapper_create(v46, v20, 0, tasks + 400, string_id, v28, *(tasks + 6808));

          v30 = objc_loadWeakRetained((self + 56));
          executionSession2 = [v30 executionSession];
          LODWORD(name3) = [executionSession2 shouldUseOptimizedVsyncPath];

          name4 = [v20 name];
          uTF8String = [name4 UTF8String];
          if (name3)
          {
            v34 = ps_task_wrapper_execute_sync;
          }

          else
          {
            v34 = taskWrapperExecutionHandler;
          }

          ps_exec_add_task(tasks, uTF8String, v29, v34, workloadWrapperCleanupHandler);
        }

        else
        {
          v35 = objc_loadWeakRetained((self + 56));
          executionSession3 = [v35 executionSession];
          shouldUseOptimizedVsyncPath2 = [executionSession3 shouldUseOptimizedVsyncPath];

          if (shouldUseOptimizedVsyncPath2)
          {
            v29 = 0;
            goto LABEL_34;
          }

          v38 = [self createBlockFromTask:v20 withGraph:v46 withExecSubgraph:tasks withMtlQueue:v16 withGraphStringId:tasks + 400];
          name4 = [v20 name];
          ps_exec_add_task(tasks, [name4 UTF8String], v38, ps_exec_block_execute_task_instance, ps_exec_block_destroy);
          v29 = 0;
        }

LABEL_34:
        v39 = objc_loadWeakRetained((self + 56));
        executionSession4 = [v39 executionSession];
        shouldUseOptimizedVsyncPath3 = [executionSession4 shouldUseOptimizedVsyncPath];

        if (shouldUseOptimizedVsyncPath3)
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
          v42 = *(self + 96);
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

  if ([graphCopy criticalityGPU])
  {
    [self createMtlCommandQueueBestEffort];
  }

  else
  {
    [self createMtlCommandQueueRealTime];
  }
  v16 = ;
  if (v16)
  {
    [*(self + 152) setObject:v16 forKey:graphCopy];
    goto LABEL_18;
  }

  v44 = [PSGraphCompiler initializeExecSubGraphTasks:buf withClientGraph:graphCopy];
  workloadWrapperCleanupHandler(v44);
}

- (void)createBlockFromTask:(void *)task withGraph:(void *)graph withExecSubgraph:(uint64_t)subgraph withMtlQueue:(void *)queue withGraphStringId:(uint64_t)id
{
  idCopy = id;
  v54 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  graphCopy = graph;
  queueCopy = queue;
  v11 = ps_exec_block_create(taskCopy);
  ps_exec_block_setup_task(v11, taskCopy);
  if (ps_exec_block_setup_autoreleasepool(v11, [taskCopy enableAutoreleasePool]))
  {
    v12 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      name = [taskCopy name];
      *buf = 136315138;
      *&buf[4] = [name UTF8String];
      _os_log_impl(&dword_25EA3A000, v12, OS_LOG_TYPE_ERROR, "Unable to set autoreleasepool settings for task %s", buf, 0xCu);
    }
  }

  v14 = *(self + 184);
  v15 = [self getGraphTaskHash:graphCopy withTask:{taskCopy, idCopy}];
  v16 = [v14 objectForKey:v15];

  v50 = v16;
  if (!v16)
  {
    [PSGraphCompiler createBlockFromTask:buf withGraph:taskCopy withExecSubgraph:? withMtlQueue:? withGraphStringId:?];
  }

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:getpid()];
  v18 = [v17 hash];
  v19 = *(self + 28);
  *(self + 28) = v19 + 1;

  ps_exec_block_setup_task_resources(v11, [v16 pointerValue]);
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v18 + v19];
  LODWORD(v18) = [v20 hash];
  name2 = [taskCopy name];
  string_id = ps_telemetry_create_string_id([name2 UTF8String]);
  v49 = graphCopy;
  name3 = [graphCopy name];
  v24 = ps_telemetry_create_string_id([name3 UTF8String]);
  ps_exec_block_setup_perf_values(v11, v18, string_id, v24, v46);

  if ([taskCopy computeAgent] == 1)
  {
    v25 = *(self + 96);
  }

  else
  {
    v25 = 0;
  }

  segments = [taskCopy segments];

  v27 = v49;
  if (segments)
  {
    ps_exec_block_init_task_segments(v11, taskCopy);
  }

  *buf = 0u;
  v53 = 0u;
  WeakRetained = objc_loadWeakRetained((self + 56));

  if (WeakRetained)
  {
    v29 = objc_loadWeakRetained((self + 56));
    executionSession = [v29 executionSession];
    caNameHash = [executionSession caNameHash];
    *buf = [caNameHash unsignedIntValue];

    caNameHash2 = [v49 caNameHash];
    *&buf[4] = [caNameHash2 unsignedIntValue];

    systemPulseStride = [v49 systemPulseStride];
    *&buf[8] = [systemPulseStride unsignedLongLongValue];

    caNameHash3 = [taskCopy caNameHash];
    DWORD2(v53) = [caNameHash3 unsignedIntValue];

    v35 = +[PSCoreAnalyticsIDManager sharedInstance];
    caName = [taskCopy caName];
    caName2 = [v49 caName];
    systemPulseStride2 = [v49 systemPulseStride];
    v39 = objc_loadWeakRetained((self + 56));
    [v39 executionSession];
    v41 = v40 = v25;
    caName3 = [v41 caName];
    LODWORD(v53) = [v35 opaqueIDForTask:caName graph:caName2 stride:systemPulseStride2 session:caName3];

    v25 = v40;
    v27 = v49;
  }

  ps_exec_block_setup_task_context(v11, v25, queueCopy, v27, *(subgraph + 6808), buf);
  [self initializeComplexityUpdateHandler:v27 withExecSubgraph:subgraph withExecBlock:v11];

  v43 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)initializeComplexityUpdateHandler:(void *)handler withExecSubgraph:(uint64_t)subgraph withExecBlock:(uint64_t)block
{
  handlerCopy = handler;
  v8 = [handlerCopy tag];
  if (v8 == *MEMORY[0x277D3E708])
  {
    v11 = 1;
  }

  else
  {
    v9 = [handlerCopy tag];
    if (v9 == *MEMORY[0x277D3E700])
    {
      v11 = 1;
    }

    else
    {
      v10 = [handlerCopy tag];
      v11 = v10 == *MEMORY[0x277D3E718];
    }
  }

  v15[1] = subgraph;
  v15[0] = v11;
  v15[2] = complexityUpdateHandler;
  if (ps_exec_block_set_complexity_update_context(block, v15))
  {
    v12 = [PSGraphCompiler initializeComplexityUpdateHandler:handlerCopy withExecSubgraph:? withExecBlock:?];
    complexityUpdateHandler(v12, v13);
  }

  else
  {
  }
}

- (id)generateDependencyGraphWithClientGraph:(id)graph
{
  v138 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v4 = objc_alloc_init(MEMORY[0x277CCAB00]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6 = objc_alloc_init(MEMORY[0x277CCAB00]);
  v7 = objc_alloc_init(MEMORY[0x277CCAB00]);
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v68 = graphCopy;
  obj = [graphCopy tasks];
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
        waitBarriers = [v9 waitBarriers];
        v11 = [waitBarriers countByEnumeratingWithState:&v120 objects:v136 count:16];
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
                objc_enumerationMutation(waitBarriers);
              }

              [v5 addObject:*(*(&v120 + 1) + 8 * i)];
            }

            v12 = [waitBarriers countByEnumeratingWithState:&v120 objects:v136 count:16];
          }

          while (v12);
        }

        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        updateBarriers = [v9 updateBarriers];
        v16 = [updateBarriers countByEnumeratingWithState:&v116 objects:v135 count:16];
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
                objc_enumerationMutation(updateBarriers);
              }

              [v5 addObject:*(*(&v116 + 1) + 8 * j)];
            }

            v17 = [updateBarriers countByEnumeratingWithState:&v116 objects:v135 count:16];
          }

          while (v17);
        }

        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        outputs = [v9 outputs];
        v21 = [outputs countByEnumeratingWithState:&v112 objects:v134 count:16];
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
                objc_enumerationMutation(outputs);
              }

              resourceKey = [*(*(&v112 + 1) + 8 * k) resourceKey];
              [v7 setObject:v9 forKey:resourceKey];
            }

            v22 = [outputs countByEnumeratingWithState:&v112 objects:v134 count:16];
          }

          while (v22);
        }

        v110 = 0u;
        v111 = 0u;
        v108 = 0u;
        v109 = 0u;
        inputs = [v9 inputs];
        v26 = [inputs countByEnumeratingWithState:&v108 objects:v133 count:16];
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
                objc_enumerationMutation(inputs);
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
                  resolvedResourceKey = [v30 resolvedResourceKey];
                  [v31 setObject:v34 forKey:resolvedResourceKey];
                }

                resolvedResourceKey2 = [v30 resolvedResourceKey];
                v37 = [v31 objectForKey:resolvedResourceKey2];

                [v37 addObject:v9];
                v7 = v76;
                v6 = v31;
              }
            }

            v27 = [inputs countByEnumeratingWithState:&v108 objects:v133 count:16];
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
        unblockingTasks = [v54 unblockingTasks];
        v87 = [unblockingTasks countByEnumeratingWithState:&v92 objects:v129 count:16];
        if (v87)
        {
          v81 = *v93;
          do
          {
            for (jj = 0; jj != v87; jj = jj + 1)
            {
              if (*v93 != v81)
              {
                objc_enumerationMutation(unblockingTasks);
              }

              v56 = *(*(&v92 + 1) + 8 * jj);
              v88 = 0u;
              v89 = 0u;
              v90 = 0u;
              v91 = 0u;
              blockingTasks = [v84 blockingTasks];
              v58 = [blockingTasks countByEnumeratingWithState:&v88 objects:v128 count:16];
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
                      objc_enumerationMutation(blockingTasks);
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

                  v59 = [blockingTasks countByEnumeratingWithState:&v88 objects:v128 count:16];
                }

                while (v59);
              }
            }

            v87 = [unblockingTasks countByEnumeratingWithState:&v92 objects:v129 count:16];
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

- (void)initializeExecSubGraphTaskDependencies:(uint64_t)dependencies withClientGraph:(void *)graph
{
  v58 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v6 = objc_alloc_init(MEMORY[0x277CCAB00]);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v31 = graphCopy;
  tasks = [graphCopy tasks];
  v8 = [tasks countByEnumeratingWithState:&v45 objects:v57 count:16];
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
          objc_enumerationMutation(tasks);
        }

        v13 = *(*(&v45 + 1) + 8 * i);
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v10];
        [v6 setObject:v14 forKey:v13];

        v10 = (v10 + 1);
      }

      v9 = [tasks countByEnumeratingWithState:&v45 objects:v57 count:16];
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
    v36 = dependencies + 640;
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
        unsignedIntValue = [v18 unsignedIntValue];

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
              unsignedIntValue2 = [v25 unsignedIntValue];

              ps_exec_add_dependency(dependencies, unsignedIntValue, unsignedIntValue2);
              v27 = __PLSLogSharedInstance();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
              {
                v28 = *(v36 + 96 * unsignedIntValue + 8);
                v29 = *(v36 + 96 * unsignedIntValue2 + 8);
                *buf = 136315650;
                v50 = dependencies + 113;
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

- (void)removeMTLCommandQueuesForTransitionBlock:(id)block
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  removedGraphs = [block removedGraphs];
  v5 = [removedGraphs countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(removedGraphs);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [(NSMapTable *)self->_retainedMtlQueues objectForKey:v9];

        if (v10)
        {
          [(NSMapTable *)self->_retainedMtlQueues removeObjectForKey:v9];
        }
      }

      v6 = [removedGraphs countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)performWithKeytoWriterLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_keytoWriterMapLock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_keytoWriterMapLock);
}

- (void)withWriterForKey:(id)key perform:(id)perform
{
  keyCopy = key;
  performCopy = perform;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__PSGraphCompiler_withWriterForKey_perform___block_invoke;
  v10[3] = &unk_279A483A0;
  v10[4] = self;
  v11 = keyCopy;
  v12 = performCopy;
  v8 = performCopy;
  v9 = keyCopy;
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

- (void)setWriterForKey:(id)key writer:(id)writer
{
  keyCopy = key;
  writerCopy = writer;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__PSGraphCompiler_setWriterForKey_writer___block_invoke;
  v10[3] = &unk_279A483C8;
  v10[4] = self;
  v11 = writerCopy;
  v12 = keyCopy;
  v8 = keyCopy;
  v9 = writerCopy;
  [(PSGraphCompiler *)self performWithKeytoWriterLock:v10];
}

- (void)removeWriterForKey:(id)key
{
  keyCopy = key;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__PSGraphCompiler_removeWriterForKey___block_invoke;
  v6[3] = &unk_279A483F0;
  v6[4] = self;
  v7 = keyCopy;
  v5 = keyCopy;
  [(PSGraphCompiler *)self performWithKeytoWriterLock:v6];
}

- (void)destroyGroupedTriggersForTransitionBlock:(id)block
{
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  executionSession = [WeakRetained executionSession];
  shouldUseOptimizedVsyncPath = [executionSession shouldUseOptimizedVsyncPath];

  if ((shouldUseOptimizedVsyncPath & 1) == 0)
  {
    removedGraphs = [blockCopy removedGraphs];
    [(PSGraphCompiler *)self removeGroupedTriggersForGraphs:removedGraphs];
  }
}

- (void)removeGroupedTriggersForGraphs:(id)graphs
{
  v16 = *MEMORY[0x277D85DE8];
  graphsCopy = graphs;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [graphsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(graphsCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (![v9 workloadWait])
        {
          [(NSMapTable *)self->_graphGSTMap removeObjectForKey:v9];
        }
      }

      v6 = [graphsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeSourceTasksForTransitionBlock:(id)block
{
  v43 = *MEMORY[0x277D85DE8];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = [block removedGraphs];
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
        sourceTasks = [v5 sourceTasks];
        v7 = [sourceTasks countByEnumeratingWithState:&v31 objects:v41 count:16];
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
                objc_enumerationMutation(sourceTasks);
              }

              v11 = *(*(&v31 + 1) + 8 * i);
              retainedSourceWriterBlocks = self->_retainedSourceWriterBlocks;
              name = [v11 name];
              v14 = [(NSMutableDictionary *)retainedSourceWriterBlocks objectForKey:name];

              if (v14)
              {
                WeakRetained = objc_loadWeakRetained(&self->_transitionMonitor);
                [WeakRetained lock];

                v16 = MEMORY[0x277CCACA8];
                name2 = [v11 name];
                v18 = [v16 stringWithFormat:@"%@ (PSSourceTask)", name2];
                v19 = objc_loadWeakRetained(&self->_transitionMonitor);
                [v19 setTransitionStateBufferDeinitCurResource:v18];

                v20 = objc_loadWeakRetained(&self->_transitionMonitor);
                [v20 unlock];

                [v14 stop];
                v21 = __PLSLogSharedInstance();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                {
                  name3 = [v11 name];
                  uTF8String = [name3 UTF8String];
                  *buf = 136315138;
                  v40 = uTF8String;
                  _os_log_impl(&dword_25EA3A000, v21, OS_LOG_TYPE_DEFAULT, "Deleting source task %s.", buf, 0xCu);
                }

                v24 = self->_retainedSourceWriterBlocks;
                name4 = [v11 name];
                [(NSMutableDictionary *)v24 removeObjectForKey:name4];
              }
            }

            v8 = [sourceTasks countByEnumeratingWithState:&v31 objects:v41 count:16];
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

- (void)destroyWritersForTransitionBlock:(id)block
{
  v113 = *MEMORY[0x277D85DE8];
  blockCopy = block;
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
  obj = [blockCopy removedGraphs];
  v76 = [obj countByEnumeratingWithState:&v97 objects:v112 count:16];
  if (v76)
  {
    v75 = *v98;
    selfCopy = self;
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
        writers = [v6 writers];
        v82 = [writers countByEnumeratingWithState:&v93 objects:v111 count:16];
        if (v82)
        {
          v81 = *v94;
          do
          {
            for (i = 0; i != v82; ++i)
            {
              if (*v94 != v81)
              {
                objc_enumerationMutation(writers);
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
                addedGraphs = [blockCopy addedGraphs];
                v12 = [addedGraphs countByEnumeratingWithState:&v89 objects:v110 count:16];
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
                      objc_enumerationMutation(addedGraphs);
                    }

                    v16 = *(*(&v89 + 1) + 8 * j);
                    v85 = 0u;
                    v86 = 0u;
                    v87 = 0u;
                    v88 = 0u;
                    writers2 = [v16 writers];
                    v18 = [writers2 countByEnumeratingWithState:&v85 objects:v109 count:16];
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
                          objc_enumerationMutation(writers2);
                        }

                        if (v8 == *(*(&v85 + 1) + 8 * v21))
                        {
                          break;
                        }

                        if (v19 == ++v21)
                        {
                          v19 = [writers2 countByEnumeratingWithState:&v85 objects:v109 count:16];
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
                        name = [v8 name];
                        uTF8String = [name UTF8String];
                        *buf = 136315138;
                        v102 = uTF8String;
                        _os_log_impl(&dword_25EA3A000, v41, OS_LOG_TYPE_DEFAULT, "Added PSWriter already found for %s. Continuing without deleting the current writer.", buf, 0xCu);
                      }

                      self = selfCopy;
                      goto LABEL_59;
                    }

LABEL_27:

                    self = selfCopy;
                  }

                  v13 = [addedGraphs countByEnumeratingWithState:&v89 objects:v110 count:16];
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
                  output = [v8 output];
                  resourceKey = [output resourceKey];
                  uTF8String2 = [resourceKey UTF8String];
                  *buf = 136315138;
                  v102 = uTF8String2;
                  _os_log_impl(&dword_25EA3A000, v22, OS_LOG_TYPE_DEFAULT, "Deleting PSWriter (%s)", buf, 0xCu);
                }

                WeakRetained = objc_loadWeakRetained(&self->_transitionMonitor);
                [WeakRetained lock];

                v27 = MEMORY[0x277CCACA8];
                output2 = [v8 output];
                resourceKey2 = [output2 resourceKey];
                v30 = [v27 stringWithFormat:@"%@ (PSWriter)", resourceKey2];
                v31 = objc_loadWeakRetained(&self->_transitionMonitor);
                [v31 setTransitionStateBufferDeinitCurResource:v30];

                v32 = objc_loadWeakRetained(&self->_transitionMonitor);
                [v32 unlock];

                context = [v8 context];
                if (ps_writer_state_update())
                {
                  goto LABEL_68;
                }

                output3 = [v8 output];
                resourceKey3 = [output3 resourceKey];
                [(PSGraphCompiler *)self removeWriterForKey:resourceKey3];

                v36 = objc_loadWeakRetained(&self->_transitionManager);
                executionSession = [v36 executionSession];
                context2 = [executionSession context];
                output4 = [v8 output];
                resourceKey4 = [output4 resourceKey];
                v41 = [context2 resourceStreamForKey:resourceKey4];

                retainedBufferIndexers = self->_retainedBufferIndexers;
                output5 = [v8 output];
                resourceKey5 = [output5 resourceKey];
                v45 = [(NSMutableDictionary *)retainedBufferIndexers objectForKey:resourceKey5];

                if (v45)
                {
                  resPointerArr = [v45 resPointerArr];
                  resourceClass = [v41 resourceClass];
                  switch(resourceClass)
                  {
                    case 8:
                      v57 = v41;
                      if (![resPointerArr count])
                      {
                        goto LABEL_56;
                      }

                      context = 0;
                      while (1)
                      {
                        v58 = [resPointerArr pointerAtIndex:context];
                        if (![v57 deallocator])
                        {
                          break;
                        }

                        ([v57 deallocator])(v58);
                        if (++context >= [resPointerArr count])
                        {
                          goto LABEL_56;
                        }
                      }

                      [PSGraphCompiler destroyWritersForTransitionBlock:buf];
                      break;
                    case 7:
                      v55 = v41;
                      if (![resPointerArr count])
                      {
                        goto LABEL_56;
                      }

                      context = 0;
                      while (1)
                      {
                        v56 = [resPointerArr pointerAtIndex:context];
                        if (![v55 deallocator])
                        {
                          break;
                        }

                        ([v55 deallocator])(v56);
                        if (++context >= [resPointerArr count])
                        {
                          goto LABEL_56;
                        }
                      }

                      break;
                    case 4:
                      v48 = v41;
                      if ([resPointerArr count])
                      {
                        context = 0;
                        while (1)
                        {
                          v49 = [resPointerArr pointerAtIndex:context];
                          if (![v48 deallocator])
                          {
                            break;
                          }

                          ([v48 deallocator])(v49);
                          if (++context >= [resPointerArr count])
                          {
                            goto LABEL_56;
                          }
                        }

LABEL_67:
                        [(PSGraphCompiler *)buf destroyWritersForTransitionBlock:v8];
LABEL_68:
                        v84 = 0;
                        name2 = [v8 name];
                        uTF8String3 = [name2 UTF8String];
                        v65 = (context + 80);
                        v66 = atomic_load((context + 80));
                        asprintf(&v84, "Unable to set writer (%s) state to _UNAVAILABLE. Current state %d. Maybe a write was in progress?", uTF8String3, v66);

                        v67 = __PLSLogSharedInstance();
                        if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
                        {
                          name3 = [v8 name];
                          uTF8String4 = [name3 UTF8String];
                          v70 = atomic_load(v65);
                          *buf = 136315906;
                          v102 = "[PSGraphCompiler destroyWritersForTransitionBlock:]";
                          v103 = 1024;
                          v104 = 4351;
                          v105 = 2080;
                          v106 = uTF8String4;
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
                      output6 = [v8 output];
                      resourceKey6 = [output6 resourceKey];
                      [(NSMutableDictionary *)v59 removeObjectForKey:resourceKey6];

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

                  resPointerArr = v54;
                  [v54 deallocateIOSurfaceRefArray];
                  goto LABEL_57;
                }

LABEL_58:
                [(NSMapTable *)self->_retainedWriterBlocks removeObjectForKey:v8];

LABEL_59:
                v10 = v83;
              }
            }

            v82 = [writers countByEnumeratingWithState:&v93 objects:v111 count:16];
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

- (void)destroyReadersForTransitionBlock:(id)block
{
  v88 = *MEMORY[0x277D85DE8];
  blockCopy = block;
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
  obj = [blockCopy removedGraphs];
  v53 = [obj countByEnumeratingWithState:&v74 objects:v87 count:16];
  if (v53)
  {
    v52 = *v75;
    selfCopy = self;
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
        readers = [v6 readers];
        v60 = [readers countByEnumeratingWithState:&v70 objects:v86 count:16];
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
                objc_enumerationMutation(readers);
              }

              v9 = *(*(&v70 + 1) + 8 * i);
              v10 = [(NSMapTable *)self->_retainedReaderBlocks objectForKey:v9];
              if (v10)
              {
                v68 = 0u;
                v69 = 0u;
                v66 = 0u;
                v67 = 0u;
                addedGraphs = [blockCopy addedGraphs];
                v12 = [addedGraphs countByEnumeratingWithState:&v66 objects:v85 count:16];
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
                        objc_enumerationMutation(addedGraphs);
                      }

                      v17 = *(*(&v66 + 1) + 8 * j);
                      v62 = 0u;
                      v63 = 0u;
                      v64 = 0u;
                      v65 = 0u;
                      readers2 = [v17 readers];
                      v19 = [readers2 countByEnumeratingWithState:&v62 objects:v84 count:16];
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
                              objc_enumerationMutation(readers2);
                            }

                            if (v9 == *(*(&v62 + 1) + 8 * k))
                            {

                              v37 = __PLSLogSharedInstance();
                              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                              {
                                name = [v9 name];
                                uTF8String = [name UTF8String];
                                *buf = 136380675;
                                v79 = uTF8String;
                                _os_log_impl(&dword_25EA3A000, v37, OS_LOG_TYPE_DEFAULT, "Added PSReader already found for %{private}s. Continuing without deleting the current reader.", buf, 0xCu);
                              }

                              self = selfCopy;
                              v7 = v56;
                              v10 = v59;
                              goto LABEL_36;
                            }
                          }

                          v20 = [readers2 countByEnumeratingWithState:&v62 objects:v84 count:16];
                          if (v20)
                          {
                            continue;
                          }

                          break;
                        }
                      }

                      v14 = v16;
                    }

                    v13 = [addedGraphs countByEnumeratingWithState:&v66 objects:v85 count:16];
                    self = selfCopy;
                    v7 = v56;
                    v10 = v59;
                  }

                  while (v13);
                }

                WeakRetained = objc_loadWeakRetained(&self->_transitionMonitor);
                [WeakRetained lock];

                v24 = MEMORY[0x277CCACA8];
                input = [v9 input];
                resourceKey = [input resourceKey];
                v27 = [v24 stringWithFormat:@"%@ (PSReader)", resourceKey];
                v28 = objc_loadWeakRetained(&self->_transitionMonitor);
                [v28 setTransitionStateBufferDeinitCurResource:v27];

                v29 = objc_loadWeakRetained(&self->_transitionMonitor);
                [v29 unlock];

                context = [v9 context];
                if (ps_reader_state_update())
                {
                  v61 = 0;
                  name2 = [v9 name];
                  uTF8String2 = [name2 UTF8String];
                  v43 = atomic_load((context + 24));
                  asprintf(&v61, "Unable to set reader (%s) state to _UNAVAILABLE. Current state %d. Maybe a read is in progress?", uTF8String2, v43);

                  v44 = __PLSLogSharedInstance();
                  if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
                  {
                    name3 = [v9 name];
                    uTF8String3 = [name3 UTF8String];
                    v47 = atomic_load((context + 24));
                    *buf = 136315906;
                    v79 = "[PSGraphCompiler destroyReadersForTransitionBlock:]";
                    v80 = 1024;
                    *v81 = 4484;
                    *&v81[4] = 2080;
                    *&v81[6] = uTF8String3;
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
                  name4 = [v9 name];
                  uTF8String4 = [name4 UTF8String];
                  input2 = [v9 input];
                  resourceKey2 = [input2 resourceKey];
                  uTF8String5 = [resourceKey2 UTF8String];
                  *buf = 136380931;
                  v79 = uTF8String4;
                  v80 = 2081;
                  *v81 = uTF8String5;
                  _os_log_impl(&dword_25EA3A000, v31, OS_LOG_TYPE_DEFAULT, "Deleting PSReader (%{private}s) for resource key %{private}s.", buf, 0x16u);
                }

                [(NSMapTable *)self->_retainedReaderBlocks removeObjectForKey:v9];
              }

LABEL_36:
            }

            v60 = [readers countByEnumeratingWithState:&v70 objects:v86 count:16];
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

- (void)destroyPRMInstancesForTransitionBlock:(id)block
{
  v128 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  executionSession = [WeakRetained executionSession];
  shouldUseOptimizedVsyncPath = [executionSession shouldUseOptimizedVsyncPath];

  if ((shouldUseOptimizedVsyncPath & 1) == 0)
  {
    v88 = blockCopy;
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
    removedGraphs = [blockCopy removedGraphs];
    v86 = [removedGraphs countByEnumeratingWithState:&v115 objects:v127 count:16];
    if (v86)
    {
      v10 = *v116;
      v84 = *v116;
      v85 = removedGraphs;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v116 != v10)
          {
            objc_enumerationMutation(removedGraphs);
          }

          v87 = v11;
          v12 = *(*(&v115 + 1) + 8 * v11);
          v13 = objc_loadWeakRetained(&self->_transitionMonitor);
          [v13 lock];

          v14 = MEMORY[0x277CCACA8];
          name = [v12 name];
          v16 = [v14 stringWithFormat:@"Graph %@ (PRMInstances)", name];
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
                  outputs = [v23 outputs];
                  v98 = [outputs countByEnumeratingWithState:&v107 objects:v125 count:16];
                  if (!v98)
                  {
                    goto LABEL_44;
                  }

                  v94 = v26;
                  v95 = v22;
                  v96 = outputs;
                  v97 = *v108;
                  while (1)
                  {
                    for (i = 0; i != v98; ++i)
                    {
                      if (*v108 != v97)
                      {
                        objc_enumerationMutation(outputs);
                      }

                      v31 = *(*(&v107 + 1) + 8 * i);
                      retainedBufferIndexers = self->_retainedBufferIndexers;
                      resourceKey = [v31 resourceKey];
                      v34 = [(NSMutableDictionary *)retainedBufferIndexers objectForKey:resourceKey];

                      if (v34)
                      {
                        resPointerArr = [v34 resPointerArr];
                        selfCopy = self;
                        v37 = objc_loadWeakRetained(&self->_transitionManager);
                        executionSession2 = [v37 executionSession];
                        context = [executionSession2 context];
                        resourceKey2 = [v31 resourceKey];
                        v41 = [context resourceStreamForKey:resourceKey2];

                        resourceClass = [v41 resourceClass];
                        switch(resourceClass)
                        {
                          case 8:
                            v49 = v41;
                            if ([resPointerArr count])
                            {
                              v50 = 0;
                              while (1)
                              {
                                v51 = [resPointerArr pointerAtIndex:v50];
                                if (![v49 deallocator])
                                {
                                  break;
                                }

                                ([v49 deallocator])(v51);
                                if (++v50 >= [resPointerArr count])
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
                            if ([resPointerArr count])
                            {
                              v47 = 0;
                              while (1)
                              {
                                v48 = [resPointerArr pointerAtIndex:v47];
                                if (![v46 deallocator])
                                {
                                  break;
                                }

                                ([v46 deallocator])(v48);
                                if (++v47 >= [resPointerArr count])
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
                            if ([resPointerArr count])
                            {
                              v44 = 0;
                              while (1)
                              {
                                v45 = [resPointerArr pointerAtIndex:v44];
                                if (![v43 deallocator])
                                {
                                  goto LABEL_73;
                                }

                                ([v43 deallocator])(v45);
                                if (++v44 >= [resPointerArr count])
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

                        self = selfCopy;
                        v52 = selfCopy->_retainedBufferIndexers;
                        resourceKey3 = [v31 resourceKey];
                        [(NSMutableDictionary *)v52 removeObjectForKey:resourceKey3];

                        outputs = v96;
                      }
                    }

                    v98 = [outputs countByEnumeratingWithState:&v107 objects:v125 count:16];
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

                outputs = __PLSLogSharedInstance();
                if (os_log_type_enabled(outputs, OS_LOG_TYPE_ERROR))
                {
                  name2 = [v23 name];
                  name3 = [v12 name];
                  *buf = 138478083;
                  v122 = name2;
                  v123 = 2113;
                  v124 = name3;
                  _os_log_impl(&dword_25EA3A000, outputs, OS_LOG_TYPE_ERROR, "New task %{private}@ found in graph %{private}@ that wasn't present on addition. Ignoring", buf, 0x16u);
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
          pointerValue = [v56 pointerValue];

          if (!pointerValue)
          {
            v81 = [(PSGraphCompiler *)buf destroyPRMInstancesForTransitionBlock:v12];
            [(PSGraphCompiler *)v81 deinitializeLocalSystemSourcesForTransitionBlock:v82, v83];
            return;
          }

          v58 = objc_loadWeakRetained(&self->_transitionMonitor);
          [v58 lock];

          v59 = MEMORY[0x277CCACA8];
          name4 = [v12 name];
          v61 = [v59 stringWithFormat:@"Graph %@ (GSP)", name4];
          v62 = objc_loadWeakRetained(&self->_transitionMonitor);
          [v62 setTransitionStateBufferDeinitCurResource:v61];

          v63 = objc_loadWeakRetained(&self->_transitionMonitor);
          [v63 unlock];

          ps_grouped_source_pool_destroy(pointerValue);
          [(NSMapTable *)self->_prmGroupedSourcePools removeObjectForKey:v12];
          v11 = v87 + 1;
          v10 = v84;
          removedGraphs = v85;
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

            pointerValue2 = [*(*(&v99 + 1) + 8 * k) pointerValue];
            ps_task_resources_destroy_outputs(pointerValue2);
            ps_task_resources_destroy(pointerValue2);
          }

          v76 = [v74 countByEnumeratingWithState:&v99 objects:v119 count:16];
        }

        while (v76);
      }
    }

    blockCopy = v88;
  }

  v80 = *MEMORY[0x277D85DE8];
}

- (void)deinitializeLocalSystemSourcesForTransitionBlock:(id)block
{
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  executionSession = [WeakRetained executionSession];
  shouldUseOptimizedVsyncPath = [executionSession shouldUseOptimizedVsyncPath];

  if ((shouldUseOptimizedVsyncPath & 1) == 0)
  {
    preTransitionGraphs = [blockCopy preTransitionGraphs];
    postTransitionGraphs = [blockCopy postTransitionGraphs];
    v9 = [(PSGraphCompiler *)self getRemovedResourcesWithOldGraphs:preTransitionGraphs withNewGraphs:postTransitionGraphs];

    v10 = [(PSGraphCompiler *)self extractLocalSystemSourceKeys:v9];
    preTransitionGraphs2 = [blockCopy preTransitionGraphs];
    v12 = [(PSGraphCompiler *)self getAllOutputsForGraphs:preTransitionGraphs2];
    [v10 minusSet:v12];

    [(PSGraphCompiler *)self stopLocalSystemSources:v10];
  }
}

- (void)stopLocalSystemSources:(id)sources
{
  v20 = *MEMORY[0x277D85DE8];
  sourcesCopy = sources;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [sourcesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(sourcesCopy);
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
      v6 = [sourcesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)getProducerOutputRates:(id)rates
{
  v83 = *MEMORY[0x277D85DE8];
  ratesCopy = rates;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = ratesCopy;
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
        tasks = [v6 tasks];
        v48 = [tasks countByEnumeratingWithState:&v69 objects:v81 count:16];
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
                objc_enumerationMutation(tasks);
              }

              v50 = v7;
              v8 = *(*(&v69 + 1) + 8 * v7);
              v65 = 0u;
              v66 = 0u;
              v67 = 0u;
              v68 = 0u;
              outputs = [v8 outputs];
              v10 = [outputs countByEnumeratingWithState:&v65 objects:v80 count:16];
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
                      objc_enumerationMutation(outputs);
                    }

                    v14 = *(*(&v65 + 1) + 8 * i);
                    resourceKey = [v14 resourceKey];
                    v16 = [v4 valueForKey:resourceKey];

                    if (v16)
                    {
                      [(PSGraphCompiler *)&v64 getProducerOutputRates:v14];
LABEL_50:
                      [(PSGraphCompiler *)&v64 getProducerOutputRates:v14];
LABEL_51:
                      [(PSGraphCompiler *)&v64 getProducerOutputRates:outputs];
                    }

                    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "resolvedFrequency")}];
                    resourceKey2 = [v14 resourceKey];
                    [v4 setValue:v17 forKey:resourceKey2];
                  }

                  v11 = [outputs countByEnumeratingWithState:&v65 objects:v80 count:16];
                }

                while (v11);
              }

              v7 = v50 + 1;
            }

            while (v50 + 1 != v48);
            v48 = [tasks countByEnumeratingWithState:&v69 objects:v81 count:16];
          }

          while (v48);
        }

        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        sourceTasks = [v6 sourceTasks];
        v49 = [sourceTasks countByEnumeratingWithState:&v60 objects:v79 count:16];
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
                objc_enumerationMutation(sourceTasks);
              }

              v51 = v19;
              v20 = *(*(&v60 + 1) + 8 * v19);
              v56 = 0u;
              v57 = 0u;
              v58 = 0u;
              v59 = 0u;
              outputs = [v20 outputs];
              v21 = [outputs countByEnumeratingWithState:&v56 objects:v78 count:16];
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
                      objc_enumerationMutation(outputs);
                    }

                    v14 = *(*(&v56 + 1) + 8 * j);
                    resourceKey3 = [v14 resourceKey];
                    v26 = [v4 valueForKey:resourceKey3];

                    if (v26)
                    {
                      goto LABEL_50;
                    }

                    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "resolvedFrequency")}];
                    resourceKey4 = [v14 resourceKey];
                    [v4 setValue:v27 forKey:resourceKey4];
                  }

                  v22 = [outputs countByEnumeratingWithState:&v56 objects:v78 count:16];
                }

                while (v22);
              }

              v19 = v51 + 1;
            }

            while (v51 + 1 != v49);
            v49 = [sourceTasks countByEnumeratingWithState:&v60 objects:v79 count:16];
          }

          while (v49);
        }

        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        writers = [v6 writers];
        v30 = [writers countByEnumeratingWithState:&v52 objects:v77 count:16];
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
                objc_enumerationMutation(writers);
              }

              outputs = [*(*(&v52 + 1) + 8 * k) output];
              resourceKey5 = [outputs resourceKey];
              v35 = [v4 valueForKey:resourceKey5];

              if (v35)
              {
                goto LABEL_51;
              }

              v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "resolvedFrequency")}];
              resourceKey6 = [outputs resourceKey];
              [v4 setValue:v36 forKey:resourceKey6];
            }

            v31 = [writers countByEnumeratingWithState:&v52 objects:v77 count:16];
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

- (id)getSystemSources:(id)sources withTransitionBlock:(id)block withIntermediateSources:(id)intermediateSources
{
  v39 = *MEMORY[0x277D85DE8];
  sourcesCopy = sources;
  intermediateSourcesCopy = intermediateSources;
  v9 = [(PSGraphCompiler *)self getAllInputsForGraph:sourcesCopy];
  v25 = intermediateSourcesCopy;
  [v9 minusSet:intermediateSourcesCopy];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v26 = sourcesCopy;
  obj = [sourcesCopy tasks];
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
        outputs = [v13 outputs];
        v15 = [outputs countByEnumeratingWithState:&v29 objects:v37 count:16];
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
                objc_enumerationMutation(outputs);
              }

              v19 = *(*(&v29 + 1) + 8 * j);
              resourceKey = [v19 resourceKey];
              v21 = [v9 containsObject:resourceKey];

              if (v21)
              {
                resourceKey2 = [v19 resourceKey];
                [v9 removeObject:resourceKey2];
              }
            }

            v16 = [outputs countByEnumeratingWithState:&v29 objects:v37 count:16];
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

- (id)getStridedGSTWaitSources:(id)sources transitionBlock:(id)block
{
  v64 = *MEMORY[0x277D85DE8];
  sourcesCopy = sources;
  v6 = objc_alloc_init(MEMORY[0x277CCA940]);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v42 = sourcesCopy;
  tasks = [sourcesCopy tasks];
  v39 = [tasks countByEnumeratingWithState:&v56 objects:v63 count:16];
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
          objc_enumerationMutation(tasks);
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
              resourceKey = [v15 resourceKey];
              v18 = [(PSContext *)context resourceStreamForKey:resourceKey];

              if (![v15 type])
              {
                if ([v18 resourceClass] == 10)
                {

                  v34 = 0;
                  goto LABEL_34;
                }

                resolvedResourceKey = [v15 resolvedResourceKey];
                systemPulseStride = [v42 systemPulseStride];
                v21 = [PSResourceRequest requestWithKey:resolvedResourceKey stride:systemPulseStride inputType:0 graph:v42];
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
      v39 = [tasks countByEnumeratingWithState:&v56 objects:v63 count:16];
    }

    while (v39);
  }

  v37 = v6;

  tasks = objc_alloc_init(MEMORY[0x277CBEB58]);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  tasks2 = [v42 tasks];
  v23 = [tasks2 countByEnumeratingWithState:&v48 objects:v61 count:16];
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
          objc_enumerationMutation(tasks2);
        }

        v27 = *(*(&v48 + 1) + 8 * i);
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        outputs = [v27 outputs];
        v29 = [outputs countByEnumeratingWithState:&v44 objects:v60 count:16];
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
                objc_enumerationMutation(outputs);
              }

              resourceKey2 = [*(*(&v44 + 1) + 8 * j) resourceKey];
              [tasks addObject:resourceKey2];
            }

            v30 = [outputs countByEnumeratingWithState:&v44 objects:v60 count:16];
          }

          while (v30);
        }
      }

      v24 = [tasks2 countByEnumeratingWithState:&v48 objects:v61 count:16];
    }

    while (v24);
  }

  v6 = v37;
  [v37 filterOutResourceKeys:tasks];
  v34 = v37;
LABEL_34:

  v35 = *MEMORY[0x277D85DE8];

  return v34;
}

- (id)getStridedSystemSources:(id)sources withTransitionBlock:(id)block
{
  v39 = *MEMORY[0x277D85DE8];
  sourcesCopy = sources;
  blockCopy = block;
  v8 = [(PSGraphCompiler *)self getAllStridedInputsForGraph:sourcesCopy];
  v25 = blockCopy;
  v9 = [(PSGraphCompiler *)self getStridedIntermediateSources:sourcesCopy withTransitionBlock:blockCopy];
  [v8 minusSet:v9];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v26 = sourcesCopy;
  obj = [sourcesCopy tasks];
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
        outputs = [v13 outputs];
        v15 = [outputs countByEnumeratingWithState:&v29 objects:v37 count:16];
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
                objc_enumerationMutation(outputs);
              }

              v19 = *(*(&v29 + 1) + 8 * j);
              resourceKey = [v19 resourceKey];
              v21 = [v8 containsResourceKey:resourceKey];

              if (v21)
              {
                resourceKey2 = [v19 resourceKey];
                [v8 removeResourceKey:resourceKey2];
              }
            }

            v16 = [outputs countByEnumeratingWithState:&v29 objects:v37 count:16];
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

- (id)getStridedIntermediateSources:(id)sources withTransitionBlock:(id)block
{
  v41 = *MEMORY[0x277D85DE8];
  sourcesCopy = sources;
  blockCopy = block;
  v8 = [(PSGraphCompiler *)self getAllStridedInputsForGraph:sourcesCopy];
  v27 = blockCopy;
  postTransitionGraphs = [blockCopy postTransitionGraphs];
  v10 = [(PSGraphCompiler *)self getAllLocallyProducedOutputsForGraphs:postTransitionGraphs];

  v26 = v10;
  [v8 filterMatchingResourceKeys:v10];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v28 = sourcesCopy;
  obj = [sourcesCopy tasks];
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
        outputs = [v14 outputs];
        v16 = [outputs countByEnumeratingWithState:&v31 objects:v39 count:16];
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
                objc_enumerationMutation(outputs);
              }

              v20 = *(*(&v31 + 1) + 8 * j);
              resourceKey = [v20 resourceKey];
              v22 = [v8 containsResourceKey:resourceKey];

              if (v22)
              {
                resourceKey2 = [v20 resourceKey];
                [v8 removeResourceKey:resourceKey2];
              }
            }

            v17 = [outputs countByEnumeratingWithState:&v31 objects:v39 count:16];
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

- (id)getIntermediateSources:(id)sources withTransitionBlock:(id)block
{
  v41 = *MEMORY[0x277D85DE8];
  sourcesCopy = sources;
  blockCopy = block;
  v8 = [(PSGraphCompiler *)self getAllInputsForGraph:sourcesCopy];
  v27 = blockCopy;
  postTransitionGraphs = [blockCopy postTransitionGraphs];
  v10 = [(PSGraphCompiler *)self getAllLocallyProducedOutputsForGraphs:postTransitionGraphs];

  v26 = v10;
  [v8 intersectSet:v10];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v28 = sourcesCopy;
  obj = [sourcesCopy tasks];
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
        outputs = [v14 outputs];
        v16 = [outputs countByEnumeratingWithState:&v31 objects:v39 count:16];
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
                objc_enumerationMutation(outputs);
              }

              v20 = *(*(&v31 + 1) + 8 * j);
              resourceKey = [v20 resourceKey];
              v22 = [v8 containsObject:resourceKey];

              if (v22)
              {
                resourceKey2 = [v20 resourceKey];
                [v8 removeObject:resourceKey2];
              }
            }

            v17 = [outputs countByEnumeratingWithState:&v31 objects:v39 count:16];
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

- (id)getAllStridedInputsForGraph:(id)graph
{
  v32 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v4 = objc_alloc_init(MEMORY[0x277CCA940]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [graphCopy tasks];
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
        inputs = [v6 inputs];
        v8 = [inputs countByEnumeratingWithState:&v22 objects:v30 count:16];
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
                objc_enumerationMutation(inputs);
              }

              v12 = *(*(&v22 + 1) + 8 * i);
              resolvedResourceKey = [v12 resolvedResourceKey];
              systemPulseStride = [graphCopy systemPulseStride];
              v15 = +[PSResourceRequest requestWithKey:stride:inputType:graph:](PSResourceRequest, "requestWithKey:stride:inputType:graph:", resolvedResourceKey, systemPulseStride, [v12 type], graphCopy);
              [v4 addObject:v15];
            }

            v9 = [inputs countByEnumeratingWithState:&v22 objects:v30 count:16];
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

- (id)getAllInputsForGraph:(id)graph
{
  v30 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v19 = graphCopy;
  tasks = [graphCopy tasks];
  v6 = [tasks countByEnumeratingWithState:&v24 objects:v29 count:16];
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
          objc_enumerationMutation(tasks);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        inputs = [v10 inputs];
        v12 = [inputs countByEnumeratingWithState:&v20 objects:v28 count:16];
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
                objc_enumerationMutation(inputs);
              }

              resolvedResourceKey = [*(*(&v20 + 1) + 8 * j) resolvedResourceKey];
              [v4 addObject:resolvedResourceKey];
            }

            v13 = [inputs countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v13);
        }
      }

      v7 = [tasks countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)getAllLocallyProducedOutputsForGraphs:(id)graphs
{
  v75 = *MEMORY[0x277D85DE8];
  graphsCopy = graphs;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = graphsCopy;
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
        tasks = [v6 tasks];
        v8 = [tasks countByEnumeratingWithState:&v61 objects:v73 count:16];
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
                objc_enumerationMutation(tasks);
              }

              v12 = *(*(&v61 + 1) + 8 * i);
              v57 = 0u;
              v58 = 0u;
              v59 = 0u;
              v60 = 0u;
              outputs = [v12 outputs];
              v14 = [outputs countByEnumeratingWithState:&v57 objects:v72 count:16];
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
                      objc_enumerationMutation(outputs);
                    }

                    resourceKey = [*(*(&v57 + 1) + 8 * j) resourceKey];
                    [v4 addObject:resourceKey];
                  }

                  v15 = [outputs countByEnumeratingWithState:&v57 objects:v72 count:16];
                }

                while (v15);
              }
            }

            v9 = [tasks countByEnumeratingWithState:&v61 objects:v73 count:16];
          }

          while (v9);
        }

        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        sourceTasks = [v44 sourceTasks];
        v20 = [sourceTasks countByEnumeratingWithState:&v53 objects:v71 count:16];
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
                objc_enumerationMutation(sourceTasks);
              }

              v24 = *(*(&v53 + 1) + 8 * k);
              v49 = 0u;
              v50 = 0u;
              v51 = 0u;
              v52 = 0u;
              outputs2 = [v24 outputs];
              v26 = [outputs2 countByEnumeratingWithState:&v49 objects:v70 count:16];
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
                      objc_enumerationMutation(outputs2);
                    }

                    resourceKey2 = [*(*(&v49 + 1) + 8 * m) resourceKey];
                    [v4 addObject:resourceKey2];
                  }

                  v27 = [outputs2 countByEnumeratingWithState:&v49 objects:v70 count:16];
                }

                while (v27);
              }
            }

            v21 = [sourceTasks countByEnumeratingWithState:&v53 objects:v71 count:16];
          }

          while (v21);
        }

        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        writers = [v44 writers];
        v32 = [writers countByEnumeratingWithState:&v45 objects:v69 count:16];
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
                objc_enumerationMutation(writers);
              }

              output = [*(*(&v45 + 1) + 8 * n) output];
              resourceKey3 = [output resourceKey];
              [v4 addObject:resourceKey3];
            }

            v33 = [writers countByEnumeratingWithState:&v45 objects:v69 count:16];
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

- (id)filterANEWaitResources:(id)resources withGraph:(id)graph
{
  v6 = MEMORY[0x277CBEB58];
  graphCopy = graph;
  v8 = [v6 setWithSet:resources];
  v9 = [(PSGraphCompiler *)self getANEWaitResources:graphCopy];

  [v8 intersectSet:v9];

  return v8;
}

- (id)filterNonANEWaitResources:(id)resources withGraph:(id)graph
{
  v6 = MEMORY[0x277CBEB58];
  graphCopy = graph;
  resourcesCopy = resources;
  v9 = [[v6 alloc] initWithSet:resourcesCopy];

  v10 = [(PSGraphCompiler *)self getPolicyWaitResources:graphCopy];
  v11 = [(PSGraphCompiler *)self getANEWaitResources:graphCopy];

  [v9 intersectSet:v10];
  [v9 minusSet:v11];

  return v9;
}

- (id)getPolicyWaitResources:(id)resources
{
  v31 = *MEMORY[0x277D85DE8];
  resourcesCopy = resources;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v20 = resourcesCopy;
  tasks = [resourcesCopy tasks];
  v6 = [tasks countByEnumeratingWithState:&v25 objects:v30 count:16];
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
          objc_enumerationMutation(tasks);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        inputs = [v10 inputs];
        v12 = [inputs countByEnumeratingWithState:&v21 objects:v29 count:16];
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
                objc_enumerationMutation(inputs);
              }

              v16 = *(*(&v21 + 1) + 8 * j);
              if (![v16 type])
              {
                resolvedResourceKey = [v16 resolvedResourceKey];
                [v4 addObject:resolvedResourceKey];
              }
            }

            v13 = [inputs countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v13);
        }
      }

      v7 = [tasks countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)getANEWaitResources:(id)resources
{
  v34 = *MEMORY[0x277D85DE8];
  resourcesCopy = resources;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v20 = resourcesCopy;
  obj = [resourcesCopy tasks];
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
        inputs = [v7 inputs];
        v9 = [inputs countByEnumeratingWithState:&v24 objects:v32 count:16];
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
                objc_enumerationMutation(inputs);
              }

              v13 = *(*(&v24 + 1) + 8 * j);
              context = self->_context;
              resourceKey = [v13 resourceKey];
              v16 = [(PSContext *)context resourceStreamForKey:resourceKey];

              if (![v13 type] && objc_msgSend(v16, "resourceClass") == 10)
              {
                resolvedResourceKey = [v13 resolvedResourceKey];
                [v5 addObject:resolvedResourceKey];
              }
            }

            v10 = [inputs countByEnumeratingWithState:&v24 objects:v32 count:16];
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

- (id)getThreadPoolHashIDForGraph:(id)graph
{
  v3 = MEMORY[0x277CCACA8];
  graphCopy = graph;
  v5 = [v3 alloc];
  resolvedDomain = [graphCopy resolvedDomain];
  v7 = [resolvedDomain key];
  resolvedFrequency = [graphCopy resolvedFrequency];

  v9 = [v5 initWithFormat:@"%@-%d", v7, resolvedFrequency];

  return v9;
}

- (BOOL)shouldUseSharedTriggerForGraph:(id)graph withTransitionBlock:(id)block
{
  v28 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  blockCopy = block;
  v8 = +[PLSSettings currentSettings];
  enableThreadCoalescing = [v8 enableThreadCoalescing];

  if (!enableThreadCoalescing)
  {
    goto LABEL_20;
  }

  if ([graphCopy workloadWait])
  {
    goto LABEL_20;
  }

  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  executionSession = [WeakRetained executionSession];
  shouldUseOptimizedVsyncPath = [executionSession shouldUseOptimizedVsyncPath];

  if (shouldUseOptimizedVsyncPath)
  {
    goto LABEL_20;
  }

  if ([graphCopy criticalityCPU] == 2)
  {
    if ([graphCopy disableThreadSharing])
    {
      v13 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        name = [graphCopy name];
        v26 = 136380675;
        uTF8String = [name UTF8String];
        v15 = "ThreadPool: Graph (%{private}s) will not be coalesced - Graph Disabled Thread Sharing";
LABEL_18:
        _os_log_impl(&dword_25EA3A000, v13, OS_LOG_TYPE_DEFAULT, v15, &v26, 0xCu);
      }
    }

    else
    {
      if (![graphCopy teardownType])
      {
        if (shouldUseSharedTriggerForGraph_withTransitionBlock__once_token != -1)
        {
          [PSGraphCompiler shouldUseSharedTriggerForGraph:withTransitionBlock:];
        }

        v16 = shouldUseSharedTriggerForGraph_withTransitionBlock__mixedDomain;
        resolvedDomain = [graphCopy resolvedDomain];
        LODWORD(v16) = [v16 isEqual:resolvedDomain];

        if (!v16)
        {
          v21 = [(PSGraphCompiler *)self getIntermediateSources:graphCopy withTransitionBlock:blockCopy];
          v22 = [(PSGraphCompiler *)self getSystemSources:graphCopy withTransitionBlock:blockCopy withIntermediateSources:v21];
          v23 = [(PSGraphCompiler *)self filterNonANEWaitResources:v21 withGraph:graphCopy];
          v24 = [(PSGraphCompiler *)self filterNonANEWaitResources:v22 withGraph:graphCopy];
          v25 = [v23 count];
          v18 = v25 + [v24 count] != 0;

          goto LABEL_21;
        }

        v13 = __PLSLogSharedInstance();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_19;
        }

        name = [graphCopy name];
        v26 = 136380675;
        uTF8String = [name UTF8String];
        v15 = "ThreadPool: Graph (%{private}s) will not be coalesced - Mixed Domain";
        goto LABEL_18;
      }

      v13 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        name = [graphCopy name];
        v26 = 136380675;
        uTF8String = [name UTF8String];
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
      name = [graphCopy name];
      v26 = 136380675;
      uTF8String = [name UTF8String];
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

- (void)setThreadPoolIDForGraph:(id)graph withTransitionBlock:(id)block
{
  graphCopy = graph;
  blockCopy = block;
  if (setThreadPoolIDForGraph_withTransitionBlock__onceToken != -1)
  {
    [PSGraphCompiler setThreadPoolIDForGraph:withTransitionBlock:];
  }

  [graphCopy setThreadPoolID:0];
  [graphCopy setExecutionType:0];
  if ([(PSGraphCompiler *)self shouldUseSharedTriggerForGraph:graphCopy withTransitionBlock:blockCopy])
  {
    v7 = [(PSGraphCompiler *)self getThreadPoolHashIDForGraph:graphCopy];
    v8 = [setThreadPoolIDForGraph_withTransitionBlock__bestEffortHashMap objectForKey:v7];
    v9 = v8;
    if (v8)
    {
      [graphCopy setThreadPoolID:{objc_msgSend(v8, "unsignedLongLongValue")}];
    }

    else
    {
      [graphCopy setThreadPoolID:ps_util_generate_uuid()];
      v10 = setThreadPoolIDForGraph_withTransitionBlock__bestEffortHashMap;
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(graphCopy, "threadPoolID")}];
      [v10 setObject:v11 forKey:v7];
    }

    [graphCopy setExecutionType:1];
  }

  else
  {
    [graphCopy setThreadPoolID:ps_util_generate_uuid()];
    [graphCopy setExecutionType:2];
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

- (id)threadPoolExecPathToString:(ps_exec_shared_thread_pool_s *)string
{
  v28 = *MEMORY[0x277D85DE8];
  var1 = string->var1;
  if (var1 >= 4)
  {
    v17 = 0;
    p_var5 = &string[1].var5;
    asprintf(&v17, "Unknown ThreadPool Path (%u) for thread_pool (%s) with id: %llu", var1, &string[1].var5, string->var8);
    v7 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = string->var1;
      var8 = string->var8;
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

- (void)addGraphToThreadPool:(id)pool
{
  v55 = *MEMORY[0x277D85DE8];
  poolCopy = pool;
  v5 = *[poolCopy executionContext];
  activeThreadPools = self->_activeThreadPools;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(poolCopy, "threadPoolID")}];
  v8 = [(NSMutableDictionary *)activeThreadPools objectForKey:v7];

  if (!v8)
  {
    inited = ps_exec_init_shared_thread_pool();
    *(inited + 4) = [poolCopy threadPoolID];
    WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
    executionSession = [WeakRetained executionSession];
    *(inited + 42) = [executionSession gsm];

    v17 = objc_loadWeakRetained(&self->_transitionManager);
    executionSession2 = [v17 executionSession];
    shouldUseOptimizedVsyncPath = [executionSession2 shouldUseOptimizedVsyncPath];

    if (shouldUseOptimizedVsyncPath)
    {
      v20 = 2;
    }

    else if ([poolCopy workloadWait])
    {
      v20 = 3;
    }

    else
    {
      if ([poolCopy executionType] == 1)
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
      name = [poolCopy name];
      uTF8String = [name UTF8String];
      v24 = [(PSGraphCompiler *)self threadPoolExecPathToString:inited];
      *buf = 136315650;
      v48 = uTF8String;
      v49 = 2080;
      uTF8String2 = [v24 UTF8String];
      v51 = 2048;
      threadPoolID = [poolCopy threadPoolID];
      _os_log_impl(&dword_25EA3A000, v21, OS_LOG_TYPE_DEFAULT, "ThreadPool: New Threadpool for Graph (%s) on Execution Path (%s) with ID (%llu)", buf, 0x20u);
    }

    if (*(inited + 1))
    {
      *(inited + 2) = [poolCopy resolvedThreadPoolSize];
      name2 = [poolCopy name];
      [name2 UTF8String];
      __strlcpy_chk();

      *(inited + 6) = v5;
      resolvedCriticalityCPU = [poolCopy resolvedCriticalityCPU];
      if (resolvedCriticalityCPU > 1)
      {
        if (resolvedCriticalityCPU == 2)
        {
          v27 = 2;
          goto LABEL_30;
        }

        if (resolvedCriticalityCPU == 3)
        {
          v27 = 3;
          goto LABEL_30;
        }
      }

      else if (resolvedCriticalityCPU)
      {
        if (resolvedCriticalityCPU == 1)
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
      v44 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(poolCopy, "threadPoolID")}];
      [(NSMutableDictionary *)v43 setObject:v10 forKey:v44];

      goto LABEL_32;
    }

    *(inited + 2) = 1;
    *(inited + 17) = 2;
    inited[24] = 1;
    v28 = MEMORY[0x277CCACA8];
    v29 = best_effort_thread_pool_name;
    resolvedDomain = [poolCopy resolvedDomain];
    v31 = [resolvedDomain key];
    v32 = [v28 stringWithFormat:@"%s-%@-%lu", v29, v31, objc_msgSend(poolCopy, "resolvedFrequency")];

    [v32 UTF8String];
    __strlcpy_chk();
    v33 = +[PLSSettings currentSettings];
    v46 = v5;
    if ([v33 enableFastTransition])
    {
      v34 = objc_loadWeakRetained(&self->_transitionManager);
      executionSession3 = [v34 executionSession];
      systemGraphSession = [executionSession3 systemGraphSession];

      if (systemGraphSession)
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
    name3 = [poolCopy name];
    uTF8String3 = [name3 UTF8String];
    threadPoolID2 = [poolCopy threadPoolID];
    v14 = atomic_load(inited + 4);
    *buf = 136315906;
    v48 = uTF8String3;
    v49 = 2080;
    uTF8String2 = (inited + 72);
    v51 = 2048;
    threadPoolID = threadPoolID2;
    v53 = 1024;
    v54 = v14;
    _os_log_impl(&dword_25EA3A000, v10, OS_LOG_TYPE_DEFAULT, "ThreadPool: Adding Graph (%s) for existing ThreadPool (%s) with ID (%llu) with Count (%d)", buf, 0x26u);
  }

LABEL_32:

  *(v5 + 6792) = inited;
  *([poolCopy executionContext] + 8) = inited;

  v45 = *MEMORY[0x277D85DE8];
}

- (void)removeGraphFromThreadPool:(id)pool
{
  v33 = *MEMORY[0x277D85DE8];
  poolCopy = pool;
  activeThreadPools = self->_activeThreadPools;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(poolCopy, "threadPoolID")}];
  v7 = [(NSMutableDictionary *)activeThreadPools objectForKey:v6];

  if (!v7)
  {
    [(PSGraphCompiler *)&v25 removeGraphFromThreadPool:poolCopy];
  }

  pointerValue = [v7 pointerValue];
  add = atomic_fetch_add((pointerValue + 16), 0xFFFFFFFF);
  if (add <= 0)
  {
    [PSGraphCompiler removeGraphFromThreadPool:];
  }

  v10 = pointerValue;
  v11 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    name = [poolCopy name];
    uTF8String = [name UTF8String];
    v14 = *(v10 + 32);
    v15 = atomic_load((v10 + 16));
    v25 = 136381443;
    v26 = uTF8String;
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
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(poolCopy, "threadPoolID")}];
      [(NSMutableDictionary *)v23 removeObjectForKey:v17];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)initThreadPoolForGraph:(id)graph withExecutorGraph:(ps_exec_graph_s *)executorGraph
{
  graphCopy = graph;
  if ([graphCopy threadPoolID])
  {
    activeThreadPools = self->_activeThreadPools;
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(graphCopy, "threadPoolID")}];
    v9 = [(NSMutableDictionary *)activeThreadPools objectForKey:v8];

    if (v9)
    {
      pointerValue = [v9 pointerValue];
      v11 = atomic_load(pointerValue);
      if (v11 == 1)
      {
        *(pointerValue + 328) = executorGraph;
        atomic_store(2u, pointerValue);
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

          pointerValue = [*(*(&v41 + 1) + 8 * i) pointerValue];
          if (atomic_load((pointerValue + 16)))
          {
            [PSGraphCompiler destroyAllThreadPools];
          }

          v10 = pointerValue;
          if (atomic_load((pointerValue + 20)))
          {
            [PSGraphCompiler destroyAllThreadPools];
          }

          ps_exec_terminate_shared_thread_pool(pointerValue);
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

          pointerValue2 = [*(*(&v37 + 1) + 8 * j) pointerValue];
          v19 = *(pointerValue2 + 32);
          v20 = __PLSLogSharedInstance();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = v16;
            v22 = *(pointerValue2 + 32);
            v23 = [(PSGraphCompiler *)self threadPoolExecPathToString:pointerValue2];
            *buf = 136315906;
            v46 = "[PSGraphCompiler destroyAllThreadPools]";
            v47 = 2080;
            v48 = pointerValue2 + 72;
            v49 = 2048;
            v50 = v22;
            v16 = v21;
            v51 = 2112;
            v52 = v23;
            _os_log_impl(&dword_25EA3A000, v20, OS_LOG_TYPE_DEFAULT, "ThreadPool: %s Tearing down ThreadPool (%s) with ID (%llu) on path (%@)", buf, 0x2Au);
          }

          ps_exec_destroy_shared_thread_pool(pointerValue2);
          currentSettings = [*(v16 + 1680) currentSettings];
          if ([currentSettings enableFastTransition])
          {
            WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
            executionSession = [WeakRetained executionSession];
            systemGraphSession = [executionSession systemGraphSession];

            if (!systemGraphSession)
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

            currentSettings = xpc_dictionary_create(0, 0, 0);
            populateRemoveThreadPoolInfo(currentSettings, v19);
            v29 = objc_loadWeakRetained(&self->_transitionManager);
            executionSession2 = [v29 executionSession];
            systemGraphSession2 = [executionSession2 systemGraphSession];
            v32 = xpc_session_send_message(systemGraphSession2, currentSettings);

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

- (id)getAllResourcesForGraphs:(id)graphs
{
  v59 = *MEMORY[0x277D85DE8];
  graphsCopy = graphs;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = graphsCopy;
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
        tasks = [v7 tasks];
        v38 = [tasks countByEnumeratingWithState:&v47 objects:v57 count:16];
        if (v38)
        {
          v37 = *v48;
          do
          {
            for (i = 0; i != v38; ++i)
            {
              if (*v48 != v37)
              {
                objc_enumerationMutation(tasks);
              }

              v9 = *(*(&v47 + 1) + 8 * i);
              v43 = 0u;
              v44 = 0u;
              v45 = 0u;
              v46 = 0u;
              inputs = [v9 inputs];
              v11 = [inputs countByEnumeratingWithState:&v43 objects:v56 count:16];
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
                      objc_enumerationMutation(inputs);
                    }

                    v15 = *(*(&v43 + 1) + 8 * j);
                    resolvedResourceKey = [v15 resolvedResourceKey];
                    [v5 addObject:resolvedResourceKey];

                    device = self->_device;
                    resolvedResourceKey2 = [v15 resolvedResourceKey];
                    v19 = [(PLSDevice *)device propertiesForKey:resolvedResourceKey2];

                    syncedKey = [v19 syncedKey];
                    if (syncedKey)
                    {
                      [v5 addObject:syncedKey];
                    }
                  }

                  v12 = [inputs countByEnumeratingWithState:&v43 objects:v56 count:16];
                }

                while (v12);
              }

              v41 = 0u;
              v42 = 0u;
              v39 = 0u;
              v40 = 0u;
              outputs = [v9 outputs];
              v22 = [outputs countByEnumeratingWithState:&v39 objects:v55 count:16];
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
                      objc_enumerationMutation(outputs);
                    }

                    resourceKey = [*(*(&v39 + 1) + 8 * k) resourceKey];
                    [v5 addObject:resourceKey];
                  }

                  v23 = [outputs countByEnumeratingWithState:&v39 objects:v55 count:16];
                }

                while (v23);
              }
            }

            v38 = [tasks countByEnumeratingWithState:&v47 objects:v57 count:16];
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

- (id)getAllStridedInputsForGraphs:(id)graphs
{
  v72 = *MEMORY[0x277D85DE8];
  graphsCopy = graphs;
  v4 = objc_alloc_init(MEMORY[0x277CCA940]);
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = graphsCopy;
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
        currentSystemStride = [v6 currentSystemStride];

        v41 = v5;
        if (currentSystemStride)
        {
          currentSystemStride2 = [v6 currentSystemStride];
        }

        else
        {
          currentSystemStride2 = [v6 systemPulseStride];
          [v6 setCurrentSystemStride:currentSystemStride2];
        }

        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        tasks = [v6 tasks];
        v44 = [tasks countByEnumeratingWithState:&v60 objects:v70 count:16];
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
                objc_enumerationMutation(tasks);
              }

              v46 = v9;
              v10 = *(*(&v60 + 1) + 8 * v9);
              v56 = 0u;
              v57 = 0u;
              v58 = 0u;
              v59 = 0u;
              inputs = [v10 inputs];
              v11 = [inputs countByEnumeratingWithState:&v56 objects:v69 count:16];
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
                      objc_enumerationMutation(inputs);
                    }

                    v15 = *(*(&v56 + 1) + 8 * i);
                    resolvedResourceKey = [v15 resolvedResourceKey];
                    v17 = +[PSResourceRequest requestWithKey:stride:inputType:graph:](PSResourceRequest, "requestWithKey:stride:inputType:graph:", resolvedResourceKey, currentSystemStride2, [v15 type], v6);
                    [v4 addObject:v17];

                    device = self->_device;
                    resolvedResourceKey2 = [v15 resolvedResourceKey];
                    v20 = [(PLSDevice *)device propertiesForKey:resolvedResourceKey2];

                    syncedKey = [v20 syncedKey];
                    if (syncedKey)
                    {
                      v4 = v50;
                      v22 = +[PSResourceRequest requestWithKey:stride:inputType:graph:](PSResourceRequest, "requestWithKey:stride:inputType:graph:", syncedKey, currentSystemStride2, [v15 type], v6);
                      [v50 addObject:v22];
                    }
                  }

                  v12 = [inputs countByEnumeratingWithState:&v56 objects:v69 count:16];
                }

                while (v12);
              }

              v9 = v46 + 1;
            }

            while ((v46 + 1) != v44);
            v44 = [tasks countByEnumeratingWithState:&v60 objects:v70 count:16];
          }

          while (v44);
        }

        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        readers = [v6 readers];
        v49 = [readers countByEnumeratingWithState:&v52 objects:v68 count:16];
        if (v49)
        {
          v47 = *v53;
          do
          {
            for (j = 0; j != v49; j = j + 1)
            {
              if (*v53 != v47)
              {
                objc_enumerationMutation(readers);
              }

              v24 = *(*(&v52 + 1) + 8 * j);
              input = [v24 input];
              resolvedResourceKey3 = [input resolvedResourceKey];
              input2 = [v24 input];
              v28 = +[PSResourceRequest requestWithKey:stride:inputType:graph:](PSResourceRequest, "requestWithKey:stride:inputType:graph:", resolvedResourceKey3, currentSystemStride2, [input2 type], v6);
              [v50 addObject:v28];

              v29 = self->_device;
              input3 = [v24 input];
              resolvedResourceKey4 = [input3 resolvedResourceKey];
              v32 = [(PLSDevice *)v29 propertiesForKey:resolvedResourceKey4];

              syncedKey2 = [v32 syncedKey];
              if (syncedKey2)
              {
                input4 = [v24 input];
                v35 = +[PSResourceRequest requestWithKey:stride:inputType:graph:](PSResourceRequest, "requestWithKey:stride:inputType:graph:", syncedKey2, currentSystemStride2, [input4 type], v6);
                [v50 addObject:v35];
              }
            }

            v49 = [readers countByEnumeratingWithState:&v52 objects:v68 count:16];
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

- (id)getAllInputsForGraphs:(id)graphs
{
  v65 = *MEMORY[0x277D85DE8];
  graphsCopy = graphs;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = graphsCopy;
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
        tasks = [v7 tasks];
        v8 = [tasks countByEnumeratingWithState:&v53 objects:v63 count:16];
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
                objc_enumerationMutation(tasks);
              }

              v11 = *(*(&v53 + 1) + 8 * i);
              v49 = 0u;
              v50 = 0u;
              v51 = 0u;
              v52 = 0u;
              inputs = [v11 inputs];
              v13 = [inputs countByEnumeratingWithState:&v49 objects:v62 count:16];
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
                      objc_enumerationMutation(inputs);
                    }

                    v17 = *(*(&v49 + 1) + 8 * j);
                    resolvedResourceKey = [v17 resolvedResourceKey];
                    [v5 addObject:resolvedResourceKey];

                    device = self->_device;
                    resolvedResourceKey2 = [v17 resolvedResourceKey];
                    v21 = [(PLSDevice *)device propertiesForKey:resolvedResourceKey2];

                    syncedKey = [v21 syncedKey];
                    if (syncedKey)
                    {
                      [v5 addObject:syncedKey];
                    }
                  }

                  v14 = [inputs countByEnumeratingWithState:&v49 objects:v62 count:16];
                }

                while (v14);
              }
            }

            v9 = [tasks countByEnumeratingWithState:&v53 objects:v63 count:16];
          }

          while (v9);
        }

        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        readers = [v41 readers];
        v24 = [readers countByEnumeratingWithState:&v45 objects:v61 count:16];
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
                objc_enumerationMutation(readers);
              }

              v28 = *(*(&v45 + 1) + 8 * k);
              input = [v28 input];
              resolvedResourceKey3 = [input resolvedResourceKey];
              [v5 addObject:resolvedResourceKey3];

              v31 = self->_device;
              input2 = [v28 input];
              resolvedResourceKey4 = [input2 resolvedResourceKey];
              v34 = [(PLSDevice *)v31 propertiesForKey:resolvedResourceKey4];

              syncedKey2 = [v34 syncedKey];
              if (syncedKey2)
              {
                [v5 addObject:syncedKey2];
              }
            }

            v25 = [readers countByEnumeratingWithState:&v45 objects:v61 count:16];
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

- (id)getAllOutputsForGraphs:(id)graphs
{
  v75 = *MEMORY[0x277D85DE8];
  graphsCopy = graphs;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = graphsCopy;
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
        tasks = [v6 tasks];
        v8 = [tasks countByEnumeratingWithState:&v61 objects:v73 count:16];
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
                objc_enumerationMutation(tasks);
              }

              v12 = *(*(&v61 + 1) + 8 * i);
              v57 = 0u;
              v58 = 0u;
              v59 = 0u;
              v60 = 0u;
              outputs = [v12 outputs];
              v14 = [outputs countByEnumeratingWithState:&v57 objects:v72 count:16];
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
                      objc_enumerationMutation(outputs);
                    }

                    resourceKey = [*(*(&v57 + 1) + 8 * j) resourceKey];
                    [v4 addObject:resourceKey];
                  }

                  v15 = [outputs countByEnumeratingWithState:&v57 objects:v72 count:16];
                }

                while (v15);
              }
            }

            v9 = [tasks countByEnumeratingWithState:&v61 objects:v73 count:16];
          }

          while (v9);
        }

        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        sourceTasks = [v44 sourceTasks];
        v20 = [sourceTasks countByEnumeratingWithState:&v53 objects:v71 count:16];
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
                objc_enumerationMutation(sourceTasks);
              }

              v24 = *(*(&v53 + 1) + 8 * k);
              v49 = 0u;
              v50 = 0u;
              v51 = 0u;
              v52 = 0u;
              outputs2 = [v24 outputs];
              v26 = [outputs2 countByEnumeratingWithState:&v49 objects:v70 count:16];
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
                      objc_enumerationMutation(outputs2);
                    }

                    resourceKey2 = [*(*(&v49 + 1) + 8 * m) resourceKey];
                    [v4 addObject:resourceKey2];
                  }

                  v27 = [outputs2 countByEnumeratingWithState:&v49 objects:v70 count:16];
                }

                while (v27);
              }
            }

            v21 = [sourceTasks countByEnumeratingWithState:&v53 objects:v71 count:16];
          }

          while (v21);
        }

        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        writers = [v44 writers];
        v32 = [writers countByEnumeratingWithState:&v45 objects:v69 count:16];
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
                objc_enumerationMutation(writers);
              }

              output = [*(*(&v45 + 1) + 8 * n) output];
              resourceKey3 = [output resourceKey];
              [v4 addObject:resourceKey3];
            }

            v33 = [writers countByEnumeratingWithState:&v45 objects:v69 count:16];
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

- (id)getUniqueResourcesFromGraphs:(id)graphs notPresentInGraphs:(id)inGraphs
{
  inGraphsCopy = inGraphs;
  v7 = [(PSGraphCompiler *)self getAllResourcesForGraphs:graphs];
  v8 = [(PSGraphCompiler *)self getAllResourcesForGraphs:inGraphsCopy];

  v9 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:v7];
  [v9 minusSet:v8];

  return v9;
}

- (id)getAddedInputsWithOldGraphs:(id)graphs withNewGraphs:(id)newGraphs
{
  graphsCopy = graphs;
  v7 = [(PSGraphCompiler *)self getAllInputsForGraphs:newGraphs];
  v8 = [(PSGraphCompiler *)self getAllInputsForGraphs:graphsCopy];

  v9 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:v7];
  [v9 minusSet:v8];

  return v9;
}

- (id)getRemovedInputsWithOldGraphs:(id)graphs withNewGraphs:(id)newGraphs
{
  newGraphsCopy = newGraphs;
  v7 = [(PSGraphCompiler *)self getAllInputsForGraphs:graphs];
  v8 = [(PSGraphCompiler *)self getAllInputsForGraphs:newGraphsCopy];

  v9 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:v7];
  [v9 minusSet:v8];

  return v9;
}

- (id)getAddedOutputsWithOldGraphs:(id)graphs withNewGraphs:(id)newGraphs
{
  newGraphsCopy = newGraphs;
  v7 = [(PSGraphCompiler *)self getAllOutputsForGraphs:graphs];
  v8 = [(PSGraphCompiler *)self getAllOutputsForGraphs:newGraphsCopy];

  v9 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:v8];
  [v9 minusSet:v7];

  return v9;
}

- (id)getRemovedOutputsWithOldGraphs:(id)graphs withNewGraphs:(id)newGraphs
{
  newGraphsCopy = newGraphs;
  v7 = [(PSGraphCompiler *)self getAllOutputsForGraphs:graphs];
  v8 = [(PSGraphCompiler *)self getAllOutputsForGraphs:newGraphsCopy];

  v9 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:v7];
  [v9 minusSet:v8];

  return v9;
}

- (unint64_t)getMaxRateForKey:(id)key forGraphs:(id)graphs
{
  v43 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = graphs;
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
        tasks = [v8 tasks];
        v27 = [tasks countByEnumeratingWithState:&v32 objects:v41 count:16];
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
                objc_enumerationMutation(tasks);
              }

              v10 = *(*(&v32 + 1) + 8 * v9);
              v28 = 0u;
              v29 = 0u;
              v30 = 0u;
              v31 = 0u;
              inputs = [v10 inputs];
              v12 = [inputs countByEnumeratingWithState:&v28 objects:v40 count:16];
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
                      objc_enumerationMutation(inputs);
                    }

                    resolvedResourceKey = [*(*(&v28 + 1) + 8 * v15) resolvedResourceKey];
                    v17 = [resolvedResourceKey isEqualToString:keyCopy];

                    if (v17)
                    {
                      resolvedFrequency = [v8 resolvedFrequency];
                      if (resolvedFrequency > v6)
                      {
                        v6 = resolvedFrequency;
                      }
                    }

                    ++v15;
                  }

                  while (v13 != v15);
                  v13 = [inputs countByEnumeratingWithState:&v28 objects:v40 count:16];
                }

                while (v13);
              }

              ++v9;
            }

            while (v9 != v27);
            v27 = [tasks countByEnumeratingWithState:&v32 objects:v41 count:16];
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

- (id)getGraphTaskHash:(id)hash withTask:(id)task
{
  v5 = MEMORY[0x277CCACA8];
  taskCopy = task;
  hashCopy = hash;
  name = [hashCopy name];
  name2 = [taskCopy name];

  hashCopy = [v5 stringWithFormat:@"%@-%@-%p", name, name2, hashCopy];

  return hashCopy;
}

- (id)getPSResourceKeysInitializing
{
  v3 = objc_alloc_init(MEMORY[0x277CBEA60]);
  [(NSLock *)self->_keysInitializingLock lock];
  v4 = [(NSMutableArray *)self->_keysInitializing copy];

  [(NSLock *)self->_keysInitializingLock unlock];

  return v4;
}

- (BOOL)getStreamOptionsForKey:(id)key options:(ps_input_resource_options_s *)options
{
  v21 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if (getStreamOptionsForKey_options__onceToken != -1)
  {
    [PSGraphCompiler getStreamOptionsForKey:options:];
  }

  if (getStreamOptionsForKey_options__streamDefaults)
  {
    v6 = [getStreamOptionsForKey_options__streamDefaults objectForKeyedSubscript:keyCopy];
    v7 = v6;
    v8 = v6 != 0;
    if (!v6)
    {
      v9 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v17 = 138412290;
        v18 = keyCopy;
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
      options->var0 = [v7 staleExpiryFramePeriod];
      v9 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        var0 = options->var0;
        v17 = 138412546;
        v18 = keyCopy;
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

- (BOOL)getDropFramesOptionForKey:(id)key options:(ps_task_output_resource_options_s *)options
{
  v21 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if (getDropFramesOptionForKey_options__onceToken != -1)
  {
    [PSGraphCompiler getDropFramesOptionForKey:options:];
  }

  if (getDropFramesOptionForKey_options__streamDefaults)
  {
    v6 = [getDropFramesOptionForKey_options__streamDefaults objectForKeyedSubscript:keyCopy];
    v7 = v6;
    v8 = v6 != 0;
    if (!v6)
    {
      v9 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v17 = 138412290;
        v18 = keyCopy;
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
      options->var0 = [v7 dropFrames];
      v9 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        var0 = options->var0;
        v17 = 138412546;
        v18 = keyCopy;
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
  newCommandQueue = [(MTLDeviceSPI *)self->_mtlDevice newCommandQueue];

  return newCommandQueue;
}

- (id)createMtlCommandQueueRealTime
{
  commandQueueDescriptor = [MEMORY[0x277CD6CF8] commandQueueDescriptor];
  [commandQueueDescriptor setQosLevel:0];
  v4 = [(MTLDeviceSPI *)self->_mtlDevice newCommandQueueWithDescriptor:commandQueueDescriptor];
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