@interface _PUIPosterSnapshotCapture
- (BOOL)_captureLevelSet:(id)set error:(id *)error;
- (BOOL)_setupCaptureForLevelSet:(id)set error:(id *)error;
- (_PUIPosterSnapshotCapture)init;
- (_PUIPosterSnapshotCapture)initWithScene:(id)scene captureController:(id)controller snapshotDescriptor:(id)descriptor outputURL:(id)l;
- (void)_attemptSnapshot:(id)snapshot;
- (void)_cleanup;
- (void)_finishCaptureWithError:(id)error;
- (void)_fire;
- (void)dealloc;
- (void)invalidate;
- (void)start;
@end

@implementation _PUIPosterSnapshotCapture

- (_PUIPosterSnapshotCapture)init
{
  [(_PUIPosterSnapshotCapture *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (_PUIPosterSnapshotCapture)initWithScene:(id)scene captureController:(id)controller snapshotDescriptor:(id)descriptor outputURL:(id)l
{
  sceneCopy = scene;
  controllerCopy = controller;
  descriptorCopy = descriptor;
  lCopy = l;
  if (!sceneCopy)
  {
    [_PUIPosterSnapshotCapture initWithScene:a2 captureController:? snapshotDescriptor:? outputURL:?];
  }

  if (!descriptorCopy)
  {
    [_PUIPosterSnapshotCapture initWithScene:a2 captureController:? snapshotDescriptor:? outputURL:?];
  }

  v16 = lCopy;
  if (!lCopy)
  {
    [_PUIPosterSnapshotCapture initWithScene:a2 captureController:? snapshotDescriptor:? outputURL:?];
  }

  v24.receiver = self;
  v24.super_class = _PUIPosterSnapshotCapture;
  v17 = [(_PUIPosterSnapshotCapture *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_scene, scene);
    objc_storeStrong(&v18->_captureController, controller);
    objc_storeStrong(&v18->_snapshotDescriptor, descriptor);
    objc_storeStrong(&v18->_outputURL, l);
    v19 = objc_opt_new();
    cleanedUpSignal = v18->_cleanedUpSignal;
    v18->_cleanedUpSignal = v19;

    v21 = objc_opt_new();
    future = v18->_future;
    v18->_future = v21;
  }

  return v18;
}

- (void)dealloc
{
  [(_PUIPosterSnapshotCapture *)self _cleanup];
  v3.receiver = self;
  v3.super_class = _PUIPosterSnapshotCapture;
  [(_PUIPosterSnapshotCapture *)&v3 dealloc];
}

- (void)start
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_fire
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_attemptSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  BSDispatchQueueAssertMain();
  v5 = PUILogSnapshotting();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_PUIPosterSnapshotCapture _attemptSnapshot:];
  }

  objc_initWeak(&location, self);
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __46___PUIPosterSnapshotCapture__attemptSnapshot___block_invoke;
  v41[3] = &unk_1E7854C68;
  objc_copyWeak(&v43, &location);
  v6 = snapshotCopy;
  v42 = v6;
  v7 = MEMORY[0x1AC5769F0](v41);
  v8 = v7;
  if (self->_sceneIsReadyToSnapshot)
  {
    (*(v7 + 16))(v7);
  }

  else
  {
    hostDescriptor = [(PUIPosterSnapshotDescriptor *)self->_snapshotDescriptor hostDescriptor];
    waitUntilReady = [hostDescriptor waitUntilReady];

    if (waitUntilReady)
    {
      scene = [(_PUIPosterSnapshotCapture *)self scene];
      v40 = 0;
      v12 = [scene pui_sceneIsReadyToSnapshot:&v40];
      v13 = v40;

      if (v12)
      {
        v14 = PUILogSnapshotting();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [_PUIPosterSnapshotCapture _attemptSnapshot:];
        }

        self->_sceneIsReadyToSnapshot = 1;
        v8[2](v8);
      }

      else
      {
        v34 = 0;
        v35 = &v34;
        v36 = 0x3032000000;
        v37 = __Block_byref_object_copy__0;
        v38 = __Block_byref_object_dispose__0;
        v16 = [PUIPosterSnapshotReadinessSceneObserver alloc];
        scene2 = [(_PUIPosterSnapshotCapture *)self scene];
        v39 = [(PUIPosterSnapshotReadinessSceneObserver *)v16 initWithFBSScene:scene2];

        v18 = objc_opt_new();
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __46___PUIPosterSnapshotCapture__attemptSnapshot___block_invoke_48;
        v30[3] = &unk_1E7854C90;
        v32 = &v34;
        objc_copyWeak(&v33, &location);
        v19 = v18;
        v31 = v19;
        v20 = MEMORY[0x1AC5769F0](v30);
        v21 = PUILogSnapshotting();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [_PUIPosterSnapshotCapture _attemptSnapshot:];
        }

        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __46___PUIPosterSnapshotCapture__attemptSnapshot___block_invoke_52;
        v25[3] = &unk_1E7854CB8;
        objc_copyWeak(&v29, &location);
        v28 = &v34;
        v22 = v19;
        v26 = v22;
        v27 = v8;
        v23 = MEMORY[0x1AC5769F0](v25);
        [v35[5] addSnapshotReadinessObserver:v23];
        v24 = dispatch_time(0, 5000000000);
        dispatch_after(v24, MEMORY[0x1E69E96A0], v20);

        objc_destroyWeak(&v29);
        objc_destroyWeak(&v33);

        _Block_object_dispose(&v34, 8);
      }
    }

    else
    {
      v15 = PUILogSnapshotting();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [_PUIPosterSnapshotCapture _attemptSnapshot:];
      }

      self->_sceneIsReadyToSnapshot = 1;
      v8[2](v8);
      v13 = 0;
    }
  }

  objc_destroyWeak(&v43);
  objc_destroyWeak(&location);
}

