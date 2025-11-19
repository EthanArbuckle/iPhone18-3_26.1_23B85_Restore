@interface FBScene
@end

@implementation FBScene

void __124__FBScene_PosterUIFoundation__pui_createPosterSceneWithRole_posterRole_processIdentity_extensionRecord_configureParameters___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AFB0];
  v7 = a2;
  v4 = [v3 UUID];
  v5 = [v4 UUIDString];
  [v7 setIdentifier:v5];

  v6 = [MEMORY[0x1E69DC698] specification];
  [v7 setSpecification:v6];

  [v7 setClientIdentity:*(a1 + 32)];
}

void __124__FBScene_PosterUIFoundation__pui_createPosterSceneWithRole_posterRole_processIdentity_extensionRecord_configureParameters___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __124__FBScene_PosterUIFoundation__pui_createPosterSceneWithRole_posterRole_processIdentity_extensionRecord_configureParameters___block_invoke_3;
  v5[3] = &unk_1E7855B08;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  [v3 updateSettingsWithBlock:v5];
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

void __124__FBScene_PosterUIFoundation__pui_createPosterSceneWithRole_posterRole_processIdentity_extensionRecord_configureParameters___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 pui_setRole:v3];
  [v4 pui_setProvider:*(a1 + 40)];
}

void __172__FBScene_PosterUIFoundation___pui_checkForSuitableSnapshotBundlesWithPromise_candidateBundlesFuture_descriptor_outputDestination_snapshottingAssertion_executeIfNecessary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PUILogSnapshotting();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v8)
    {
      *buf = 138543362;
      v24 = v5;
      _os_log_impl(&dword_1A8C85000, v7, OS_LOG_TYPE_DEFAULT, "Poster indicated that this snapshot bundle is sufficient for inflight snapshot descriptor, bailing: %{public}@", buf, 0xCu);
    }

    [*(a1 + 32) _pui_finishAndCleanupSnapshottingPromise:*(a1 + 40) bundle:v5 outputDestination:*(a1 + 48) snapshottingAssertion:*(a1 + 56) error:0];
  }

  else
  {
    if (v8)
    {
      v9 = [v6 pf_description];
      v10 = v9;
      v11 = @"NO";
      if (*(a1 + 72))
      {
        v11 = @"YES";
      }

      *buf = 138543618;
      v24 = v9;
      v25 = 2114;
      v26 = v11;
      _os_log_impl(&dword_1A8C85000, v7, OS_LOG_TYPE_DEFAULT, "Poster did not indicate that any existing snapshot was suitable for inflight snapshot descriptor: %{public}@, continue with execution? %{public}@", buf, 0x16u);
    }

    if (*(a1 + 72) == 1)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __172__FBScene_PosterUIFoundation___pui_checkForSuitableSnapshotBundlesWithPromise_candidateBundlesFuture_descriptor_outputDestination_snapshottingAssertion_executeIfNecessary___block_invoke_26;
      block[3] = &unk_1E7855B58;
      v12 = *(a1 + 40);
      block[4] = *(a1 + 32);
      v17 = v12;
      v18 = *(a1 + 64);
      v19 = *(a1 + 48);
      v20 = *(a1 + 56);
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    else
    {
      if (v6)
      {
        v13 = v6;
      }

      else
      {
        v14 = MEMORY[0x1E696ABC0];
        v21 = *MEMORY[0x1E696A588];
        v22 = @"no suitable snapshot found";
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        v13 = [v14 pui_errorWithCode:7 userInfo:v15];
      }

      [*(a1 + 32) _pui_finishAndCleanupSnapshottingPromise:*(a1 + 40) bundle:0 outputDestination:*(a1 + 48) snapshottingAssertion:*(a1 + 56) error:v13];
    }
  }
}

