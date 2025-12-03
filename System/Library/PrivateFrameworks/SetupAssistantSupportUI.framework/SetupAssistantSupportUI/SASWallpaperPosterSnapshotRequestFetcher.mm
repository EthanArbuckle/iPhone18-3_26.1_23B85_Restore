@interface SASWallpaperPosterSnapshotRequestFetcher
- (SASFetchesWallpaperDelegate)delegate;
- (float)_delayBetweenRetries;
- (id)_imageFromSnapshot:(id)snapshot;
- (int)_maximumNumberOfLoadingAttempts;
- (void)fetch;
@end

@implementation SASWallpaperPosterSnapshotRequestFetcher

- (void)fetch
{
  v25 = *MEMORY[0x277D85DE8];
  interfaceOrientation = [(SASWallpaperPosterSnapshotRequestFetcher *)self interfaceOrientation];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v4 = getPRSServiceClass_softClass;
  v20 = getPRSServiceClass_softClass;
  if (!getPRSServiceClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v22 = __getPRSServiceClass_block_invoke;
    v23 = &unk_279BB2AB8;
    v24 = &v17;
    __getPRSServiceClass_block_invoke(&buf);
    v4 = v18[3];
  }

  v5 = v4;
  _Block_object_dispose(&v17, 8);
  v6 = objc_alloc_init(v4);
  v7 = 0;
  if ([(SASWallpaperPosterSnapshotRequestFetcher *)self interfaceStyle]== 2)
  {
    v8 = 21;
  }

  else
  {
    v8 = 37;
  }

  if (interfaceOrientation > 1)
  {
    if (interfaceOrientation != 2 && interfaceOrientation != 3 && interfaceOrientation != 4)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (!interfaceOrientation)
  {
    goto LABEL_20;
  }

  if (interfaceOrientation == 1)
  {
LABEL_10:
    v7 = interfaceOrientation;
  }

LABEL_11:
  v9 = +[SASUILogging bookendFacility];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_265A4C000, v9, OS_LOG_TYPE_DEFAULT, "PosterSnapshotRequestFetcher: fetch with orientation %ld", &buf, 0xCu);
  }

  v10 = [getPRSPosterSnapshotRequestClass() instancesRespondToSelector:sel_initWithConfigurationType_variantType_options_orientation_requestOptions_];
  v11 = objc_alloc(getPRSPosterSnapshotRequestClass());
  variant = [(SASWallpaperPosterSnapshotRequestFetcher *)self variant];
  if (v10)
  {
    v13 = [v11 initWithConfigurationType:1 variantType:variant options:v8 orientation:v7 requestOptions:&unk_287761798];
  }

  else
  {
    v13 = [v11 initWithConfigurationType:1 variantType:variant options:v8];
  }

  v14 = v13;
  objc_initWeak(&buf, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __49__SASWallpaperPosterSnapshotRequestFetcher_fetch__block_invoke;
  v15[3] = &unk_279BB2BA0;
  objc_copyWeak(&v16, &buf);
  [v6 fetchPosterSnapshotsWithRequest:v14 completion:v15];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&buf);

LABEL_20:
}

