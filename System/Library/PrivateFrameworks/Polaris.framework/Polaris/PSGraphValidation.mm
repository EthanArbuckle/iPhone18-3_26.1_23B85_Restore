@interface PSGraphValidation
+ (BOOL)validateTransitionBlock:(id)block forSession:(id)session error:(id *)error;
+ (id)criticalityToString:(unint64_t)string;
+ (id)findImmediateDownstreamGraphs:(id)graphs withTransitionBlock:(id)block;
+ (id)generateDuplicateGraphNameError:(id)error otherGraph:(id)graph;
+ (id)listifyTokens:(id)tokens;
+ (id)resourceClassToString:(unint64_t)string;
+ (id)validateAllocatorsNonnull:(id)nonnull withContext:(id)context;
+ (id)validateBarriersHaveUnblockingTask:(id)task;
+ (id)validateCadencedWaitInput:(id)input requestedStride:(id)stride resource:(id)resource graphName:(id)name;
+ (id)validateCreationModeCompatibility:(id)compatibility withContext:(id)context;
+ (id)validateGraphFrequencyValidMultiples:(id)multiples withContext:(id)context withDevice:(id)device isLocalReplaySession:(BOOL)session;
+ (id)validateIOSurfaceMetadataProvider:(id)provider;
+ (id)validateIOSurfaceMetadataResourceClass:(id)class;
+ (id)validateIntermediateStreamClassesSupported:(id)supported withContext:(id)context;
+ (id)validateKeyStringLength:(id)length;
+ (id)validateLastNBufferDepths:(id)depths withContext:(id)context isLocalReplaySession:(BOOL)session;
+ (id)validateNoDuplicateGraphAddition:(id)addition;
+ (id)validateNoDuplicateGraphNames:(id)names session:(id)session;
+ (id)validateNoDuplicateGraphRemoval:(id)removal;
+ (id)validateNoDuplicateOutputs:(id)outputs;
+ (id)validateNoDuplicateTaskKeys:(id)keys;
+ (id)validateNumGraphs:(id)graphs;
+ (id)validateNumInputs:(id)inputs;
+ (id)validateNumOutputs:(id)outputs;
+ (id)validateNumTasks:(id)tasks;
+ (id)validateResourcesAvailable:(id)available withContext:(id)context withDevice:(id)device;
+ (id)validateRetainedInputsEnabled:(id)enabled withContext:(id)context;
+ (id)validateRetainedInputsNotLastN:(id)n withContext:(id)context;
+ (id)validateRetainedInputsNotNested:(id)nested withContext:(id)context;
+ (id)validateSequencedTeardownLeaderExists:(id)exists;
+ (id)validateSimpleWaitInputFrequency:(unint64_t)frequency requested:(unint64_t)requested resource:(id)resource graphName:(id)name isLocalReplaySession:(BOOL)session;
+ (id)validateStorageModeCompatibility:(id)compatibility withContext:(id)context;
+ (id)validateTaskPointersUnique:(id)unique;
+ (id)validateWriterNotRemovedBeforeReader:(id)reader withContext:(id)context;
@end

@implementation PSGraphValidation

