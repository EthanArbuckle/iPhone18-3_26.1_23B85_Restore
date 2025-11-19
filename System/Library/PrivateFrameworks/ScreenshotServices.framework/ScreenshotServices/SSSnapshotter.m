@interface SSSnapshotter
- (SSSnapshotter)init;
- (id)_captureScreen:(id)a3 withScreenshotOptions:(id)a4;
- (id)_screensThatAreCaptureableDidFindOnenessScreens:(BOOL *)a3;
- (id)captureAvailableSnapshotsWithOptionsCollection:(id)a3 didFindOnenessScreens:(BOOL *)a4;
@end

@implementation SSSnapshotter

- (SSSnapshotter)init
{
  v9.receiver = self;
  v9.super_class = SSSnapshotter;
  v2 = [(SSSnapshotter *)&v9 init];
  if (v2 && CarKitLibraryCore())
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2050000000;
    v3 = getCARSessionStatusClass_softClass;
    v18 = getCARSessionStatusClass_softClass;
    if (!getCARSessionStatusClass_softClass)
    {
      v10 = MEMORY[0x1E69E9820];
      v11 = 3221225472;
      v12 = __getCARSessionStatusClass_block_invoke;
      v13 = &unk_1E8590188;
      v14 = &v15;
      CarKitLibraryCore();
      Class = objc_getClass("CARSessionStatus");
      *(v14[1] + 24) = Class;
      getCARSessionStatusClass_softClass = *(v14[1] + 24);
      v3 = v16[3];
    }

    v5 = v3;
    _Block_object_dispose(&v15, 8);
    v6 = [[v3 alloc] initWithOptions:0];
    carSessionStatus = v2->_carSessionStatus;
    v2->_carSessionStatus = v6;
  }

  return v2;
}

- (id)captureAvailableSnapshotsWithOptionsCollection:(id)a3 didFindOnenessScreens:(BOOL *)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v19 = [MEMORY[0x1E695DF70] array];
  [(SSSnapshotter *)self _screensThatAreCaptureableDidFindOnenessScreens:a4];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v23 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v6 screenshotOptionsForScreen:v12];
        v14 = [(SSSnapshotter *)self _captureScreen:v12 withScreenshotOptions:v13];

        v15 = [v14 image];

        if (v15)
        {
          v16 = [v14 image];
          v17 = [SSScreenSnapshot snapshotWithImage:v16 fromScreen:v12];

          [v19 addObject:v17];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  return v19;
}

- (id)_screensThatAreCaptureableDidFindOnenessScreens:(BOOL *)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695DF70];
  v6 = [MEMORY[0x1E69DCEB0] mainScreen];
  v7 = [v5 arrayWithObject:v6];

  v8 = MEMORY[0x1E695DFA8];
  v9 = [MEMORY[0x1E69DCEB0] mainScreen];
  v10 = [v9 displayConfiguration];
  v11 = [v10 identity];
  v12 = [v11 rootIdentity];
  v13 = [v8 setWithObject:v12];

  v14 = [(CARSessionStatus *)self->_carSessionStatus currentSession];
  LOBYTE(self) = v14 != 0;

  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __65__SSSnapshotter__screensThatAreCaptureableDidFindOnenessScreens___block_invoke_2;
  v44[3] = &unk_1E8590868;
  v47 = &__block_literal_global_7;
  v48 = self;
  v15 = v7;
  v45 = v15;
  v35 = v13;
  v46 = v35;
  v16 = MEMORY[0x1DA742540](v44);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v17 = [MEMORY[0x1E69DC668] sharedApplication];
  v18 = [v17 connectedScenes];

  v19 = [v18 countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v41;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v41 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v40 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = [v23 screen];
          v25 = (v16)[2](v16, v24);
          if (a3 && !*a3)
          {
            *a3 = __65__SSSnapshotter__screensThatAreCaptureableDidFindOnenessScreens___block_invoke(v25, v24);
          }
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v20);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v26 = [MEMORY[0x1E69DCEB0] screens];
  v27 = [v26 countByEnumeratingWithState:&v36 objects:v49 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v37;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v37 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v36 + 1) + 8 * j);
        v32 = (v16)[2](v16, v31);
        if (a3 && !*a3)
        {
          *a3 = __65__SSSnapshotter__screensThatAreCaptureableDidFindOnenessScreens___block_invoke(v32, v31);
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v36 objects:v49 count:16];
    }

    while (v28);
  }

  v33 = v15;
  return v15;
}

uint64_t __65__SSSnapshotter__screensThatAreCaptureableDidFindOnenessScreens___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 displayConfiguration];
  v3 = [v2 identity];
  v4 = [v3 isContinuityDisplay];

  return v4;
}

void __65__SSSnapshotter__screensThatAreCaptureableDidFindOnenessScreens___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 displayConfiguration];
  v5 = [v4 identity];

  v6 = (*(*(a1 + 48) + 16))();
  if (([v5 isCarDisplay] & 1) != 0 || objc_msgSend(v5, "isCarInstrumentsDisplay"))
  {
    v7 = *(a1 + 56) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  if (([v5 isCarDisplay] & 1) != 0 || objc_msgSend(v5, "isCarInstrumentsDisplay"))
  {
    v8 = _SSCarPlayScreenshotsEnabled();
  }

  else
  {
    v8 = 1;
  }

  if (([*(a1 + 32) containsObject:v3] & 1) == 0)
  {
    v9 = [v3 mirroredScreen];
    if (v9 || (v10 = *(a1 + 40), [v5 rootIdentity], v9 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v10, "containsObject:", v9) & 1) != 0))
    {
    }

    else
    {

      if (v8 & ~(v6 | v7))
      {
        [*(a1 + 32) addObject:v3];
        v12 = *(a1 + 40);
        v13 = [v5 rootIdentity];
        [v12 addObject:v13];

        goto LABEL_17;
      }
    }
  }

  if (v7)
  {
    v11 = os_log_create("com.apple.screenshotservices", "Capture");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v14 = 138543362;
      v15 = v3;
      _os_log_impl(&dword_1D9E04000, v11, OS_LOG_TYPE_INFO, "Ignoring defunct car screen %{public}@", &v14, 0xCu);
    }
  }

LABEL_17:
}

- (id)_captureScreen:(id)a3 withScreenshotOptions:(id)a4
{
  v5 = a4;
  v6 = [SSScreenSnapshotter snapshotterForScreen:a3];
  v7 = [v5 preparedImage];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = [v6 takeScreenshot];
  }

  v9 = v8;

  v10 = objc_opt_new();
  [v10 setImage:v9];
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = @"Unknown";
  }

  [v10 setFailureReasonIfImageIsNil:v11];

  return v10;
}

@end