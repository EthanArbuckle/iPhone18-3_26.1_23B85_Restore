@interface PRSExternalSystemService
- (id)service;
- (void)createLockScreenPhotosPosterWithImageAtURL:(id)a3 selectLockScreenPoster:(BOOL)a4 completion:(id)a5;
- (void)fetchEligibleConfigurationsWithCompletion:(id)a3;
- (void)fetchHomeScreenWallpaperForOrientation:(int64_t)a3 completion:(id)a4;
- (void)fetchHomeScreenWallpaperWithCompletion:(id)a3;
- (void)fetchLockScreenWallpaperForOrientation:(int64_t)a3 completion:(id)a4;
- (void)fetchLockScreenWallpaperForRequest:(id)a3 checkLockScreenPoster:(BOOL)a4 completion:(id)a5;
- (void)fetchLockScreenWallpaperForType:(int64_t)a3 variant:(int64_t)a4 options:(unint64_t)a5 orientation:(int64_t)a6 completion:(id)a7;
- (void)fetchLockScreenWallpaperWithCompletion:(id)a3;
- (void)resetLockScreenWallpapersToImageAtURL:(id)a3 completion:(id)a4;
- (void)resetLockScreenWallpapersToImageAtURL:(id)a3 homeScreenWallpaper:(id)a4 completion:(id)a5;
- (void)updateHomeScreenImageForLockScreenPoster:(id)a3 withImageAtURL:(id)a4 selectLockPoster:(BOOL)a5 completion:(id)a6;
- (void)updateLockScreenPhotosPoster:(id)a3 withImageAtURL:(id)a4 selectLockScreenPoster:(BOOL)a5 completion:(id)a6;
- (void)updatePosterMatchingUUID:(id)a3 withConfiguration:(id)a4 completion:(id)a5;
@end

@implementation PRSExternalSystemService

- (id)service
{
  v3 = PRSLogExternalSystemService();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C26FF000, v3, OS_LOG_TYPE_DEFAULT, "Accessing service instance", buf, 2u);
  }

  v4 = self;
  objc_sync_enter(v4);
  service = v4->_service;
  if (!service)
  {
    v6 = PRSLogExternalSystemService();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 0;
      _os_log_impl(&dword_1C26FF000, v6, OS_LOG_TYPE_DEFAULT, "Creating new PRSService instance", v11, 2u);
    }

    v7 = objc_opt_new();
    v8 = v4->_service;
    v4->_service = v7;

    service = v4->_service;
  }

  v9 = service;
  objc_sync_exit(v4);

  return v9;
}

- (void)fetchEligibleConfigurationsWithCompletion:(id)a3
{
  v5 = a3;
  v6 = PRSLogExternalSystemService();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C26FF000, v6, OS_LOG_TYPE_DEFAULT, "Starting fetchEligibleConfigurationsWithCompletion", buf, 2u);
  }

  if (!v5)
  {
    [PRSExternalSystemService fetchEligibleConfigurationsWithCompletion:a2];
  }

  v7 = [(PRSExternalSystemService *)self service];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__PRSExternalSystemService_fetchEligibleConfigurationsWithCompletion___block_invoke;
  v9[3] = &unk_1E818CFB0;
  v10 = v5;
  v8 = v5;
  [v7 fetchPosterConfigurationsForRole:@"PRPosterRoleLockScreen" completion:v9];
}

void __70__PRSExternalSystemService_fetchEligibleConfigurationsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v29 = a3;
  v5 = PRSLogExternalSystemService();
  v6 = v5;
  if (v29)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __70__PRSExternalSystemService_fetchEligibleConfigurationsWithCompletion___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = [v4 count];
    _os_log_impl(&dword_1C26FF000, v6, OS_LOG_TYPE_DEFAULT, "Retrieved %ld poster configurations", &buf, 0xCu);
  }

  v30 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v7)
  {
    v8 = *v36;
    do
    {
      v9 = 0;
      do
      {
        if (*v36 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v35 + 1) + 8 * v9);
        v11 = [v10 providerBundleIdentifier];
        v12 = PRSLogExternalSystemService();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v11;
          _os_log_impl(&dword_1C26FF000, v12, OS_LOG_TYPE_DEFAULT, "Checking configuration with bundle identifier: %{public}@", &buf, 0xCu);
        }

        if ([v11 isEqual:@"com.apple.PhotosUIPrivate.PhotosPosterProvider"])
        {
          v13 = [v10 _path];
          v14 = [v13 contentsURL];

          v15 = PRSLogExternalSystemService();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v14;
            _os_log_impl(&dword_1C26FF000, v15, OS_LOG_TYPE_DEFAULT, "Loading PFPosterConfiguration from URL: %{public}@", &buf, 0xCu);
          }

          v39 = 0;
          v40 = &v39;
          v41 = 0x2050000000;
          v16 = getPFPosterConfigurationClass_softClass;
          v42 = getPFPosterConfigurationClass_softClass;
          if (!getPFPosterConfigurationClass_softClass)
          {
            *&buf = MEMORY[0x1E69E9820];
            *(&buf + 1) = 3221225472;
            v45 = __getPFPosterConfigurationClass_block_invoke;
            v46 = &unk_1E818CC28;
            v47 = &v39;
            __getPFPosterConfigurationClass_block_invoke(&buf);
            v16 = v40[3];
          }

          v17 = v16;
          _Block_object_dispose(&v39, 8);
          v34 = 0;
          v18 = [v16 loadFromURL:v14 error:&v34];
          v19 = v34;
          v20 = v19;
          if (!v18 || v19)
          {
            if (v19)
            {
              v21 = PRSLogExternalSystemService();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf) = 138543362;
                *(&buf + 4) = v20;
                _os_log_error_impl(&dword_1C26FF000, v21, OS_LOG_TYPE_ERROR, "Error loading PFPosterConfiguration: %{public}@", &buf, 0xCu);
              }

              goto LABEL_32;
            }

            if (!v18)
            {
              v21 = PRSLogExternalSystemService();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                __70__PRSExternalSystemService_fetchEligibleConfigurationsWithCompletion___block_invoke_cold_2(&v32, v33, v21);
              }

              goto LABEL_32;
            }
          }

          else if (![v18 configurationType])
          {
            v21 = [v10 serverUUID];
            v22 = PRSLogExternalSystemService();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf) = 138543362;
              *(&buf + 4) = v21;
              _os_log_impl(&dword_1C26FF000, v22, OS_LOG_TYPE_DEFAULT, "Adding eligible configuration UUID: %{public}@", &buf, 0xCu);
            }

            [v30 bs_safeAddObject:v21];
LABEL_32:

            goto LABEL_33;
          }

          v21 = PRSLogExternalSystemService();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v23 = [v18 configurationType];
            LODWORD(buf) = 134217984;
            *(&buf + 4) = v23;
            _os_log_impl(&dword_1C26FF000, v21, OS_LOG_TYPE_DEFAULT, "Configuration type is not photo: %ld", &buf, 0xCu);
          }

          goto LABEL_32;
        }

        v20 = PRSLogExternalSystemService();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v11;
          _os_log_impl(&dword_1C26FF000, v20, OS_LOG_TYPE_DEFAULT, "Skipping non-Photos configuration: %{public}@", &buf, 0xCu);
        }