- (BOOL)_setupCaptureForLevelSet:(id)set error:(id *)error
{
  setCopy = set;
  BSDispatchQueueAssertMain();
  v6 = [(BSMutableOrderedDictionary *)self->_environmentOverridesForLevelSet objectForKey:setCopy];

  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_lastEmittedEnvironmentOverrides, v6);
    captureController = [(_PUIPosterSnapshotCapture *)self captureController];
    delegate = [captureController delegate];
    captureController2 = [(_PUIPosterSnapshotCapture *)self captureController];
    [delegate captureController:captureController2 needsEnvironmentUpdate:v6];
  }

  return 1;
}

- (BOOL)_captureLevelSet:(id)set error:(id *)error
{
  v109 = *MEMORY[0x1E69E9840];
  setCopy = set;
  BSDispatchQueueAssertMain();
  scene = [(_PUIPosterSnapshotCapture *)self scene];
  settings = [scene settings];
  v8 = PUILogSnapshotting();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.a) = 134218496;
    *(&buf.a + 4) = self;
    WORD2(buf.b) = 2048;
    *(&buf.b + 6) = [settings pui_deviceOrientation];
    HIWORD(buf.c) = 2048;
    *&buf.d = [settings pui_userInterfaceStyle];
    _os_log_impl(&dword_1A8C85000, v8, OS_LOG_TYPE_DEFAULT, "(capture %p) capturing snapshot for interface orientation %lu user interface style %lu", &buf, 0x20u);
  }

  sceneDescriptor = [(PUIPosterSnapshotDescriptor *)self->_snapshotDescriptor sceneDescriptor];
  output = [(PUIPosterSnapshotDescriptor *)self->_snapshotDescriptor output];
  [output persistenceScale];
  v12 = v11;

  displayConfiguration = [settings displayConfiguration];
  v77 = self->_builder;
  [displayConfiguration pointScale];
  v15 = v14;
  interfaceOrientation = [settings interfaceOrientation];
  pui_deviceOrientation = [settings pui_deviceOrientation];
  [displayConfiguration pointScale];
  v17 = v16;
  v75 = displayConfiguration;
  [displayConfiguration bounds];
  v20 = v18;
  v21 = v19;
  v76 = sceneDescriptor;
  if (sceneDescriptor)
  {
    [sceneDescriptor canvasBounds];
  }

  memset(&buf, 0, sizeof(buf));
  CGAffineTransformMakeScale(&buf, v17 * (v18 / v20), v17 * (v19 / v21));
  v22 = self->_snapshotLayerForLevel;
  v100[0] = MEMORY[0x1E69E9820];
  v100[1] = 3221225472;
  v100[2] = __52___PUIPosterSnapshotCapture__captureLevelSet_error___block_invoke;
  v100[3] = &unk_1E7854CE0;
  v23 = v22;
  v101 = v23;
  v24 = scene;
  v102 = v24;
  v103 = buf;
  [setCopy enumerateLevels:v100];
  v25 = objc_opt_new();
  v78 = v24;
  if ([setCopy isCompositeLevelSet])
  {
    v98 = 0uLL;
    v99 = 0uLL;
    v96 = 0uLL;
    v97 = 0uLL;
    allKeys = [(NSMutableDictionary *)v23 allKeys];
    sortedLevels = [allKeys sortedArrayUsingSelector:sel_compare_];

    v28 = [sortedLevels countByEnumeratingWithState:&v96 objects:v107 count:16];
    if (!v28)
    {
      goto LABEL_26;
    }

    v29 = v28;
    v30 = setCopy;
    v31 = *v97;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v97 != v31)
        {
          objc_enumerationMutation(sortedLevels);
        }

        v33 = [(NSMutableDictionary *)v23 objectForKey:*(*(&v96 + 1) + 8 * i)];
        if (v33)
        {
          [v25 addObject:v33];
        }
      }

      v29 = [sortedLevels countByEnumeratingWithState:&v96 objects:v107 count:16];
    }

    while (v29);
  }

  else
  {
    v94 = 0uLL;
    v95 = 0uLL;
    v92 = 0uLL;
    v93 = 0uLL;
    sortedLevels = [setCopy sortedLevels];
    v34 = [sortedLevels countByEnumeratingWithState:&v92 objects:v106 count:16];
    if (!v34)
    {
      goto LABEL_26;
    }

    v35 = v34;
    v30 = setCopy;
    v36 = *v93;
    do
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v93 != v36)
        {
          objc_enumerationMutation(sortedLevels);
        }

        v38 = [(NSMutableDictionary *)v23 objectForKey:*(*(&v92 + 1) + 8 * j)];
        if (v38)
        {
          [v25 addObject:v38];
        }
      }

      v35 = [sortedLevels countByEnumeratingWithState:&v92 objects:v106 count:16];
    }

    while (v35);
  }

  setCopy = v30;
  v24 = v78;
