@interface FBScene(PosterUIFoundation)
+ (id)pui_createPosterSceneWithRole:()PosterUIFoundation posterRole:processIdentity:extensionRecord:configureParameters:;
- (id)_pui_checkForSuitableSnapshotBundlesWithPromise:()PosterUIFoundation candidateBundlesFuture:descriptor:outputDestination:snapshottingAssertion:executeIfNecessary:;
- (id)_pui_ensureOutputDestination:()PosterUIFoundation error:;
- (id)_pui_executeInProcessSnapshotForDescriptor:()PosterUIFoundation outputDestination:snapshottingAssertion:;
- (id)_pui_executeOutOfProcessSnapshotWithPromise:()PosterUIFoundation descriptor:outputDestination:snapshottingAssertion:;
- (id)pui_executeSnapshotForDescriptor:()PosterUIFoundation outputDestination:candidateBundlesFutureProvider:;
- (id)pui_snapshotContextConfiguredForLevelSet:()PosterUIFoundation;
- (uint64_t)pui_isLegacyProvider;
- (uint64_t)pui_safelySendActions:()PosterUIFoundation outError:;
- (uint64_t)pui_sceneIsReadyToSnapshot:()PosterUIFoundation;
- (void)_prepareSettingsForSnapshotDescriptor:()PosterUIFoundation;
- (void)_pui_finishAndCleanupSnapshottingPromise:()PosterUIFoundation bundle:outputDestination:snapshottingAssertion:error:;
- (void)pui_fireSnapshotReadinessActionWithTimeout:()PosterUIFoundation completion:;
- (void)pui_invalidateWithCompletion:()PosterUIFoundation;
- (void)pui_postSignificantEvent:()PosterUIFoundation;
- (void)pui_postUserTapEventWithLocation:()PosterUIFoundation;
- (void)pui_setPosterComponent:()PosterUIFoundation;
@end

@implementation FBScene(PosterUIFoundation)

+ (id)pui_createPosterSceneWithRole:()PosterUIFoundation posterRole:processIdentity:extensionRecord:configureParameters:
{
  v11 = a3;
  v30 = a4;
  v12 = a5;
  v13 = a7;
  v14 = MEMORY[0x1E699F7F8];
  v15 = a6;
  pui_posterWorkspace = [v14 pui_posterWorkspace];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __124__FBScene_PosterUIFoundation__pui_createPosterSceneWithRole_posterRole_processIdentity_extensionRecord_configureParameters___block_invoke;
  v35[3] = &unk_1E7855AE0;
  v17 = v12;
  v36 = v17;
  v18 = [pui_posterWorkspace pui_createScene:v35];

  bundleIdentifier = [v15 bundleIdentifier];
  infoDictionary = [v15 infoDictionary];
  entitlements = [v15 entitlements];

  if ([infoDictionary pf_wantsLocation])
  {
    v22 = 2;
  }

  else
  {
    v22 = 0;
  }

  v23 = [entitlements objectForKey:@"com.apple.posterkit.enhanced-memory-limits" ofClass:objc_opt_class()];
  v24 = -[PUIPosterSceneComponent initWithScene:bundleIdentifier:processIdentity:options:]([PUIPosterSceneComponent alloc], "initWithScene:bundleIdentifier:processIdentity:options:", v18, bundleIdentifier, v17, v22 | [v23 BOOLValue]);
  [v18 pui_setPosterComponent:v24];
  if (objc_opt_respondsToSelector())
  {
    v25 = v30;
    [v18 pr_setupSceneExtensionsForSceneRole:v11 posterRole:v30];
  }

  else
  {
    [v18 addExtension:objc_opt_class()];
    v25 = v30;
  }

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __124__FBScene_PosterUIFoundation__pui_createPosterSceneWithRole_posterRole_processIdentity_extensionRecord_configureParameters___block_invoke_2;
  v31[3] = &unk_1E7855B30;
  v32 = v11;
  v33 = bundleIdentifier;
  v34 = v13;
  v26 = v13;
  v27 = bundleIdentifier;
  v28 = v11;
  [v18 configureParameters:v31];

  return v18;
}