LABEL_33:

        ++v9;
      }

      while (v7 != v9);
      v24 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
      v7 = v24;
    }

    while (v24);
  }

  v25 = PRSLogExternalSystemService();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [v30 count];
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v26;
    _os_log_impl(&dword_1C26FF000, v25, OS_LOG_TYPE_DEFAULT, "Found %ld eligible configurations", &buf, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v27 = *MEMORY[0x1E69E9840];
}

- (void)updatePosterMatchingUUID:(id)a3 withConfiguration:(id)a4 completion:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = PRSLogExternalSystemService();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v24 = v9;
    _os_log_impl(&dword_1C26FF000, v12, OS_LOG_TYPE_DEFAULT, "Starting updatePosterMatchingUUID: %{public}@", buf, 0xCu);
  }

  v13 = v10;
  NSClassFromString(&cfstr_Wfwallpapercon.isa);
  if (!v13)
  {
    [PRSExternalSystemService updatePosterMatchingUUID:a2 withConfiguration:? completion:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRSExternalSystemService updatePosterMatchingUUID:a2 withConfiguration:? completion:?];
  }

  v14 = v9;
  NSClassFromString(&cfstr_Nsuuid.isa);
  if (!v14)
  {
    [PRSExternalSystemService updatePosterMatchingUUID:a2 withConfiguration:? completion:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRSExternalSystemService updatePosterMatchingUUID:a2 withConfiguration:? completion:?];
  }

  v15 = [PRSPosterUpdate posterUpdatesForWFWallpaperConfiguration:v13];
  v16 = PRSLogExternalSystemService();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v15 count];
    *buf = 134217984;
    v24 = v17;
    _os_log_impl(&dword_1C26FF000, v16, OS_LOG_TYPE_DEFAULT, "Created %ld poster updates for wallpaper configuration", buf, 0xCu);
  }

  service = self->_service;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __82__PRSExternalSystemService_updatePosterMatchingUUID_withConfiguration_completion___block_invoke;
  v21[3] = &unk_1E818DAE8;
  v22 = v11;
  v19 = v11;
  [(PRSService *)service updatePosterConfigurationMatchingUUID:v14 updates:v15 completion:v21];

  v20 = *MEMORY[0x1E69E9840];
}

void __82__PRSExternalSystemService_updatePosterMatchingUUID_withConfiguration_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = PRSLogExternalSystemService();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __82__PRSExternalSystemService_updatePosterMatchingUUID_withConfiguration_completion___block_invoke_cold_1();
    }

    v12 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v31 = [v8 count];
      _os_log_impl(&dword_1C26FF000, v11, OS_LOG_TYPE_DEFAULT, "Received %ld update results", buf, 0xCu);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = v8;
    v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v26;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v25 + 1) + 8 * i);
          v19 = [v18 error];

          if (v19)
          {
            v21 = PRSLogExternalSystemService();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              __82__PRSExternalSystemService_updatePosterMatchingUUID_withConfiguration_completion___block_invoke_cold_2(v18);
            }

            v22 = *(a1 + 32);
            v23 = [v18 error];
            (*(v22 + 16))(v22, 0, v23);

            goto LABEL_22;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v20 = PRSLogExternalSystemService();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C26FF000, v20, OS_LOG_TYPE_DEFAULT, "Successfully updated poster configuration", buf, 2u);
    }

    v12 = *(*(a1 + 32) + 16);
  }

  v12();
LABEL_22:

  v24 = *MEMORY[0x1E69E9840];
}

- (void)createLockScreenPhotosPosterWithImageAtURL:(id)a3 selectLockScreenPoster:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = PRSLogExternalSystemService();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    if (v6)
    {
      v11 = @"YES";
    }

    *buf = 138543618;
    v23 = v8;
    v24 = 2114;
    v25 = v11;
    _os_log_impl(&dword_1C26FF000, v10, OS_LOG_TYPE_DEFAULT, "Starting createLockScreenPhotosPosterWithImageAtURL: %{public}@, selectPoster: %{public}@", buf, 0x16u);
  }

  if (!v9)
  {
    [PRSExternalSystemService createLockScreenPhotosPosterWithImageAtURL:selectLockScreenPoster:completion:];
  }

  if (([v8 checkResourceIsReachableAndReturnError:0] & 1) == 0)
  {
    [PRSExternalSystemService createLockScreenPhotosPosterWithImageAtURL:selectLockScreenPoster:completion:];
  }

  v12 = [(PRSExternalSystemService *)self service];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __105__PRSExternalSystemService_createLockScreenPhotosPosterWithImageAtURL_selectLockScreenPoster_completion___block_invoke;
  v17[3] = &unk_1E818DB60;
  v19 = v8;
  v20 = v9;
  v18 = v12;
  v21 = v6;
  v13 = v8;
  v14 = v12;
  v15 = v9;
  [v14 createPosterConfigurationForProviderIdentifier:@"com.apple.PhotosUIPrivate.PhotosPosterProvider" posterDescriptorIdentifier:0 role:@"PRPosterRoleLockScreen" completion:v17];

  v16 = *MEMORY[0x1E69E9840];
}

void __105__PRSExternalSystemService_createLockScreenPhotosPosterWithImageAtURL_selectLockScreenPoster_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PRSLogExternalSystemService();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __105__PRSExternalSystemService_createLockScreenPhotosPosterWithImageAtURL_selectLockScreenPoster_completion___block_invoke_cold_1();
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 serverUUID];
      *buf = 138543362;
      v19 = v9;
      _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_DEFAULT, "Successfully created poster configuration: %{public}@", buf, 0xCu);
    }

    v10 = *(a1 + 32);
    v11 = [PRSPosterUpdate posterUpdateLockScreenPosterWithImageAtURL:*(a1 + 40)];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __105__PRSExternalSystemService_createLockScreenPhotosPosterWithImageAtURL_selectLockScreenPoster_completion___block_invoke_43;
    v13[3] = &unk_1E818DB38;
    v14 = *(a1 + 32);
    v15 = v5;
    v16 = *(a1 + 48);
    v17 = *(a1 + 56);
    [v10 updatePosterConfiguration:v15 update:v11 completion:v13];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __105__PRSExternalSystemService_createLockScreenPhotosPosterWithImageAtURL_selectLockScreenPoster_completion___block_invoke_43(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = PRSLogExternalSystemService();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __105__PRSExternalSystemService_createLockScreenPhotosPosterWithImageAtURL_selectLockScreenPoster_completion___block_invoke_43_cold_1();
    }

    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) serverUUID];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __105__PRSExternalSystemService_createLockScreenPhotosPosterWithImageAtURL_selectLockScreenPoster_completion___block_invoke_44;
    v21[3] = &unk_1E818DB10;
    v23 = *(a1 + 48);
    v22 = v7;
    [v10 deletePosterConfigurationsMatchingUUID:v11 completion:v21];

    v12 = v23;