LABEL_26:

  if (![v25 count])
  {
    writeQueue = self->_writeQueue;
    v89[0] = MEMORY[0x1E69E9820];
    v89[1] = 3221225472;
    v89[2] = __52___PUIPosterSnapshotCapture__captureLevelSet_error___block_invoke_2;
    v89[3] = &unk_1E78548A0;
    v44 = v77;
    v90 = v77;
    v91 = setCopy;
    [(NSOperationQueue *)writeQueue addOperationWithBlock:v89];

    capture = 1;
    pui_fallbackSnapshotImage = v90;
    goto LABEL_44;
  }

  v39 = [(NSMutableDictionary *)v23 objectForKey:&unk_1F1C92820];
  if (v39 || [v25 count] != 1)
  {
  }

  else
  {
    v40 = +[PUIPosterLevelSet floatingLevelSet];
    v41 = [setCopy isEqualToLevelSet:v40];

    if (v41)
    {
      pui_fallbackSnapshotImage = [MEMORY[0x1E69DCAB8] pui_fallbackSnapshotImage];
      v43 = +[PUIPosterLevelSet floatingLevelSet];
      v44 = v77;
      [(PUIPosterSnapshotBundleBuilder *)v77 setImage:pui_fallbackSnapshotImage forLevelSet:v43];

      capture = 1;
      v24 = v78;
      goto LABEL_44;
    }
  }

  v46 = MEMORY[0x1E699FC48];
  v24 = v78;
  identifier = [v78 identifier];
  pui_fallbackSnapshotImage = [v46 contextWithSceneID:identifier settings:settings];

  v48 = [objc_alloc(MEMORY[0x1E699F7E8]) initWithFBSContext:pui_fallbackSnapshotImage];
  v49 = [[_PUIFBSSceneSnapshot alloc] initWithScene:v78 snapshotContext:v48 layers:v25];
  capture = [(_PUIFBSSceneSnapshot *)v49 capture];
  if (capture)
  {
    if (!self->_hasCapturedSalientContentRect)
    {
      clientSettings = [v78 clientSettings];
      v74 = setCopy;
      pui_adaptiveTimeMode = [clientSettings pui_adaptiveTimeMode];

      v52 = pui_adaptiveTimeMode == 2;
      setCopy = v74;
      if (v52)
      {
        clientSettings2 = [v78 clientSettings];
        [clientSettings2 pui_preferredSalientContentRectangle];
        v55 = v54;
        v57 = v56;
        v59 = v58;
        v61 = v60;

        if (PUICGRectIsValidSalientContentRectangle(v55, v57, v59, v61))
        {
          v62 = PUILogSnapshotting();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
          {
            v110.origin.x = v55;
            v110.origin.y = v57;
            v110.size.width = v59;
            v110.size.height = v61;
            NSStringFromCGRect(v110);
            v63 = log = v62;
            *v104 = 138543362;
            v105 = v63;
            _os_log_impl(&dword_1A8C85000, log, OS_LOG_TYPE_DEFAULT, "Captured preferred salient content rect '%{public}@'", v104, 0xCu);

            v62 = log;
          }

          v111.origin.x = v55;
          v111.origin.y = v57;
          v111.size.width = v59;
          v111.size.height = v61;
          v64 = NSStringFromCGRect(v111);
          [(PUIPosterSnapshotBundleBuilder *)v77 setObject:v64 forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeySaliencyRect"];

          self->_hasCapturedSalientContentRect = 1;
        }
      }
    }

    v65 = self->_writeQueue;
    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 3221225472;
    v79[2] = __52___PUIPosterSnapshotCapture__captureLevelSet_error___block_invoke_79;
    v79[3] = &unk_1E7854D08;
    v80 = v49;
    v85 = interfaceOrientation;
    v86 = pui_deviceOrientation;
    v87 = v15;
    v44 = v77;
    v81 = v77;
    v82 = settings;
    v83 = setCopy;
    v88 = v12;
    v84 = v78;
    v66 = v65;
    v24 = v78;
    [(NSOperationQueue *)v66 addOperationWithBlock:v79];

    v48 = v80;
  }

  else
  {
    v68 = PFFunctionNameForAddress();
    *error = PFGeneralErrorFromObjectWithLocalizedFailureReason();

    v44 = v77;
  }

LABEL_44:
  return capture;
}