id __172__FBScene_PosterUIFoundation___pui_checkForSuitableSnapshotBundlesWithPromise_candidateBundlesFuture_descriptor_outputDestination_snapshottingAssertion_executeIfNecessary___block_invoke_2(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        v11 = [v10 infoDictionary];
        v12 = [v10 bundleURL];
        v13 = v12;
        if (v11)
        {
          v14 = v12 == 0;
        }

        else
        {
          v14 = 1;
        }

        if (!v14)
        {
          [v4 setObject:v11 forKey:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    v15 = MEMORY[0x1E698E5F8];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __172__FBScene_PosterUIFoundation___pui_checkForSuitableSnapshotBundlesWithPromise_candidateBundlesFuture_descriptor_outputDestination_snapshottingAssertion_executeIfNecessary___block_invoke_3;
    v29[3] = &unk_1E7855BA8;
    v30 = *(a1 + 72);
    v16 = [v15 responderWithHandler:v29];
    [v16 setTimeout:{dispatch_time(0, 5000000000)}];
    v17 = [[PUISceneSnapshotCandidateSnapshotContextsAction alloc] initWithCandidateSnapshotContexts:v4 inflightSnapshotDescriptor:*(a1 + 32) responder:v16];
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __172__FBScene_PosterUIFoundation___pui_checkForSuitableSnapshotBundlesWithPromise_candidateBundlesFuture_descriptor_outputDestination_snapshottingAssertion_executeIfNecessary___block_invoke_4;
    v25 = &unk_1E7854BC0;
    v18 = *(a1 + 48);
    v26 = *(a1 + 40);
    v27 = v17;
    v28 = v18;
    v19 = v17;
    dispatch_async(MEMORY[0x1E69E96A0], &v22);
    v20 = [*(a1 + 48) future];
  }

  else
  {
    v20 = [*(a1 + 40) _pui_executeOutOfProcessSnapshotWithPromise:*(a1 + 48) descriptor:*(a1 + 32) outputDestination:*(a1 + 56) snapshottingAssertion:*(a1 + 64)];
  }

  return v20;
}

void __172__FBScene_PosterUIFoundation___pui_checkForSuitableSnapshotBundlesWithPromise_candidateBundlesFuture_descriptor_outputDestination_snapshottingAssertion_executeIfNecessary___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];
  v5 = [v3 info];

  v6 = [v5 objectForSetting:0];

  if (v6)
  {
    v8 = 0;
    v7 = [PUIPosterSnapshotBundle snapshotBundleAtURL:v6 error:&v8];
  }

  else
  {
    v7 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

void __172__FBScene_PosterUIFoundation___pui_checkForSuitableSnapshotBundlesWithPromise_candidateBundlesFuture_descriptor_outputDestination_snapshottingAssertion_executeIfNecessary___block_invoke_4(void *a1)
{
  v2 = a1[4];
  v3 = [MEMORY[0x1E695DFD8] setWithObject:a1[5]];
  v7 = 0;
  v4 = [v2 pui_safelySendActions:v3 outError:&v7];
  v5 = v7;

  if ((v4 & 1) == 0)
  {
    v6 = a1[6];
    if (v5)
    {
      [v6 finishWithError:v5];
    }

    else
    {
      [v6 cancelWithReason:@"scene is no longer valid"];
    }
  }
}

void __126__FBScene_PosterUIFoundation___pui_executeOutOfProcessSnapshotWithPromise_descriptor_outputDestination_snapshottingAssertion___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = PUILogSnapshotting();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v3 error];
      *buf = 138412290;
      v27 = v6;
      _os_log_impl(&dword_1A8C85000, v5, OS_LOG_TYPE_DEFAULT, "Received response error for out of process snapshot: %@", buf, 0xCu);
    }

    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = a1 + 48;
    v9 = *(a1 + 48);
    v11 = *(*(*(v10 + 8) + 8) + 40);
    v12 = [v3 error];
    [v7 _pui_finishAndCleanupSnapshottingPromise:v8 bundle:0 outputDestination:v11 snapshottingAssertion:v9 error:v12];
  }

  else
  {
    v13 = [v3 info];
    v12 = [v13 objectForSetting:0];

    if (v12)
    {
      v23 = 0;
      v14 = [PUIPosterSnapshotBundle snapshotBundleAtURL:v12 error:&v23];
      if (v23)
      {
        v15 = 0;
      }

      else
      {
        v15 = v14;
      }

      [*(a1 + 32) _pui_finishAndCleanupSnapshottingPromise:*(a1 + 40) bundle:v15 outputDestination:*(*(*(a1 + 56) + 8) + 40) snapshottingAssertion:*(a1 + 48) error:?];
    }

    else
    {
      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      v19 = a1 + 48;
      v18 = *(a1 + 48);
      v20 = *(*(*(v19 + 8) + 8) + 40);
      v21 = MEMORY[0x1E696ABC0];
      v24 = *MEMORY[0x1E696A588];
      v25 = @"snapshotBundleURL was nil before sending back.";
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v22 = [v21 pui_errorWithCode:7 userInfo:v14];
      [v16 _pui_finishAndCleanupSnapshottingPromise:v17 bundle:0 outputDestination:v20 snapshottingAssertion:v18 error:v22];
    }
  }
}