- (id)pui_executeSnapshotForDescriptor:()PosterUIFoundation outputDestination:candidateBundlesFutureProvider:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (([self isValid] & 1) == 0)
  {
    v16 = MEMORY[0x1E69C5258];
    v17 = PFFunctionNameForAddress();
    v18 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    v19 = [v16 futureWithError:{v18, 0}];

    goto LABEL_12;
  }

  v11 = objc_opt_new();
  clientHandle = [self clientHandle];
  v13 = MEMORY[0x1E698E620];
  v37 = clientHandle;
  processHandle = [clientHandle processHandle];
  v15 = processHandle;
  v38 = v11;
  if (processHandle)
  {
    [processHandle auditToken];
  }

  else
  {
    memset(v40, 0, sizeof(v40));
  }

  v20 = [v13 tokenFromAuditToken:v40];

  v21 = MEMORY[0x1E69C7640];
  clientHandle2 = [self clientHandle];
  processHandle2 = [clientHandle2 processHandle];
  identity = [processHandle2 identity];
  v25 = [v21 targetWithProcessIdentity:identity];

  settings = [self settings];
  pui_provider = [settings pui_provider];

  v28 = [MEMORY[0x1E69C7548] pui_snapshottingAssertionForTarget:v25 auditToken:v20 posterProviderBundleIdentifier:pui_provider];
  v39 = 0;
  [v28 acquireWithError:&v39];
  if (v39)
  {
    v29 = [MEMORY[0x1E69C5258] futureWithError:?];
  }

  else
  {
    hostDescriptor = [v8 hostDescriptor];
    inProcessSnapshot = [hostDescriptor inProcessSnapshot];

    if ((inProcessSnapshot & 1) == 0)
    {
      clientSettings = [self clientSettings];
      pui_wantsSuitableSnapshotChecks = [clientSettings pui_wantsSuitableSnapshotChecks];

      if (v10 && pui_wantsSuitableSnapshotChecks && ([self pui_posterPath], v35 = objc_claimAutoreleasedReturnValue(), v10[2](v10, v35), v36 = objc_claimAutoreleasedReturnValue(), v35, v36))
      {
        v17 = v38;
        v19 = [self _pui_checkForSuitableSnapshotBundlesWithPromise:v38 candidateBundlesFuture:v36 descriptor:v8 outputDestination:v9 snapshottingAssertion:v28 executeIfNecessary:1];
      }

      else
      {
        v17 = v38;
        v19 = [self _pui_executeOutOfProcessSnapshotWithPromise:v38 descriptor:v8 outputDestination:v9 snapshottingAssertion:v28];
      }

      goto LABEL_11;
    }

    v29 = [self _pui_executeInProcessSnapshotForDescriptor:v8 outputDestination:v9 snapshottingAssertion:v28];
  }

  v19 = v29;
  v17 = v38;
LABEL_11:

LABEL_12:

  return v19;
}

- (id)_pui_checkForSuitableSnapshotBundlesWithPromise:()PosterUIFoundation candidateBundlesFuture:descriptor:outputDestination:snapshottingAssertion:executeIfNecessary:
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __172__FBScene_PosterUIFoundation___pui_checkForSuitableSnapshotBundlesWithPromise_candidateBundlesFuture_descriptor_outputDestination_snapshottingAssertion_executeIfNecessary___block_invoke;
  v52[3] = &unk_1E7855B80;
  v52[4] = self;
  v18 = v14;
  v53 = v18;
  v19 = v16;
  v54 = v19;
  v20 = v17;
  v55 = v20;
  v57 = a8;
  v21 = v15;
  v56 = v21;
  v22 = a4;
  v23 = MEMORY[0x1AC5769F0](v52);
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __172__FBScene_PosterUIFoundation___pui_checkForSuitableSnapshotBundlesWithPromise_candidateBundlesFuture_descriptor_outputDestination_snapshottingAssertion_executeIfNecessary___block_invoke_2;
  v45[3] = &unk_1E7855BD0;
  v51 = v23;
  v24 = v21;
  v46 = v24;
  selfCopy = self;
  v25 = v18;
  v48 = v25;
  v26 = v19;
  v49 = v26;
  v27 = v20;
  v50 = v27;
  v28 = MEMORY[0x1E69C5268];
  v29 = v23;
  mainThreadScheduler = [v28 mainThreadScheduler];
  v31 = [v22 flatMap:v45 continuationScheduler:mainThreadScheduler];

  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __172__FBScene_PosterUIFoundation___pui_checkForSuitableSnapshotBundlesWithPromise_candidateBundlesFuture_descriptor_outputDestination_snapshottingAssertion_executeIfNecessary___block_invoke_5;
  v40[3] = &unk_1E7855BF8;
  v40[4] = self;
  v41 = v25;
  v42 = v24;
  v43 = v26;
  v44 = v27;
  v32 = MEMORY[0x1E69C5268];
  v33 = v27;
  v34 = v26;
  v35 = v24;
  v36 = v25;
  mainThreadScheduler2 = [v32 mainThreadScheduler];
  v38 = [v31 recover:v40 onErrorScheduler:mainThreadScheduler2];

  return v38;
}