- (void)_finishCaptureWithError:(id)error
{
  v37 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_finished)
  {
    v6 = PUILogSnapshotting();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [_PUIPosterSnapshotCapture _finishCaptureWithError:];
    }
  }

  else
  {
    selfCopy->_finished = 1;
    startTime = selfCopy->_startTime;
    v6 = selfCopy->_future;
    v8 = selfCopy->_builder;
    objc_initWeak(&location, selfCopy);
    if (errorCopy)
    {
      v9 = PUILogSnapshotting();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        Current = CFAbsoluteTimeGetCurrent();
        *buf = 134218498;
        v32 = selfCopy;
        v33 = 2114;
        v34 = errorCopy;
        v35 = 2048;
        v36 = Current - startTime;
        _os_log_error_impl(&dword_1A8C85000, v9, OS_LOG_TYPE_ERROR, "(%p) Snapshot failed to capture: %{public}@; capture time %f", buf, 0x20u);
      }

      [v6 finishWithError:errorCopy];
      v10 = dispatch_get_global_queue(17, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __53___PUIPosterSnapshotCapture__finishCaptureWithError___block_invoke;
      block[3] = &unk_1E7854B70;
      objc_copyWeak(&v29, &location);
      dispatch_async(v10, block);

      objc_destroyWeak(&v29);
    }

    else
    {
      builder = selfCopy->_builder;
      selfCopy->_builder = 0;

      v12 = selfCopy->_outputURL;
      scene = [(_PUIPosterSnapshotCapture *)selfCopy scene];
      settings = [scene settings];

      analysis = [(PUIPosterSnapshotDescriptor *)selfCopy->_snapshotDescriptor analysis];
      determineColorStatistics = [analysis determineColorStatistics];

      writeQueue = selfCopy->_writeQueue;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __53___PUIPosterSnapshotCapture__finishCaptureWithError___block_invoke_2;
      v21[3] = &unk_1E7854D30;
      v27 = determineColorStatistics;
      v22 = v8;
      v18 = settings;
      v23 = v18;
      v19 = v12;
      v24 = v19;
      objc_copyWeak(v26, &location);
      v26[1] = *&startTime;
      v25 = v6;
      [(NSOperationQueue *)writeQueue addOperationWithBlock:v21];

      objc_destroyWeak(v26);
    }

    objc_destroyWeak(&location);
  }

  objc_sync_exit(selfCopy);
}