void __126__FBScene_PosterUIFoundation___pui_executeOutOfProcessSnapshotWithPromise_descriptor_outputDestination_snapshottingAssertion___block_invoke_50(void *a1)
{
  v2 = a1[4];
  v3 = [MEMORY[0x1E695DFD8] setWithObject:a1[5]];
  v7 = 0;
  v4 = [v2 pui_safelySendActions:v3 outError:&v7];
  v5 = v7;

  if ((v4 & 1) == 0)
  {
    v6 = a1[6];
    if (v5)
    {
      [v6 finishWithError:v5];
    }

    else
    {
      [v6 cancelWithReason:@"scene is no longer valid"];
    }
  }
}

uint64_t __114__FBScene_PosterUIFoundation___pui_executeInProcessSnapshotForDescriptor_outputDestination_snapshottingAssertion___block_invoke()
{
  Serial = BSDispatchQueueCreateSerial();
  v1 = _pui_executeInProcessSnapshotForDescriptor_outputDestination_snapshottingAssertion__fallbackQueue;
  _pui_executeInProcessSnapshotForDescriptor_outputDestination_snapshottingAssertion__fallbackQueue = Serial;

  return MEMORY[0x1EEE66BB8](Serial, v1);
}

void __114__FBScene_PosterUIFoundation___pui_executeInProcessSnapshotForDescriptor_outputDestination_snapshottingAssertion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) invalidate];
  BSDispatchMain();
  if (a3)
  {
    [*(*(*(a1 + 48) + 8) + 40) invalidate];
  }

  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void __114__FBScene_PosterUIFoundation___pui_executeInProcessSnapshotForDescriptor_outputDestination_snapshottingAssertion___block_invoke_4(id *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a1[4];

    [v3 finishWithError:a2];
  }

  else
  {
    v4 = a1[6];
    v5 = a1[7];
    v6 = a1[4];
    *&v7 = v5;
    *(&v7 + 1) = v6;
    v8 = v7;
    v9 = a1[8];
    BSDispatchMain();
  }
}

void __114__FBScene_PosterUIFoundation___pui_executeInProcessSnapshotForDescriptor_outputDestination_snapshottingAssertion___block_invoke_5(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) settings];
  v30 = [*(a1 + 32) clientSettings];
  v29 = objc_opt_new();
  v28 = objc_opt_new();
  v31 = v2;
  v3 = [[PUIPosterSnapshotBundleBuilder alloc] initWithSceneSettings:v2 snapshotDescriptor:0];
  v4 = *(*(a1 + 72) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = *(a1 + 40);
  v6 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (v6)
  {
    v7 = v6;
    v26 = *v51;
    do
    {
      v8 = 0;
      do
      {
        if (*v51 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v50 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        if ([*(a1 + 40) count] == 1)
        {
          v11 = +[PUIPosterLevelSet floatingLevelSet];
          v12 = [v9 isEqualToLevelSet:v11];
        }

        else
        {
          v12 = 0;
        }

        v13 = [*(a1 + 32) pui_snapshotContextConfiguredForLevelSet:v9];
        v14 = [*(a1 + 32) createSnapshotWithContext:v13];
        v15 = *(a1 + 48);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __114__FBScene_PosterUIFoundation___pui_executeInProcessSnapshotForDescriptor_outputDestination_snapshottingAssertion___block_invoke_6;
        block[3] = &unk_1E7855C70;
        v40 = v14;
        v41 = v31;
        v16 = v30;
        v48 = *(a1 + 72);
        v42 = v16;
        v43 = v9;
        v17 = v28;
        v49 = v12;
        v18 = *(a1 + 32);
        v44 = v17;
        v45 = v18;
        v46 = v13;
        v47 = v29;
        v19 = v13;
        v20 = v14;
        dispatch_async(v15, block);

        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v7 != v8);
      v7 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
    }

    while (v7);
  }

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __114__FBScene_PosterUIFoundation___pui_executeInProcessSnapshotForDescriptor_outputDestination_snapshottingAssertion___block_invoke_7;
  v32[3] = &unk_1E7855CC0;
  v33 = v29;
  v34 = v28;
  v21 = *(a1 + 48);
  v35 = *(a1 + 56);
  v38 = *(a1 + 88);
  v27 = *(a1 + 64);
  v22 = v27;
  v36 = v27;
  v37 = *(a1 + 80);
  v23 = v28;
  v24 = v29;
  dispatch_async(v21, v32);
}

void __114__FBScene_PosterUIFoundation___pui_executeInProcessSnapshotForDescriptor_outputDestination_snapshottingAssertion___block_invoke_6(uint64_t a1)
{
  if ([*(a1 + 32) capture])
  {
    v2 = [*(a1 + 32) IOSurface];
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 40), "interfaceOrientation")}];
    [v2 setAttachment:v3 forKey:kPaperboardIOSurfaceInterfaceOrientationPropertiesKey];

    v4 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 40), "pui_deviceOrientation")}];
    [v2 setAttachment:v4 forKey:kPaperboardIOSurfaceDeviceOrientationPropertiesKey];

    v5 = MEMORY[0x1E696AD98];
    v6 = [*(a1 + 32) context];
    [v6 scale];
    v7 = [v5 numberWithDouble:?];
    [v2 setAttachment:v7 forKey:kPaperboardIOSurfaceDeviceScalePropertiesKey];

    [*(a1 + 48) pui_preferredSalientContentRectangle];
    if (PUICGRectIsValidSalientContentRectangle(v8, v9, v10, v11))
    {
      v12 = *(*(*(a1 + 96) + 8) + 40);
      [*(a1 + 48) pui_preferredSalientContentRectangle];
      v13 = NSStringFromCGRect(v27);
      [v12 setObject:v13 forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeySaliencyRect"];
    }
  }

  v14 = *(*(*(a1 + 96) + 8) + 40);
  v15 = *(a1 + 32);
  v16 = *(a1 + 56);
  v26 = 0;
  v17 = [v14 captureSnapshot:v15 forLevelSet:v16 error:&v26];
  v18 = v26;
  if (v17)
  {
    [*(a1 + 64) addObject:*(a1 + 56)];
  }

  else if (*(a1 + 104) == 1)
  {
    v19 = [*(a1 + 72) layerManager];
    v20 = [v19 layers];
    v21 = [v20 count];
    v22 = [*(a1 + 80) layersToExclude];
    v23 = [v22 count];

    if (v21 == v23)
    {
      v24 = *(*(*(a1 + 96) + 8) + 40);
      v25 = [MEMORY[0x1E69DCAB8] pui_fallbackSnapshotImage];
      [v24 setImage:v25 forLevelSet:*(a1 + 56)];

      [*(a1 + 64) addObject:*(a1 + 56)];
      goto LABEL_12;
    }
  }

  if (!v18)
  {
    return;
  }

  [*(a1 + 88) setObject:v18 forKeyedSubscript:*(a1 + 56)];