+ (BOOL)validateTransitionBlock:(id)block forSession:(id)session error:(id *)error
{
  blockCopy = block;
  sessionCopy = session;
  context = [sessionCopy context];
  device = [sessionCopy device];
  dashboard = [sessionCopy dashboard];
  isLocalReplaySession = [dashboard isLocalReplaySession];

  v13 = [PSGraphValidation validateResourcesAvailable:blockCopy withContext:context withDevice:device];
  if (!v13)
  {
    v13 = [PSGraphValidation validateKeyStringLength:blockCopy];
    if (!v13)
    {
      v13 = [PSGraphValidation validateNoDuplicateTaskKeys:blockCopy];
      if (!v13)
      {
        v13 = [PSGraphValidation validateNumGraphs:blockCopy];
        if (!v13)
        {
          v13 = [PSGraphValidation validateNoDuplicateOutputs:blockCopy];
          if (!v13)
          {
            v13 = [PSGraphValidation validateNumTasks:blockCopy];
            if (!v13)
            {
              v13 = [PSGraphValidation validateKeyStringLength:blockCopy];
              if (!v13)
              {
                v13 = [PSGraphValidation validateNumInputs:blockCopy];
                if (!v13)
                {
                  v13 = [PSGraphValidation validateNumOutputs:blockCopy];
                  if (!v13)
                  {
                    v13 = [PSGraphValidation validateGraphFrequencyValidMultiples:blockCopy withContext:context withDevice:device isLocalReplaySession:isLocalReplaySession];
                    if (!v13)
                    {
                      v13 = [PSGraphValidation validateReaderWriterGraphs:blockCopy];
                      if (!v13)
                      {
                        v13 = [PSGraphValidation validateIntermediateStreamClassesSupported:blockCopy withContext:context];
                        if (!v13)
                        {
                          v13 = [PSGraphValidation validateNoDuplicateGraphAddition:blockCopy];
                          if (!v13)
                          {
                            v13 = [PSGraphValidation validateNoDuplicateGraphRemoval:blockCopy];
                            if (!v13)
                            {
                              v13 = [PSGraphValidation validateTaskPointersUnique:blockCopy];
                              if (!v13)
                              {
                                v13 = [PSGraphValidation validateAllocatorsNonnull:blockCopy withContext:context];
                                if (!v13)
                                {
                                  v13 = [PSGraphValidation validateBarriersHaveUnblockingTask:blockCopy];
                                  if (!v13)
                                  {
                                    v13 = [PSGraphValidation validateLastNBufferDepths:blockCopy withContext:context isLocalReplaySession:isLocalReplaySession];
                                    if (!v13)
                                    {
                                      v13 = [PSGraphValidation validateRetainedInputsEnabled:blockCopy withContext:context];
                                      if (!v13)
                                      {
                                        v13 = [PSGraphValidation validateRetainedInputsNotLastN:blockCopy withContext:context];
                                        if (!v13)
                                        {
                                          v13 = [PSGraphValidation validateRetainedInputsNotNested:blockCopy withContext:context];
                                          if (!v13)
                                          {
                                            v13 = [PSGraphValidation validateSequencedTeardownLeaderExists:blockCopy];
                                            if (!v13)
                                            {
                                              v13 = [PSGraphValidation validateIOSurfaceMetadataResourceClass:blockCopy];
                                              if (!v13)
                                              {
                                                v13 = [PSGraphValidation validateIOSurfaceMetadataProvider:blockCopy];
                                                if (!v13)
                                                {
                                                  v13 = [PSGraphValidation validateStorageModeCompatibility:blockCopy withContext:context];
                                                  if (!v13)
                                                  {
                                                    v13 = [PSGraphValidation validateCreationModeCompatibility:blockCopy withContext:context];
                                                    if (!v13)
                                                    {
                                                      v13 = [PSGraphValidation validateGraphCriticality:blockCopy];
                                                      if (!v13)
                                                      {
                                                        v13 = [PSGraphValidation validateWriterNotRemovedBeforeReader:blockCopy withContext:context];
                                                        if (!v13)
                                                        {
                                                          v14 = [PSGraphValidation validateNoDuplicateGraphNames:blockCopy session:sessionCopy];
                                                          if (!v14)
                                                          {
                                                            v16 = 1;
                                                            goto LABEL_34;
                                                          }

                                                          if (error)
                                                          {
                                                            goto LABEL_30;
                                                          }

LABEL_33:
                                                          v16 = 0;
                                                          goto LABEL_34;
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v14 = v13;
  if (!error)
  {
    goto LABEL_33;
  }

LABEL_30:
  v15 = v14;
  v16 = 0;
  *error = v14;
LABEL_34:

  return v16;
}

+ (id)validateNoDuplicateOutputs:(id)outputs
{
  v96 = *MEMORY[0x277D85DE8];
  outputsCopy = outputs;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__PSGraphValidation_validateNoDuplicateOutputs___block_invoke;
  aBlock[3] = &unk_279A48438;
  v46 = v4;
  v88 = v46;
  v5 = _Block_copy(aBlock);
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v47 = outputsCopy;
  obj = [outputsCopy postTransitionGraphs];
  v50 = [obj countByEnumeratingWithState:&v83 objects:v95 count:16];
  if (v50)
  {
    v49 = *v84;
    do
    {
      v6 = 0;
      do
      {
        if (*v84 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v83 + 1) + 8 * v6);
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v51 = v6;
        v52 = v7;
        tasks = [v7 tasks];
        v57 = [tasks countByEnumeratingWithState:&v79 objects:v94 count:16];
        if (v57)
        {
          v55 = *v80;
          do
          {
            for (i = 0; i != v57; ++i)
            {
              if (*v80 != v55)
              {
                objc_enumerationMutation(tasks);
              }

              v9 = *(*(&v79 + 1) + 8 * i);
              v75 = 0u;
              v76 = 0u;
              v77 = 0u;
              v78 = 0u;
              outputs = [v9 outputs];
              v11 = [outputs countByEnumeratingWithState:&v75 objects:v93 count:16];
              if (v11)
              {
                v12 = v11;
                v13 = *v76;
                do
                {
                  for (j = 0; j != v12; ++j)
                  {
                    if (*v76 != v13)
                    {
                      objc_enumerationMutation(outputs);
                    }

                    resourceKey = [*(*(&v75 + 1) + 8 * j) resourceKey];
                    name = [v9 name];
                    v5[2](v5, resourceKey, name);
                  }

                  v12 = [outputs countByEnumeratingWithState:&v75 objects:v93 count:16];
                }

                while (v12);
              }
            }

            v57 = [tasks countByEnumeratingWithState:&v79 objects:v94 count:16];
          }

          while (v57);
        }

        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        sourceTasks = [v52 sourceTasks];
        v58 = [sourceTasks countByEnumeratingWithState:&v71 objects:v92 count:16];
        if (v58)
        {
          v56 = *v72;
          do
          {
            for (k = 0; k != v58; ++k)
            {
              if (*v72 != v56)
              {
                objc_enumerationMutation(sourceTasks);
              }

              v18 = *(*(&v71 + 1) + 8 * k);
              v67 = 0u;
              v68 = 0u;
              v69 = 0u;
              v70 = 0u;
              outputs2 = [v18 outputs];
              v20 = [outputs2 countByEnumeratingWithState:&v67 objects:v91 count:16];
              if (v20)
              {
                v21 = v20;
                v22 = *v68;
                do
                {
                  for (m = 0; m != v21; ++m)
                  {
                    if (*v68 != v22)
                    {
                      objc_enumerationMutation(outputs2);
                    }

                    resourceKey2 = [*(*(&v67 + 1) + 8 * m) resourceKey];
                    name2 = [v18 name];
                    v5[2](v5, resourceKey2, name2);
                  }

                  v21 = [outputs2 countByEnumeratingWithState:&v67 objects:v91 count:16];
                }

                while (v21);
              }
            }

            v58 = [sourceTasks countByEnumeratingWithState:&v71 objects:v92 count:16];
          }

          while (v58);
        }

        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        writers = [v52 writers];
        v27 = [writers countByEnumeratingWithState:&v63 objects:v90 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v64;
          do
          {
            for (n = 0; n != v28; ++n)
            {
              if (*v64 != v29)
              {
                objc_enumerationMutation(writers);
              }

              v31 = *(*(&v63 + 1) + 8 * n);
              output = [v31 output];

              if (output)
              {
                output2 = [v31 output];
                resourceKey3 = [output2 resourceKey];
                name3 = [v31 name];
                v5[2](v5, resourceKey3, name3);
              }
            }

            v28 = [writers countByEnumeratingWithState:&v63 objects:v90 count:16];
          }

          while (v28);
        }

        v6 = v51 + 1;
      }

      while (v51 + 1 != v50);
      v50 = [obj countByEnumeratingWithState:&v83 objects:v95 count:16];
    }

    while (v50);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v36 = v46;
  v37 = [v36 countByEnumeratingWithState:&v59 objects:v89 count:16];
  if (v37)
  {
    v38 = *v60;
    v39 = v47;
    while (2)
    {
      for (ii = 0; ii != v37; ii = ii + 1)
      {
        if (*v60 != v38)
        {
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v59 + 1) + 8 * ii);
        v42 = [v36 objectForKey:v41];
        if ([v42 count] > 1)
        {
          v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"Multiple producers found for key %@. Producers: %@", v41, v42];
          v37 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-100 description:v43 recoverySuggestion:@"Multiple producers are not allowed to write to the same buffer."];

          goto LABEL_56;
        }
      }

      v37 = [v36 countByEnumeratingWithState:&v59 objects:v89 count:16];
      if (v37)
      {
        continue;
      }

      break;
    }

    v43 = v36;
  }

  else
  {
    v43 = v36;
    v39 = v47;
  }

LABEL_56:

  v44 = *MEMORY[0x277D85DE8];

  return v37;
}

void __48__PSGraphValidation_validateNoDuplicateOutputs___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKey:v7];
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [*(a1 + 32) setObject:v6 forKey:v7];
  }

  [v6 addObject:v5];
}

+ (id)validateNoDuplicateTaskKeys:(id)keys
{
  v77 = *MEMORY[0x277D85DE8];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  addedGraphs = [keys addedGraphs];
  v4 = [addedGraphs countByEnumeratingWithState:&v68 objects:v76 count:16];
  if (v4)
  {
    v5 = 0x277CBE000uLL;
    v6 = *v69;
    v49 = *v69;
    do
    {
      v7 = 0;
      v50 = v4;
      do
      {
        if (*v69 != v6)
        {
          objc_enumerationMutation(addedGraphs);
        }

        v51 = v7;
        v8 = *(*(&v68 + 1) + 8 * v7);
        v9 = objc_alloc_init(*(v5 + 2904));
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        tasks = [v8 tasks];
        v11 = [tasks countByEnumeratingWithState:&v64 objects:v75 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v65;
          while (2)
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v65 != v13)
              {
                objc_enumerationMutation(tasks);
              }

              v15 = *(*(&v64 + 1) + 8 * i);
              name = [v15 name];
              v17 = [v9 containsObject:name];

              if (v17)
              {
                v41 = @"Task keys do not need to be globally unique, but they must be unique within the graph. If you have multiple serial processing steps, or parallel tasks operating on the same data (ie Left/Right pairs), try using more descriptive names to enhance debuggability.";
                v42 = @"A duplicate task key was found for %@ in graph %@";
LABEL_45:
                v43 = MEMORY[0x277CCACA8];
                name2 = [v15 name];
                name3 = [v8 name];
                v46 = [v43 stringWithFormat:v42, name2, name3];

                v40 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-102 description:v46 recoverySuggestion:v41];

                addedGraphs = v46;
                goto LABEL_46;
              }

              name4 = [v15 name];
              [v9 addObject:name4];
            }

            v12 = [tasks countByEnumeratingWithState:&v64 objects:v75 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        tasks = [v8 sourceTasks];
        v19 = [tasks countByEnumeratingWithState:&v60 objects:v74 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v61;
          while (2)
          {
            for (j = 0; j != v20; ++j)
            {
              if (*v61 != v21)
              {
                objc_enumerationMutation(tasks);
              }

              v15 = *(*(&v60 + 1) + 8 * j);
              name5 = [v15 name];
              v24 = [v9 containsObject:name5];

              if (v24)
              {
                v42 = @"A duplicate source task key was found for %@ in graph %@";
                v41 = @"Source task keys do not need to be globally unique, but they must be unique within the graph. If you have multiple serial processing steps, or parallel tasks operating on the same data (ie Left/Right pairs), try using more descriptive names to enhance debuggability.";
                goto LABEL_45;
              }

              name6 = [v15 name];
              [v9 addObject:name6];
            }

            v20 = [tasks countByEnumeratingWithState:&v60 objects:v74 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }
        }

        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        tasks = [v8 writers];
        v26 = [tasks countByEnumeratingWithState:&v56 objects:v73 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v57;
          while (2)
          {
            for (k = 0; k != v27; ++k)
            {
              if (*v57 != v28)
              {
                objc_enumerationMutation(tasks);
              }

              v15 = *(*(&v56 + 1) + 8 * k);
              name7 = [v15 name];
              v31 = [v9 containsObject:name7];

              if (v31)
              {
                v42 = @"A duplicate writer key was found for %@ in graph %@";
                v41 = @"Writer keys do not need to be globally unique, but they must be unique within the graph. If you have multiple serial processing steps, or parallel tasks operating on the same data (ie Left/Right pairs), try using more descriptive names to enhance debuggability.";
                goto LABEL_45;
              }

              name8 = [v15 name];
              [v9 addObject:name8];
            }

            v27 = [tasks countByEnumeratingWithState:&v56 objects:v73 count:16];
            if (v27)
            {
              continue;
            }

            break;
          }
        }

        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        tasks = [v8 readers];
        v33 = [tasks countByEnumeratingWithState:&v52 objects:v72 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v53;
          while (2)
          {
            for (m = 0; m != v34; ++m)
            {
              if (*v53 != v35)
              {
                objc_enumerationMutation(tasks);
              }

              v15 = *(*(&v52 + 1) + 8 * m);
              name9 = [v15 name];
              v38 = [v9 containsObject:name9];

              if (v38)
              {
                v42 = @"A duplicate reader key was found for %@ in graph %@";
                v41 = @"Reader keys do not need to be globally unique, but they must be unique within the graph. ";
                goto LABEL_45;
              }

              name10 = [v15 name];
              [v9 addObject:name10];
            }

            v34 = [tasks countByEnumeratingWithState:&v52 objects:v72 count:16];
            if (v34)
            {
              continue;
            }

            break;
          }
        }

        v7 = v51 + 1;
        v5 = 0x277CBE000;
        v6 = v49;
      }

      while (v51 + 1 != v50);
      v4 = [addedGraphs countByEnumeratingWithState:&v68 objects:v76 count:16];
    }

    while (v4);
  }

  v40 = 0;
LABEL_46:

  v47 = *MEMORY[0x277D85DE8];

  return v40;
}

+ (id)validateNumGraphs:(id)graphs
{
  postTransitionGraphs = [graphs postTransitionGraphs];
  v4 = [postTransitionGraphs count];

  if (v4 < 0x81)
  {
    v7 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Too many graphs submitted (%llu), maximum allowed is %d", v4, 128];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"The maximum graph count is %d per-process. If possible, try coalescing same-criticality and same-frequency graphs into singular graphs with multiple tasks to reduce the overall graph count.", 128];
    v7 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-100 description:v5 recoverySuggestion:v6];
  }

  return v7;
}

+ (id)validateNumTasks:(id)tasks
{
  v35 = *MEMORY[0x277D85DE8];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  addedGraphs = [tasks addedGraphs];
  v4 = [addedGraphs countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v31;
    obj = addedGraphs;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v31 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v30 + 1) + 8 * v7);
      tasks = [v8 tasks];
      v10 = [tasks count];

      if (v10 >= 0x41)
      {
        break;
      }

      tasks2 = [v8 tasks];
      v12 = [tasks2 count];
      sourceTasks = [v8 sourceTasks];
      v14 = [sourceTasks count] + v12;
      readers = [v8 readers];
      v16 = v14 + [readers count];
      writers = [v8 writers];
      v18 = [writers count];

      if (!(v16 + v18))
      {
        v23 = MEMORY[0x277CCACA8];
        name = [v8 name];
        v22 = [v23 stringWithFormat:@"graph %@ is empty, total tasks/sourcetasks/readers/writers (%llu)", name, 0];

        [MEMORY[0x277CCACA8] stringWithFormat:@"Have at least 1 task/reader/writer in your graph", v28];
        goto LABEL_13;
      }

      if (v5 == ++v7)
      {
        addedGraphs = obj;
        v5 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v20 = MEMORY[0x277CCACA8];
    name2 = [v8 name];
    v22 = [v20 stringWithFormat:@"Too many tasks (%llu) submitted for graph %@, maximum allowed is %d", v10, name2, 64];

    [MEMORY[0x277CCACA8] stringWithFormat:@"The maximum task count is %d per-graph. If this error is occurring, it is likely that task granularity for this graph is too fine. Try coalescing serial tasks executing on the same compute agent into singular tasks.", 64];
    v25 = LABEL_13:;
    v19 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-100 description:v22 recoverySuggestion:v25];

    addedGraphs = v22;
    goto LABEL_14;
  }

LABEL_10:
  v19 = 0;
LABEL_14:

  v26 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)validateNumInputs:(id)inputs
{
  v62 = *MEMORY[0x277D85DE8];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  addedGraphs = [inputs addedGraphs];
  v4 = [addedGraphs countByEnumeratingWithState:&v54 objects:v61 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v55;
    do
    {
      v7 = 0;
      do
      {
        if (*v55 != v6)
        {
          objc_enumerationMutation(addedGraphs);
        }

        v41 = v7;
        v8 = *(*(&v54 + 1) + 8 * v7);
        if (![v8 workloadWait])
        {
          v38 = v5;
          v39 = v6;
          v40 = addedGraphs;
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v37 = v8;
          tasks = [v8 tasks];
          v16 = [tasks countByEnumeratingWithState:&v50 objects:v60 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v51;
            while (2)
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v51 != v18)
                {
                  objc_enumerationMutation(tasks);
                }

                v14 = *(*(&v50 + 1) + 8 * i);
                waitBarriers = [v14 waitBarriers];
                v21 = [waitBarriers count];

                v48 = 0u;
                v49 = 0u;
                v46 = 0u;
                v47 = 0u;
                inputs = [v14 inputs];
                v23 = [inputs countByEnumeratingWithState:&v46 objects:v59 count:16];
                if (v23)
                {
                  v24 = v23;
                  v25 = *v47;
                  do
                  {
                    for (j = 0; j != v24; ++j)
                    {
                      if (*v47 != v25)
                      {
                        objc_enumerationMutation(inputs);
                      }

                      if (![*(*(&v46 + 1) + 8 * j) type])
                      {
                        ++v21;
                      }
                    }

                    v24 = [inputs countByEnumeratingWithState:&v46 objects:v59 count:16];
                  }

                  while (v24);
                }

                if (!v21)
                {
                  addedGraphs = v40;
                  v30 = @"Tasks should have at least 1 thing to wait on, whether a wait input or a barrier. Only source tasks / writers can be without any inputs at all";
                  v29 = @"task %@ has zero wait inputs/barriers";
LABEL_39:
                  v31 = MEMORY[0x277CCACA8];
                  name = [v14 name];
                  v33 = [v31 stringWithFormat:v29, name];

                  v34 = [MEMORY[0x277CCACA8] stringWithFormat:v30];
                  v28 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-100 description:v33 recoverySuggestion:v34];

                  addedGraphs = v33;
                  goto LABEL_40;
                }
              }

              v17 = [tasks countByEnumeratingWithState:&v50 objects:v60 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

          v6 = v39;
          addedGraphs = v40;
          v8 = v37;
          v5 = v38;
        }

        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        tasks = [v8 readers];
        v10 = [tasks countByEnumeratingWithState:&v42 objects:v58 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v43;
          while (2)
          {
            for (k = 0; k != v11; ++k)
            {
              if (*v43 != v12)
              {
                objc_enumerationMutation(tasks);
              }

              v14 = *(*(&v42 + 1) + 8 * k);
              input = [v14 input];
              if (!input)
              {
                v29 = @"Reader %@ zero inputs";
                v30 = @"Readers should have 1 input. Only source tasks / writers can be without any inputs";
                goto LABEL_39;
              }
            }

            v11 = [tasks countByEnumeratingWithState:&v42 objects:v58 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        v7 = v41 + 1;
      }

      while (v41 + 1 != v5);
      v27 = [addedGraphs countByEnumeratingWithState:&v54 objects:v61 count:16];
      v5 = v27;
    }

    while (v27);
  }

  v28 = 0;
LABEL_40:

  v35 = *MEMORY[0x277D85DE8];

  return v28;
}

+ (id)validateNumOutputs:(id)outputs
{
  v47 = *MEMORY[0x277D85DE8];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  addedGraphs = [outputs addedGraphs];
  v4 = [addedGraphs countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v4)
  {
    v5 = *v41;
    v31 = @"Source Tasks should have at least 1 output. Only tasks / readers can be without any outputs";
    v29 = *v41;
    do
    {
      v6 = 0;
      v30 = v4;
      do
      {
        if (*v41 != v5)
        {
          objc_enumerationMutation(addedGraphs);
        }

        v7 = *(*(&v40 + 1) + 8 * v6);
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        sourceTasks = [v7 sourceTasks];
        v9 = [sourceTasks countByEnumeratingWithState:&v36 objects:v45 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v37;
          while (2)
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v37 != v11)
              {
                objc_enumerationMutation(sourceTasks);
              }

              v13 = *(*(&v36 + 1) + 8 * i);
              outputs = [v13 outputs];
              v15 = [outputs count];

              if (!v15)
              {
                v22 = @"source task %@ with zero outputs";
LABEL_27:
                v23 = MEMORY[0x277CCACA8];
                name = [v13 name];
                v25 = [v23 stringWithFormat:v22, name];

                v26 = [MEMORY[0x277CCACA8] stringWithFormat:v31];
                v21 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-100 description:v25 recoverySuggestion:v26];

                addedGraphs = v25;
                goto LABEL_28;
              }
            }

            v10 = [sourceTasks countByEnumeratingWithState:&v36 objects:v45 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        sourceTasks = [v7 writers];
        v16 = [sourceTasks countByEnumeratingWithState:&v32 objects:v44 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v33;
          while (2)
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v33 != v18)
              {
                objc_enumerationMutation(sourceTasks);
              }

              v13 = *(*(&v32 + 1) + 8 * j);
              output = [v13 output];
              if (!output)
              {
                v22 = @"Writer %@ with zero outputs";
                v31 = @"Writers should have 1 output. Only tasks / reader can be without any outputs";
                goto LABEL_27;
              }
            }

            v17 = [sourceTasks countByEnumeratingWithState:&v32 objects:v44 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }
        }

        ++v6;
        v5 = v29;
      }

      while (v6 != v30);
      v4 = [addedGraphs countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v4);
  }

  v21 = 0;
LABEL_28:

  v27 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)validateKeyStringLength:(id)length
{
  v122 = *MEMORY[0x277D85DE8];
  lengthCopy = length;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  addedGraphs = [lengthCopy addedGraphs];
  v6 = [addedGraphs countByEnumeratingWithState:&v111 objects:v121 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v112;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v112 != v8)
      {
        objc_enumerationMutation(addedGraphs);
      }

      v10 = *(*(&v111 + 1) + 8 * v9);
      name = [v10 name];
      if (!name)
      {
        break;
      }

      v12 = name;
      name2 = [v10 name];
      v14 = [name2 length];

      if (!v14)
      {
        break;
      }

      name3 = [v10 name];
      v16 = [name3 length];

      if (v16 >= 0x101)
      {
        v79 = MEMORY[0x277CCACA8];
        name4 = [v10 name];
        name5 = [v10 name];
        v71 = [v79 stringWithFormat:@"The graph name %@ has length %lu, which exceeds the length limit of %d", name4, objc_msgSend(name5, "length"), 256];

        v72 = MEMORY[0x277CCA9B8];
        v73 = -104;
        goto LABEL_67;
      }

      v82 = v9;
      v83 = v7;
      v84 = v8;
      v85 = addedGraphs;
      v86 = lengthCopy;
      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      tasks = [v10 tasks];
      v18 = [tasks countByEnumeratingWithState:&v107 objects:v120 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v108;
        while (2)
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v108 != v20)
            {
              objc_enumerationMutation(tasks);
            }

            v22 = *(*(&v107 + 1) + 8 * i);
            name6 = [v22 name];
            if (!name6 || (v24 = name6, [v22 name], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "length"), v25, v24, !v26))
            {
              v69 = MEMORY[0x277CCACA8];
              name7 = [v10 name];
              [v69 stringWithFormat:@"The task name for %p in graph %@ was not set", v22, name7];
              v71 = LABEL_72:;

              v68 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-100 description:v71];

              addedGraphs = v85;
              lengthCopy = v86;
              goto LABEL_73;
            }

            v105 = 0u;
            v106 = 0u;
            v103 = 0u;
            v104 = 0u;
            updateBarriers = [v22 updateBarriers];
            v28 = [updateBarriers countByEnumeratingWithState:&v103 objects:v119 count:16];
            if (v28)
            {
              v29 = v28;
              v30 = *v104;
              do
              {
                for (j = 0; j != v29; ++j)
                {
                  if (*v104 != v30)
                  {
                    objc_enumerationMutation(updateBarriers);
                  }

                  [v4 addObject:*(*(&v103 + 1) + 8 * j)];
                }

                v29 = [updateBarriers countByEnumeratingWithState:&v103 objects:v119 count:16];
              }

              while (v29);
            }
          }

          v19 = [tasks countByEnumeratingWithState:&v107 objects:v120 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }
      }

      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      tasks = [v10 sourceTasks];
      v32 = [tasks countByEnumeratingWithState:&v99 objects:v118 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v100;
        while (2)
        {
          for (k = 0; k != v33; ++k)
          {
            if (*v100 != v34)
            {
              objc_enumerationMutation(tasks);
            }

            v36 = *(*(&v99 + 1) + 8 * k);
            name8 = [v36 name];
            if (name8)
            {
              v38 = name8;
              name9 = [v36 name];
              v40 = [name9 length];

              if (v40)
              {
                continue;
              }
            }

            v74 = MEMORY[0x277CCACA8];
            name7 = [v10 name];
            [v74 stringWithFormat:@"The source task name for %p in graph %@ was not set", v36, name7];
            goto LABEL_72;
          }

          v33 = [tasks countByEnumeratingWithState:&v99 objects:v118 count:16];
          if (v33)
          {
            continue;
          }

          break;
        }
      }

      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      tasks = [v10 readers];
      v41 = [tasks countByEnumeratingWithState:&v95 objects:v117 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v96;
        while (2)
        {
          for (m = 0; m != v42; ++m)
          {
            if (*v96 != v43)
            {
              objc_enumerationMutation(tasks);
            }

            v45 = *(*(&v95 + 1) + 8 * m);
            name10 = [v45 name];
            if (name10)
            {
              v47 = name10;
              name11 = [v45 name];
              v49 = [name11 length];

              if (v49)
              {
                continue;
              }
            }

            v75 = MEMORY[0x277CCACA8];
            name7 = [v10 name];
            [v75 stringWithFormat:@"The reader name for %p in graph %@ was not set", v45, name7];
            goto LABEL_72;
          }

          v42 = [tasks countByEnumeratingWithState:&v95 objects:v117 count:16];
          if (v42)
          {
            continue;
          }

          break;
        }
      }

      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      tasks = [v10 writers];
      v50 = [tasks countByEnumeratingWithState:&v91 objects:v116 count:16];
      if (v50)
      {
        v51 = v50;
        v52 = *v92;
        while (2)
        {
          for (n = 0; n != v51; ++n)
          {
            if (*v92 != v52)
            {
              objc_enumerationMutation(tasks);
            }

            v54 = *(*(&v91 + 1) + 8 * n);
            name12 = [v54 name];
            if (name12)
            {
              v56 = name12;
              name13 = [v54 name];
              v58 = [name13 length];

              if (v58)
              {
                continue;
              }
            }

            v76 = MEMORY[0x277CCACA8];
            name7 = [v10 name];
            [v76 stringWithFormat:@"The writer name for %p in graph %@ was not set", v54, name7];
            goto LABEL_72;
          }

          v51 = [tasks countByEnumeratingWithState:&v91 objects:v116 count:16];
          if (v51)
          {
            continue;
          }

          break;
        }
      }

      v7 = v83;
      v9 = v82 + 1;
      addedGraphs = v85;
      lengthCopy = v86;
      v8 = v84;
      if (v82 + 1 == v83)
      {
        v7 = [v85 countByEnumeratingWithState:&v111 objects:v121 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_54;
      }
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"The graph name for %p was not set", v10];
    v71 = LABEL_66:;
    v72 = MEMORY[0x277CCA9B8];
    v73 = -100;
LABEL_67:
    v68 = [v72 polarisErrorWithCode:v73 description:v71];
LABEL_73:

    addedGraphs = v71;
    goto LABEL_74;
  }

LABEL_54:

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  addedGraphs = v4;
  v59 = [addedGraphs countByEnumeratingWithState:&v87 objects:v115 count:16];
  if (v59)
  {
    v60 = v59;
    v61 = *v88;
    while (2)
    {
      for (ii = 0; ii != v60; ++ii)
      {
        if (*v88 != v61)
        {
          objc_enumerationMutation(addedGraphs);
        }

        v63 = *(*(&v87 + 1) + 8 * ii);
        name14 = [v63 name];
        if (name14)
        {
          v65 = name14;
          name15 = [v63 name];
          v67 = [name15 length];

          if (v67)
          {
            continue;
          }
        }

        [MEMORY[0x277CCACA8] stringWithFormat:@"The barrier name for %p was not set", v63];
        goto LABEL_66;
      }

      v60 = [addedGraphs countByEnumeratingWithState:&v87 objects:v115 count:16];
      if (v60)
      {
        continue;
      }

      break;
    }
  }

  v68 = 0;
LABEL_74:

  v77 = *MEMORY[0x277D85DE8];

  return v68;
}

+ (id)validateSimpleWaitInputFrequency:(unint64_t)frequency requested:(unint64_t)requested resource:(id)resource graphName:(id)name isLocalReplaySession:(BOOL)session
{
  sessionCopy = session;
  v28 = *MEMORY[0x277D85DE8];
  resourceCopy = resource;
  nameCopy = name;
  if (!frequency)
  {
    v17 = 0;
    goto LABEL_24;
  }

  if (requested <= frequency)
  {
    frequency = 0;
  }

  else
  {
    frequency = [MEMORY[0x277CCACA8] stringWithFormat:@"The graph %@ is attempting to run faster (%lu fps) than one of its PSInputTypeWait inputs is being produced (%@ at %lu fps).", nameCopy, requested, resourceCopy, frequency];
    v14 = +[PLSSettings currentSettings];
    enableFastTransition = [v14 enableFastTransition];

    if (enableFastTransition)
    {
      v16 = !sessionCopy;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      v17 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-100 description:frequency recoverySuggestion:{@"The graph frequency must be equal-to or lower-than the requested PSInputTypeWait input frequencies. If the graph needs access to a slower resource, consider moving the resource input type to PSInputTypePull or PSInputTypePullOptional"}];
      goto LABEL_21;
    }

    v18 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = frequency;
      _os_log_impl(&dword_25EA3A000, v18, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }
  }

  if (frequency % requested)
  {
    frequency2 = [MEMORY[0x277CCACA8] stringWithFormat:@"The graph %@ is requesting resource %@ at frequency %lu fps, which is a non-integer multiple of the resource's base rate (%lu fps).", nameCopy, resourceCopy, requested, frequency];

    v21 = +[PLSSettings currentSettings];
    enableFastTransition2 = [v21 enableFastTransition];

    if (enableFastTransition2 && sessionCopy)
    {
      v23 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = frequency2;
        _os_log_impl(&dword_25EA3A000, v23, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
      }

      v17 = 0;
    }

    else
    {
      v17 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-100 description:frequency2];
    }

    goto LABEL_23;
  }

  v17 = 0;
LABEL_21:
  frequency2 = frequency;
LABEL_23:

LABEL_24:
  v24 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)validateCadencedWaitInput:(id)input requestedStride:(id)stride resource:(id)resource graphName:(id)name
{
  v30 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  strideCopy = stride;
  resourceCopy = resource;
  nameCopy = name;
  if ([inputCopy containsObject:strideCopy])
  {
    v13 = 0;
  }

  else
  {
    unsignedIntValue = [strideCopy unsignedIntValue];
    v15 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:0];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
    inputCopy = [inputCopy sortedArrayUsingDescriptors:v16];

    v18 = [inputCopy countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v25;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v25 != v20)
          {
            objc_enumerationMutation(inputCopy);
          }

          if (!(unsignedIntValue % [*(*(&v24 + 1) + 8 * i) unsignedIntValue]))
          {
            v13 = 0;
            goto LABEL_13;
          }
        }

        v19 = [inputCopy countByEnumeratingWithState:&v24 objects:v29 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    inputCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"The graph %@ is requesting resource %@ at stride %@, which cannot be supported by strides %@", nameCopy, resourceCopy, strideCopy, inputCopy];
    v13 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-100 description:inputCopy recoverySuggestion:{@"The graph's system pulse stride must be equal-to or lower-than some supported stride.If the graph needs access to a slower resource, consider moving the resource input type to PSInputTypePull or PSInputTypePullOptional"}];
LABEL_13:
  }

  v22 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)validateGraphFrequencyValidMultiples:(id)multiples withContext:(id)context withDevice:(id)device isLocalReplaySession:(BOOL)session
{
  sessionCopy = session;
  v177 = *MEMORY[0x277D85DE8];
  multiplesCopy = multiples;
  contextCopy = context;
  deviceCopy = device;
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v122 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  v164 = 0u;
  v99 = multiplesCopy;
  obj = [multiplesCopy postTransitionGraphs];
  v110 = [obj countByEnumeratingWithState:&v161 objects:v176 count:16];
  if (v110)
  {
    v108 = *v162;
    do
    {
      v10 = 0;
      do
      {
        if (*v162 != v108)
        {
          objc_enumerationMutation(obj);
        }

        v113 = v10;
        v11 = *(*(&v161 + 1) + 8 * v10);
        v157 = 0u;
        v158 = 0u;
        v159 = 0u;
        v160 = 0u;
        tasks = [v11 tasks];
        v12 = [tasks countByEnumeratingWithState:&v157 objects:v175 count:16];
        if (v12)
        {
          v13 = v12;
          v119 = *v158;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v158 != v119)
              {
                objc_enumerationMutation(tasks);
              }

              v15 = *(*(&v157 + 1) + 8 * i);
              v153 = 0u;
              v154 = 0u;
              v155 = 0u;
              v156 = 0u;
              outputs = [v15 outputs];
              v17 = [outputs countByEnumeratingWithState:&v153 objects:v174 count:16];
              if (v17)
              {
                v18 = v17;
                v19 = *v154;
                do
                {
                  for (j = 0; j != v18; ++j)
                  {
                    if (*v154 != v19)
                    {
                      objc_enumerationMutation(outputs);
                    }

                    v21 = *(*(&v153 + 1) + 8 * j);
                    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v11, "resolvedFrequency")}];
                    resourceKey = [v21 resourceKey];
                    [v9 setObject:v22 forKeyedSubscript:resourceKey];
                  }

                  v18 = [outputs countByEnumeratingWithState:&v153 objects:v174 count:16];
                }

                while (v18);
              }
            }

            v13 = [tasks countByEnumeratingWithState:&v157 objects:v175 count:16];
          }

          while (v13);
        }

        v10 = v113 + 1;
      }

      while ((v113 + 1) != v110);
      v110 = [obj countByEnumeratingWithState:&v161 objects:v176 count:16];
    }

    while (v110);
  }

  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  addedGraphs = [v99 addedGraphs];
  v24 = contextCopy;
  obja = [addedGraphs countByEnumeratingWithState:&v149 objects:v173 count:16];
  if (obja)
  {
    v103 = *v150;
    do
    {
      v25 = 0;
      do
      {
        if (*v150 != v103)
        {
          objc_enumerationMutation(addedGraphs);
        }

        v109 = v25;
        v26 = *(*(&v149 + 1) + 8 * v25);
        v145 = 0u;
        v146 = 0u;
        v147 = 0u;
        v148 = 0u;
        tasks2 = [v26 tasks];
        v117 = [tasks2 countByEnumeratingWithState:&v145 objects:v172 count:16];
        if (v117)
        {
          v114 = *v146;
          do
          {
            v27 = 0;
            do
            {
              if (*v146 != v114)
              {
                objc_enumerationMutation(tasks2);
              }

              v120 = v27;
              v28 = *(*(&v145 + 1) + 8 * v27);
              v141 = 0u;
              v142 = 0u;
              v143 = 0u;
              v144 = 0u;
              inputs = [v28 inputs];
              v30 = [inputs countByEnumeratingWithState:&v141 objects:v171 count:16];
              if (v30)
              {
                v31 = v30;
                v32 = *v142;
                do
                {
                  for (k = 0; k != v31; ++k)
                  {
                    if (*v142 != v32)
                    {
                      objc_enumerationMutation(inputs);
                    }

                    resolvedResourceKey = [*(*(&v141 + 1) + 8 * k) resolvedResourceKey];
                    v35 = [v24 resourceStreamForKey:resolvedResourceKey];

                    if (!v35)
                    {
                      if (![deviceCopy hasSensor:resolvedResourceKey])
                      {
                        goto LABEL_44;
                      }

                      v36 = [deviceCopy propertiesForKey:resolvedResourceKey];
                      v44 = MEMORY[0x277CCABB0];
                      format = [v36 format];
                      allKeys = [v44 numberWithUnsignedInteger:{objc_msgSend(format, "frameRate")}];
                      [v9 setObject:allKeys forKeyedSubscript:resolvedResourceKey];
                      goto LABEL_42;
                    }

                    v36 = [v24 resourceStreamForKey:resolvedResourceKey];
                    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v36, "framerate")}];
                    [v9 setObject:v37 forKeyedSubscript:resolvedResourceKey];

                    supportedStrides = [v36 supportedStrides];
                    v39 = [supportedStrides count];

                    if (v39)
                    {
                      v40 = MEMORY[0x277CBEB98];
                      format = [v36 supportedStrides];
                      allKeys = [format allKeys];
                      v43 = [v40 setWithArray:allKeys];
                      [v122 setObject:v43 forKeyedSubscript:resolvedResourceKey];

LABEL_42:
                      v24 = contextCopy;
                    }

LABEL_44:
                  }

                  v31 = [inputs countByEnumeratingWithState:&v141 objects:v171 count:16];
                }

                while (v31);
              }

              v27 = v120 + 1;
            }

            while ((v120 + 1) != v117);
            v117 = [tasks2 countByEnumeratingWithState:&v145 objects:v172 count:16];
          }

          while (v117);
        }

        v25 = v109 + 1;
      }

      while ((v109 + 1) != obja);
      obja = [addedGraphs countByEnumeratingWithState:&v149 objects:v173 count:16];
    }

    while (obja);
  }

  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  allStreams = [v24 allStreams];
  v46 = [allStreams countByEnumeratingWithState:&v137 objects:v170 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v138;
    do
    {
      for (m = 0; m != v47; ++m)
      {
        if (*v138 != v48)
        {
          objc_enumerationMutation(allStreams);
        }

        v50 = *(*(&v137 + 1) + 8 * m);
        if ([v50 framerate])
        {
          v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v50, "framerate")}];
          v52 = [v50 key];
          [v9 setObject:v51 forKeyedSubscript:v52];

          v24 = contextCopy;
        }
      }

      v47 = [allStreams countByEnumeratingWithState:&v137 objects:v170 count:16];
    }

    while (v47);
  }

  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  addedGraphs2 = [v99 addedGraphs];
  v54 = [addedGraphs2 countByEnumeratingWithState:&v133 objects:v169 count:16];
  if (!v54)
  {
LABEL_94:
    v88 = 0;
    goto LABEL_97;
  }

  v55 = *v134;
  v95 = *v134;