LABEL_11:

    goto LABEL_12;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C26FF000, v9, OS_LOG_TYPE_DEFAULT, "Successfully updated poster configuration with image", buf, 2u);
  }

  v13 = *(a1 + 56);
  v14 = PRSLogExternalSystemService();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13 == 1)
  {
    if (v15)
    {
      *buf = 0;
      _os_log_impl(&dword_1C26FF000, v14, OS_LOG_TYPE_DEFAULT, "Selecting newly created poster as active", buf, 2u);
    }

    v16 = *(a1 + 32);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __105__PRSExternalSystemService_createLockScreenPhotosPosterWithImageAtURL_selectLockScreenPoster_completion___block_invoke_46;
    v17[3] = &unk_1E818DB10;
    v19 = *(a1 + 48);
    v18 = v6;
    [v16 updateSelectedForRoleIdentifier:@"PRPosterRoleLockScreen" newlySelectedConfiguration:v18 completion:v17];

    v12 = v19;
    goto LABEL_11;
  }

  if (v15)
  {
    *buf = 0;
    _os_log_impl(&dword_1C26FF000, v14, OS_LOG_TYPE_DEFAULT, "Poster created successfully without selection", buf, 2u);
  }

  (*(*(a1 + 48) + 16))();
LABEL_12:
}

void __105__PRSExternalSystemService_createLockScreenPhotosPosterWithImageAtURL_selectLockScreenPoster_completion___block_invoke_44(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRSLogExternalSystemService();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __105__PRSExternalSystemService_createLockScreenPhotosPosterWithImageAtURL_selectLockScreenPoster_completion___block_invoke_44_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_DEFAULT, "Successfully cleaned up failed poster configuration", v7, 2u);
  }

  v6 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

void __105__PRSExternalSystemService_createLockScreenPhotosPosterWithImageAtURL_selectLockScreenPoster_completion___block_invoke_46(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRSLogExternalSystemService();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __105__PRSExternalSystemService_createLockScreenPhotosPosterWithImageAtURL_selectLockScreenPoster_completion___block_invoke_46_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_DEFAULT, "Successfully selected poster", v7, 2u);
  }

  v6 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

void __96__PRSExternalSystemService_createLockScreenPhotosPosterWithImageAtURL_selectedLockScreenPoster___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = PRSLogExternalSystemService();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __96__PRSExternalSystemService_createLockScreenPhotosPosterWithImageAtURL_selectedLockScreenPoster___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_DEFAULT, "Future-based poster creation succeeded", v9, 2u);
  }

  [*(a1 + 32) finishWithResult:v6 error:v5];
}

- (void)updateLockScreenPhotosPoster:(id)a3 withImageAtURL:(id)a4 selectLockScreenPoster:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v34 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = PRSLogExternalSystemService();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v10 serverUUID];
    v15 = @"NO";
    *buf = 138543874;
    v29 = v14;
    v30 = 2114;
    if (v7)
    {
      v15 = @"YES";
    }

    v31 = v11;
    v32 = 2114;
    v33 = v15;
    _os_log_impl(&dword_1C26FF000, v13, OS_LOG_TYPE_DEFAULT, "Starting updateLockScreenPhotosPoster: %{public}@, imageURL: %{public}@, selectPoster: %{public}@", buf, 0x20u);
  }

  if (v12)
  {
    if (v10)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [PRSExternalSystemService updateLockScreenPhotosPoster:withImageAtURL:selectLockScreenPoster:completion:];
    if (v10)
    {
      goto LABEL_7;
    }
  }

  [PRSExternalSystemService updateLockScreenPhotosPoster:withImageAtURL:selectLockScreenPoster:completion:];
LABEL_7:
  if (([v11 checkResourceIsReachableAndReturnError:0] & 1) == 0)
  {
    [PRSExternalSystemService updateLockScreenPhotosPoster:withImageAtURL:selectLockScreenPoster:completion:];
  }

  v16 = [(PRSExternalSystemService *)self service];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __106__PRSExternalSystemService_updateLockScreenPhotosPoster_withImageAtURL_selectLockScreenPoster_completion___block_invoke;
  v22[3] = &unk_1E818DBD8;
  v23 = v10;
  v24 = v16;
  v25 = v11;
  v26 = v12;
  v27 = v7;
  v17 = v11;
  v18 = v16;
  v19 = v10;
  v20 = v12;
  [(PRSExternalSystemService *)self fetchEligibleConfigurationsWithCompletion:v22];

  v21 = *MEMORY[0x1E69E9840];
}

void __106__PRSExternalSystemService_updateLockScreenPhotosPoster_withImageAtURL_selectLockScreenPoster_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PRSLogExternalSystemService();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __106__PRSExternalSystemService_updateLockScreenPhotosPoster_withImageAtURL_selectLockScreenPoster_completion___block_invoke_cold_1();
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) serverUUID];
      *buf = 138543618;
      v29 = v9;
      v30 = 2048;
      v31 = [v5 count];
      _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_DEFAULT, "Checking if poster UUID %{public}@ is in eligible set of %ld configurations", buf, 0x16u);
    }

    v10 = [*(a1 + 32) serverUUID];
    v11 = [v5 containsObject:v10];

    v12 = PRSLogExternalSystemService();
    v13 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C26FF000, v13, OS_LOG_TYPE_DEFAULT, "Poster is eligible, proceeding with update", buf, 2u);
      }

      v15 = *(a1 + 32);
      v14 = *(a1 + 40);
      v16 = [PRSPosterUpdate posterUpdateLockScreenPosterWithImageAtURL:*(a1 + 48)];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __106__PRSExternalSystemService_updateLockScreenPhotosPoster_withImageAtURL_selectLockScreenPoster_completion___block_invoke_61;
      v22[3] = &unk_1E818DBB0;
      v24 = *(a1 + 56);
      v25 = *(a1 + 64);
      v23 = *(a1 + 40);
      [v14 updatePosterConfiguration:v15 update:v16 completion:v22];
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __106__PRSExternalSystemService_updateLockScreenPhotosPoster_withImageAtURL_selectLockScreenPoster_completion___block_invoke_cold_2((a1 + 32));
      }

      v17 = *(a1 + 56);
      v18 = MEMORY[0x1E696ABC0];
      v26 = *MEMORY[0x1E696A588];
      v27 = @"Poster is not eligible";
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v20 = [v18 errorWithDomain:@"com.apple.posterboardservices" code:0 userInfo:v19];
      (*(v17 + 16))(v17, 0, v20);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __106__PRSExternalSystemService_updateLockScreenPhotosPoster_withImageAtURL_selectLockScreenPoster_completion___block_invoke_61(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = PRSLogExternalSystemService();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __106__PRSExternalSystemService_updateLockScreenPhotosPoster_withImageAtURL_selectLockScreenPoster_completion___block_invoke_61_cold_1();
    }

    v10 = *(*(a1 + 40) + 16);