- (id)_pui_executeOutOfProcessSnapshotWithPromise:()PosterUIFoundation descriptor:outputDestination:snapshottingAssertion:
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__3;
  v41 = __Block_byref_object_dispose__3;
  v36 = 0;
  v14 = [self _pui_ensureOutputDestination:v12 error:&v36];
  v15 = v36;
  v42 = v14;
  if (v15)
  {
    future = [MEMORY[0x1E69C5258] futureWithError:v15];
  }

  else
  {
    v17 = MEMORY[0x1E698E5F8];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __126__FBScene_PosterUIFoundation___pui_executeOutOfProcessSnapshotWithPromise_descriptor_outputDestination_snapshottingAssertion___block_invoke;
    v32[3] = &unk_1E7855C20;
    v32[4] = self;
    v18 = v10;
    v33 = v18;
    v35 = &v37;
    v34 = v13;
    v19 = [v17 responderWithHandler:v32];
    [v19 setTimeout:{dispatch_time(0, 20000000000)}];
    v20 = [PUISceneSnapshotAction alloc];
    v21 = [(PUISceneSnapshotAction *)v20 initWithSnapshotDescriptor:v11 destination:v38[5] responder:v19];
    [self _prepareSettingsForSnapshotDescriptor:v11];
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __126__FBScene_PosterUIFoundation___pui_executeOutOfProcessSnapshotWithPromise_descriptor_outputDestination_snapshottingAssertion___block_invoke_50;
    v28 = &unk_1E7854BC0;
    selfCopy = self;
    v22 = v21;
    v30 = v22;
    v23 = v18;
    v31 = v23;
    dispatch_async(MEMORY[0x1E69E96A0], &v25);
    future = [v23 future];
  }

  _Block_object_dispose(&v37, 8);

  return future;
}

- (id)_pui_executeInProcessSnapshotForDescriptor:()PosterUIFoundation outputDestination:snapshottingAssertion:
{
  v61[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v41 = a5;
  v59[0] = 0;
  v59[1] = v59;
  v59[2] = 0x3032000000;
  v59[3] = __Block_byref_object_copy__3;
  v59[4] = __Block_byref_object_dispose__3;
  v58 = 0;
  v10 = [self _pui_ensureOutputDestination:v9 error:&v58];
  v11 = v58;
  v60 = v10;
  if (v11)
  {
    v12 = [MEMORY[0x1E69C5258] futureWithError:v11];
  }

  else
  {
    analysis = [v8 analysis];
    determineColorStatistics = [analysis determineColorStatistics];

    levelSets = [v8 levelSets];
    if (![levelSets count])
    {
      v15 = +[PUIPosterLevelSet compositeLevelSet];
      v61[0] = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:1];

      levelSets = v16;
    }

    if (determineColorStatistics)
    {
      v17 = +[PUIPosterLevelSet compositeLevelSet];
      v18 = [levelSets containsObject:v17];

      if ((v18 & 1) == 0)
      {
        v19 = +[PUIPosterLevelSet compositeLevelSet];
        v20 = [levelSets arrayByAddingObject:v19];

        levelSets = v20;
      }
    }

    hostDescriptor = [v8 hostDescriptor];
    if (_pui_executeInProcessSnapshotForDescriptor_outputDestination_snapshottingAssertion__onceToken != -1)
    {
      [FBScene(PosterUIFoundation) _pui_executeInProcessSnapshotForDescriptor:outputDestination:snapshottingAssertion:];
    }

    v37 = levelSets;
    hostWorkQueue = [hostDescriptor hostWorkQueue];
    v22 = hostWorkQueue;
    v23 = _pui_executeInProcessSnapshotForDescriptor_outputDestination_snapshottingAssertion__fallbackQueue;
    if (hostWorkQueue)
    {
      v23 = hostWorkQueue;
    }

    v38 = v23;

    v12 = objc_opt_new();
    v24 = [MEMORY[0x1E695DFF8] pf_temporaryDirectoryURLWithBasenamePrefix:@"PUI-SnapshotTemp"];
    [v24 pf_markPurgableInOneHourWithError:0];
    v25 = [v24 URLByAppendingPathComponent:@"Snapshot"];
    v36 = [v25 URLByAppendingPathExtension:@"pks"];

    v56[0] = 0;
    v56[1] = v56;
    v56[2] = 0x3032000000;
    v56[3] = __Block_byref_object_copy__3;
    v56[4] = __Block_byref_object_dispose__3;
    v57 = 0;
    [self _prepareSettingsForSnapshotDescriptor:v8];
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __114__FBScene_PosterUIFoundation___pui_executeInProcessSnapshotForDescriptor_outputDestination_snapshottingAssertion___block_invoke_2;
    v52[3] = &unk_1E7855C48;
    v53 = v41;
    v54 = v56;
    v55 = v59;
    offMainThreadScheduler = [MEMORY[0x1E69C5268] offMainThreadScheduler];
    [v12 addCompletionBlock:v52 scheduler:offMainThreadScheduler];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v28 = PFFileProtectionNoneAttributes();
    v51 = 0;
    v29 = [defaultManager createDirectoryAtURL:v24 withIntermediateDirectories:1 attributes:v28 error:&v51];
    v30 = v51;

    if (v29)
    {
      if ([hostDescriptor waitUntilReady])
      {
        v31 = 20.0;
      }

      else
      {
        v31 = -1.0;
      }

      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __114__FBScene_PosterUIFoundation___pui_executeInProcessSnapshotForDescriptor_outputDestination_snapshottingAssertion___block_invoke_4;
      v42[3] = &unk_1E7855D10;
      v32 = v12;
      v43 = v32;
      selfCopy = self;
      v48 = v56;
      v45 = v37;
      v46 = v38;
      v50 = determineColorStatistics;
      v47 = v36;
      v49 = v59;
      [self pui_fireSnapshotReadinessActionWithTimeout:v42 completion:v31];
      v33 = v32;
    }

    else
    {
      [v12 finishWithError:{v30, v36}];
      v34 = v12;
    }

    _Block_object_dispose(v56, 8);
  }

  _Block_object_dispose(v59, 8);

  return v12;
}

