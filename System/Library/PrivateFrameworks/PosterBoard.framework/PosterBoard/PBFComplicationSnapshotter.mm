@interface PBFComplicationSnapshotter
- (BOOL)_hasStarted;
- (BOOL)_startAttempt:(unint64_t)a3 previousError:(id)a4;
- (BOOL)_wasCleanedUp;
- (BOOL)_wasInvalidated;
- (BOOL)isFinished;
- (BOOL)start;
- (NSError)error;
- (PBFComplicationSnapshotter)initWithComplicationSnapshotRequest:(id)a3;
- (UIImage)snapshot;
- (double)elapsedTime;
- (void)_finishWithImage:(id)a3 error:(id)a4;
- (void)_main_cleanup;
- (void)_main_kickoffHostViewController:(id)a3 attempt:(unint64_t)a4;
- (void)_main_requestTimedOut;
- (void)addObserver:(id)a3;
- (void)cancelWithReason:(id)a3;
- (void)invalidate;
- (void)removeObserver:(id)a3;
@end

@implementation PBFComplicationSnapshotter

- (PBFComplicationSnapshotter)initWithComplicationSnapshotRequest:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = PBFComplicationSnapshotter;
  v6 = [(PBFComplicationSnapshotter *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, a3);
    v8 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    lock_observers = v7->_lock_observers;
    v7->_lock_observers = v8;

    v10 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CCAD78] UUID];
    v12 = [v11 UUIDString];
    v13 = [v12 substringToIndex:7];
    v14 = [v5 widget];
    v15 = [v14 extensionBundleIdentifier];
    v16 = [v5 metrics];
    v17 = [v10 stringWithFormat:@"%@-%@-%@", v13, v15, v16];
    snapshotterIdentifier = v7->_snapshotterIdentifier;
    v7->_snapshotterIdentifier = v17;

    v7->_lock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (BOOL)start
{
  v11 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_started)
  {
    v3 = PBFLogComplicationSnapshotter();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      snapshotterIdentifier = self->_snapshotterIdentifier;
      v9 = 138543362;
      v10 = snapshotterIdentifier;
      v5 = "(%{public}@)[start] bailing because we've already started";
LABEL_7:
      _os_log_impl(&dword_21B526000, v3, OS_LOG_TYPE_DEFAULT, v5, &v9, 0xCu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (self->_lock_invalidated)
  {
    v3 = PBFLogComplicationSnapshotter();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = self->_snapshotterIdentifier;
      v9 = 138543362;
      v10 = v6;
      v5 = "(%{public}@)[start] bailing because we've been invalidated";
      goto LABEL_7;
    }

LABEL_8:

    os_unfair_lock_unlock(&self->_lock);
    return 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  if ([(PBFComplicationSnapshotter *)self _startAttempt:0 previousError:0])
  {
    os_unfair_lock_lock(&self->_lock);
    v7 = 1;
    self->_lock_started = 1;
    self->_lock_startTime = CFAbsoluteTimeGetCurrent();
    os_unfair_lock_unlock(&self->_lock);
    return v7;
  }

  return 0;
}

- (void)_main_kickoffHostViewController:(id)a3 attempt:(unint64_t)a4
{
  v7 = a3;
  NSClassFromString(&cfstr_Chswidget.isa);
  if (!v7)
  {
    [PBFComplicationSnapshotter _main_kickoffHostViewController:a2 attempt:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFComplicationSnapshotter _main_kickoffHostViewController:a2 attempt:?];
  }

  BSDispatchQueueAssertMain();
  if ([(PBFComplicationSnapshotter *)self _wasInvalidated])
  {
    v8 = PBFLogComplicationSnapshotter();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [PBFComplicationSnapshotter _main_kickoffHostViewController:attempt:];
    }
  }

  else
  {
    v8 = [(PBFComplicationSnapshotRequest *)self->_request metrics];
    v9 = [objc_alloc(MEMORY[0x277CFA558]) initWithWidget:v7 metrics:v8 widgetConfigurationIdentifier:0];
    hostViewController = self->_hostViewController;
    self->_hostViewController = v9;

    [(CHUISWidgetHostViewController *)self->_hostViewController setCanAppearInSecureEnvironment:1];
    [(CHUISWidgetHostViewController *)self->_hostViewController setContentType:1];
    [(CHUISWidgetHostViewController *)self->_hostViewController setColorScheme:2];
    [(CHUISWidgetHostViewController *)self->_hostViewController setWidgetPriority:1];
    v11 = [objc_alloc(MEMORY[0x277CFA430]) initWithRenderingMode:1 backgroundViewPolicy:1];
    [(CHUISWidgetHostViewController *)self->_hostViewController setRenderScheme:v11];
    [(CHUISWidgetHostViewController *)self->_hostViewController setWidgetPriority:1];
    [(CHUISWidgetHostViewController *)self->_hostViewController setDisableViewTransitionAnimations:1];
    v12 = objc_alloc_init(MEMORY[0x277CFA270]);
    [v12 setShowsDateAlongsideText:1];
    v13 = objc_alloc_init(MEMORY[0x277CFA260]);
    [v13 setSize:&unk_282D0A2E8];
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D74410]];
    [v13 setWeight:v14];

    [v12 setFontSpecification:v13];
    [v12 setSymbolScale:1];
    [(CHUISWidgetHostViewController *)self->_hostViewController setInlineTextParameters:v12];
    [(CHUISWidgetHostViewController *)self->_hostViewController setVisibility:3];
    [(CHUISWidgetHostViewController *)self->_hostViewController setPresentationMode:2];
    if (a4 == 2)
    {
      [(CHUISWidgetHostViewController *)self->_hostViewController setContentType:2];
    }

    objc_initWeak(&location, self);
    v15 = self->_hostViewController;
    v16 = dispatch_get_global_queue(25, 0);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __70__PBFComplicationSnapshotter__main_kickoffHostViewController_attempt___block_invoke;
    v17[3] = &unk_2782C6CF8;
    v18 = v7;
    objc_copyWeak(v19, &location);
    v19[1] = a4;
    [(CHUISWidgetHostViewController *)v15 snapshotContentWithTimeout:v16 queue:v17 completion:30.0];

    objc_destroyWeak(v19);
    objc_destroyWeak(&location);
  }
}