LABEL_61:
  v56 = 0;
  v94 = v54;
LABEL_62:
  if (*v134 != v55)
  {
    objc_enumerationMutation(addedGraphs2);
  }

  v57 = *(*(&v133 + 1) + 8 * v56);
  resolvedFrequency = [v57 resolvedFrequency];
  if (resolvedFrequency)
  {
    v97 = v56;
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    tasks3 = [v57 tasks];
    v98 = [tasks3 countByEnumeratingWithState:&v129 objects:v168 count:16];
    if (!v98)
    {
      goto LABEL_92;
    }

    v59 = *v130;
    v104 = addedGraphs2;
    objb = tasks3;
    v96 = *v130;
    while (1)
    {
      v60 = 0;
      do
      {
        if (*v130 != v59)
        {
          objc_enumerationMutation(tasks3);
        }

        v102 = v60;
        v61 = *(*(&v129 + 1) + 8 * v60);
        v125 = 0u;
        v126 = 0u;
        v127 = 0u;
        v128 = 0u;
        inputs2 = [v61 inputs];
        v63 = [inputs2 countByEnumeratingWithState:&v125 objects:v167 count:16];
        if (!v63)
        {
          goto LABEL_90;
        }

        v64 = v63;
        v65 = *v126;
        v115 = *v126;
        while (2)
        {
          v66 = 0;
          v118 = v64;
          do
          {
            if (*v126 != v65)
            {
              objc_enumerationMutation(inputs2);
            }

            v67 = *(*(&v125 + 1) + 8 * v66);
            if (![v67 type])
            {
              resolvedResourceKey2 = [v67 resolvedResourceKey];
              v69 = [v122 objectForKeyedSubscript:resolvedResourceKey2];

              if (v69 && ([v57 systemPulseStride], v70 = objc_claimAutoreleasedReturnValue(), v70, v70))
              {
                systemPulseStride = [v57 systemPulseStride];
                resolvedResourceKey3 = [v67 resolvedResourceKey];
                name = [v57 name];
                v74 = [PSGraphValidation validateCadencedWaitInput:v69 requestedStride:systemPulseStride resource:resolvedResourceKey3 graphName:name];

                v64 = v118;
                v65 = v115;
                v24 = contextCopy;
                if (v74)
                {
                  v88 = v74;
LABEL_95:

                  addedGraphs2 = v104;
                  goto LABEL_96;
                }
              }

              else
              {
                v121 = v69;
                resolvedResourceKey4 = [v67 resolvedResourceKey];
                v76 = [v9 objectForKeyedSubscript:resolvedResourceKey4];

                if (v76)
                {
                  unsignedIntegerValue = [v76 unsignedIntegerValue];
                  resolvedResourceKey5 = [v67 resolvedResourceKey];
                  [v57 name];
                  v79 = inputs2;
                  v80 = v57;
                  v82 = v81 = v76;
                  v83 = [PSGraphValidation validateSimpleWaitInputFrequency:unsignedIntegerValue requested:resolvedFrequency resource:resolvedResourceKey5 graphName:v82 isLocalReplaySession:sessionCopy];

                  v76 = v81;
                  v57 = v80;
                  inputs2 = v79;
                  v65 = v115;

                  v64 = v118;
                  v24 = contextCopy;
                  if (v83)
                  {
                    v88 = v83;

                    v69 = v121;
                    goto LABEL_95;
                  }
                }

                else
                {
                  v84 = __PLSLogSharedInstance();
                  if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
                  {
                    resolvedResourceKey6 = [v67 resolvedResourceKey];
                    uTF8String = [resolvedResourceKey6 UTF8String];
                    *buf = 136315138;
                    v166 = uTF8String;
                    _os_log_impl(&dword_25EA3A000, v84, OS_LOG_TYPE_ERROR, "An input resource (%s) was not yet defined in the context. Perhaps this will be populated by another process?", buf, 0xCu);
                  }

                  v24 = contextCopy;
                }

                v69 = v121;
              }
            }

            ++v66;
          }

          while (v64 != v66);
          v64 = [inputs2 countByEnumeratingWithState:&v125 objects:v167 count:16];
          if (v64)
          {
            continue;
          }

          break;
        }

LABEL_90:

        addedGraphs2 = v104;
        v60 = v102 + 1;
        tasks3 = objb;
        v59 = v96;
      }

      while (v102 + 1 != v98);
      v87 = [objb countByEnumeratingWithState:&v129 objects:v168 count:16];
      v59 = v96;
      v98 = v87;
      if (!v87)
      {
LABEL_92:

        v56 = v97 + 1;
        v55 = v95;
        if (v97 + 1 == v94)
        {
          v54 = [addedGraphs2 countByEnumeratingWithState:&v133 objects:v169 count:16];
          v55 = v95;
          if (!v54)
          {
            goto LABEL_94;
          }

          goto LABEL_61;
        }

        goto LABEL_62;
      }
    }
  }

  v91 = MEMORY[0x277CCACA8];
  name2 = [v57 name];
  v93 = [v91 stringWithFormat:@"The graph %@ has an undefined frequency", name2];

  v24 = contextCopy;
  objb = v93;
  v88 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-100 description:v93];