LABEL_14:
    v10();
    goto LABEL_15;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C26FF000, v9, OS_LOG_TYPE_DEFAULT, "Successfully updated lock screen poster", buf, 2u);
  }

  v11 = *(a1 + 48);
  v12 = PRSLogExternalSystemService();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11 != 1)
  {
    if (v13)
    {
      *buf = 0;
      _os_log_impl(&dword_1C26FF000, v12, OS_LOG_TYPE_DEFAULT, "Poster updated successfully without selection", buf, 2u);
    }

    v10 = *(*(a1 + 40) + 16);
    goto LABEL_14;
  }

  if (v13)
  {
    *buf = 0;
    _os_log_impl(&dword_1C26FF000, v12, OS_LOG_TYPE_DEFAULT, "Selecting updated poster as active", buf, 2u);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __106__PRSExternalSystemService_updateLockScreenPhotosPoster_withImageAtURL_selectLockScreenPoster_completion___block_invoke_62;
  v15[3] = &unk_1E818DB10;
  v14 = *(a1 + 32);
  v17 = *(a1 + 40);
  v16 = v6;
  [v14 updateSelectedForRoleIdentifier:@"PRPosterRoleLockScreen" newlySelectedConfiguration:v16 completion:v15];

LABEL_15:
}

void __106__PRSExternalSystemService_updateLockScreenPhotosPoster_withImageAtURL_selectLockScreenPoster_completion___block_invoke_62(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRSLogExternalSystemService();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __106__PRSExternalSystemService_updateLockScreenPhotosPoster_withImageAtURL_selectLockScreenPoster_completion___block_invoke_62_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_DEFAULT, "Successfully selected updated poster", v7, 2u);
  }

  v6 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

- (void)updateHomeScreenImageForLockScreenPoster:(id)a3 withImageAtURL:(id)a4 selectLockPoster:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v34 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = PRSLogExternalSystemService();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v10 serverUUID];
    v15 = @"NO";
    *buf = 138543874;
    v29 = v14;
    v30 = 2114;
    if (v7)
    {
      v15 = @"YES";
    }

    v31 = v11;
    v32 = 2114;
    v33 = v15;
    _os_log_impl(&dword_1C26FF000, v13, OS_LOG_TYPE_DEFAULT, "Starting updateHomeScreenImageForLockScreenPoster: %{public}@, imageURL: %{public}@, selectLockPoster: %{public}@", buf, 0x20u);
  }

  if (v12)
  {
    if (v10)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [PRSExternalSystemService updateHomeScreenImageForLockScreenPoster:withImageAtURL:selectLockPoster:completion:];
    if (v10)
    {
      goto LABEL_7;
    }
  }

  [PRSExternalSystemService updateHomeScreenImageForLockScreenPoster:withImageAtURL:selectLockPoster:completion:];
LABEL_7:
  if (([v11 checkResourceIsReachableAndReturnError:0] & 1) == 0)
  {
    [PRSExternalSystemService updateHomeScreenImageForLockScreenPoster:withImageAtURL:selectLockPoster:completion:];
  }

  v16 = [(PRSExternalSystemService *)self service];
  v17 = [v10 serverUUID];
  v18 = [PRSPosterUpdate posterUpdateHomeScreenPosterWithImageAtURL:v11];
  v27 = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __112__PRSExternalSystemService_updateHomeScreenImageForLockScreenPoster_withImageAtURL_selectLockPoster_completion___block_invoke;
  v23[3] = &unk_1E818DC00;
  v26 = v7;
  v24 = v16;
  v25 = v12;
  v20 = v16;
  v21 = v12;
  [v20 updatePosterConfigurationMatchingUUID:v17 updates:v19 completion:v23];

  v22 = *MEMORY[0x1E69E9840];
}

void __112__PRSExternalSystemService_updateHomeScreenImageForLockScreenPoster_withImageAtURL_selectLockPoster_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = PRSLogExternalSystemService();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __112__PRSExternalSystemService_updateHomeScreenImageForLockScreenPoster_withImageAtURL_selectLockPoster_completion___block_invoke_cold_1();
    }

    v10 = *(*(a1 + 40) + 16);
LABEL_14:
    v10();
    goto LABEL_15;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C26FF000, v9, OS_LOG_TYPE_DEFAULT, "Successfully updated home screen image", buf, 2u);
  }

  v11 = *(a1 + 48);
  v12 = PRSLogExternalSystemService();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11 != 1)
  {
    if (v13)
    {
      *buf = 0;
      _os_log_impl(&dword_1C26FF000, v12, OS_LOG_TYPE_DEFAULT, "Home screen image updated successfully without lock poster selection", buf, 2u);
    }

    v10 = *(*(a1 + 40) + 16);
    goto LABEL_14;
  }

  if (v13)
  {
    *buf = 0;
    _os_log_impl(&dword_1C26FF000, v12, OS_LOG_TYPE_DEFAULT, "Selecting lock screen poster as active", buf, 2u);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __112__PRSExternalSystemService_updateHomeScreenImageForLockScreenPoster_withImageAtURL_selectLockPoster_completion___block_invoke_65;
  v15[3] = &unk_1E818DB10;
  v14 = *(a1 + 32);
  v17 = *(a1 + 40);
  v16 = v6;
  [v14 updateSelectedForRoleIdentifier:@"PRPosterRoleLockScreen" newlySelectedConfiguration:v16 completion:v15];

LABEL_15:
}

void __112__PRSExternalSystemService_updateHomeScreenImageForLockScreenPoster_withImageAtURL_selectLockPoster_completion___block_invoke_65(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRSLogExternalSystemService();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __112__PRSExternalSystemService_updateHomeScreenImageForLockScreenPoster_withImageAtURL_selectLockPoster_completion___block_invoke_65_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_DEFAULT, "Successfully selected lock screen poster", v7, 2u);
  }

  v6 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

- (void)fetchLockScreenWallpaperWithCompletion:(id)a3
{
  v4 = a3;
  v5 = PRSLogExternalSystemService();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_DEFAULT, "Starting fetchLockScreenWallpaperWithCompletion (portrait orientation)", v6, 2u);
  }

  [(PRSExternalSystemService *)self fetchLockScreenWallpaperForOrientation:1 completion:v4];
}

- (void)fetchLockScreenWallpaperForOrientation:(int64_t)a3 completion:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = PRSLogExternalSystemService();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = a3;
    _os_log_impl(&dword_1C26FF000, v7, OS_LOG_TYPE_DEFAULT, "Starting fetchLockScreenWallpaperForOrientation: %ld", &v9, 0xCu);
  }

  [(PRSExternalSystemService *)self fetchLockScreenWallpaperForType:0 variant:0 options:192 orientation:a3 completion:v6];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)fetchHomeScreenWallpaperWithCompletion:(id)a3
{
  v4 = a3;
  v5 = PRSLogExternalSystemService();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_DEFAULT, "Starting fetchHomeScreenWallpaperWithCompletion (portrait orientation)", v6, 2u);
  }

  [(PRSExternalSystemService *)self fetchHomeScreenWallpaperForOrientation:1 completion:v4];
}