- (id)_pui_ensureOutputDestination:()PosterUIFoundation error:
{
  v32[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  clientHandle = [self clientHandle];
  v8 = MEMORY[0x1E698E620];
  processHandle = [clientHandle processHandle];
  v10 = processHandle;
  if (processHandle)
  {
    [processHandle auditToken];
  }

  else
  {
    memset(v30, 0, sizeof(v30));
  }

  v11 = [v8 tokenFromAuditToken:v30];

  v12 = v6;
  v13 = v12;
  if (v12)
  {
    goto LABEL_5;
  }

  if (![v11 isInvalid])
  {
    v29 = 0;
    v19 = [PUIPosterSnapshotDestination destinationWithTemporaryDirectoryWithAuditToken:v11 error:&v29];
    v20 = v29;
    v13 = v20;
    if (!v19)
    {
      if (a4)
      {
        if (v20)
        {
          v25 = v20;
          v17 = 0;
          *a4 = v13;
          goto LABEL_18;
        }

        v26 = PFFunctionNameForAddress();
        v27 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
        *a4 = v27;
      }

      v17 = 0;
      goto LABEL_18;
    }

    v13 = v19;
LABEL_5:
    v28 = 0;
    v14 = [v13 checkDestinationIsReachableAndReturnError:&v28];
    v15 = v28;
    v16 = v15;
    if (v14)
    {
      v17 = v13;
LABEL_17:

      goto LABEL_18;
    }

    if (a4)
    {
      if (v15)
      {
        v18 = v15;
        v17 = 0;
        *a4 = v16;
        goto LABEL_17;
      }

      v21 = MEMORY[0x1E696ABC0];
      v31 = *MEMORY[0x1E696A588];
      v32[0] = @"PUIPosterSnapshotDestination is not reachable and returned no error.";
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
      v23 = [v21 pui_errorWithCode:7 userInfo:v22];
      *a4 = v23;
    }

    v17 = 0;
    goto LABEL_17;
  }

  if (a4)
  {
    v13 = PFFunctionNameForAddress();
    PFGeneralErrorFromObjectWithLocalizedFailureReason();
    *a4 = v17 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v17 = 0;
LABEL_19:

  return v17;
}

- (void)_pui_finishAndCleanupSnapshottingPromise:()PosterUIFoundation bundle:outputDestination:snapshottingAssertion:error:
{
  v14 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a7;
  [a6 invalidate];
  if (v13)
  {
    [v12 invalidate];
    [v14 finishWithError:v13];
  }

  else
  {
    [v14 finishWithResult:v11];
  }
}

- (void)pui_fireSnapshotReadinessActionWithTimeout:()PosterUIFoundation completion:
{
  v7 = a3;
  if (!v7)
  {
    [FBScene(PosterUIFoundation) pui_fireSnapshotReadinessActionWithTimeout:a2 completion:self];
  }

  v8 = v7;
  if (a4 >= 0.0)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    objc_initWeak(&location, self);
    v10 = MEMORY[0x1E698E5F8];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __85__FBScene_PosterUIFoundation__pui_fireSnapshotReadinessActionWithTimeout_completion___block_invoke_2;
    v22[3] = &unk_1E7855D80;
    v24 = v8;
    objc_copyWeak(&v26, &location);
    v25 = &__block_literal_global_104;
    v11 = uUID;
    v23 = v11;
    v12 = [v10 responderWithHandler:v22];
    if (a4 > 0.0)
    {
      [v12 setTimeout:{dispatch_time(0, (a4 * 1000000000.0))}];
    }

    v13 = [PUISceneSnapshotReadyAction alloc];
    v14 = objc_opt_new();
    v15 = [(PUISceneSnapshotReadyAction *)v13 initWithInfo:v14 responder:v12];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __85__FBScene_PosterUIFoundation__pui_fireSnapshotReadinessActionWithTimeout_completion___block_invoke_4;
    v19[3] = &unk_1E7855DA8;
    v16 = v15;
    v20 = v16;
    v17 = v11;
    v21 = v17;
    __85__FBScene_PosterUIFoundation__pui_fireSnapshotReadinessActionWithTimeout_completion___block_invoke(v17, self, v19);
    v18 = [MEMORY[0x1E695DFD8] setWithObject:v16];
    [self sendActions:v18];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

- (id)pui_snapshotContextConfiguredForLevelSet:()PosterUIFoundation
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    BSDispatchQueueAssertMain();
    snapshotContext = [self snapshotContext];
    if (([v4 isCompositeLevelSet] & 1) == 0)
    {
      [snapshotContext setOpaque:0];
      v6 = objc_opt_new();
      layerManager = [self layerManager];
      layers = [layerManager layers];

      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v9 = layers;
      v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v18;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v18 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v17 + 1) + 8 * i);
            [v14 level];
            if (([v4 containsLevel:v15] & 1) == 0)
            {
              [v6 addObject:v14];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v11);
      }

      [snapshotContext setLayersToExclude:v6];
    }
  }

  else
  {
    snapshotContext = [self snapshotContext];
  }

  return snapshotContext;
}