LABEL_96:

  addedGraphs2 = v88;
LABEL_97:

  v89 = *MEMORY[0x277D85DE8];

  return v88;
}

+ (id)validateResourcesAvailable:(id)available withContext:(id)context withDevice:(id)device
{
  v105 = *MEMORY[0x277D85DE8];
  availableCopy = available;
  contextCopy = context;
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v55 = availableCopy;
  obj = [availableCopy postTransitionGraphs];
  v59 = [obj countByEnumeratingWithState:&v93 objects:v104 count:16];
  if (v59)
  {
    v58 = *v94;
    do
    {
      v9 = 0;
      do
      {
        if (*v94 != v58)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v93 + 1) + 8 * v9);
        v89 = 0u;
        v90 = 0u;
        v91 = 0u;
        v92 = 0u;
        v60 = v9;
        v61 = v10;
        tasks = [v10 tasks];
        v11 = [tasks countByEnumeratingWithState:&v89 objects:v103 count:16];
        if (v11)
        {
          v12 = v11;
          v63 = *v90;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v90 != v63)
              {
                objc_enumerationMutation(tasks);
              }

              v14 = *(*(&v89 + 1) + 8 * i);
              v85 = 0u;
              v86 = 0u;
              v87 = 0u;
              v88 = 0u;
              inputs = [v14 inputs];
              v16 = [inputs countByEnumeratingWithState:&v85 objects:v102 count:16];
              if (v16)
              {
                v17 = v16;
                v18 = *v86;
                do
                {
                  for (j = 0; j != v17; ++j)
                  {
                    if (*v86 != v18)
                    {
                      objc_enumerationMutation(inputs);
                    }

                    resolvedResourceKey = [*(*(&v85 + 1) + 8 * j) resolvedResourceKey];
                    [v7 addObject:resolvedResourceKey];
                  }

                  v17 = [inputs countByEnumeratingWithState:&v85 objects:v102 count:16];
                }

                while (v17);
              }

              v83 = 0u;
              v84 = 0u;
              v81 = 0u;
              v82 = 0u;
              outputs = [v14 outputs];
              v22 = [outputs countByEnumeratingWithState:&v81 objects:v101 count:16];
              if (v22)
              {
                v23 = v22;
                v24 = *v82;
                do
                {
                  for (k = 0; k != v23; ++k)
                  {
                    if (*v82 != v24)
                    {
                      objc_enumerationMutation(outputs);
                    }

                    resourceKey = [*(*(&v81 + 1) + 8 * k) resourceKey];
                    [v8 addObject:resourceKey];
                  }

                  v23 = [outputs countByEnumeratingWithState:&v81 objects:v101 count:16];
                }

                while (v23);
              }
            }

            v12 = [tasks countByEnumeratingWithState:&v89 objects:v103 count:16];
          }

          while (v12);
        }

        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        sourceTasks = [v61 sourceTasks];
        v27 = [sourceTasks countByEnumeratingWithState:&v77 objects:v100 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v78;
          do
          {
            for (m = 0; m != v28; ++m)
            {
              if (*v78 != v29)
              {
                objc_enumerationMutation(sourceTasks);
              }

              v31 = *(*(&v77 + 1) + 8 * m);
              v73 = 0u;
              v74 = 0u;
              v75 = 0u;
              v76 = 0u;
              outputs2 = [v31 outputs];
              v33 = [outputs2 countByEnumeratingWithState:&v73 objects:v99 count:16];
              if (v33)
              {
                v34 = v33;
                v35 = *v74;
                do
                {
                  for (n = 0; n != v34; ++n)
                  {
                    if (*v74 != v35)
                    {
                      objc_enumerationMutation(outputs2);
                    }

                    resourceKey2 = [*(*(&v73 + 1) + 8 * n) resourceKey];
                    [v8 addObject:resourceKey2];
                  }

                  v34 = [outputs2 countByEnumeratingWithState:&v73 objects:v99 count:16];
                }

                while (v34);
              }
            }

            v28 = [sourceTasks countByEnumeratingWithState:&v77 objects:v100 count:16];
          }

          while (v28);
        }

        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        writers = [v61 writers];
        v39 = [writers countByEnumeratingWithState:&v69 objects:v98 count:16];
        if (v39)
        {
          v40 = v39;
          v41 = *v70;
          do
          {
            for (ii = 0; ii != v40; ++ii)
            {
              if (*v70 != v41)
              {
                objc_enumerationMutation(writers);
              }

              output = [*(*(&v69 + 1) + 8 * ii) output];
              v44 = output;
              if (output)
              {
                resourceKey3 = [output resourceKey];
                [v8 addObject:resourceKey3];
              }
            }

            v40 = [writers countByEnumeratingWithState:&v69 objects:v98 count:16];
          }

          while (v40);
        }

        v9 = v60 + 1;
      }

      while (v60 + 1 != v59);
      v59 = [obj countByEnumeratingWithState:&v93 objects:v104 count:16];
    }

    while (v59);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v46 = v8;
  v47 = [v46 countByEnumeratingWithState:&v65 objects:v97 count:16];
  if (v47)
  {
    v48 = *v66;
    while (2)
    {
      for (jj = 0; jj != v47; jj = jj + 1)
      {
        if (*v66 != v48)
        {
          objc_enumerationMutation(v46);
        }

        v50 = *(*(&v65 + 1) + 8 * jj);
        v51 = [contextCopy resourceStreamForKey:v50];

        if (!v51)
        {
          v52 = [MEMORY[0x277CCACA8] stringWithFormat:@"Output key %@ was not defined in client's PSContext", v50];
          v47 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-100 description:v52];

          goto LABEL_62;
        }
      }

      v47 = [v46 countByEnumeratingWithState:&v65 objects:v97 count:16];
      if (v47)
      {
        continue;
      }

      break;
    }
  }

  v52 = v46;
LABEL_62:

  v53 = *MEMORY[0x277D85DE8];

  return v47;
}

+ (id)criticalityToString:(unint64_t)string
{
  if (string < 4)
  {
    return off_279A48458[string];
  }

  v10[1] = v3;
  v10[2] = v4;
  v6 = [(PSGraphValidation *)v10 criticalityToString:string];
  return [(PSGraphValidation *)v6 validateIntermediateStreamClassesSupported:v7 withContext:v8, v9];
}

+ (id)validateIntermediateStreamClassesSupported:(id)supported withContext:(id)context
{
  v77 = *MEMORY[0x277D85DE8];
  supportedCopy = supported;
  contextCopy = context;
  v47 = [MEMORY[0x277CBEB98] setWithArray:&unk_2870CBD60];
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v45 = supportedCopy;
  obj = [supportedCopy postTransitionGraphs];
  v50 = [obj countByEnumeratingWithState:&v68 objects:v76 count:16];
  if (v50)
  {
    v49 = *v69;
    do
    {
      v7 = 0;
      do
      {
        if (*v69 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v51 = v7;
        v8 = *(*(&v68 + 1) + 8 * v7);
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        tasks = [v8 tasks];
        v10 = [tasks countByEnumeratingWithState:&v64 objects:v75 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v65;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v65 != v12)
              {
                objc_enumerationMutation(tasks);
              }

              v14 = *(*(&v64 + 1) + 8 * i);
              v60 = 0u;
              v61 = 0u;
              v62 = 0u;
              v63 = 0u;
              outputs = [v14 outputs];
              v16 = [outputs countByEnumeratingWithState:&v60 objects:v74 count:16];
              if (v16)
              {
                v17 = v16;
                v18 = *v61;
                do
                {
                  for (j = 0; j != v17; ++j)
                  {
                    if (*v61 != v18)
                    {
                      objc_enumerationMutation(outputs);
                    }

                    resourceKey = [*(*(&v60 + 1) + 8 * j) resourceKey];
                    [v6 addObject:resourceKey];
                  }

                  v17 = [outputs countByEnumeratingWithState:&v60 objects:v74 count:16];
                }

                while (v17);
              }
            }

            v11 = [tasks countByEnumeratingWithState:&v64 objects:v75 count:16];
          }

          while (v11);
        }

        v7 = v51 + 1;
      }

      while (v51 + 1 != v50);
      v50 = [obj countByEnumeratingWithState:&v68 objects:v76 count:16];
    }

    while (v50);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v21 = v6;
  v22 = [v21 countByEnumeratingWithState:&v56 objects:v73 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v57;
    v25 = contextCopy;
    while (2)
    {
      for (k = 0; k != v23; ++k)
      {
        if (*v57 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v27 = *(*(&v56 + 1) + 8 * k);
        v28 = [contextCopy resourceStreamForKey:v27];
        v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v28, "resourceClass")}];
        v30 = [v47 containsObject:v29];

        if ((v30 & 1) == 0)
        {
          v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          v34 = v47;
          v35 = [v34 countByEnumeratingWithState:&v52 objects:v72 count:16];
          if (v35)
          {
            v36 = v35;
            v37 = *v53;
            do
            {
              for (m = 0; m != v36; ++m)
              {
                if (*v53 != v37)
                {
                  objc_enumerationMutation(v34);
                }

                v39 = +[PSGraphValidation resourceClassToString:](PSGraphValidation, "resourceClassToString:", [*(*(&v52 + 1) + 8 * m) unsignedIntValue]);
                [v33 addObject:v39];
              }

              v36 = [v34 countByEnumeratingWithState:&v52 objects:v72 count:16];
            }

            while (v36);
          }

          v40 = [PSGraphValidation listifyTokens:v33];
          v41 = MEMORY[0x277CCACA8];
          v42 = +[PSGraphValidation resourceClassToString:](PSGraphValidation, "resourceClassToString:", [v28 resourceClass]);
          v32 = [v41 stringWithFormat:@"Resource stream %@ of type %@ was instantiated in PSContext as an output, but Polaris does not yet support that type. Current supported types are: %@", v27, v42, v40];

          v31 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-100 description:v32];

          goto LABEL_40;
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v56 objects:v73 count:16];
      if (v23)
      {
        continue;
      }

      break;
    }

    v31 = 0;
    v32 = v21;
  }

  else
  {
    v31 = 0;
    v32 = v21;
LABEL_40:
    v25 = contextCopy;
  }

  v43 = *MEMORY[0x277D85DE8];

  return v31;
}

+ (id)resourceClassToString:(unint64_t)string
{
  v5 = string - 1;
  if (string - 1 < 0xC && ((0xDFFu >> v5) & 1) != 0)
  {
    return off_279A48478[v5];
  }

  v10[1] = v3;
  v10[2] = v4;
  v7 = [(PSGraphValidation *)v10 resourceClassToString:string];
  return [(PSGraphValidation *)v7 validateNoDuplicateGraphAddition:v8, v9];
}

+ (id)validateNoDuplicateGraphAddition:(id)addition
{
  v40 = *MEMORY[0x277D85DE8];
  additionCopy = addition;
  v4 = objc_alloc(MEMORY[0x277CBEB58]);
  addedGraphs = [additionCopy addedGraphs];
  v6 = [v4 initWithSet:addedGraphs];

  removedGraphs = [additionCopy removedGraphs];
  [v6 intersectSet:removedGraphs];

  if ([v6 count])
  {
    addedGraphs2 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v35;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v35 != v12)
          {
            objc_enumerationMutation(v9);
          }

          name = [*(*(&v34 + 1) + 8 * i) name];
          [addedGraphs2 appendString:name];

          [addedGraphs2 appendString:@" "];
        }

        v11 = [v9 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v11);
    }

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Graphs %@ were removed and added in the same transition", addedGraphs2];
    v16 = MEMORY[0x277CCA9B8];
    v17 = @"Graphs cannot be removed and added as part of same transition. Please make sure that the graphs you are submitting using the added and removed list are unique with respect to each other. If an already running graphs needs to be removed and added dedicate a commit call just to remove the graph and use the next call to add that graph back.";