- (void)fetchHomeScreenWallpaperForOrientation:(int64_t)a3 completion:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = PRSLogExternalSystemService();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = a3;
    _os_log_impl(&dword_1C26FF000, v7, OS_LOG_TYPE_DEFAULT, "Starting fetchHomeScreenWallpaperForOrientation: %ld", &v9, 0xCu);
  }

  [(PRSExternalSystemService *)self fetchLockScreenWallpaperForType:0 variant:1 options:197 orientation:1 completion:v6];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)fetchLockScreenWallpaperForType:(int64_t)a3 variant:(int64_t)a4 options:(unint64_t)a5 orientation:(int64_t)a6 completion:(id)a7
{
  v28 = *MEMORY[0x1E69E9840];
  v12 = a7;
  v13 = PRSLogExternalSystemService();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218752;
    v21 = a3;
    v22 = 2048;
    v23 = a4;
    v24 = 2048;
    v25 = a5;
    v26 = 2048;
    v27 = a6;
    _os_log_impl(&dword_1C26FF000, v13, OS_LOG_TYPE_DEFAULT, "Starting fetchLockScreenWallpaperForType: %ld, variant: %ld, options: %ld, orientation: %ld", buf, 0x2Au);
  }

  if (!v12)
  {
    [PRSExternalSystemService fetchLockScreenWallpaperForType:variant:options:orientation:completion:];
  }

  v18 = @"PRSPosterSnapshotRequestOptionSnapshotDefinitionIdentifier";
  v19 = @"OSMigration";
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v15 = [[PRSPosterSnapshotRequest alloc] initWithConfigurationType:a3 variantType:a4 options:a5 orientation:a6 requestOptions:v14];
  v16 = PRSLogExternalSystemService();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C26FF000, v16, OS_LOG_TYPE_DEFAULT, "Created snapshot request with definition identifier: OSMigration", buf, 2u);
  }

  [(PRSExternalSystemService *)self fetchLockScreenWallpaperForRequest:v15 checkLockScreenPoster:a4 == 0 completion:v12];
  v17 = *MEMORY[0x1E69E9840];
}

- (void)fetchLockScreenWallpaperForRequest:(id)a3 checkLockScreenPoster:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v20 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a3;
  v10 = PRSLogExternalSystemService();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    if (v5)
    {
      v11 = @"YES";
    }

    *buf = 138543362;
    v19 = v11;
    _os_log_impl(&dword_1C26FF000, v10, OS_LOG_TYPE_DEFAULT, "Starting fetchLockScreenWallpaperForRequest, checkLockScreenPoster: %{public}@", buf, 0xCu);
  }

  v12 = [(PRSExternalSystemService *)self service];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __96__PRSExternalSystemService_fetchLockScreenWallpaperForRequest_checkLockScreenPoster_completion___block_invoke;
  v15[3] = &unk_1E818DC28;
  v17 = v5;
  v15[4] = self;
  v16 = v8;
  v13 = v8;
  [v12 fetchPosterSnapshotsWithRequest:v9 completion:v15];

  v14 = *MEMORY[0x1E69E9840];
}

void __96__PRSExternalSystemService_fetchLockScreenWallpaperForRequest_checkLockScreenPoster_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v50[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = PRSLogExternalSystemService();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __96__PRSExternalSystemService_fetchLockScreenWallpaperForRequest_checkLockScreenPoster_completion___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = [a2 snapshots];
    v8 = [v7 firstObject];

    if (v8)
    {
      if (*(a1 + 48))
      {
        [v8 switcherConfigurationPath];
      }

      else
      {
        [v8 homeScreenConfigurationPath];
      }
      v14 = ;
      v15 = [v14 identity];
      v12 = [v15 provider];

      v16 = PRSLogExternalSystemService();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v48 = v12;
        _os_log_impl(&dword_1C26FF000, v16, OS_LOG_TYPE_DEFAULT, "Snapshot provider: %{public}@", buf, 0xCu);
      }

      if ([v12 isEqualToString:@"com.apple.PhotosUIPrivate.PhotosPosterProvider"])
      {
        v13 = [MEMORY[0x1E695DFF8] pf_temporaryDirectoryURLWithBasenamePrefix:@"ExternalSystemServiceFetchLockScreen"];
        v17 = [MEMORY[0x1E696AFB0] UUID];
        v18 = [v17 UUIDString];
        v19 = [v18 stringByAppendingFormat:@"fetchedWallpaper.png"];

        v20 = [v13 URLByAppendingPathComponent:v19];
        v21 = PRSLogExternalSystemService();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v48 = v20;
          _os_log_impl(&dword_1C26FF000, v21, OS_LOG_TYPE_DEFAULT, "Writing snapshot to temporary URL: %{public}@", buf, 0xCu);
        }

        v46 = 0;
        v22 = [v8 writePNGToURL:v20 error:&v46];
        v23 = v46;
        v24 = PRSLogExternalSystemService();
        v25 = v24;
        if (v22)
        {
          v41 = v23;
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1C26FF000, v25, OS_LOG_TYPE_DEFAULT, "Successfully wrote PNG, now mapping data", buf, 2u);
          }

          v45 = 0;
          v43 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v20 options:8 error:&v45];
          v26 = v45;
          v27 = [MEMORY[0x1E696AC08] defaultManager];
          v44 = 0;
          v28 = [v27 removeItemAtURL:v13 error:&v44];
          v42 = v44;

          v29 = PRSLogExternalSystemService();
          v30 = v29;
          if (v28)
          {
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1C26FF000, v30, OS_LOG_TYPE_DEFAULT, "Successfully removed temporary directory", buf, 2u);
            }
          }

          else if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            __96__PRSExternalSystemService_fetchLockScreenWallpaperForRequest_checkLockScreenPoster_completion___block_invoke_cold_4();
          }

          v35 = PRSLogExternalSystemService();
          v36 = v35;
          v23 = v41;
          if (v26)
          {
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              __96__PRSExternalSystemService_fetchLockScreenWallpaperForRequest_checkLockScreenPoster_completion___block_invoke_cold_5();
            }

            (*(*(a1 + 40) + 16))();
            v37 = v43;
          }

          else
          {
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              v38 = [v43 length];
              *buf = 134217984;
              v48 = v38;
              _os_log_impl(&dword_1C26FF000, v36, OS_LOG_TYPE_DEFAULT, "Successfully fetched wallpaper data (%ld bytes)", buf, 0xCu);
            }

            v39 = *(*(a1 + 40) + 16);
            v37 = v43;
            v39();
          }
        }

        else
        {
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            __96__PRSExternalSystemService_fetchLockScreenWallpaperForRequest_checkLockScreenPoster_completion___block_invoke_cold_3();
          }

          (*(*(a1 + 40) + 16))();
        }
      }

      else
      {
        v31 = PRSLogExternalSystemService();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          __96__PRSExternalSystemService_fetchLockScreenWallpaperForRequest_checkLockScreenPoster_completion___block_invoke_cold_2();
        }

        v34 = a1 + 32;
        v32 = *(a1 + 32);
        v33 = *(v34 + 8);
        v13 = PFFunctionNameForAddress();
        v19 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
        (*(v33 + 16))(v33, 0, 0, v19);
      }
    }

    else
    {
      v9 = PRSLogExternalSystemService();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __96__PRSExternalSystemService_fetchLockScreenWallpaperForRequest_checkLockScreenPoster_completion___block_invoke_cold_6(v9);
      }

      v10 = *(a1 + 40);
      v11 = MEMORY[0x1E696ABC0];
      v49 = *MEMORY[0x1E696A588];
      v50[0] = @"No snapshots available";
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:&v49 count:1];
      v13 = [v11 errorWithDomain:@"com.apple.posterboardservices" code:0 userInfo:v12];
      (*(v10 + 16))(v10, 0, 0, v13);
    }
  }

  v40 = *MEMORY[0x1E69E9840];
}