- (uint64_t)pui_sceneIsReadyToSnapshot:()PosterUIFoundation
{
  contentState = [self contentState];
  layerManager = [self layerManager];
  layers = [layerManager layers];
  v8 = [layers count];

  v9 = @"no content";
  if (contentState == 2 && v8 >= 2)
  {
    clientSettings = [self clientSettings];
    pui_inExtendedRenderSession = [clientSettings pui_inExtendedRenderSession];

    if (!pui_inExtendedRenderSession)
    {
      return 1;
    }

    v9 = @"is in extended render session";
  }

  result = 0;
  if (a3)
  {
    *a3 = v9;
  }

  return result;
}

- (void)pui_invalidateWithCompletion:()PosterUIFoundation
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  BSDispatchQueueAssertMain();
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __60__FBScene_PosterUIFoundation__pui_invalidateWithCompletion___block_invoke;
  v27[3] = &unk_1E7855DD0;
  v27[4] = self;
  v5 = v4;
  v28 = v5;
  v6 = MEMORY[0x1AC5769F0](v27);
  if (![self isValid] || !objc_msgSend(self, "isActive"))
  {
    [self pui_setPosterPath:0];
    [self pui_setPosterComponent:0];
    [self invalidate];
    goto LABEL_8;
  }

  settings = [self settings];
  pui_isInvalidated = [settings pui_isInvalidated];

  if (pui_isInvalidated)
  {
LABEL_8:
    v6[2](v6);
    goto LABEL_9;
  }

  v9 = objc_opt_new();
  pui_shortDescription = [self pui_shortDescription];
  settings2 = [self settings];
  pui_provider = [settings2 pui_provider];

  v13 = PUILogCommon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v30 = pui_shortDescription;
    v31 = 2114;
    v32 = pui_provider;
    _os_log_impl(&dword_1A8C85000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] sending pui_isInvalidated to %{public}@", buf, 0x16u);
  }

  v14 = [PUISceneInvalidationAction alloc];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __60__FBScene_PosterUIFoundation__pui_invalidateWithCompletion___block_invoke_117;
  v21[3] = &unk_1E7855DF8;
  v22 = v9;
  v23 = pui_shortDescription;
  v24 = pui_provider;
  selfCopy = self;
  v26 = v6;
  v15 = pui_provider;
  v16 = pui_shortDescription;
  v17 = v9;
  v18 = [(PUISceneInvalidationAction *)v14 initWithInfo:0 timeout:MEMORY[0x1E69E96A0] forResponseOnQueue:v21 withHandler:5.0];
  settings3 = [self settings];
  v20 = [settings3 mutableCopy];

  [v20 setForeground:0];
  [v20 pui_setInvalidated:v18];
  [self updateSettings:v20 withTransitionContext:0];