LABEL_12:
}

void __114__FBScene_PosterUIFoundation___pui_executeInProcessSnapshotForDescriptor_outputDestination_snapshottingAssertion___block_invoke_7(uint64_t a1)
{
  v37[1] = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) count] && (v2 = MEMORY[0x1E695DF70], objc_msgSend(*(a1 + 32), "allValues"), v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "arrayWithArray:", v3), v4 = objc_claimAutoreleasedReturnValue(), v3, v5 = MEMORY[0x1E696ABC0], v36 = *MEMORY[0x1E696A750], v6 = objc_msgSend(v4, "copy"), v37[0] = v6, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v37, &v36, 1), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "pui_errorWithCode:userInfo:", 7, v7), v8 = objc_claimAutoreleasedReturnValue(), v7, v6, v4, v8) || !objc_msgSend(*(a1 + 40), "count") && (v20 = MEMORY[0x1E696ABC0], v34 = *MEMORY[0x1E696A588], v35 = @"No image data was returned by any capture method.", objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v35, &v34, 1), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "pui_errorWithCode:userInfo:", 7, v21), v8 = objc_claimAutoreleasedReturnValue(), v21, v8))
  {
    [*(a1 + 48) finishWithError:v8];
  }

  else
  {
    if (*(a1 + 80) == 1)
    {
      v9 = *(*(*(a1 + 64) + 8) + 40);
      v10 = +[PUIPosterLevelSet compositeLevelSet];
      v11 = [v9 capturedSnapshotForLevelSet:v10];

      if (v11)
      {
        v12 = [MEMORY[0x1E69C5410] colorBoxesForImage:v11];
        v13 = [[PUIColorStatistics alloc] initWithColorBoxes:v12];
        [*(*(*(a1 + 64) + 8) + 40) captureColorStatistics:v13 error:0];
      }
    }

    v14 = *(a1 + 56);
    v15 = *(*(*(a1 + 64) + 8) + 40);
    v16 = +[PUIImageOnDiskFormat defaultFormat];
    v33 = 0;
    v17 = [v15 buildWithOutputURL:v14 diskFormat:v16 error:&v33];
    v8 = v33;

    if (v8 || !v17)
    {
      v19 = *(a1 + 48);
      if (v8)
      {
        [*(a1 + 48) finishWithError:v8];
      }

      else
      {
        v22 = PFFunctionNameForAddress();
        v23 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
        [v19 finishWithError:{v23, 0}];
      }
    }

    else
    {
      v27 = 0;
      v28 = &v27;
      v29 = 0x3032000000;
      v30 = __Block_byref_object_copy__3;
      v31 = __Block_byref_object_dispose__3;
      v32 = [[PUIPosterSnapshotDestinationFinalizer alloc] initWithDestination:*(*(*(a1 + 72) + 8) + 40)];
      v18 = [v28[5] finalizeSnapshotBundle:v17];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __114__FBScene_PosterUIFoundation___pui_executeInProcessSnapshotForDescriptor_outputDestination_snapshottingAssertion___block_invoke_8;
      v24[3] = &unk_1E7855C98;
      v25 = *(a1 + 48);
      v26 = &v27;
      [v18 addCompletionBlock:v24];

      _Block_object_dispose(&v27, 8);
    }
  }
}