LABEL_20:
    v25 = [v16 polarisErrorWithCode:-103 description:v15 recoverySuggestion:v17];

    addedGraphs2 = v15;
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    addedGraphs2 = [additionCopy addedGraphs];
    v18 = [addedGraphs2 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v31;
      while (2)
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(addedGraphs2);
          }

          v22 = *(*(&v30 + 1) + 8 * j);
          preTransitionGraphs = [additionCopy preTransitionGraphs];
          v24 = [preTransitionGraphs containsObject:v22];

          if (v24)
          {
            v26 = MEMORY[0x277CCACA8];
            name2 = [v22 name];
            v15 = [v26 stringWithFormat:@"Graph %@ was already running, but submitted for re-addition.", name2];

            v16 = MEMORY[0x277CCA9B8];
            v17 = @"Graphs cannot be re-submitted if they are currently running. Please remove the currently-running graph from the transition addition set and try again. If a running graph is being modified in-place and being submitted, please create a new PSGraph object for the new graph instead.";
            goto LABEL_20;
          }
        }

        v19 = [addedGraphs2 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    v25 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v25;
}

+ (id)validateNoDuplicateGraphRemoval:(id)removal
{
  v21 = *MEMORY[0x277D85DE8];
  removalCopy = removal;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  removedGraphs = [removalCopy removedGraphs];
  v5 = [removedGraphs countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = *v17;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(removedGraphs);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        preTransitionGraphs = [removalCopy preTransitionGraphs];
        v10 = [preTransitionGraphs containsObject:v8];

        if (!v10)
        {
          v11 = MEMORY[0x277CCACA8];
          name = [v8 name];
          v13 = [v11 stringWithFormat:@"Graph %@ was not running, but submitted for removal.", name];

          v5 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-103 description:v13 recoverySuggestion:@"Graphs cannot be submitted for removal if they are not currently running. Please remove the currently-running graph from the transition removal set and try again."];

          removedGraphs = v13;
          goto LABEL_11;
        }
      }

      v5 = [removedGraphs countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)validateTaskPointersUnique:(id)unique
{
  v47 = *MEMORY[0x277D85DE8];
  uniqueCopy = unique;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  postTransitionGraphs = [uniqueCopy postTransitionGraphs];
  v7 = [postTransitionGraphs countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v7)
  {
    v31 = uniqueCopy;
    v8 = *v41;
    v29 = *v41;
    do
    {
      v9 = 0;
      v30 = v7;
      do
      {
        if (*v41 != v8)
        {
          objc_enumerationMutation(postTransitionGraphs);
        }

        v10 = *(*(&v40 + 1) + 8 * v9);
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        tasks = [v10 tasks];
        v12 = [tasks countByEnumeratingWithState:&v36 objects:v45 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v37;
          while (2)
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v37 != v14)
              {
                objc_enumerationMutation(tasks);
              }

              v16 = *(*(&v36 + 1) + 8 * i);
              if ([v4 containsObject:v16])
              {
                v22 = @"PSTask pointers must be unique across all running graphs. If a duplicate implementation is being used, ie for equivalent processing on a left/right frame pair, separate PSTask objects should be allocated. If a graph needs to be updated, ie Graph: {TaskA} and GraphUpdated: {TaskA, TaskB}, TaskA should be newly allocated for GraphUpdated.";
                v23 = @"A duplicate PSTask pointer was found for task %@";
LABEL_28:
                v24 = MEMORY[0x277CCACA8];
                name = [v16 name];
                v26 = [v24 stringWithFormat:v23, name];

                v21 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-103 description:v26 recoverySuggestion:v22];

                postTransitionGraphs = v26;
                goto LABEL_29;
              }

              [v4 addObject:v16];
            }

            v13 = [tasks countByEnumeratingWithState:&v36 objects:v45 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        tasks = [v10 sourceTasks];
        v17 = [tasks countByEnumeratingWithState:&v32 objects:v44 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v33;
          while (2)
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v33 != v19)
              {
                objc_enumerationMutation(tasks);
              }

              v16 = *(*(&v32 + 1) + 8 * j);
              if ([v5 containsObject:v16])
              {
                v23 = @"A duplicate PSSourceTask pointer was found for task %@";
                v22 = @"PSSourceTask pointers must be unique across all running graphs. If a duplicate implementation is being used, ie for equivalent processing on a left/right frame pair, separate PSSourceTask objects should be allocated. If a graph needs to be updated, ie Graph: {SourceTaskA} and GraphUpdated: {SourceTaskA, SourceTaskB}, SourceTaskA should be newly allocated for GraphUpdated.";
                goto LABEL_28;
              }

              [v5 addObject:v16];
            }

            v18 = [tasks countByEnumeratingWithState:&v32 objects:v44 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }

        ++v9;
        v8 = v29;
      }

      while (v9 != v30);
      v7 = [postTransitionGraphs countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v7);
    v21 = 0;
LABEL_29:
    uniqueCopy = v31;
  }

  else
  {
    v21 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)validateCreationModeCompatibility:(id)compatibility withContext:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  allStreams = [context allStreams];
  v5 = [allStreams countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v5)
  {
    goto LABEL_21;
  }

  v6 = *v19;
  while (2)
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v19 != v6)
      {
        objc_enumerationMutation(allStreams);
      }

      v8 = *(*(&v18 + 1) + 8 * i);
      resourceClass = [v8 resourceClass];
      [v8 options];
      if (resourceClass > 0xC)
      {
        goto LABEL_16;
      }

      if (((1 << resourceClass) & 0xBF0) != 0)
      {
        if ((v10 - 1) >= 2)
        {
          goto LABEL_20;
        }

        continue;
      }

      if (((1 << resourceClass) & 0x40C) != 0)
      {
        if (v10 != 2)
        {
          goto LABEL_20;
        }

        continue;
      }

      if (((1 << resourceClass) & 0x1002) != 0)
      {
        if (v10 != 1)
        {
          goto LABEL_20;
        }
      }

      else
      {
LABEL_16:
        if (resourceClass)
        {
LABEL_20:
          v11 = MEMORY[0x277CCACA8];
          v12 = [v8 key];
          uTF8String = [v12 UTF8String];
          v14 = ps_resource_creation_mode_description();
          v15 = [v11 stringWithFormat:@"Invalid resource configuration found. Resource %s was declared with creation mode %s, which is not supported for resources of type %s.", uTF8String, v14, ps_resource_class_description()];

          v5 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-102 description:v15];

          goto LABEL_21;
        }
      }
    }

    v5 = [allStreams countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      continue;
    }

    break;
  }

LABEL_21:

  v16 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)validateAllocatorsNonnull:(id)nonnull withContext:(id)context
{
  v62 = *MEMORY[0x277D85DE8];
  nonnullCopy = nonnull;
  contextCopy = context;
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v35 = nonnullCopy;
  obj = [nonnullCopy postTransitionGraphs];
  v39 = [obj countByEnumeratingWithState:&v54 objects:v61 count:16];
  if (v39)
  {
    v38 = *v55;
    do
    {
      v7 = 0;
      do
      {
        if (*v55 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v40 = v7;
        v8 = *(*(&v54 + 1) + 8 * v7);
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        tasks = [v8 tasks];
        v10 = [tasks countByEnumeratingWithState:&v50 objects:v60 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v51;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v51 != v12)
              {
                objc_enumerationMutation(tasks);
              }

              v14 = *(*(&v50 + 1) + 8 * i);
              v46 = 0u;
              v47 = 0u;
              v48 = 0u;
              v49 = 0u;
              outputs = [v14 outputs];
              v16 = [outputs countByEnumeratingWithState:&v46 objects:v59 count:16];
              if (v16)
              {
                v17 = v16;
                v18 = *v47;
                do
                {
                  for (j = 0; j != v17; ++j)
                  {
                    if (*v47 != v18)
                    {
                      objc_enumerationMutation(outputs);
                    }

                    resourceKey = [*(*(&v46 + 1) + 8 * j) resourceKey];
                    [v6 addObject:resourceKey];
                  }

                  v17 = [outputs countByEnumeratingWithState:&v46 objects:v59 count:16];
                }

                while (v17);
              }
            }

            v11 = [tasks countByEnumeratingWithState:&v50 objects:v60 count:16];
          }

          while (v11);
        }

        v7 = v40 + 1;
      }

      while (v40 + 1 != v39);
      v39 = [obj countByEnumeratingWithState:&v54 objects:v61 count:16];
    }

    while (v39);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v21 = v6;
  v22 = [v21 countByEnumeratingWithState:&v42 objects:v58 count:16];
  if (!v22)
  {
    v30 = v21;
    v24 = contextCopy;
    goto LABEL_52;
  }

  v23 = *v43;
  v24 = contextCopy;
  while (2)
  {
    for (k = 0; k != v22; k = k + 1)
    {
      if (*v43 != v23)
      {
        objc_enumerationMutation(v21);
      }

      v26 = [contextCopy resourceStreamForKey:*(*(&v42 + 1) + 8 * k)];
      if ([v26 resourceClass] != 2 && objc_msgSend(v26, "resourceClass") != 3)
      {
        [v26 options];
        if (v27 != 2)
        {
          goto LABEL_47;
        }
      }

      resourceClass = [v26 resourceClass];
      if (resourceClass > 5)
      {
        if (resourceClass > 7)
        {
          if (resourceClass != 8 && resourceClass != 9 && resourceClass != 11)
          {
LABEL_55:
            [PSGraphValidation validateAllocatorsNonnull:v26 withContext:?];
          }

LABEL_44:
          if (![v26 allocator])
          {
            goto LABEL_50;
          }

          goto LABEL_47;
        }

        if (resourceClass != 6)
        {
          goto LABEL_44;
        }
      }

      else if (resourceClass <= 2)
      {
        if (resourceClass == 1)
        {
          goto LABEL_47;
        }

        if (resourceClass != 2)
        {
          goto LABEL_55;
        }
      }

      else if (resourceClass == 3 || resourceClass == 4)
      {
        goto LABEL_44;
      }

      retainableAllocator = [v26 retainableAllocator];

      if (!retainableAllocator)
      {
LABEL_50:
        v31 = MEMORY[0x277CCACA8];
        v32 = [v26 key];
        v30 = [v31 stringWithFormat:@"A nil allocator was found for stream %@.", v32];

        v22 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-103 description:v30 recoverySuggestion:{@"Object and Opaque types always require a nonnull allocator, and all other streams (except for Data) require a nonnull allocator if ps_resource_creation_mode_allocator is set."}];

        goto LABEL_52;
      }

LABEL_47:
    }

    v22 = [v21 countByEnumeratingWithState:&v42 objects:v58 count:16];
    if (v22)
    {
      continue;
    }

    break;
  }

  v30 = v21;
LABEL_52:

  v33 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)validateBarriersHaveUnblockingTask:(id)task
{
  v78 = *MEMORY[0x277D85DE8];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = [task addedGraphs];
  v46 = [obj countByEnumeratingWithState:&v68 objects:v77 count:16];
  if (v46)
  {
    v45 = *v69;
    while (2)
    {
      v3 = 0;
      do
      {
        if (*v69 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v47 = v3;
        v4 = *(*(&v68 + 1) + 8 * v3);
        v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        tasks = [v4 tasks];
        v7 = [tasks countByEnumeratingWithState:&v64 objects:v76 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v65;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v65 != v9)
              {
                objc_enumerationMutation(tasks);
              }

              v11 = *(*(&v64 + 1) + 8 * i);
              v60 = 0u;
              v61 = 0u;
              v62 = 0u;
              v63 = 0u;
              waitBarriers = [v11 waitBarriers];
              v13 = [waitBarriers countByEnumeratingWithState:&v60 objects:v75 count:16];
              if (v13)
              {
                v14 = v13;
                v15 = *v61;
                do
                {
                  for (j = 0; j != v14; ++j)
                  {
                    if (*v61 != v15)
                    {
                      objc_enumerationMutation(waitBarriers);
                    }

                    [v5 addObject:*(*(&v60 + 1) + 8 * j)];
                  }

                  v14 = [waitBarriers countByEnumeratingWithState:&v60 objects:v75 count:16];
                }

                while (v14);
              }
            }

            v8 = [tasks countByEnumeratingWithState:&v64 objects:v76 count:16];
          }

          while (v8);
        }

        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v44 = v4;
        tasks2 = [v4 tasks];
        v18 = [tasks2 countByEnumeratingWithState:&v56 objects:v74 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v57;
          do
          {
            for (k = 0; k != v19; ++k)
            {
              if (*v57 != v20)
              {
                objc_enumerationMutation(tasks2);
              }

              v22 = *(*(&v56 + 1) + 8 * k);
              v52 = 0u;
              v53 = 0u;
              v54 = 0u;
              v55 = 0u;
              updateBarriers = [v22 updateBarriers];
              v24 = [updateBarriers countByEnumeratingWithState:&v52 objects:v73 count:16];
              if (v24)
              {
                v25 = v24;
                v26 = *v53;
                do
                {
                  for (m = 0; m != v25; ++m)
                  {
                    if (*v53 != v26)
                    {
                      objc_enumerationMutation(updateBarriers);
                    }

                    v28 = *(*(&v52 + 1) + 8 * m);
                    if ([v5 containsObject:v28])
                    {
                      [v5 removeObject:v28];
                    }
                  }

                  v25 = [updateBarriers countByEnumeratingWithState:&v52 objects:v73 count:16];
                }

                while (v25);
              }
            }

            v19 = [tasks2 countByEnumeratingWithState:&v56 objects:v74 count:16];
          }

          while (v19);
        }

        if ([v5 count])
        {
          v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v32 = v5;
          v33 = [v32 countByEnumeratingWithState:&v48 objects:v72 count:16];
          if (v33)
          {
            v34 = v33;
            v35 = *v49;
            do
            {
              for (n = 0; n != v34; ++n)
              {
                if (*v49 != v35)
                {
                  objc_enumerationMutation(v32);
                }

                name = [*(*(&v48 + 1) + 8 * n) name];
                [v31 addObject:name];
              }

              v34 = [v32 countByEnumeratingWithState:&v48 objects:v72 count:16];
            }

            while (v34);
          }

          v38 = [PSGraphValidation listifyTokens:v31];
          v39 = MEMORY[0x277CCACA8];
          name2 = [v44 name];
          v30 = [v39 stringWithFormat:@"PSBarriers without updating tasks were found in graph %@: %@", name2, v38];

          v29 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-100 description:v30 recoverySuggestion:{@"All barriers must be updated by at least one task, and barriers only work for tasks within the same graph. A task from Graph1 cannot update a barrier waited on by a task in Graph2."}];

          goto LABEL_48;
        }

        v3 = v47 + 1;
      }

      while (v47 + 1 != v46);
      v46 = [obj countByEnumeratingWithState:&v68 objects:v77 count:16];
      if (v46)
      {
        continue;
      }

      break;
    }
  }

  v29 = 0;
  v30 = obj;
LABEL_48:

  v41 = *MEMORY[0x277D85DE8];

  return v29;
}