void __49__SASWallpaperPosterSnapshotRequestFetcher_fetch__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = +[SASUILogging bookendFacility];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __49__SASWallpaperPosterSnapshotRequestFetcher_fetch__block_invoke_cold_1(v6, WeakRetained, v8);
      }

      v9 = [WeakRetained delegate];

      if (v9)
      {
        v10 = [WeakRetained currentAttempt];
        if (v10 < [WeakRetained _maximumNumberOfLoadingAttempts])
        {
          [WeakRetained setCurrentAttempt:{objc_msgSend(WeakRetained, "currentAttempt") + 1}];
          [WeakRetained _delayBetweenRetries];
          v12 = dispatch_time(0, (v11 * 1000000000.0));
          v13 = [WeakRetained queue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __49__SASWallpaperPosterSnapshotRequestFetcher_fetch__block_invoke_5;
          block[3] = &unk_279BB2B50;
          objc_copyWeak(&v29, (a1 + 32));
          dispatch_after(v12, v13, block);

          objc_destroyWeak(&v29);
          goto LABEL_19;
        }

        v25 = +[SASUILogging bookendFacility];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          __49__SASWallpaperPosterSnapshotRequestFetcher_fetch__block_invoke_cold_2(v25);
        }

        v24 = [WeakRetained delegate];
        [v24 wallpaperFetcher:WeakRetained failedToLoadWithError:v6];
      }

      else
      {
        v24 = +[SASUILogging bookendFacility];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          __49__SASWallpaperPosterSnapshotRequestFetcher_fetch__block_invoke_cold_3(v24);
        }
      }

      goto LABEL_19;
    }

    v14 = [v5 snapshots];
    if (v14)
    {
      v15 = v14;
      v16 = [v5 snapshots];
      v17 = [v16 count];

      if (v17)
      {
        v18 = +[SASUILogging bookendFacility];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [v5 snapshots];
          *buf = 67109120;
          v31 = [v19 count];
          _os_log_impl(&dword_265A4C000, v18, OS_LOG_TYPE_DEFAULT, "PosterSnapshotRequestFetcher: Found %d snapshots", buf, 8u);
        }

        v20 = [v5 snapshots];
        v21 = [v20 firstObject];

        v22 = [WeakRetained queue];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __49__SASWallpaperPosterSnapshotRequestFetcher_fetch__block_invoke_7;
        v26[3] = &unk_279BB2B78;
        v26[4] = WeakRetained;
        v27 = v21;
        v23 = v21;
        dispatch_async(v22, v26);
      }
    }
  }

LABEL_19:
}

void __49__SASWallpaperPosterSnapshotRequestFetcher_fetch__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];

    WeakRetained = v3;
    if (v2)
    {
      [v3 fetch];
      WeakRetained = v3;
    }
  }
}

void __49__SASWallpaperPosterSnapshotRequestFetcher_fetch__block_invoke_7(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 _imageFromSnapshot:*(a1 + 40)];
  [v4 wallpaperFetcher:v2 didFinishWithImage:v3];
}

- (id)_imageFromSnapshot:(id)snapshot
{
  v9 = *MEMORY[0x277D85DE8];
  snapshotCopy = snapshot;
  v4 = +[SASUILogging bookendFacility];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    imageOrientation = [snapshotCopy imageOrientation];
    _os_log_impl(&dword_265A4C000, v4, OS_LOG_TYPE_DEFAULT, "PosterSnapshotRequestFetcher: imageFromSnapshot with orientation: %ld", &v7, 0xCu);
  }

  v5 = [MEMORY[0x277D755B8] imageWithCGImage:objc_msgSend(snapshotCopy scale:"image") orientation:{objc_msgSend(snapshotCopy, "imageOrientation"), 1.0}];

  return v5;
}

- (int)_maximumNumberOfLoadingAttempts
{
  v2 = +[SASPreferencesManager shared];
  v3 = [v2 readValueForKey:2];

  if (v3)
  {
    intValue = [v3 intValue];
  }

  else
  {
    intValue = 3;
  }

  return intValue;
}

- (float)_delayBetweenRetries
{
  v2 = +[SASPreferencesManager shared];
  v3 = [v2 readValueForKey:4];

  if (v3)
  {
    [v3 floatValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.5;
  }

  return v5;
}

- (SASFetchesWallpaperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

void __49__SASWallpaperPosterSnapshotRequestFetcher_fetch__block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 1024;
  v7 = [a2 currentAttempt];
  _os_log_error_impl(&dword_265A4C000, a3, OS_LOG_TYPE_ERROR, "PosterSnapshotRequestFetcher: fetchPosterSnapshotsWithRequest failed with error: %@, attempt: %i", &v4, 0x12u);
}

@end