void __114__FBScene_PosterUIFoundation___pui_executeInProcessSnapshotForDescriptor_outputDestination_snapshottingAssertion___block_invoke_8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) finishWithResult:a2 error:a3];
  [*(*(*(a1 + 40) + 8) + 40) invalidate];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

void __85__FBScene_PosterUIFoundation__pui_fireSnapshotReadinessActionWithTimeout_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v4 = a3;
  if (v7 && v4)
  {
    v5 = v7;
    objc_sync_enter(v5);
    v6 = objc_getAssociatedObject(v5, "READINESS_ACTIONS");
    if (!v6)
    {
      v6 = objc_opt_new();
      objc_setAssociatedObject(v5, "READINESS_ACTIONS", v6, 1);
    }

    v4[2](v4, v6);

    objc_sync_exit(v5);
  }
}

void __85__FBScene_PosterUIFoundation__pui_fireSnapshotReadinessActionWithTimeout_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = [a2 error];
  (*(v3 + 16))(v3, v4);

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v6 = *(a1 + 48);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __85__FBScene_PosterUIFoundation__pui_fireSnapshotReadinessActionWithTimeout_completion___block_invoke_3;
    v7[3] = &unk_1E7855D58;
    v8 = *(a1 + 32);
    (*(v6 + 16))(v6, WeakRetained, v7);
  }
}

void __60__FBScene_PosterUIFoundation__pui_invalidateWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  BSDispatchMain();
}

uint64_t __60__FBScene_PosterUIFoundation__pui_invalidateWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) pui_posterPath];

  if (v2)
  {
    [*(a1 + 32) pui_setPosterPath:0];
  }

  v3 = [*(a1 + 32) pui_posterComponent];

  if (v3)
  {
    [*(a1 + 32) pui_setPosterComponent:0];
  }

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __60__FBScene_PosterUIFoundation__pui_invalidateWithCompletion___block_invoke_117(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) signal])
  {
    v4 = [v3 error];

    v5 = PUILogCommon();
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __60__FBScene_PosterUIFoundation__pui_invalidateWithCompletion___block_invoke_117_cold_1(a1, v3, v6);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      v9 = 138543618;
      v10 = v7;
      v11 = 2114;
      v12 = v8;
      _os_log_impl(&dword_1A8C85000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] ack from pui_isInvalidated to %{public}@", &v9, 0x16u);
    }

    [*(a1 + 56) pui_setPosterPath:0];
    [*(a1 + 56) pui_setPosterComponent:0];
    [*(a1 + 56) invalidate];
    (*(*(a1 + 64) + 16))();
  }
}

void __56__FBScene_PosterUIFoundation__pui_postSignificantEvent___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  v5 = a2;
  [v5 pui_setSignificantEventsCounter:{objc_msgSend(v5, "pui_significantEventsCounter") + 1}];

  [v6 pui_setSignificantEvent:*(a1 + 32)];
}

void __64__FBScene_PosterUIFoundation__pui_postUserTapEventWithLocation___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 pui_setUserTapEventWithLocation:{v2, v3}];
  [v4 pui_setUserTapEventsCounter:{objc_msgSend(v4, "pui_userTapEventsCounter") + 1}];
}

void __69__FBScene_PosterUIFoundation___prepareSettingsForSnapshotDescriptor___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 output];
  v4 = [v5 snapshotDefinitionIdentifier];
  [v3 pui_setPreviewIdentifier:v4];
}

void __60__FBScene_PosterUIFoundation__pui_invalidateWithCompletion___block_invoke_117_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = [a2 error];
  v7 = 138543874;
  v8 = v4;
  v9 = 2114;
  v10 = v5;
  v11 = 2114;
  v12 = v6;
  _os_log_error_impl(&dword_1A8C85000, a3, OS_LOG_TYPE_ERROR, "[%{public}@] ack from pui_isInvalidated to %{public}@: %{public}@", &v7, 0x20u);
}

@end