+ (id)validateLastNBufferDepths:(id)depths withContext:(id)context isLocalReplaySession:(BOOL)session
{
  sessionCopy = session;
  v88 = *MEMORY[0x277D85DE8];
  depthsCopy = depths;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v51 = depthsCopy;
  obj = [depthsCopy addedGraphs];
  v55 = [obj countByEnumeratingWithState:&v79 objects:v87 count:16];
  if (v55)
  {
    v54 = *v80;
    do
    {
      v7 = 0;
      do
      {
        if (*v80 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v79 + 1) + 8 * v7);
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v56 = v8;
        v57 = v7;
        tasks = [v8 tasks];
        v60 = [tasks countByEnumeratingWithState:&v75 objects:v86 count:16];
        if (v60)
        {
          v59 = *v76;
          do
          {
            v9 = 0;
            do
            {
              if (*v76 != v59)
              {
                objc_enumerationMutation(tasks);
              }

              v61 = v9;
              v10 = *(*(&v75 + 1) + 8 * v9);
              v71 = 0u;
              v72 = 0u;
              v73 = 0u;
              v74 = 0u;
              inputs = [v10 inputs];
              v12 = [inputs countByEnumeratingWithState:&v71 objects:v85 count:16];
              if (v12)
              {
                v13 = v12;
                v14 = *v72;
                do
                {
                  for (i = 0; i != v13; ++i)
                  {
                    if (*v72 != v14)
                    {
                      objc_enumerationMutation(inputs);
                    }

                    v16 = *(*(&v71 + 1) + 8 * i);
                    resourceKey = [v16 resourceKey];
                    v18 = [v6 objectForKey:resourceKey];

                    if (v18)
                    {
                      resourceKey2 = [v16 resourceKey];
                      v20 = [v6 objectForKey:resourceKey2];
                      unsignedIntValue = [v20 unsignedIntValue];

                      v22 = unsignedIntValue;
                    }

                    else
                    {
                      v22 = 0;
                    }

                    if ([v16 capacity] > v22)
                    {
                      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "capacity")}];
                      resourceKey3 = [v16 resourceKey];
                      [v6 setObject:v23 forKey:resourceKey3];
                    }
                  }

                  v13 = [inputs countByEnumeratingWithState:&v71 objects:v85 count:16];
                }

                while (v13);
              }

              v9 = v61 + 1;
            }

            while (v61 + 1 != v60);
            v60 = [tasks countByEnumeratingWithState:&v75 objects:v86 count:16];
          }

          while (v60);
        }

        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        readers = [v56 readers];
        v26 = [readers countByEnumeratingWithState:&v67 objects:v84 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v68;
          do
          {
            for (j = 0; j != v27; ++j)
            {
              if (*v68 != v28)
              {
                objc_enumerationMutation(readers);
              }

              input = [*(*(&v67 + 1) + 8 * j) input];
              resourceKey4 = [input resourceKey];
              v32 = [v6 objectForKey:resourceKey4];

              if (v32)
              {
                resourceKey5 = [input resourceKey];
                v34 = [v6 objectForKey:resourceKey5];
                unsignedIntValue2 = [v34 unsignedIntValue];

                v36 = unsignedIntValue2;
              }

              else
              {
                v36 = 0;
              }

              if ([input capacity] > v36)
              {
                v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(input, "capacity")}];
                resourceKey6 = [input resourceKey];
                [v6 setObject:v37 forKey:resourceKey6];
              }
            }

            v27 = [readers countByEnumeratingWithState:&v67 objects:v84 count:16];
          }

          while (v27);
        }

        v7 = v57 + 1;
      }

      while (v57 + 1 != v55);
      v55 = [obj countByEnumeratingWithState:&v79 objects:v87 count:16];
    }

    while (v55);
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v39 = v6;
  v40 = [v39 countByEnumeratingWithState:&v63 objects:v83 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v64;
    while (2)
    {
      for (k = 0; k != v41; ++k)
      {
        if (*v64 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v63 + 1) + 8 * k);
        v45 = [v39 objectForKey:v44];
        unsignedIntValue3 = [v45 unsignedIntValue];

        v62 = 0;
        if (sessionCopy || ![PSRCConstants checkBufferConfigExistsForKey:v44])
        {
          [PSConstants getBufferDepthsForKey:v44 writerDepth:&v62 + 4 readerDepth:&v62];
        }

        else
        {
          LODWORD(v62) = [PSRCConstants getReaderDepthForKey:v44];
          HIDWORD(v62) = [PSRCConstants getWriterDepthForKey:v44];
        }

        if (unsignedIntValue3 > v62)
        {
          v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"An input (%@) was requested with LastN capacity %d, but the underlying buffer only had %d allocated views.", v44, unsignedIntValue3, v62];
          v47 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-100 description:v48 recoverySuggestion:{@"Reduce the number of requested LastN views, or use the PSResourceStream buffer count hint(s) to request a larger buffer size from the output."}];

          goto LABEL_53;
        }
      }

      v41 = [v39 countByEnumeratingWithState:&v63 objects:v83 count:16];
      if (v41)
      {
        continue;
      }

      break;
    }
  }

  v47 = 0;
  v48 = v39;
LABEL_53:

  v49 = *MEMORY[0x277D85DE8];

  return v47;
}

+ (id)validateRetainedInputsEnabled:(id)enabled withContext:(id)context
{
  v83 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  contextCopy = context;
  v7 = +[PLSSettings currentSettings];
  enableBundleRetain = [v7 enableBundleRetain];

  v9 = +[PLSSettings currentSettings];
  enableFifoBundleRetain = [v9 enableFifoBundleRetain];

  if (enableBundleRetain && (enableFifoBundleRetain & 1) != 0)
  {
    v11 = 0;
  }

  else
  {
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    postTransitionGraphs = [enabledCopy postTransitionGraphs];
    v13 = [postTransitionGraphs countByEnumeratingWithState:&v75 objects:v82 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v76;
      v53 = postTransitionGraphs;
      v54 = enabledCopy;
      v51 = enableBundleRetain;
      v47 = *v76;
      do
      {
        v16 = 0;
        do
        {
          if (*v76 != v15)
          {
            objc_enumerationMutation(postTransitionGraphs);
          }

          v17 = *(*(&v75 + 1) + 8 * v16);
          v71 = 0u;
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          v56 = v16;
          v57 = v17;
          tasks = [v17 tasks];
          v19 = [tasks countByEnumeratingWithState:&v71 objects:v81 count:16];
          if (v19)
          {
            v20 = *v72;
            v55 = tasks;
            v48 = v14;
            v49 = *v72;
            do
            {
              v21 = 0;
              v50 = v19;
              do
              {
                if (*v72 != v20)
                {
                  objc_enumerationMutation(tasks);
                }

                v22 = *(*(&v71 + 1) + 8 * v21);
                v67 = 0u;
                v68 = 0u;
                v69 = 0u;
                v70 = 0u;
                v58 = v22;
                outputs = [v22 outputs];
                v61 = [outputs countByEnumeratingWithState:&v67 objects:v80 count:16];
                if (v61)
                {
                  v62 = *v68;
                  v60 = outputs;
                  v52 = v21;
                  while (2)
                  {
                    for (i = 0; i != v61; ++i)
                    {
                      if (*v68 != v62)
                      {
                        objc_enumerationMutation(outputs);
                      }

                      v25 = *(*(&v67 + 1) + 8 * i);
                      retainedInputs = [v25 retainedInputs];
                      v27 = [retainedInputs count];

                      if (v27)
                      {
                        if ((enableBundleRetain & 1) == 0)
                        {
                          v43 = MEMORY[0x277CCACA8];
                          resourceKey = [v25 resourceKey];
                          name = [v58 name];
                          name2 = [v57 name];
                          postTransitionGraphs = [v43 stringWithFormat:@"Output %@ in task %@, graph %@ retains inputs, but the input retain API is disabled.", resourceKey, name, name2];
                          v11 = ;
LABEL_40:

                          enabledCopy = v54;
                          goto LABEL_41;
                        }

                        v65 = 0u;
                        v66 = 0u;
                        v63 = 0u;
                        v64 = 0u;
                        v59 = v25;
                        retainedInputs2 = [v25 retainedInputs];
                        v29 = [retainedInputs2 countByEnumeratingWithState:&v63 objects:v79 count:16];
                        if (v29)
                        {
                          v30 = v29;
                          v31 = *v64;
                          while (2)
                          {
                            for (j = 0; j != v30; ++j)
                            {
                              if (*v64 != v31)
                              {
                                objc_enumerationMutation(retainedInputs2);
                              }

                              v33 = *(*(&v63 + 1) + 8 * j);
                              resourceKey2 = [v33 resourceKey];
                              v35 = [contextCopy resourceStreamForKey:resourceKey2];

                              if (v35 && ([v35 resourceClass] - 7) <= 2 && !((objc_msgSend(v35, "provider") != 1) | enableFifoBundleRetain & 1))
                              {
                                v36 = MEMORY[0x277CCACA8];
                                resourceKey3 = [v59 resourceKey];
                                name3 = [v58 name];
                                name4 = [v57 name];
                                resourceKey4 = [v33 resourceKey];
                                postTransitionGraphs = [v36 stringWithFormat:@"Output %@ in task %@, graph %@ retains a FIFO-backed buffer (%@), but retaining FIFO buffers is disabled.", resourceKey3, name3, name4, resourceKey4];
                                v11 = ;

                                outputs = v60;
                                goto LABEL_40;
                              }
                            }

                            v30 = [retainedInputs2 countByEnumeratingWithState:&v63 objects:v79 count:16];
                            if (v30)
                            {
                              continue;
                            }

                            break;
                          }
                        }

                        LOBYTE(enableBundleRetain) = v51;
                        outputs = v60;
                        v21 = v52;
                      }
                    }

                    postTransitionGraphs = v53;
                    enabledCopy = v54;
                    tasks = v55;
                    v15 = v47;
                    v14 = v48;
                    v61 = [outputs countByEnumeratingWithState:&v67 objects:v80 count:16];
                    if (v61)
                    {
                      continue;
                    }

                    break;
                  }
                }

                ++v21;
                v20 = v49;
              }

              while (v21 != v50);
              v19 = [tasks countByEnumeratingWithState:&v71 objects:v81 count:16];
            }

            while (v19);
          }

          v16 = v56 + 1;
        }

        while (v56 + 1 != v14);
        v14 = [postTransitionGraphs countByEnumeratingWithState:&v75 objects:v82 count:16];
      }

      while (v14);
    }

    v11 = 0;
LABEL_41:
  }

  v41 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)validateRetainedInputsNotLastN:(id)n withContext:(id)context
{
  v62 = *MEMORY[0x277D85DE8];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  postTransitionGraphs = [n postTransitionGraphs];
  v5 = [postTransitionGraphs countByEnumeratingWithState:&v54 objects:v61 count:16];
  if (v5)
  {
    v6 = *v55;
    v40 = postTransitionGraphs;
    v34 = *v55;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v55 != v6)
        {
          objc_enumerationMutation(postTransitionGraphs);
        }

        v8 = *(*(&v54 + 1) + 8 * i);
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        tasks = [v8 tasks];
        v10 = [tasks countByEnumeratingWithState:&v50 objects:v60 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v51;
          v41 = tasks;
          v35 = i;
          v36 = v5;
          v37 = *v51;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v51 != v12)
              {
                objc_enumerationMutation(tasks);
              }

              v14 = *(*(&v50 + 1) + 8 * j);
              v46 = 0u;
              v47 = 0u;
              v48 = 0u;
              v49 = 0u;
              outputs = [v14 outputs];
              v16 = [outputs countByEnumeratingWithState:&v46 objects:v59 count:16];
              if (v16)
              {
                v17 = v16;
                v18 = *v47;
                v38 = v11;
                v39 = *v47;
                do
                {
                  for (k = 0; k != v17; ++k)
                  {
                    if (*v47 != v18)
                    {
                      objc_enumerationMutation(outputs);
                    }

                    v20 = *(*(&v46 + 1) + 8 * k);
                    retainedInputs = [v20 retainedInputs];
                    v22 = [retainedInputs count];

                    if (v22)
                    {
                      v44 = 0u;
                      v45 = 0u;
                      v42 = 0u;
                      v43 = 0u;
                      retainedInputs2 = [v20 retainedInputs];
                      v24 = [retainedInputs2 countByEnumeratingWithState:&v42 objects:v58 count:16];
                      if (v24)
                      {
                        v25 = v24;
                        v26 = *v43;
                        while (2)
                        {
                          for (m = 0; m != v25; ++m)
                          {
                            if (*v43 != v26)
                            {
                              objc_enumerationMutation(retainedInputs2);
                            }

                            v28 = *(*(&v42 + 1) + 8 * m);
                            if ([v28 capacity] > 1)
                            {
                              v29 = MEMORY[0x277CCACA8];
                              resourceKey = [v28 resourceKey];
                              resourceKey2 = [v20 resourceKey];
                              postTransitionGraphs = [v29 stringWithFormat:@"Retained input %@ for output %@ has capacity > 1 (%lu).", resourceKey, resourceKey2, objc_msgSend(v28, "capacity")];

                              v5 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-100 description:postTransitionGraphs];

                              goto LABEL_34;
                            }
                          }

                          v25 = [retainedInputs2 countByEnumeratingWithState:&v42 objects:v58 count:16];
                          if (v25)
                          {
                            continue;
                          }

                          break;
                        }
                      }

                      v18 = v39;
                    }
                  }

                  v17 = [outputs countByEnumeratingWithState:&v46 objects:v59 count:16];
                  tasks = v41;
                  v12 = v37;
                  v11 = v38;
                }

                while (v17);
              }
            }

            v11 = [tasks countByEnumeratingWithState:&v50 objects:v60 count:16];
            postTransitionGraphs = v40;
            v6 = v34;
            i = v35;
            v5 = v36;
          }

          while (v11);
        }
      }

      v5 = [postTransitionGraphs countByEnumeratingWithState:&v54 objects:v61 count:16];
    }

    while (v5);
  }

