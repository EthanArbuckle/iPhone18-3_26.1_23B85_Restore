@interface PLCameraCaptureTaskConstraints
+ (PLCameraCaptureTaskConstraints)sharedTaskConstraints;
- (PLCameraCaptureTaskConstraints)init;
- (id)stateCaptureDictionary;
- (id)taskConstraintStatus;
- (void)startConstrainingTasksWithCoordinator:(id)a3;
- (void)stopConstrainingTasksWithCoordinator:(id)a3;
@end

@implementation PLCameraCaptureTaskConstraints

- (id)stateCaptureDictionary
{
  [MEMORY[0x1E695DF70] array];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v5 = v9 = 0;
  PLSafeRunWithUnfairLock();
  v2 = [MEMORY[0x1E695DF90] dictionary];
  [v2 setObject:v5 forKeyedSubscript:@"coordinators"];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:*(v7 + 24)];
  [v2 setObject:v3 forKeyedSubscript:@"photoStreamsPaused"];

  _Block_object_dispose(&v6, 8);

  return v2;
}

void __56__PLCameraCaptureTaskConstraints_stateCaptureDictionary__block_invoke(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1[4] + 16);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = a1[5];
        v8 = [*(*(&v9 + 1) + 8 * v6) description];
        [v7 addObject:v8];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  *(*(a1[6] + 8) + 24) = *(a1[4] + 24) != 0;
}

- (id)taskConstraintStatus
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__78803;
  v8 = __Block_byref_object_dispose__78804;
  v9 = 0;
  PLSafeRunWithUnfairLock();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __54__PLCameraCaptureTaskConstraints_taskConstraintStatus__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 16) count];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Camera capture task constraints are active (%ld coordinators activated)", v2];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = *(a1 + 32);
    if (*(v6 + 24))
    {
      v7 = [*(*(*(a1 + 40) + 8) + 40) stringByAppendingFormat:@", photo streams are paused"];
      v8 = *(*(a1 + 40) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v6 = *(a1 + 32);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = *(v6 + 16);
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(*(a1 + 40) + 8) + 40) stringByAppendingFormat:@"\n\t%@", *(*(&v21 + 1) + 8 * i)];
          v16 = *(*(a1 + 40) + 8);
          v17 = *(v16 + 40);
          *(v16 + 40) = v15;
        }

        v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Camera capture task constraints are not active"];
    v19 = *(*(a1 + 40) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;
  }
}

- (void)stopConstrainingTasksWithCoordinator:(id)a3
{
  v3 = a3;
  +[PLPhotoLibrary cameraPhotoLibrary];
  v7 = v6 = v3;
  v4 = v7;
  v5 = v3;
  PLSafeRunWithUnfairLock();
}

void __71__PLCameraCaptureTaskConstraints_stopConstrainingTasksWithCoordinator___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 16) count];
  [*(*(a1 + 32) + 16) removeObject:*(a1 + 40)];
  v3 = [*(*(a1 + 32) + 16) count];
  if (v2 == 1 && v3 == 0)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);
    v7 = *(a1 + 40);
    if (v5)
    {
      v8 = v6;
      os_unfair_lock_assert_owner(v5 + 2);
      v9 = PLCameraTaskConstraintsGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543362;
        v11 = v7;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: resign active for camera activity", &v10, 0xCu);
      }

      [v8 enableOpportunisticTasks];
    }
  }
}

- (void)startConstrainingTasksWithCoordinator:(id)a3
{
  v3 = a3;
  +[PLPhotoLibrary cameraPhotoLibrary];
  v7 = v6 = v3;
  v4 = v7;
  v5 = v3;
  PLSafeRunWithUnfairLock();
}

void __72__PLCameraCaptureTaskConstraints_startConstrainingTasksWithCoordinator___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    v2 = *(*(a1 + 32) + 16);
  }

  v6 = [v2 count];
  [*(*(a1 + 32) + 16) addObject:*(a1 + 40)];
  v7 = [*(*(a1 + 32) + 16) count];
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7 == 1;
  }

  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 48);
    v11 = *(a1 + 40);
    if (v9)
    {
      v12 = v10;
      os_unfair_lock_assert_owner(v9 + 2);
      v13 = PLCameraTaskConstraintsGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138543362;
        v15 = v11;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: become active for camera activity", &v14, 0xCu);
      }

      [v12 disableOpportunisticTasks];
    }
  }
}

- (PLCameraCaptureTaskConstraints)init
{
  v8.receiver = self;
  v8.super_class = PLCameraCaptureTaskConstraints;
  v2 = [(PLCameraCaptureTaskConstraints *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_taskConstraintCoordinatorLock._os_unfair_lock_opaque = 0;
    v4 = [objc_alloc(MEMORY[0x1E69BDD80]) initWithProvider:v2];
    stateHandler = v3->_stateHandler;
    v3->_stateHandler = v4;

    v6 = v3;
  }

  return v3;
}

+ (PLCameraCaptureTaskConstraints)sharedTaskConstraints
{
  pl_dispatch_once();
  v2 = sharedTaskConstraints_pl_once_object_15;

  return v2;
}

void __55__PLCameraCaptureTaskConstraints_sharedTaskConstraints__block_invoke()
{
  v0 = objc_alloc_init(PLCameraCaptureTaskConstraints);
  v1 = sharedTaskConstraints_pl_once_object_15;
  sharedTaskConstraints_pl_once_object_15 = v0;
}

@end