- (void)resetLockScreenWallpapersToImageAtURL:(id)a3 completion:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PRSLogExternalSystemService();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_DEFAULT, "Starting resetLockScreenWallpapersToImageAtURL: %{public}@", &v10, 0xCu);
  }

  [(PRSExternalSystemService *)self resetLockScreenWallpapersToImageAtURL:v6 homeScreenWallpaper:0 completion:v7];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)resetLockScreenWallpapersToImageAtURL:(id)a3 homeScreenWallpaper:(id)a4 completion:(id)a5
{
  v47 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PRSLogExternalSystemService();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v44 = v8;
    v45 = 2114;
    v46 = v9;
    _os_log_impl(&dword_1C26FF000, v11, OS_LOG_TYPE_DEFAULT, "Starting resetLockScreenWallpapersToImageAtURL: %{public}@, homeScreenWallpaper: %{public}@", buf, 0x16u);
  }

  if (!v10)
  {
    [PRSExternalSystemService resetLockScreenWallpapersToImageAtURL:homeScreenWallpaper:completion:];
  }

  v12 = PRSLogExternalSystemService();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v44 = v8;
    _os_log_impl(&dword_1C26FF000, v12, OS_LOG_TYPE_DEFAULT, "Checking if lockScreenImageURL is reachable: %{public}@", buf, 0xCu);
  }

  v42 = 0;
  v13 = [v8 checkResourceIsReachableAndReturnError:&v42];
  v14 = v42;
  v15 = PRSLogExternalSystemService();
  v16 = v15;
  if (v13)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C26FF000, v16, OS_LOG_TYPE_DEFAULT, "lockScreenImageURL is reachable", buf, 2u);
    }

    if (v9)
    {
      v41 = v14;
      v17 = [v9 checkResourceIsReachableAndReturnError:&v41];
      v18 = v41;

      v19 = PRSLogExternalSystemService();
      v20 = v19;
      if ((v17 & 1) == 0)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [PRSExternalSystemService resetLockScreenWallpapersToImageAtURL:homeScreenWallpaper:completion:];
        }

        v21 = PFFunctionNameForAddress();
        v22 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
        v10[2](v10, v22);
        goto LABEL_25;
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C26FF000, v20, OS_LOG_TYPE_DEFAULT, "homeScreenWallpaperURL is reachable", buf, 2u);
      }
    }

    else
    {
      v18 = v14;
    }

    v23 = [(PRSExternalSystemService *)self service];
    v24 = PRSLogExternalSystemService();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C26FF000, v24, OS_LOG_TYPE_DEFAULT, "Creating lock screen photos poster and starting reset operation", buf, 2u);
    }

    v25 = [(PRSExternalSystemService *)self createLockScreenPhotosPosterWithImageAtURL:v8 selectedLockScreenPoster:1];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __97__PRSExternalSystemService_resetLockScreenWallpapersToImageAtURL_homeScreenWallpaper_completion___block_invoke;
    v38[3] = &unk_1E818DC78;
    v39 = v9;
    v26 = v23;
    v40 = v26;
    v27 = [v25 flatMap:v38];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __97__PRSExternalSystemService_resetLockScreenWallpapersToImageAtURL_homeScreenWallpaper_completion___block_invoke_102;
    v35[3] = &unk_1E818DCF0;
    v36 = v26;
    v28 = v10;
    v37 = v28;
    v21 = v26;
    v29 = [v27 flatMap:v35];

    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __97__PRSExternalSystemService_resetLockScreenWallpapersToImageAtURL_homeScreenWallpaper_completion___block_invoke_108;
    v33[3] = &unk_1E818DD18;
    v34 = v28;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __97__PRSExternalSystemService_resetLockScreenWallpapersToImageAtURL_homeScreenWallpaper_completion___block_invoke_110;
    v31[3] = &unk_1E818D020;
    v32 = v34;
    [v29 addSuccessBlock:v33 andFailureBlock:v31];

    v22 = v39;
LABEL_25:
    v14 = v18;
    goto LABEL_26;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [PRSExternalSystemService resetLockScreenWallpapersToImageAtURL:homeScreenWallpaper:completion:];
  }

  v21 = PFFunctionNameForAddress();
  v22 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
  v10[2](v10, v22);
LABEL_26:

  v30 = *MEMORY[0x1E69E9840];
}

id __97__PRSExternalSystemService_resetLockScreenWallpapersToImageAtURL_homeScreenWallpaper_completion___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PRSLogExternalSystemService();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 serverUUID];
    *buf = 138543362;
    v23 = v5;
    _os_log_impl(&dword_1C26FF000, v4, OS_LOG_TYPE_DEFAULT, "Lock screen poster created successfully: %{public}@", buf, 0xCu);
  }

  v6 = *(a1 + 32);
  v7 = PRSLogExternalSystemService();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_1C26FF000, v7, OS_LOG_TYPE_DEFAULT, "Updating home screen wallpaper", buf, 2u);
    }

    v9 = objc_opt_new();
    v10 = *(a1 + 40);
    v11 = [PRSPosterUpdate posterUpdateHomeScreenPosterWithImageAtURL:*(a1 + 32)];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __97__PRSExternalSystemService_resetLockScreenWallpapersToImageAtURL_homeScreenWallpaper_completion___block_invoke_99;
    v19 = &unk_1E818DC50;
    v20 = v9;
    v21 = v3;
    v12 = v9;
    [v10 updatePosterConfiguration:v21 update:v11 completion:&v16];

    v13 = [v12 future];
  }

  else
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_1C26FF000, v7, OS_LOG_TYPE_DEFAULT, "No home screen wallpaper to update", buf, 2u);
    }

    v13 = [MEMORY[0x1E69C5258] futureWithResult:v3];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

void __97__PRSExternalSystemService_resetLockScreenWallpapersToImageAtURL_homeScreenWallpaper_completion___block_invoke_99(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = PRSLogExternalSystemService();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __97__PRSExternalSystemService_resetLockScreenWallpapersToImageAtURL_homeScreenWallpaper_completion___block_invoke_99_cold_1();
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_1C26FF000, v11, OS_LOG_TYPE_DEFAULT, "Successfully updated home screen wallpaper", v13, 2u);
  }

  v12 = v7;
  if (!v7)
  {
    v12 = *(a1 + 40);
  }

  [*(a1 + 32) finishWithResult:v12 error:0];
}