LABEL_34:

  v32 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)validateRetainedInputsNotNested:(id)nested withContext:(id)context
{
  v83 = *MEMORY[0x277D85DE8];
  nestedCopy = nested;
  v51 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v40 = nestedCopy;
  obj = [nestedCopy postTransitionGraphs];
  v43 = [obj countByEnumeratingWithState:&v73 objects:v82 count:16];
  if (v43)
  {
    v42 = *v74;
    do
    {
      v5 = 0;
      do
      {
        if (*v74 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v44 = v5;
        v6 = *(*(&v73 + 1) + 8 * v5);
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        tasks = [v6 tasks];
        v47 = [tasks countByEnumeratingWithState:&v69 objects:v81 count:16];
        if (v47)
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

              v48 = v7;
              v8 = *(*(&v69 + 1) + 8 * v7);
              v65 = 0u;
              v66 = 0u;
              v67 = 0u;
              v68 = 0u;
              outputs = [v8 outputs];
              v9 = [outputs countByEnumeratingWithState:&v65 objects:v80 count:16];
              if (v9)
              {
                v10 = v9;
                v11 = *v66;
                do
                {
                  for (i = 0; i != v10; ++i)
                  {
                    if (*v66 != v11)
                    {
                      objc_enumerationMutation(outputs);
                    }

                    v13 = *(*(&v65 + 1) + 8 * i);
                    retainedInputs = [v13 retainedInputs];
                    v15 = [retainedInputs count];

                    if (v15)
                    {
                      v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
                      v61 = 0u;
                      v62 = 0u;
                      v63 = 0u;
                      v64 = 0u;
                      retainedInputs2 = [v13 retainedInputs];
                      v18 = [retainedInputs2 countByEnumeratingWithState:&v61 objects:v79 count:16];
                      if (v18)
                      {
                        v19 = v18;
                        v20 = *v62;
                        do
                        {
                          for (j = 0; j != v19; ++j)
                          {
                            if (*v62 != v20)
                            {
                              objc_enumerationMutation(retainedInputs2);
                            }

                            resourceKey = [*(*(&v61 + 1) + 8 * j) resourceKey];
                            [v16 addObject:resourceKey];
                          }

                          v19 = [retainedInputs2 countByEnumeratingWithState:&v61 objects:v79 count:16];
                        }

                        while (v19);
                      }

                      resourceKey2 = [v13 resourceKey];
                      [v51 setObject:v16 forKey:resourceKey2];
                    }
                  }

                  v10 = [outputs countByEnumeratingWithState:&v65 objects:v80 count:16];
                }

                while (v10);
              }

              v7 = v48 + 1;
            }

            while (v48 + 1 != v47);
            v47 = [tasks countByEnumeratingWithState:&v69 objects:v81 count:16];
          }

          while (v47);
        }

        v5 = v44 + 1;
      }

      while (v44 + 1 != v43);
      v43 = [obj countByEnumeratingWithState:&v73 objects:v82 count:16];
    }

    while (v43);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v24 = v51;
  v52 = [v24 countByEnumeratingWithState:&v57 objects:v78 count:16];
  if (v52)
  {
    v25 = *v58;
    v50 = *v58;
    do
    {
      for (k = 0; k != v52; ++k)
      {
        if (*v58 != v25)
        {
          objc_enumerationMutation(v24);
        }

        v27 = *(*(&v57 + 1) + 8 * k);
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v28 = v24;
        v29 = [v28 countByEnumeratingWithState:&v53 objects:v77 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v54;
          while (2)
          {
            for (m = 0; m != v30; ++m)
            {
              if (*v54 != v31)
              {
                objc_enumerationMutation(v28);
              }

              v33 = *(*(&v53 + 1) + 8 * m);
              if (([v27 isEqualToString:v33] & 1) == 0)
              {
                v34 = [v28 objectForKey:v33];
                v35 = [v34 containsObject:v27];

                if (v35)
                {
                  v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"Output that retains inputs (%@) was found to be retained by another output (%@).", v27, v33];
                  v36 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-100 description:v37];

                  v28 = v37;
                  goto LABEL_50;
                }
              }
            }

            v30 = [v28 countByEnumeratingWithState:&v53 objects:v77 count:16];
            if (v30)
            {
              continue;
            }

            break;
          }
        }

        v25 = v50;
      }

      v36 = 0;
      v52 = [v28 countByEnumeratingWithState:&v57 objects:v78 count:16];
    }

    while (v52);
  }

  else
  {
    v36 = 0;
    v28 = v24;
  }

LABEL_50:

  v38 = *MEMORY[0x277D85DE8];

  return v36;
}

+ (id)validateSequencedTeardownLeaderExists:(id)exists
{
  v53 = *MEMORY[0x277D85DE8];
  existsCopy = exists;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  postTransitionGraphs = [existsCopy postTransitionGraphs];
  v8 = [postTransitionGraphs countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v46;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v46 != v10)
        {
          objc_enumerationMutation(postTransitionGraphs);
        }

        v12 = *(*(&v45 + 1) + 8 * i);
        teardownType = [v12 teardownType];
        v14 = v5;
        if (teardownType != 1)
        {
          teardownType2 = [v12 teardownType];
          v14 = v6;
          if (teardownType2 != 2)
          {
            continue;
          }
        }

        [v14 addObject:v12];
      }

      v9 = [postTransitionGraphs countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v9);
  }

  v32 = v6;

  v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v5;
  v35 = [obj countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (v35)
  {
    v34 = *v42;
    do
    {
      v17 = 0;
      do
      {
        if (*v42 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v36 = v17;
        v18 = *(*(&v41 + 1) + 8 * v17);
        v19 = objc_alloc(MEMORY[0x277CBEB58]);
        v50 = v18;
        anyObject = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
        v21 = [v19 initWithArray:anyObject];
        while (1)
        {

          if (![v21 count])
          {
            break;
          }

          anyObject = [v21 anyObject];
          [v21 removeObject:anyObject];
          v22 = [self findImmediateDownstreamGraphs:anyObject withTransitionBlock:existsCopy];
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v23 = [v22 countByEnumeratingWithState:&v37 objects:v49 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v38;
            do
            {
              for (j = 0; j != v24; ++j)
              {
                if (*v38 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                v27 = *(*(&v37 + 1) + 8 * j);
                if ([v27 teardownType] == 2)
                {
                  [v21 addObject:v27];
                  [v16 addObject:v27];
                }
              }

              v24 = [v22 countByEnumeratingWithState:&v37 objects:v49 count:16];
            }

            while (v24);
          }
        }

        v17 = v36 + 1;
      }

      while (v36 + 1 != v35);
      v35 = [obj countByEnumeratingWithState:&v41 objects:v51 count:16];
    }

    while (v35);
  }

  if ([v32 isEqualToSet:v16])
  {
    v28 = 0;
  }

  else
  {
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Not all PSGraphTeardownTypeSequencedFollower graphs had a corresponding in-process PSGraphTeardownTypeSequencedLeader. Unconnected followers: %@", v16];
    v28 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-100 description:v29];
  }

  v30 = *MEMORY[0x277D85DE8];

  return v28;
}

+ (id)validateIOSurfaceMetadataResourceClass:(id)class
{
  v37 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  addedGraphs = [class addedGraphs];
  v4 = [addedGraphs countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v32;
    v26 = *v32;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(addedGraphs);
        }

        v8 = *(*(&v31 + 1) + 8 * i);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        resourceInfo = [v8 resourceInfo];
        v10 = [resourceInfo countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v28;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v28 != v12)
              {
                objc_enumerationMutation(resourceInfo);
              }

              v14 = *(*(&v27 + 1) + 8 * j);
              resourceInfo2 = [v8 resourceInfo];
              v16 = [resourceInfo2 objectForKeyedSubscript:v14];

              [v16 provider];
              if (ps_resource_stream_provider_has_iosurface_metadata())
              {
                resourceClass = [v16 resourceClass];
                if ((resourceClass - 7) >= 3 && resourceClass != 11)
                {
                  v19 = MEMORY[0x277CCA9B8];
                  v20 = MEMORY[0x277CCACA8];
                  v21 = [v16 key];
                  v22 = [v20 stringWithFormat:@"Resource: %@ has class %llu which is not allowed to have iosurface metadata", v21, objc_msgSend(v16, "resourceClass")];
                  v23 = [v19 polarisErrorWithCode:-102 description:v22];

                  goto LABEL_23;
                }
              }
            }

            v11 = [resourceInfo countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v11);
        }

        v6 = v26;
      }

      v5 = [addedGraphs countByEnumeratingWithState:&v31 objects:v36 count:16];
      v23 = 0;
    }

    while (v5);
  }

  else
  {
    v23 = 0;
  }

LABEL_23:

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (id)validateIOSurfaceMetadataProvider:(id)provider
{
  v38 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  addedGraphs = [provider addedGraphs];
  v26 = [addedGraphs countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v26)
  {
    v4 = *v33;
    v27 = addedGraphs;
    v25 = *v33;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v33 != v4)
        {
          objc_enumerationMutation(addedGraphs);
        }

        v6 = *(*(&v32 + 1) + 8 * i);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        resourceInfo = [v6 resourceInfo];
        v8 = [resourceInfo countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v29;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v29 != v10)
              {
                objc_enumerationMutation(resourceInfo);
              }

              v12 = *(*(&v28 + 1) + 8 * j);
              resourceInfo2 = [v6 resourceInfo];
              v14 = [resourceInfo2 objectForKeyedSubscript:v12];

              resourceClass = [v14 resourceClass];
              if (resourceClass > 0xB || ((1 << resourceClass) & 0xB80) == 0)
              {
                metadataIOSurfaceProperties = 0;
              }

              else
              {
                metadataIOSurfaceProperties = [v14 metadataIOSurfaceProperties];
                if (metadataIOSurfaceProperties)
                {
                  [v14 provider];
                  if (!ps_resource_stream_provider_has_iosurface_metadata())
                  {
                    v18 = MEMORY[0x277CCA9B8];
                    v19 = MEMORY[0x277CCACA8];
                    v20 = [v14 key];
                    v21 = [v19 stringWithFormat:@"Resource: %@ has iosurface metadata properties provided but doesn't have a provider type that supports iosurface metadata", v20];
                    v22 = [v18 polarisErrorWithCode:-102 description:v21];

                    addedGraphs = v27;
                    goto LABEL_25;
                  }
                }
              }
            }

            v9 = [resourceInfo countByEnumeratingWithState:&v28 objects:v36 count:16];
          }

          while (v9);
        }

        addedGraphs = v27;
        v4 = v25;
      }

      v22 = 0;
      v26 = [v27 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v26);
  }

  else
  {
    v22 = 0;
  }

LABEL_25:

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)validateStorageModeCompatibility:(id)compatibility withContext:(id)context
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  allStreams = [context allStreams];
  v5 = [allStreams countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(allStreams);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        resourceClass = [v9 resourceClass];
        if ([v9 options] == 2 && resourceClass <= 0xC && ((1 << resourceClass) & 0x106C) != 0)
        {
          v13 = MEMORY[0x277CCACA8];
          v14 = [v9 key];
          v15 = [v13 stringWithFormat:@"Invalid resource configuration found. Resource %s was declared as a shared resource, but it is of type %s. This resource type cannot be shared across processes.", objc_msgSend(v14, "UTF8String"), ps_resource_class_description()];

          v16 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-102 description:v15];

          goto LABEL_18;
        }
      }

      v6 = [allStreams countByEnumeratingWithState:&v19 objects:v23 count:16];
      v16 = 0;
    }

    while (v6);
  }

  else
  {
    v16 = 0;
  }

LABEL_18:

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)validateWriterNotRemovedBeforeReader:(id)reader withContext:(id)context
{
  v169 = *MEMORY[0x277D85DE8];
  readerCopy = reader;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v89 = readerCopy;
  obj = [readerCopy removedGraphs];
  v100 = [obj countByEnumeratingWithState:&v153 objects:v168 count:16];
  if (v100)
  {
    v97 = *v154;
    do
    {
      v6 = 0;
      do
      {
        if (*v154 != v97)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v153 + 1) + 8 * v6);
        v149 = 0u;
        v150 = 0u;
        v151 = 0u;
        v152 = 0u;
        v103 = v7;
        v106 = v6;
        tasks = [v7 tasks];
        v9 = [tasks countByEnumeratingWithState:&v149 objects:v167 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v150;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v150 != v11)
              {
                objc_enumerationMutation(tasks);
              }

              v13 = *(*(&v149 + 1) + 8 * i);
              v145 = 0u;
              v146 = 0u;
              v147 = 0u;
              v148 = 0u;
              outputs = [v13 outputs];
              v15 = [outputs countByEnumeratingWithState:&v145 objects:v166 count:16];
              if (v15)
              {
                v16 = v15;
                v17 = *v146;
                do
                {
                  for (j = 0; j != v16; ++j)
                  {
                    if (*v146 != v17)
                    {
                      objc_enumerationMutation(outputs);
                    }

                    resourceKey = [*(*(&v145 + 1) + 8 * j) resourceKey];
                    [v5 addObject:resourceKey];
                  }

                  v16 = [outputs countByEnumeratingWithState:&v145 objects:v166 count:16];
                }

                while (v16);
              }
            }

            v10 = [tasks countByEnumeratingWithState:&v149 objects:v167 count:16];
          }

          while (v10);
        }

        v143 = 0u;
        v144 = 0u;
        v141 = 0u;
        v142 = 0u;
        writers = [v103 writers];
        v21 = [writers countByEnumeratingWithState:&v141 objects:v165 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v142;
          do
          {
            for (k = 0; k != v22; ++k)
            {
              if (*v142 != v23)
              {
                objc_enumerationMutation(writers);
              }

              output = [*(*(&v141 + 1) + 8 * k) output];
              resourceKey2 = [output resourceKey];
              [v5 addObject:resourceKey2];
            }

            v22 = [writers countByEnumeratingWithState:&v141 objects:v165 count:16];
          }

          while (v22);
        }

        v6 = v106 + 1;
      }

      while (v106 + 1 != v100);
      v100 = [obj countByEnumeratingWithState:&v153 objects:v168 count:16];
    }

    while (v100);
  }

  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  addedGraphs = [v89 addedGraphs];
  obja = [addedGraphs countByEnumeratingWithState:&v137 objects:v164 count:16];
  if (obja)
  {
    v92 = *v138;
    do
    {
      v27 = 0;
      do
      {
        if (*v138 != v92)
        {
          objc_enumerationMutation(addedGraphs);
        }

        v28 = *(*(&v137 + 1) + 8 * v27);
        v133 = 0u;
        v134 = 0u;
        v135 = 0u;
        v136 = 0u;
        v98 = v28;
        v101 = v27;
        tasks2 = [v28 tasks];
        v29 = [tasks2 countByEnumeratingWithState:&v133 objects:v163 count:16];
        if (v29)
        {
          v30 = v29;
          v107 = *v134;
          do
          {
            for (m = 0; m != v30; ++m)
            {
              if (*v134 != v107)
              {
                objc_enumerationMutation(tasks2);
              }

              v32 = *(*(&v133 + 1) + 8 * m);
              v129 = 0u;
              v130 = 0u;
              v131 = 0u;
              v132 = 0u;
              outputs2 = [v32 outputs];
              v34 = [outputs2 countByEnumeratingWithState:&v129 objects:v162 count:16];
              if (v34)
              {
                v35 = v34;
                v36 = *v130;
                do
                {
                  for (n = 0; n != v35; ++n)
                  {
                    if (*v130 != v36)
                    {
                      objc_enumerationMutation(outputs2);
                    }

                    v38 = *(*(&v129 + 1) + 8 * n);
                    resourceKey3 = [v38 resourceKey];
                    v40 = [v5 containsObject:resourceKey3];

                    if (v40)
                    {
                      resourceKey4 = [v38 resourceKey];
                      [v5 removeObject:resourceKey4];
                    }
                  }

                  v35 = [outputs2 countByEnumeratingWithState:&v129 objects:v162 count:16];
                }

                while (v35);
              }
            }

            v30 = [tasks2 countByEnumeratingWithState:&v133 objects:v163 count:16];
          }

          while (v30);
        }

        v127 = 0u;
        v128 = 0u;
        v125 = 0u;
        v126 = 0u;
        writers2 = [v98 writers];
        v43 = [writers2 countByEnumeratingWithState:&v125 objects:v161 count:16];
        if (v43)
        {
          v44 = v43;
          v45 = *v126;
          do
          {
            for (ii = 0; ii != v44; ++ii)
            {
              if (*v126 != v45)
              {
                objc_enumerationMutation(writers2);
              }

              v47 = *(*(&v125 + 1) + 8 * ii);
              output2 = [v47 output];
              resourceKey5 = [output2 resourceKey];
              v50 = [v5 containsObject:resourceKey5];

              if (v50)
              {
                output3 = [v47 output];
                resourceKey6 = [output3 resourceKey];
                [v5 removeObject:resourceKey6];
              }
            }

            v44 = [writers2 countByEnumeratingWithState:&v125 objects:v161 count:16];
          }

          while (v44);
        }

        v27 = v101 + 1;
      }

      while ((v101 + 1) != obja);
      obja = [addedGraphs countByEnumeratingWithState:&v137 objects:v164 count:16];
    }

    while (obja);
  }

  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  postTransitionGraphs = [v89 postTransitionGraphs];
  v54 = [postTransitionGraphs countByEnumeratingWithState:&v121 objects:v160 count:16];
  if (v54)
  {
    v55 = *v122;
    v108 = postTransitionGraphs;
    v91 = *v122;
    do
    {
      v56 = 0;
      v93 = v54;
      do
      {
        if (*v122 != v55)
        {
          objc_enumerationMutation(postTransitionGraphs);
        }

        v99 = v56;
        v57 = *(*(&v121 + 1) + 8 * v56);
        v117 = 0u;
        v118 = 0u;
        v119 = 0u;
        v120 = 0u;
        tasks3 = [v57 tasks];
        v105 = [tasks3 countByEnumeratingWithState:&v117 objects:v159 count:16];
        if (v105)
        {
          v59 = *v118;
          v102 = v57;
          objb = *v118;
          do
          {
            for (jj = 0; jj != v105; jj = jj + 1)
            {
              if (*v118 != v59)
              {
                objc_enumerationMutation(tasks3);
              }

              v61 = *(*(&v117 + 1) + 8 * jj);
              v113 = 0u;
              v114 = 0u;
              v115 = 0u;
              v116 = 0u;
              inputs = [v61 inputs];
              v63 = [inputs countByEnumeratingWithState:&v113 objects:v158 count:16];
              if (v63)
              {
                v64 = v63;
                v65 = *v114;
                while (2)
                {
                  for (kk = 0; kk != v64; ++kk)
                  {
                    if (*v114 != v65)
                    {
                      objc_enumerationMutation(inputs);
                    }

                    v67 = *(*(&v113 + 1) + 8 * kk);
                    resourceKey7 = [v67 resourceKey];
                    v69 = [v5 containsObject:resourceKey7];

                    if (v69)
                    {
                      v80 = MEMORY[0x277CCACA8];
                      resourceKey8 = [v67 resourceKey];
                      name = [v102 name];
                      postTransitionGraphs = [v80 stringWithFormat:@"A local task output (%@) is being removed even though a reader graph (%@) is still present.", resourceKey8, name];

                      v79 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-100 description:postTransitionGraphs recoverySuggestion:@"Make sure a local resource writer is not removed if there are active readers."];

LABEL_94:
                      goto LABEL_95;
                    }
                  }

                  v64 = [inputs countByEnumeratingWithState:&v113 objects:v158 count:16];
                  if (v64)
                  {
                    continue;
                  }

                  break;
                }
              }

              v59 = objb;
            }

            v57 = v102;
            v105 = [tasks3 countByEnumeratingWithState:&v117 objects:v159 count:16];
          }

          while (v105);
        }

        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
        v70 = v57;
        tasks3 = [v57 readers];
        v71 = [tasks3 countByEnumeratingWithState:&v109 objects:v157 count:16];
        if (v71)
        {
          v72 = v71;
          v73 = *v110;
          while (2)
          {
            for (mm = 0; mm != v72; ++mm)
            {
              if (*v110 != v73)
              {
                objc_enumerationMutation(tasks3);
              }

              v75 = *(*(&v109 + 1) + 8 * mm);
              input = [v75 input];
              resourceKey9 = [input resourceKey];
              v78 = [v5 containsObject:resourceKey9];

              if (v78)
              {
                v83 = MEMORY[0x277CCACA8];
                input2 = [v75 input];
                resourceKey10 = [input2 resourceKey];
                name2 = [v70 name];
                postTransitionGraphs = [v83 stringWithFormat:@"A local task output (%@) is being removed even though a reader graph (%@) is still present.", resourceKey10, name2];

                v79 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-100 description:postTransitionGraphs recoverySuggestion:@"Make sure a local resource writer is not removed if there are active readers."];
                goto LABEL_94;
              }
            }

            v72 = [tasks3 countByEnumeratingWithState:&v109 objects:v157 count:16];
            if (v72)
            {
              continue;
            }

            break;
          }
        }

        v56 = v99 + 1;
        v55 = v91;
        postTransitionGraphs = v108;
      }

      while (v99 + 1 != v93);
      v54 = [v108 countByEnumeratingWithState:&v121 objects:v160 count:16];
    }

    while (v54);
  }

  v79 = 0;