LABEL_9:
}

- (uint64_t)pui_isLegacyProvider
{
  settings = [self settings];
  pui_provider = [settings pui_provider];
  v3 = [pui_provider isEqualToString:@"com.apple.PaperBoard.LegacyPoster"];

  return v3;
}

- (void)pui_setPosterComponent:()PosterUIFoundation
{
  v4 = a3;
  pui_posterComponent = [self pui_posterComponent];
  [pui_posterComponent invalidate];
  objc_setAssociatedObject(self, &__PUIPosterComponentToken, v4, 1);
}

- (void)pui_postSignificantEvent:()PosterUIFoundation
{
  clientSettings = [self clientSettings];
  v6 = PUIPosterSignificantEventOptionsContainsEvent([clientSettings pui_significantEventOptions], a3);

  if (v6)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __56__FBScene_PosterUIFoundation__pui_postSignificantEvent___block_invoke;
    v7[3] = &__block_descriptor_40_e63_v24__0__FBSMutableSceneSettings_8__FBSSceneTransitionContext_16l;
    v7[4] = a3;
    [self performUpdate:v7];
  }
}

- (void)pui_postUserTapEventWithLocation:()PosterUIFoundation
{
  clientSettings = [self clientSettings];
  pui_userTapEventsRequested = [clientSettings pui_userTapEventsRequested];

  if (pui_userTapEventsRequested)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __64__FBScene_PosterUIFoundation__pui_postUserTapEventWithLocation___block_invoke;
    v8[3] = &__block_descriptor_48_e63_v24__0__FBSMutableSceneSettings_8__FBSSceneTransitionContext_16l;
    *&v8[4] = a2;
    *&v8[5] = a3;
    [self performUpdate:v8];
  }
}

- (uint64_t)pui_safelySendActions:()PosterUIFoundation outError:
{
  v6 = a3;
  if ([self isActive])
  {
    if ([self isValid])
    {
      [self sendActions:v6];
      v7 = 1;
      goto LABEL_11;
    }

    v11 = PFFunctionNameForAddress();
    v9 = PFGeneralErrorFromObjectWithLocalizedFailureReason();

    v10 = PUILogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = PFFunctionNameForAddress();
    v9 = PFGeneralErrorFromObjectWithLocalizedFailureReason();

    v10 = PUILogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_7:
      [FBScene(PosterUIFoundation) pui_safelySendActions:v9 outError:v10];
    }
  }

  if (a4)
  {
    v12 = v9;
    *a4 = v9;
  }

  v7 = 0;
LABEL_11:

  return v7;
}

- (void)_prepareSettingsForSnapshotDescriptor:()PosterUIFoundation
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__FBScene_PosterUIFoundation___prepareSettingsForSnapshotDescriptor___block_invoke;
  v6[3] = &unk_1E7855E78;
  v7 = v4;
  v5 = v4;
  [self updateSettings:v6];
}

- (void)pui_fireSnapshotReadinessActionWithTimeout:()PosterUIFoundation completion:.cold.1(const char *a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"completion"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = a2;
    v15 = 2114;
    v16 = @"FBScene+PosterUIFoundation.m";
    v17 = 1024;
    v18 = 447;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_1A8C85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  v8 = v4;
  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)pui_safelySendActions:()PosterUIFoundation outError:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1A8C85000, a2, OS_LOG_TYPE_ERROR, "Cannot send actions to scene: %{public}@", &v2, 0xCu);
}

@end