id __97__PRSExternalSystemService_resetLockScreenWallpapersToImageAtURL_homeScreenWallpaper_completion___block_invoke_102(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PRSLogExternalSystemService();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C26FF000, v4, OS_LOG_TYPE_DEFAULT, "Starting cleanup of existing poster configurations", buf, 2u);
  }

  v5 = objc_opt_new();
  v6 = [v3 _path];
  v7 = [v6 serverIdentity];
  v8 = [v7 posterUUID];

  v9 = PRSLogExternalSystemService();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = v8;
    _os_log_impl(&dword_1C26FF000, v9, OS_LOG_TYPE_DEFAULT, "New configuration UUID to preserve: %{public}@", buf, 0xCu);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __97__PRSExternalSystemService_resetLockScreenWallpapersToImageAtURL_homeScreenWallpaper_completion___block_invoke_103;
  v18[3] = &unk_1E818DCC8;
  v10 = *(a1 + 32);
  v23 = *(a1 + 40);
  v19 = v8;
  v20 = *(a1 + 32);
  v11 = v5;
  v21 = v11;
  v22 = v3;
  v12 = v3;
  v13 = v8;
  [v10 fetchPosterConfigurationsForRole:@"PRPosterRoleLockScreen" completion:v18];
  v14 = v22;
  v15 = v11;

  v16 = *MEMORY[0x1E69E9840];
  return v11;
}

void __97__PRSExternalSystemService_resetLockScreenWallpapersToImageAtURL_homeScreenWallpaper_completion___block_invoke_103(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PRSLogExternalSystemService();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __97__PRSExternalSystemService_resetLockScreenWallpapersToImageAtURL_homeScreenWallpaper_completion___block_invoke_103_cold_1();
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v25 = 0;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v40 = [v5 count];
      _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_DEFAULT, "Found %ld configurations to process for cleanup", buf, 0xCu);
    }

    v9 = dispatch_group_create();
    dispatch_group_enter(v9);
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v26 = v5;
    obj = v5;
    v10 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v35;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v35 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = [*(*(&v34 + 1) + 8 * i) _path];
          v16 = [v15 serverIdentity];
          v17 = [v16 posterUUID];

          LODWORD(v16) = [v17 isEqual:*(a1 + 32)];
          v18 = PRSLogExternalSystemService();
          v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
          if (v16)
          {
            if (v19)
            {
              *buf = 138543362;
              v40 = v17;
              _os_log_impl(&dword_1C26FF000, v18, OS_LOG_TYPE_DEFAULT, "Skipping deletion of new configuration: %{public}@", buf, 0xCu);
            }
          }

          else
          {
            if (v19)
            {
              *buf = 138543362;
              v40 = v17;
              _os_log_impl(&dword_1C26FF000, v18, OS_LOG_TYPE_DEFAULT, "Deleting configuration: %{public}@", buf, 0xCu);
            }

            ++v12;
            dispatch_group_enter(v9);
            v20 = *(a1 + 40);
            v31[0] = MEMORY[0x1E69E9820];
            v31[1] = 3221225472;
            v31[2] = __97__PRSExternalSystemService_resetLockScreenWallpapersToImageAtURL_homeScreenWallpaper_completion___block_invoke_104;
            v31[3] = &unk_1E818DCA0;
            v21 = v17;
            v32 = v21;
            v33 = v9;
            [v20 deletePosterConfigurationsMatchingUUID:v21 completion:v31];

            v18 = v32;
          }
        }

        v11 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }

    dispatch_group_leave(v9);
    v22 = PRSLogExternalSystemService();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v40 = v12;
      _os_log_impl(&dword_1C26FF000, v22, OS_LOG_TYPE_DEFAULT, "Initiated deletion of %ld configurations", buf, 0xCu);
    }

    v23 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __97__PRSExternalSystemService_resetLockScreenWallpapersToImageAtURL_homeScreenWallpaper_completion___block_invoke_105;
    block[3] = &unk_1E818CF88;
    v29 = *(a1 + 48);
    v30 = *(a1 + 56);
    dispatch_group_notify(v9, v23, block);

    v6 = v25;
    v5 = v26;
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __97__PRSExternalSystemService_resetLockScreenWallpapersToImageAtURL_homeScreenWallpaper_completion___block_invoke_104(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PRSLogExternalSystemService();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __97__PRSExternalSystemService_resetLockScreenWallpapersToImageAtURL_homeScreenWallpaper_completion___block_invoke_104_cold_1(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_DEFAULT, "Successfully deleted configuration: %{public}@", &v8, 0xCu);
  }

  dispatch_group_leave(*(a1 + 40));
  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __97__PRSExternalSystemService_resetLockScreenWallpapersToImageAtURL_homeScreenWallpaper_completion___block_invoke_105(uint64_t a1)
{
  v2 = PRSLogExternalSystemService();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C26FF000, v2, OS_LOG_TYPE_DEFAULT, "Cleanup completed successfully", v4, 2u);
  }

  return [*(a1 + 32) finishWithResult:*(a1 + 40)];
}

uint64_t __97__PRSExternalSystemService_resetLockScreenWallpapersToImageAtURL_homeScreenWallpaper_completion___block_invoke_108(uint64_t a1)
{
  v2 = PRSLogExternalSystemService();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C26FF000, v2, OS_LOG_TYPE_DEFAULT, "Reset lock screen wallpapers operation completed successfully", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void __97__PRSExternalSystemService_resetLockScreenWallpapersToImageAtURL_homeScreenWallpaper_completion___block_invoke_110(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRSLogExternalSystemService();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __97__PRSExternalSystemService_resetLockScreenWallpapersToImageAtURL_homeScreenWallpaper_completion___block_invoke_110_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchEligibleConfigurationsWithCompletion:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"completionHandler", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __70__PRSExternalSystemService_fetchEligibleConfigurationsWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_1(&dword_1C26FF000, v0, v1, "Error fetching poster configurations: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __70__PRSExternalSystemService_fetchEligibleConfigurationsWithCompletion___block_invoke_cold_2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1C26FF000, log, OS_LOG_TYPE_ERROR, "Failed to load PFPosterConfiguration (nil result)", buf, 2u);
}

- (void)updatePosterMatchingUUID:(char *)a1 withConfiguration:completion:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:WFWallpaperConfigurationClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updatePosterMatchingUUID:(char *)a1 withConfiguration:completion:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSUUIDClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updatePosterMatchingUUID:(char *)a1 withConfiguration:completion:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updatePosterMatchingUUID:(char *)a1 withConfiguration:completion:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __82__PRSExternalSystemService_updatePosterMatchingUUID_withConfiguration_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_1(&dword_1C26FF000, v0, v1, "Error updating poster configuration: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __82__PRSExternalSystemService_updatePosterMatchingUUID_withConfiguration_completion___block_invoke_cold_2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 error];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_7_1(&dword_1C26FF000, v2, v3, "Update result contains error: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)createLockScreenPhotosPosterWithImageAtURL:selectLockScreenPoster:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v1 handleFailureInMethod:@"completionHandler" object:? file:? lineNumber:? description:?];
}