void __70__PBFComplicationSnapshotter__main_kickoffHostViewController_attempt___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!(v5 | v6))
  {
    v7 = MEMORY[0x277CCA9B8];
    v19[0] = *MEMORY[0x277CCA450];
    v19[1] = @"Widget";
    v8 = *(a1 + 32);
    if (!v8)
    {
      v8 = @"(null widget)";
    }

    v20[0] = @"Unable to generate image for widget";
    v20[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
    v6 = [v7 pbf_generalErrorWithCode:1 userInfo:v9];
  }

  if (v6)
  {
    goto LABEL_6;
  }

  if (![v5 pui_imageHasNoContent])
  {
    goto LABEL_11;
  }

  v11 = MEMORY[0x277CCA9B8];
  v17[0] = *MEMORY[0x277CCA450];
  v17[1] = @"Widget";
  v12 = *(a1 + 32);
  if (!v12)
  {
    v12 = @"(null widget)";
  }

  v18[0] = @"chrono generated a snapshot with no content";
  v18[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v6 = [v11 pbf_generalErrorWithCode:1 userInfo:v13];

  if (v6)
  {
LABEL_6:
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __70__PBFComplicationSnapshotter__main_kickoffHostViewController_attempt___block_invoke_2;
    v14[3] = &unk_2782C6690;
    objc_copyWeak(v16, (a1 + 40));
    v16[1] = *(a1 + 48);
    v15 = v6;
    WeakRetained = v6;
    dispatch_async(MEMORY[0x277D85CD0], v14);

    objc_destroyWeak(v16);
  }

  else
  {
LABEL_11:
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _finishWithImage:v5 error:0];
  }
}

void __70__PBFComplicationSnapshotter__main_kickoffHostViewController_attempt___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _startAttempt:*(a1 + 48) + 1 previousError:*(a1 + 32)];
}

- (void)_main_requestTimedOut
{
  if (![(PBFComplicationSnapshotter *)self isFinished])
  {
    v3 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:2 userInfo:0];
    [(PBFComplicationSnapshotter *)self _finishWithImage:0 error:v3];
  }
}