- (void)_cleanup
{
  v20 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_finished)
  {
    if ([(BSAtomicSignal *)selfCopy->_cleanedUpSignal signal])
    {
      v3 = PUILogSnapshotting();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v19 = selfCopy;
        _os_log_impl(&dword_1A8C85000, v3, OS_LOG_TYPE_DEFAULT, "(%p) Cleaning up...", buf, 0xCu);
      }

      captureController = selfCopy->_captureController;
      selfCopy->_captureController = 0;

      v5 = selfCopy->_builder;
      p_super = &v5->super;
      if (v5)
      {
        writeQueue = selfCopy->_writeQueue;
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __37___PUIPosterSnapshotCapture__cleanup__block_invoke;
        v16[3] = &unk_1E7854320;
        v17 = v5;
        [(NSOperationQueue *)writeQueue addBarrierBlock:v16];
        builder = selfCopy->_builder;
        selfCopy->_builder = 0;
      }

      v9 = selfCopy->_writeQueue;
      selfCopy->_writeQueue = 0;

      scene = selfCopy->_scene;
      selfCopy->_scene = 0;

      snapshotLayerForLevel = selfCopy->_snapshotLayerForLevel;
      selfCopy->_snapshotLayerForLevel = 0;

      environmentOverridesForLevelSet = selfCopy->_environmentOverridesForLevelSet;
      selfCopy->_environmentOverridesForLevelSet = 0;

      levelSetEnumerator = selfCopy->_levelSetEnumerator;
      selfCopy->_levelSetEnumerator = 0;

      [(RBSAssertion *)selfCopy->_assertion invalidate];
      assertion = selfCopy->_assertion;
      selfCopy->_assertion = 0;

      v15 = PUILogSnapshotting();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v19 = selfCopy;
        _os_log_impl(&dword_1A8C85000, v15, OS_LOG_TYPE_DEFAULT, "(%p) Cleaned up complete", buf, 0xCu);
      }
    }

    else
    {
      p_super = PUILogSnapshotting();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        [_PUIPosterSnapshotCapture _cleanup];
      }
    }
  }

  else
  {
    p_super = PUILogSnapshotting();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      [_PUIPosterSnapshotCapture _cleanup];
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)invalidate
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = PUILogSnapshotting();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1A8C85000, v3, OS_LOG_TYPE_DEFAULT, "(%p) Invalidating _PUIPosterSnapshotCapture...", buf, 0xCu);
  }

  v4 = PFFunctionNameForAddress();
  v5 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
  [(_PUIPosterSnapshotCapture *)self _finishCaptureWithError:v5, 0];
}

- (void)initWithScene:(const char *)a1 captureController:snapshotDescriptor:outputURL:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"outputURL", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithScene:(const char *)a1 captureController:snapshotDescriptor:outputURL:.cold.2(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"snapshotDescriptor", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithScene:(const char *)a1 captureController:snapshotDescriptor:outputURL:.cold.3(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"scene", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_attemptSnapshot:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end