LABEL_95:

  v87 = *MEMORY[0x277D85DE8];

  return v79;
}

+ (id)generateDuplicateGraphNameError:(id)error otherGraph:(id)graph
{
  v5 = MEMORY[0x277CCACA8];
  graphCopy = graph;
  errorCopy = error;
  name = [errorCopy name];
  name2 = [graphCopy name];
  graphCopy = [v5 stringWithFormat:@"Graph names within an execution session must be unique, these have the same name: (%@ : 0x%p) and (%@ : 0x%p).", name, errorCopy, name2, graphCopy];

  v11 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-108 description:graphCopy recoverySuggestion:{@"Change a graph name to make these unique, check if you meant to also remove one of these graphs in this transition, or you're not accidentally submitting the same graph twice."}];

  return v11;
}

+ (id)validateNoDuplicateGraphNames:(id)names session:(id)session
{
  selfCopy = self;
  v70 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  sessionCopy = session;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v52 = sessionCopy;
  dashboard = [sessionCopy dashboard];
  getRunningGraphs = [dashboard getRunningGraphs];

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v9 = getRunningGraphs;
  v10 = [v9 countByEnumeratingWithState:&v63 objects:v69 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v64;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v64 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v63 + 1) + 8 * i);
        name = [v14 name];
        v16 = [dictionary objectForKeyedSubscript:name];

        if (!v16)
        {
          v17 = objc_opt_new();
          name2 = [v14 name];
          [dictionary setObject:v17 forKeyedSubscript:name2];
        }

        name3 = [v14 name];
        v20 = [dictionary objectForKey:name3];
        [v20 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v63 objects:v69 count:16];
    }

    while (v11);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  removedGraphs = [namesCopy removedGraphs];
  v22 = [removedGraphs countByEnumeratingWithState:&v59 objects:v68 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v60;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v60 != v24)
        {
          objc_enumerationMutation(removedGraphs);
        }

        v26 = *(*(&v59 + 1) + 8 * j);
        name4 = [v26 name];
        v28 = [dictionary objectForKey:name4];
        [v28 removeObject:v26];
      }

      v23 = [removedGraphs countByEnumeratingWithState:&v59 objects:v68 count:16];
    }

    while (v23);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = [namesCopy addedGraphs];
  v29 = [obj countByEnumeratingWithState:&v55 objects:v67 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v56;
    while (2)
    {
      for (k = 0; k != v30; ++k)
      {
        if (*v56 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(*(&v55 + 1) + 8 * k);
        name5 = [v33 name];
        v35 = [dictionary objectForKeyedSubscript:name5];

        if (!v35)
        {
          v36 = objc_opt_new();
          name6 = [v33 name];
          [dictionary setObject:v36 forKeyedSubscript:name6];
        }

        name7 = [v33 name];
        v39 = [dictionary objectForKey:name7];
        [v39 addObject:v33];

        name8 = [v33 name];
        v41 = [dictionary objectForKeyedSubscript:name8];
        v42 = [v41 count];

        if (v42 > 1)
        {
          name9 = [v33 name];
          v45 = [dictionary objectForKeyedSubscript:name9];
          allObjects = [v45 allObjects];

          v47 = [allObjects objectAtIndexedSubscript:0];
          v48 = [allObjects objectAtIndexedSubscript:1];
          v43 = [selfCopy generateDuplicateGraphNameError:v47 otherGraph:v48];

          goto LABEL_29;
        }
      }

      v30 = [obj countByEnumeratingWithState:&v55 objects:v67 count:16];
      if (v30)
      {
        continue;
      }

      break;
    }
  }

  v43 = 0;
LABEL_29:

  v49 = *MEMORY[0x277D85DE8];

  return v43;
}

+ (id)findImmediateDownstreamGraphs:(id)graphs withTransitionBlock:(id)block
{
  v117 = *MEMORY[0x277D85DE8];
  graphsCopy = graphs;
  blockCopy = block;
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v61 = graphsCopy;
  obj = [graphsCopy tasks];
  v8 = [obj countByEnumeratingWithState:&v104 objects:v116 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v105;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v105 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v104 + 1) + 8 * i);
        v100 = 0u;
        v101 = 0u;
        v102 = 0u;
        v103 = 0u;
        outputs = [v12 outputs];
        v14 = [outputs countByEnumeratingWithState:&v100 objects:v115 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v101;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v101 != v16)
              {
                objc_enumerationMutation(outputs);
              }

              resourceKey = [*(*(&v100 + 1) + 8 * j) resourceKey];
              [v7 addObject:resourceKey];
            }

            v15 = [outputs countByEnumeratingWithState:&v100 objects:v115 count:16];
          }

          while (v15);
        }
      }

      v9 = [obj countByEnumeratingWithState:&v104 objects:v116 count:16];
    }

    while (v9);
  }

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  obja = [v61 sourceTasks];
  v19 = [obja countByEnumeratingWithState:&v96 objects:v114 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v97;
    do
    {
      for (k = 0; k != v20; ++k)
      {
        if (*v97 != v21)
        {
          objc_enumerationMutation(obja);
        }

        v23 = *(*(&v96 + 1) + 8 * k);
        v92 = 0u;
        v93 = 0u;
        v94 = 0u;
        v95 = 0u;
        outputs2 = [v23 outputs];
        v25 = [outputs2 countByEnumeratingWithState:&v92 objects:v113 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v93;
          do
          {
            for (m = 0; m != v26; ++m)
            {
              if (*v93 != v27)
              {
                objc_enumerationMutation(outputs2);
              }

              resourceKey2 = [*(*(&v92 + 1) + 8 * m) resourceKey];
              [v7 addObject:resourceKey2];
            }

            v26 = [outputs2 countByEnumeratingWithState:&v92 objects:v113 count:16];
          }

          while (v26);
        }
      }

      v20 = [obja countByEnumeratingWithState:&v96 objects:v114 count:16];
    }

    while (v20);
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  writers = [v61 writers];
  v31 = [writers countByEnumeratingWithState:&v88 objects:v112 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v89;
    do
    {
      for (n = 0; n != v32; ++n)
      {
        if (*v89 != v33)
        {
          objc_enumerationMutation(writers);
        }

        output = [*(*(&v88 + 1) + 8 * n) output];
        resourceKey3 = [output resourceKey];
        [v7 addObject:resourceKey3];
      }

      v32 = [writers countByEnumeratingWithState:&v88 objects:v112 count:16];
    }

    while (v32);
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  postTransitionGraphs = [blockCopy postTransitionGraphs];
  v64 = [postTransitionGraphs countByEnumeratingWithState:&v84 objects:v111 count:16];
  if (v64)
  {
    v63 = *v85;
    do
    {
      v37 = 0;
      do
      {
        if (*v85 != v63)
        {
          objc_enumerationMutation(postTransitionGraphs);
        }

        v65 = v37;
        v38 = *(*(&v84 + 1) + 8 * v37);
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        tasks = [v38 tasks];
        objb = [tasks countByEnumeratingWithState:&v80 objects:v110 count:16];
        if (objb)
        {
          v67 = *v81;
          do
          {
            for (ii = 0; ii != objb; ii = ii + 1)
            {
              if (*v81 != v67)
              {
                objc_enumerationMutation(tasks);
              }

              v40 = *(*(&v80 + 1) + 8 * ii);
              v76 = 0u;
              v77 = 0u;
              v78 = 0u;
              v79 = 0u;
              inputs = [v40 inputs];
              v42 = [inputs countByEnumeratingWithState:&v76 objects:v109 count:16];
              if (v42)
              {
                v43 = v42;
                v44 = *v77;
                do
                {
                  for (jj = 0; jj != v43; ++jj)
                  {
                    if (*v77 != v44)
                    {
                      objc_enumerationMutation(inputs);
                    }

                    v46 = *(*(&v76 + 1) + 8 * jj);
                    resourceKey4 = [v46 resourceKey];
                    if ([v7 containsObject:resourceKey4])
                    {
                      type = [v46 type];

                      if (!type)
                      {
                        [v6 addObject:v38];
                      }
                    }

                    else
                    {
                    }
                  }

                  v43 = [inputs countByEnumeratingWithState:&v76 objects:v109 count:16];
                }

                while (v43);
              }
            }

            objb = [tasks countByEnumeratingWithState:&v80 objects:v110 count:16];
          }

          while (objb);
        }

        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        objc = [v38 readers];
        v49 = [objc countByEnumeratingWithState:&v72 objects:v108 count:16];
        if (v49)
        {
          v50 = v49;
          v51 = *v73;
          do
          {
            for (kk = 0; kk != v50; ++kk)
            {
              if (*v73 != v51)
              {
                objc_enumerationMutation(objc);
              }

              v53 = *(*(&v72 + 1) + 8 * kk);
              input = [v53 input];
              resourceKey5 = [input resourceKey];
              if ([v7 containsObject:resourceKey5])
              {
                input2 = [v53 input];
                type2 = [input2 type];

                if (!type2)
                {
                  [v6 addObject:v38];
                }
              }

              else
              {
              }
            }

            v50 = [objc countByEnumeratingWithState:&v72 objects:v108 count:16];
          }

          while (v50);
        }

        v37 = v65 + 1;
      }

      while (v65 + 1 != v64);
      v64 = [postTransitionGraphs countByEnumeratingWithState:&v84 objects:v111 count:16];
    }

    while (v64);
  }

  v58 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)listifyTokens:(id)tokens
{
  v18 = *MEMORY[0x277D85DE8];
  tokensCopy = tokens;
  v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = tokensCopy;
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

        [v4 appendFormat:@"%@, ", *(*(&v13 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v10 = [v4 substringToIndex:{objc_msgSend(v4, "length") - 2}];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (uint64_t)criticalityToString:(char *)a1 .cold.1(char **a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "An unknown criticality was requested: %lu", a2);
  v2 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d An unknown criticality was requested: %lu", v5, v6, v7, v8, v19, v20, v21);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v19, v20, v21);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v16 = OUTLINED_FUNCTION_0();
  return [(PSGraphValidation *)v16 resourceClassToString:v17];
}

+ (uint64_t)resourceClassToString:(char *)a1 .cold.1(char **a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "An unknown ps_resource_class was requested: %llu", a2);
  v2 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d An unknown ps_resource_class was requested: %llu", v5, v6, v7, v8, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, v20);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v16 = OUTLINED_FUNCTION_0();
  return [PSGraphValidation validateAllocatorsNonnull:v16 withContext:?];
}

+ (void)validateAllocatorsNonnull:(char *)a1 withContext:(void *)a2 .cold.1(char **a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "An unknown ps_resource_class was requested: %llu", [a2 resourceClass]);
  v3 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [a2 resourceClass];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d An unknown ps_resource_class was requested: %llu", v6, v7, v8, v9, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v10 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v11, v12, "%s() failed to flush buffers with error code: %d", v13, v14, v15, v16, v17, v18, v19);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  OUTLINED_FUNCTION_0();
  ps_handle_create_cold_1();
}

@end