- (BOOL)_startAttempt:(unint64_t)a3 previousError:(id)a4
{
  v36[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  if ([(PBFComplicationSnapshotter *)self _wasInvalidated])
  {
    v7 = PBFLogComplicationSnapshotter();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PBFComplicationSnapshotter _startAttempt:previousError:];
    }

LABEL_18:
    v16 = 0;
    goto LABEL_19;
  }

  if (a3 >= 4)
  {
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v17 = MEMORY[0x277CCA9B8];
      v35 = *MEMORY[0x277CCA470];
      v36[0] = @"exceeded max retry";
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
      v7 = [v17 pbf_generalErrorWithCode:9 userInfo:v18];
    }

    v19 = PBFLogComplicationSnapshotter();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      snapshotterIdentifier = self->_snapshotterIdentifier;
      v22 = [v7 pf_description];
      *buf = 138543874;
      v30 = snapshotterIdentifier;
      v31 = 2050;
      v32 = a3;
      v33 = 2114;
      v34 = v22;
      _os_log_error_impl(&dword_21B526000, v19, OS_LOG_TYPE_ERROR, "(%{public}@)[_startAttempt:previousError:] Not starting complication snapshotter attempt %{public}lu. Finishing with error: %{public}@", buf, 0x20u);
    }

    [(PBFComplicationSnapshotter *)self _finishWithImage:0 error:v7];
    goto LABEL_18;
  }

  v8 = PBFLogComplicationSnapshotter();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_snapshotterIdentifier;
    *buf = 138543618;
    v30 = v9;
    v31 = 2050;
    v32 = a3;
    _os_log_impl(&dword_21B526000, v8, OS_LOG_TYPE_DEFAULT, "(%{public}@)[_startAttempt:previousError:] Starting complication snapshotter attempt %{public}lu", buf, 0x16u);
  }

  v10 = [(PBFComplicationSnapshotRequest *)self->_request widget];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__PBFComplicationSnapshotter__startAttempt_previousError___block_invoke;
  block[3] = &unk_2782C56C0;
  v7 = v10;
  v26 = v7;
  v27 = self;
  v28 = a3;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v11 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  if (([v11 BOOLForKey:@"DISABLE_SNAPSHOT_TIMEOUT"] & 1) == 0)
  {
    v12 = PBFLogComplicationSnapshotter();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = self->_snapshotterIdentifier;
      *buf = 138543362;
      v30 = v13;
      _os_log_impl(&dword_21B526000, v12, OS_LOG_TYPE_INFO, "(%{public}@)[_startAttempt:previousError:] Starting complication snapshotter timeout watching", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v14 = dispatch_time(0, 60000000000);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __58__PBFComplicationSnapshotter__startAttempt_previousError___block_invoke_47;
    v23[3] = &unk_2782C6D48;
    objc_copyWeak(&v24, buf);
    v15 = MEMORY[0x277D85CD0];
    dispatch_after(v14, MEMORY[0x277D85CD0], v23);

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }

  v16 = 1;
LABEL_19:

  return v16;
}

void __58__PBFComplicationSnapshotter__startAttempt_previousError___block_invoke(uint64_t a1)
{
  v2 = PRSharedWidgetExtensionProvider();
  v3 = [v2 widgetDescriptorForWidget:*(a1 + 32)];

  v4 = [v3 intentType];
  if (v4 && (v5 = v4, [*(a1 + 32) intent], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, !v6))
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __58__PBFComplicationSnapshotter__startAttempt_previousError___block_invoke_2;
    v10[3] = &unk_2782C6D20;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = v7;
    v12 = v8;
    v13 = v9;
    [v3 loadDefaultIntent:v10];
  }

  else
  {
    [*(a1 + 40) _main_kickoffHostViewController:*(a1 + 32) attempt:*(a1 + 48)];
  }
}

void __58__PBFComplicationSnapshotter__startAttempt_previousError___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) widgetByReplacingIntent:a2];
  [*(a1 + 40) _main_kickoffHostViewController:v3 attempt:*(a1 + 48)];
}

void __58__PBFComplicationSnapshotter__startAttempt_previousError___block_invoke_47(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _main_requestTimedOut];
}

