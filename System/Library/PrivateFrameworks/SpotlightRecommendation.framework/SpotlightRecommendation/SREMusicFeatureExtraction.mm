@interface SREMusicFeatureExtraction
- (BOOL)_handleSongEvent:(id)a3 context:(id)a4 numMusic:(unint64_t)a5 outputSequence:(id)a6;
- (SREMusicFeatureExtraction)init;
- (id)retrieveNowPlayingHistoryWithLength:(unint64_t)a3 error:(id *)a4;
@end

@implementation SREMusicFeatureExtraction

- (SREMusicFeatureExtraction)init
{
  v3.receiver = self;
  v3.super_class = SREMusicFeatureExtraction;
  return [(SREMusicFeatureExtraction *)&v3 init];
}

- (id)retrieveNowPlayingHistoryWithLength:(unint64_t)a3 error:(id *)a4
{
  v7 = [objc_alloc(MEMORY[0x277D1F408]) initAndReturnError:a4];
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277CCA970]);
    v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2419200.0];
    v10 = [MEMORY[0x277CBEAA8] now];
    v11 = [v8 initWithStartDate:v9 endDate:v10];

    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy_;
    v25 = __Block_byref_object_dispose_;
    v26 = [MEMORY[0x277CBEB18] arrayWithCapacity:a3];
    objc_initWeak(&location, self);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __71__SREMusicFeatureExtraction_retrieveNowPlayingHistoryWithLength_error___block_invoke;
    v16[3] = &unk_279D04270;
    objc_copyWeak(v19, &location);
    v12 = v7;
    v19[1] = a3;
    v17 = v12;
    v18 = &v21;
    if ([v12 enumerateSongEventsThatOverlapWithDateInterval:v11 ascending:0 error:a4 usingBlock:v16])
    {
      v13 = v22[5];
    }

    else
    {
      v14 = logForCSLogCategoryRecs();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [SREMusicFeatureExtraction retrieveNowPlayingHistoryWithLength:a4 error:v14];
      }

      v13 = 0;
    }

    objc_destroyWeak(v19);
    objc_destroyWeak(&location);
    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v11 = logForCSLogCategoryRecs();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SREMusicFeatureExtraction retrieveNowPlayingHistoryWithLength:a4 error:v11];
    }

    v13 = 0;
  }

  return v13;
}

void __71__SREMusicFeatureExtraction_retrieveNowPlayingHistoryWithLength_error___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  LOBYTE(a1) = [WeakRetained _handleSongEvent:v5 context:*(a1 + 32) numMusic:*(a1 + 56) outputSequence:*(*(*(a1 + 40) + 8) + 40)];

  *a3 = a1 ^ 1;
}

- (BOOL)_handleSongEvent:(id)a3 context:(id)a4 numMusic:(unint64_t)a5 outputSequence:(id)a6
{
  v35 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if ([v11 count] >= a5)
  {
    v25 = 0;
  }

  else
  {
    v12 = [v9 playbackState];
    v13 = [v12 isEqualToString:@"Playing"];

    if (v13)
    {
      v14 = [v9 song];
      v15 = [v14 songId];
      v16 = [v15 graphSongFromContext:v10 error:0];

      if (v16)
      {
        v17 = logForCSLogCategoryRecs();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [v16 name];
          v19 = [v9 date];
          v20 = [v19 startDate];
          v21 = [v16 songAdamId];
          v29 = 138412802;
          v30 = v18;
          v31 = 2112;
          v32 = v20;
          v33 = 2112;
          v34 = v21;
          _os_log_impl(&dword_26B806000, v17, OS_LOG_TYPE_DEFAULT, "Now playing sequence: Song name: %@ Song event start date: %@ Adam ID: %@", &v29, 0x20u);
        }

        v22 = objc_alloc_init(SREMusicMetadata);
        v23 = [v16 songAdamId];
        -[SREMusicMetadata setAdamID:](v22, "setAdamID:", [v23 integerValue]);

        if ([(SREMusicMetadata *)v22 adamID]<= 0)
        {
          v26 = logForCSLogCategoryRecs();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            [SREMusicFeatureExtraction _handleSongEvent:v16 context:v26 numMusic:? outputSequence:?];
          }

          v25 = 1;
        }

        else
        {
          v24 = [v16 genre];
          [(SREMusicMetadata *)v22 setGenreID:v24];

          [v11 addObject:v22];
          v25 = [v11 count] < a5;
        }
      }

      else
      {
        v25 = 1;
      }
    }

    else
    {
      v25 = 1;
    }
  }

  v27 = *MEMORY[0x277D85DE8];
  return v25;
}

- (void)retrieveNowPlayingHistoryWithLength:(uint64_t *)a1 error:(NSObject *)a2 .cold.1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_26B806000, a2, OS_LOG_TYPE_ERROR, "Enumerate apple music events failed. Error: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)retrieveNowPlayingHistoryWithLength:(uint64_t *)a1 error:(NSObject *)a2 .cold.2(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_26B806000, a2, OS_LOG_TYPE_ERROR, "GDGraphAppleMusicEventContext creation failed. error=%@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_handleSongEvent:(void *)a1 context:(NSObject *)a2 numMusic:outputSequence:.cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 songAdamId];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_26B806000, a2, OS_LOG_TYPE_ERROR, "Invalid adamID from now playing stream: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end