- (void)createLockScreenPhotosPosterWithImageAtURL:selectLockScreenPoster:completion:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v1 handleFailureInMethod:@"[imageURL checkResourceIsReachableAndReturnError:nil]" object:? file:? lineNumber:? description:?];
}

void __105__PRSExternalSystemService_createLockScreenPhotosPosterWithImageAtURL_selectLockScreenPoster_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_1(&dword_1C26FF000, v0, v1, "Error creating poster configuration: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __105__PRSExternalSystemService_createLockScreenPhotosPosterWithImageAtURL_selectLockScreenPoster_completion___block_invoke_43_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_1(&dword_1C26FF000, v0, v1, "Error updating poster configuration with image: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __105__PRSExternalSystemService_createLockScreenPhotosPosterWithImageAtURL_selectLockScreenPoster_completion___block_invoke_44_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_1(&dword_1C26FF000, v0, v1, "Error cleaning up failed poster configuration: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __105__PRSExternalSystemService_createLockScreenPhotosPosterWithImageAtURL_selectLockScreenPoster_completion___block_invoke_46_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_1(&dword_1C26FF000, v0, v1, "Error selecting poster: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __96__PRSExternalSystemService_createLockScreenPhotosPosterWithImageAtURL_selectedLockScreenPoster___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_1(&dword_1C26FF000, v0, v1, "Future-based poster creation failed: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)updateLockScreenPhotosPoster:withImageAtURL:selectLockScreenPoster:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v1 handleFailureInMethod:@"completionHandler" object:? file:? lineNumber:? description:?];
}

- (void)updateLockScreenPhotosPoster:withImageAtURL:selectLockScreenPoster:completion:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v1 handleFailureInMethod:@"poster" object:? file:? lineNumber:? description:?];
}

- (void)updateLockScreenPhotosPoster:withImageAtURL:selectLockScreenPoster:completion:.cold.3()
{
  OUTLINED_FUNCTION_3_1();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v1 handleFailureInMethod:@"[imageURL checkResourceIsReachableAndReturnError:nil]" object:? file:? lineNumber:? description:?];
}

void __106__PRSExternalSystemService_updateLockScreenPhotosPoster_withImageAtURL_selectLockScreenPoster_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_1(&dword_1C26FF000, v0, v1, "Error fetching eligible configurations: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __106__PRSExternalSystemService_updateLockScreenPhotosPoster_withImageAtURL_selectLockScreenPoster_completion___block_invoke_cold_2(id *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [*a1 serverUUID];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_7_1(&dword_1C26FF000, v2, v3, "Poster UUID %{public}@ is not eligible for update", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __106__PRSExternalSystemService_updateLockScreenPhotosPoster_withImageAtURL_selectLockScreenPoster_completion___block_invoke_61_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_1(&dword_1C26FF000, v0, v1, "Error updating lock screen poster: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __106__PRSExternalSystemService_updateLockScreenPhotosPoster_withImageAtURL_selectLockScreenPoster_completion___block_invoke_62_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_1(&dword_1C26FF000, v0, v1, "Error selecting updated poster: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)updateHomeScreenImageForLockScreenPoster:withImageAtURL:selectLockPoster:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v1 handleFailureInMethod:@"completionHandler" object:? file:? lineNumber:? description:?];
}

- (void)updateHomeScreenImageForLockScreenPoster:withImageAtURL:selectLockPoster:completion:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v1 handleFailureInMethod:@"poster" object:? file:? lineNumber:? description:?];
}

- (void)updateHomeScreenImageForLockScreenPoster:withImageAtURL:selectLockPoster:completion:.cold.3()
{
  OUTLINED_FUNCTION_3_1();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v1 handleFailureInMethod:@"[imageURL checkResourceIsReachableAndReturnError:nil]" object:? file:? lineNumber:? description:?];
}

void __112__PRSExternalSystemService_updateHomeScreenImageForLockScreenPoster_withImageAtURL_selectLockPoster_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_1(&dword_1C26FF000, v0, v1, "Error updating home screen image: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __112__PRSExternalSystemService_updateHomeScreenImageForLockScreenPoster_withImageAtURL_selectLockPoster_completion___block_invoke_65_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_1(&dword_1C26FF000, v0, v1, "Error selecting lock screen poster: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)fetchLockScreenWallpaperForType:variant:options:orientation:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v1 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void __96__PRSExternalSystemService_fetchLockScreenWallpaperForRequest_checkLockScreenPoster_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_1(&dword_1C26FF000, v0, v1, "Error fetching poster snapshots: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __96__PRSExternalSystemService_fetchLockScreenWallpaperForRequest_checkLockScreenPoster_completion___block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_1(&dword_1C26FF000, v0, v1, "Provider is not PhotosPosterProvider: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __96__PRSExternalSystemService_fetchLockScreenWallpaperForRequest_checkLockScreenPoster_completion___block_invoke_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_1(&dword_1C26FF000, v0, v1, "Error writing PNG to temporary URL: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __96__PRSExternalSystemService_fetchLockScreenWallpaperForRequest_checkLockScreenPoster_completion___block_invoke_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_1(&dword_1C26FF000, v0, v1, "Error removing temporary directory: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __96__PRSExternalSystemService_fetchLockScreenWallpaperForRequest_checkLockScreenPoster_completion___block_invoke_cold_5()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_1(&dword_1C26FF000, v0, v1, "Error mapping data from PNG file: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)resetLockScreenWallpapersToImageAtURL:homeScreenWallpaper:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v1 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)resetLockScreenWallpapersToImageAtURL:homeScreenWallpaper:completion:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_1(&dword_1C26FF000, v0, v1, "lockScreenImageURL is not reachable: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)resetLockScreenWallpapersToImageAtURL:homeScreenWallpaper:completion:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_1(&dword_1C26FF000, v0, v1, "homeScreenWallpaperURL is not reachable: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __97__PRSExternalSystemService_resetLockScreenWallpapersToImageAtURL_homeScreenWallpaper_completion___block_invoke_99_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_1(&dword_1C26FF000, v0, v1, "Error updating home screen wallpaper (not aborting operation): %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __97__PRSExternalSystemService_resetLockScreenWallpapersToImageAtURL_homeScreenWallpaper_completion___block_invoke_103_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_1(&dword_1C26FF000, v0, v1, "Error fetching configurations for cleanup: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __97__PRSExternalSystemService_resetLockScreenWallpapersToImageAtURL_homeScreenWallpaper_completion___block_invoke_104_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_1C26FF000, log, OS_LOG_TYPE_ERROR, "Error deleting configuration %{public}@: %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void __97__PRSExternalSystemService_resetLockScreenWallpapersToImageAtURL_homeScreenWallpaper_completion___block_invoke_110_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_1(&dword_1C26FF000, v0, v1, "Reset lock screen wallpapers operation failed: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end