- (void)_finishWithImage:(id)a3 error:(id)a4
{
  v42[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v24 = v7;
  obj = a4;
  if (__PAIR128__(obj, v7) == 0)
  {
    v8 = MEMORY[0x277CCA9B8];
    v41 = *MEMORY[0x277CCA470];
    v42[0] = @"No image was created and no error given; this is a catch all instead of just crashing.";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    obj = [v8 pbf_generalErrorWithCode:7 userInfo:v9];
  }

  os_unfair_lock_lock(&self->_lock);
  v10 = &off_21B6D7000;
  if (!self->_lock_finished)
  {
    self->_lock_endTime = CFAbsoluteTimeGetCurrent();
    objc_storeStrong(&self->_snapshot, a3);
    objc_storeStrong(&self->_error, obj);
    v11 = PBFLogComplicationSnapshotter();
    v12 = v11;
    if (obj)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        snapshotterIdentifier = self->_snapshotterIdentifier;
        v14 = self->_lock_endTime - self->_lock_startTime;
        *buf = 138543874;
        v36 = snapshotterIdentifier;
        v37 = 2114;
        v38 = *&obj;
        v39 = 2048;
        v40 = v14;
        _os_log_error_impl(&dword_21B526000, v12, OS_LOG_TYPE_ERROR, "(%{public}@)[_finishWithImage:error:] Finished complication snapshotter w/ error '%{public}@'; %f seconds elapsed", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = self->_snapshotterIdentifier;
      v16 = self->_lock_endTime - self->_lock_startTime;
      *buf = 138543618;
      v36 = v15;
      v37 = 2048;
      v38 = v16;
      _os_log_impl(&dword_21B526000, v12, OS_LOG_TYPE_DEFAULT, "(%{public}@)[_finishWithImage:error:] Finished complication snapshotter; %f seconds elapsed", buf, 0x16u);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v23 = [(NSHashTable *)self->_lock_observers copy];
    v17 = [v23 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v31;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v31 != v19)
          {
            objc_enumerationMutation(v23);
          }

          v21 = *(*(&v30 + 1) + 8 * i);
          v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PBFComplicationSnapshotter _finishWithImage:error:]"];
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __53__PBFComplicationSnapshotter__finishWithImage_error___block_invoke;
          v27[3] = &unk_2782C6588;
          v27[4] = v21;
          v27[5] = self;
          v28 = v24;
          v29 = obj;
          PBFDispatchAsyncWithString(v22, QOS_CLASS_DEFAULT, v27);
        }

        v18 = [v23 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v18);
    }

    [(NSHashTable *)self->_lock_observers removeAllObjects];
    self->_lock_finished = 1;
    v10 = &off_21B6D7000;
  }

  os_unfair_lock_unlock(&self->_lock);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = *(v10 + 199);
  block[2] = __53__PBFComplicationSnapshotter__finishWithImage_error___block_invoke_2;
  block[3] = &unk_2782C5888;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)cancelWithReason:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA9B8];
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = @"(null)";
  }

  v10 = *MEMORY[0x277CCA470];
  v11[0] = v5;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a3;
  v8 = [v6 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9 = [v4 pbf_generalErrorWithCode:4 userInfo:v8];

  [(PBFComplicationSnapshotter *)self _finishWithImage:0 error:v9];
}

- (void)_main_cleanup
{
  BSDispatchQueueAssertMain();
  os_unfair_lock_lock(&self->_lock);
  if (!self->_lock_cleanedUp)
  {
    [(CHUISWidgetHostViewController *)self->_hostViewController invalidate];
    hostViewController = self->_hostViewController;
    self->_hostViewController = 0;

    self->_lock_cleanedUp = 1;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (UIImage)snapshot
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_snapshot;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSError)error
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_error;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (double)elapsedTime
{
  os_unfair_lock_lock(&self->_lock);
  v3 = -1.0;
  if (self->_lock_started)
  {
    if (self->_lock_finished)
    {
      lock_endTime = self->_lock_endTime;
    }

    else
    {
      lock_endTime = CFAbsoluteTimeGetCurrent();
    }

    v3 = lock_endTime - self->_lock_startTime;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (BOOL)isFinished
{
  os_unfair_lock_lock(&self->_lock);
  lock_finished = self->_lock_finished;
  os_unfair_lock_unlock(&self->_lock);
  return lock_finished;
}

- (BOOL)_hasStarted
{
  os_unfair_lock_lock(&self->_lock);
  lock_started = self->_lock_started;
  os_unfair_lock_unlock(&self->_lock);
  return lock_started;
}

- (BOOL)_wasCleanedUp
{
  os_unfair_lock_lock(&self->_lock);
  lock_cleanedUp = self->_lock_cleanedUp;
  os_unfair_lock_unlock(&self->_lock);
  return lock_cleanedUp;
}

- (BOOL)_wasInvalidated
{
  os_unfair_lock_lock(&self->_lock);
  lock_invalidated = self->_lock_invalidated;
  os_unfair_lock_unlock(&self->_lock);
  return lock_invalidated;
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_lock_invalidated = 1;
    os_unfair_lock_unlock(&self->_lock);
    v3 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
    [(PBFComplicationSnapshotter *)self _finishWithImage:0 error:v3];
  }
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers addObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers removeObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_main_kickoffHostViewController:(const char *)a1 attempt:.cold.1(const char *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:CHSWidgetClass]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    v9 = @"PBFComplicationSnapshotter.m";
    v10 = 1024;
    v11 = 86;
    v12 = v6;
    v13 = v2;
    _os_log_error_impl(&dword_21B526000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  v7 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_main_kickoffHostViewController:(const char *)a1 attempt:.cold.3(const char *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    v9 = @"PBFComplicationSnapshotter.m";
    v10 = 1024;
    v11 = 86;
    v12 = v6;
    v13 = v2;
    _os_log_error_impl(&dword_21B526000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  v7 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end