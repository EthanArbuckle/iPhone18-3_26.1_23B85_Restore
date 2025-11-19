@interface PXFlexMusicLibrary
+ (PXFlexMusicLibrary)sharedLibrary;
+ (id)_audioMixInputParametersForMixParameters:(id)a3 audioTrack:(id)a4 sampleRate:(int)a5;
+ (id)_mixParametersForAudioMixInputParameters:(id)a3 sampleRate:(int)a4;
+ (id)coalesceAudioMixInputParametersA:(id)a3 withAudioMixInputParametersB:(id)a4 audioTrack:(id)a5;
+ (void)purgeLocalFlexDataWithCompletion:(id)a3;
- (BOOL)hasLocalResourceForAsset:(id)a3 resourceType:(int64_t)a4;
- (PXFlexMusicLibrary)init;
- (double)downloadProgressForAsset:(id)a3 resourceType:(int64_t)a4;
- (id)_fetchAssetsWithOptions:(id)a3;
- (id)_queue_cueSourceFromRendition:(id)a3;
- (id)_queue_downloadableAssetForAsset:(id)a3 resourceType:(int64_t)a4;
- (id)_queue_fetchAssetsWithOptions:(id)a3;
- (id)_queue_flexMusicAssetWithSong:(id)a3;
- (id)_queue_renditionForSongID:(id)a3 preferredDuration:(id *)a4;
- (id)cuesForAsset:(id)a3;
- (id)fetchAllAssets;
- (id)fetchAssetsWithIdentifiers:(id)a3;
- (id)fetchLocalAssetForMood:(unint64_t)a3;
- (id)fetchSortedAssetsGroupedByMood;
- (id)localURLForAsset:(id)a3 resourceType:(int64_t)a4;
- (id)playableAssetForAsset:(id)a3 preferredDuration:(id *)a4 audioMix:(id *)a5 peakValue:(double *)a6 loudness:(double *)a7;
- (id)requestAssetsWithIdentifiers:(id)a3 resultHandler:(id)a4;
- (void)_handleDownloadProgressChangedNotification:(id)a3;
- (void)_handleSongAssetsChangedNotification:(id)a3;
- (void)cancelDownloadForAsset:(id)a3 resourceType:(int64_t)a4;
- (void)dealloc;
- (void)requestDownloadForAsset:(id)a3 resourceType:(int64_t)a4;
@end

@implementation PXFlexMusicLibrary

- (id)_queue_renditionForSongID:(id)a3 preferredDuration:(id *)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = [(FMSongLibrary *)self->_queue_library fetchSongWithUID:a3];
  v6 = v5;
  var0 = a4->var0;
  var2 = a4->var2;
  var1 = a4->var1;
  if (var2)
  {
    var3 = a4->var3;
  }

  else
  {
    if (v5)
    {
      [v5 naturalDuration];
      var2 = HIDWORD(v12);
      var3 = v13;
    }

    else
    {
      var3 = 0;
      var2 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
    }

    var0 = v11;
    var1 = v12;
  }

  v11 = var0;
  v12 = __PAIR64__(var2, var1);
  v13 = var3;
  v9 = [v6 renditionForDuration:&v11 withOptions:MEMORY[0x1E695E0F8]];

  return v9;
}

- (id)_queue_flexMusicAssetWithSong:(id)a3
{
  v3 = a3;
  v4 = [PXFlexMusicAsset alloc];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__PXFlexMusicLibrary__queue_flexMusicAssetWithSong___block_invoke;
  v8[3] = &unk_1E77459C0;
  v9 = v3;
  v5 = v3;
  v6 = [(PXFlexMusicAsset *)v4 initWithConfiguration:v8];

  return v6;
}

void __52__PXFlexMusicLibrary__queue_flexMusicAssetWithSong___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) songName];
  [v3 setTitle:v4];

  v5 = [*(a1 + 32) artistName];
  [v3 setArtistName:v5];

  v6 = [v3 artistName];
  [v3 setSubtitle:v6];

  v7 = [*(a1 + 32) uid];
  [v3 setIdentifier:v7];

  v8 = DictionaryFromFMSongTags(*(a1 + 32));
  v9 = VisualTempoFromTagsDictionary(v8);
  v10 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v11 = [v8 objectForKeyedSubscript:@"Valence"];
  if (!v11 || (v12 = v11, [v8 objectForKeyedSubscript:@"Arousal"], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, !v13))
  {
    [v10 appendString:@"(⚠️ Check VPN) "];
  }

  v14 = [v8 objectForKeyedSubscript:@"Valence"];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = @"--";
  }

  [v10 appendFormat:@"valence=%@", v16];

  v17 = [v8 objectForKeyedSubscript:@"Arousal"];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = @"--";
  }

  [v10 appendFormat:@", arousal=%@", v19];

  if (v9)
  {
    v20 = MEMORY[0x1E696AEC0];
    [v9 doubleValue];
    v22 = [v20 stringWithFormat:@"%0.2f", v21];
    [v10 appendFormat:@", visualTempo=%@", v22];
  }

  else
  {
    [v10 appendFormat:@", visualTempo=%@", @"--"];
  }

  v23 = [v8 objectForKeyedSubscript:@"Genre"];
  v24 = v23;
  v25 = @"Unknown";
  if (v23)
  {
    v25 = v23;
  }

  [v10 appendFormat:@", genre=%@", v25];

  [v3 setAssetTagsDescription:v10];
  v26 = v8;
  v27 = [v26 objectForKeyedSubscript:@"Arousal"];
  v28 = [v26 objectForKeyedSubscript:@"Valence"];
  v29 = v28;
  if (v27 && v28)
  {
    [v28 doubleValue];
    [v27 doubleValue];
    v30 = PFStoryColorGradeCategoryFromValenceArousal();
  }

  else
  {
    [_TtC12PhotosUICore19PXMemoryMoodFactory moodWithTagsDictionary:v26];
    v30 = PFStoryColorGradeCategoryNamed();
  }

  v31 = v30;

  [v3 setColorGradeCategory:v31];
  v32 = v26;
  v33 = VisualTempoFromTagsDictionary(v32);
  if (v33)
  {
    v34 = [MEMORY[0x1E69C08A0] standardConfiguration];
    [v33 doubleValue];
    v35 = PFStoryRecipeSongPaceFromVisualTempo();
  }

  else
  {
    v34 = [v32 objectForKeyedSubscript:@"SongPace"];
    if ([v34 isEqualToString:@"Slow"])
    {
      v35 = 1;
    }

    else if ([v34 isEqualToString:@"Medium"])
    {
      v35 = 2;
    }

    else if ([v34 isEqualToString:@"Fast"])
    {
      v35 = 3;
    }

    else
    {
      v35 = 2;
    }
  }

  [v3 setPace:v35];
  [v3 setFlags:0];
  v36 = *MEMORY[0x1E6960C70];
  v37 = *(MEMORY[0x1E6960C70] + 16);
  [v3 setTargetDuration:&v36];
}

- (void)_handleSongAssetsChangedNotification:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__PXFlexMusicLibrary__handleSongAssetsChangedNotification___block_invoke;
  v3[3] = &unk_1E774C5F8;
  v3[4] = self;
  [(PXFlexMusicLibrary *)self performChanges:v3];
}

- (void)_handleDownloadProgressChangedNotification:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __65__PXFlexMusicLibrary__handleDownloadProgressChangedNotification___block_invoke;
  v3[3] = &unk_1E774C5F8;
  v3[4] = self;
  [(PXFlexMusicLibrary *)self performChanges:v3];
}

- (id)_queue_downloadableAssetForAsset:(id)a3 resourceType:(int64_t)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  queue_library = self->_queue_library;
  v8 = [v6 identifier];
  v9 = [(FMSongLibrary *)queue_library fetchSongWithUID:v8];

  if (v9)
  {
    if (a4 == 2)
    {
      v10 = MEMORY[0x1E699F678];
    }

    else
    {
      if (a4 != 1)
      {
        v13 = 0;
        goto LABEL_11;
      }

      v10 = MEMORY[0x1E699F660];
    }

    v13 = *v10;
LABEL_11:
    v12 = [v9 assetWithID:v13];

    goto LABEL_12;
  }

  v11 = PLAudioPlaybackGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v15 = 138412290;
    v16 = v6;
    _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_ERROR, "Unable to find resource for asset %@ because FlexMusic song cannot be fetched.", &v15, 0xCu);
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (id)_queue_fetchAssetsWithOptions:(id)a3
{
  v4 = a3;
  queue_library = self->_queue_library;
  if (v4)
  {
    v6 = [(FMSongLibrary *)self->_queue_library fetchSongsWithOptions:v4];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E699F6D8]);
    v6 = [(FMSongLibrary *)queue_library fetchSongsWithOptions:v7];
  }

  v8 = [v4 sortDescriptors];
  if (v8)
  {
    [v6 sortedArrayUsingDescriptors:v8];
    objc_claimAutoreleasedReturnValue();
  }

  PXMap();
}

id __52__PXFlexMusicLibrary__queue_fetchAssetsWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[PXAudioSettings sharedInstance];
  if ([v4 flexReturnOnlyLocalSongs])
  {
    v5 = [v3 assetWithID:*MEMORY[0x1E699F678]];
    v6 = [v5 localURLExists];

    if (!v6)
    {
      v7 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v7 = [*(a1 + 32) _queue_flexMusicAssetWithSong:v3];
LABEL_6:

  return v7;
}

- (id)_fetchAssetsWithOptions:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__212581;
  queue = self->_queue;
  v16 = __Block_byref_object_dispose__212582;
  v17 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__PXFlexMusicLibrary__fetchAssetsWithOptions___block_invoke;
  block[3] = &unk_1E7746448;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __46__PXFlexMusicLibrary__fetchAssetsWithOptions___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_fetchAssetsWithOptions:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_queue_cueSourceFromRendition:(id)a3
{
  v3 = *MEMORY[0x1E699F6C0];
  v4 = a3;
  v5 = [v4 timedMetadataItemsWithIdentifier:v3];
  v6 = [v4 timedMetadataItemsWithIdentifier:*MEMORY[0x1E699F6B8]];
  v7 = [v4 timedMetadataItemsWithIdentifier:*MEMORY[0x1E699F6D0]];
  v8 = [v4 timedMetadataItemsWithIdentifier:*MEMORY[0x1E699F6C8]];

  v9 = [v5 count];
  v10 = [PXConcreteAudioCueSource alloc];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __52__PXFlexMusicLibrary__queue_cueSourceFromRendition___block_invoke;
  v17[3] = &unk_1E7745970;
  v18 = v5;
  v19 = v6;
  v20 = v7;
  v21 = v8;
  v11 = v8;
  v12 = v7;
  v13 = v6;
  v14 = v5;
  v15 = [(PXConcreteAudioCueSource *)v10 initWithNumberOfCues:v9 configuration:v17];

  return v15;
}

void __52__PXFlexMusicLibrary__queue_cueSourceFromRendition___block_invoke(uint64_t a1, uint64_t a2)
{
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v15[3] = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__PXFlexMusicLibrary__queue_cueSourceFromRendition___block_invoke_2;
  v5[3] = &unk_1E7745948;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v15;
  v7 = *(a1 + 48);
  v10 = v14;
  v8 = *(a1 + 56);
  v11 = v13;
  v12 = a2;
  [v4 enumerateObjectsUsingBlock:v5];

  _Block_object_dispose(v13, 8);
  _Block_object_dispose(v14, 8);
  _Block_object_dispose(v15, 8);
}

double __52__PXFlexMusicLibrary__queue_cueSourceFromRendition___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    [a2 timeRange];
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
  }

  *&v13.value = v10;
  v13.epoch = v11;
  v8.epoch = v11;
  v9 = 1;
  v5 = *(a1 + 32);
  v6 = *(*(a1 + 56) + 8);
  *&v8.value = v10;
  _PXTestBeatTimeMembership(&v8, v5, 2, (v6 + 24), &v9);
  _PXTestBeatTimeMembership(&v13, *(a1 + 40), 4, (*(*(a1 + 64) + 8) + 24), &v9);
  _PXTestBeatTimeMembership(&v13, *(a1 + 48), 3, (*(*(a1 + 72) + 8) + 24), &v9);
  result = *&v13.value;
  *(*(a1 + 80) + 32 * a3) = v13;
  *(*(a1 + 80) + 32 * a3 + 24) = v9;
  return result;
}

- (id)playableAssetForAsset:(id)a3 preferredDuration:(id *)a4 audioMix:(id *)a5 peakValue:(double *)a6 loudness:(double *)a7
{
  v11 = a3;
  v12 = PLAudioPlaybackGetLog();
  v13 = os_signpost_id_make_with_pointer(v12, self);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v14 = v13;
    if (os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PXFlexMusicLibrary - playableAssetForAsset", " enableTelemetry=YES ", buf, 2u);
    }
  }

  *buf = 0;
  v47 = buf;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__212581;
  v50 = __Block_byref_object_dispose__212582;
  v51 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__212581;
  v44 = __Block_byref_object_dispose__212582;
  v45 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__PXFlexMusicLibrary_playableAssetForAsset_preferredDuration_audioMix_peakValue_loudness___block_invoke;
  block[3] = &unk_1E7745920;
  block[4] = self;
  v16 = v11;
  v30 = *&a4->var0;
  var3 = a4->var3;
  v25 = v16;
  v26 = &v36;
  v27 = &v32;
  v28 = buf;
  v29 = &v40;
  dispatch_sync(queue, block);
  if (a5)
  {
    *a5 = v41[5];
  }

  if (a6)
  {
    *a6 = v37[3];
  }

  if (a7)
  {
    *a7 = v33[3];
  }

  v17 = PLAudioPlaybackGetLog();
  v18 = os_signpost_id_make_with_pointer(v17, self);
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v19 = v18;
    if (os_signpost_enabled(v17))
    {
      *v23 = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v17, OS_SIGNPOST_INTERVAL_END, v19, "PXFlexMusicLibrary - playableAssetForAsset", " enableTelemetry=YES ", v23, 2u);
    }
  }

  v20 = *(v47 + 5);
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);

  _Block_object_dispose(buf, 8);

  return v20;
}

void __90__PXFlexMusicLibrary_playableAssetForAsset_preferredDuration_audioMix_peakValue_loudness___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  v12 = *(a1 + 80);
  v13 = *(a1 + 96);
  v4 = [v2 _queue_renditionForSongID:v3 preferredDuration:&v12];

  v11 = 0;
  LODWORD(v12) = 0;
  [v4 _maxPeakAndLoudness:*(*(a1 + 56) + 8) + 24 missingPeakValueCount:&v12 missingLoudnessCount:&v11];
  *(*(*(a1 + 48) + 8) + 24) = v5;
  v6 = *(*(a1 + 72) + 8);
  obj = *(v6 + 40);
  v7 = [v4 avCompositionWithAudioMix:&obj includeShortenedOutroFadeOut:0];
  objc_storeStrong((v6 + 40), obj);
  v8 = *(*(a1 + 64) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (id)localURLForAsset:(id)a3 resourceType:(int64_t)a4
{
  v6 = a3;
  v7 = PLAudioPlaybackGetLog();
  v8 = os_signpost_id_make_with_pointer(v7, self);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = v8;
    if (os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v9, "PXFlexMusicLibrary - localURLForAsset", " enableTelemetry=YES ", buf, 2u);
    }
  }

  *buf = 0;
  v23 = buf;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__212581;
  v26 = __Block_byref_object_dispose__212582;
  v27 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__PXFlexMusicLibrary_localURLForAsset_resourceType___block_invoke;
  block[3] = &unk_1E77458F8;
  block[4] = self;
  v11 = v6;
  v20 = buf;
  v21 = a4;
  v19 = v11;
  dispatch_sync(queue, block);
  v12 = PLAudioPlaybackGetLog();
  v13 = os_signpost_id_make_with_pointer(v12, self);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v14 = v13;
    if (os_signpost_enabled(v12))
    {
      *v17 = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_END, v14, "PXFlexMusicLibrary - localURLForAsset", " enableTelemetry=YES ", v17, 2u);
    }
  }

  v15 = *(v23 + 5);
  _Block_object_dispose(buf, 8);

  return v15;
}

void __52__PXFlexMusicLibrary_localURLForAsset_resourceType___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _queue_downloadableAssetForAsset:*(a1 + 40) resourceType:*(a1 + 56)];
  v2 = [v5 localURL];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (double)downloadProgressForAsset:(id)a3 resourceType:(int64_t)a4
{
  v6 = a3;
  v7 = PLAudioPlaybackGetLog();
  v8 = os_signpost_id_make_with_pointer(v7, self);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = v8;
    if (os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v9, "PXFlexMusicLibrary - downloadProgressForAsset", " enableTelemetry=YES ", buf, 2u);
    }
  }

  *buf = 0;
  v23 = buf;
  v24 = 0x2020000000;
  v25 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__PXFlexMusicLibrary_downloadProgressForAsset_resourceType___block_invoke;
  block[3] = &unk_1E77458F8;
  block[4] = self;
  v11 = v6;
  v20 = buf;
  v21 = a4;
  v19 = v11;
  dispatch_sync(queue, block);
  v12 = PLAudioPlaybackGetLog();
  v13 = os_signpost_id_make_with_pointer(v12, self);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v14 = v13;
    if (os_signpost_enabled(v12))
    {
      *v17 = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_END, v14, "PXFlexMusicLibrary - downloadProgressForAsset", " enableTelemetry=YES ", v17, 2u);
    }
  }

  v15 = *(v23 + 3);
  _Block_object_dispose(buf, 8);

  return v15;
}

void __60__PXFlexMusicLibrary_downloadProgressForAsset_resourceType___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _queue_downloadableAssetForAsset:*(a1 + 40) resourceType:*(a1 + 56)];
  [v3 downloadProgress];
  *(*(*(a1 + 48) + 8) + 24) = v2;
}

- (void)cancelDownloadForAsset:(id)a3 resourceType:(int64_t)a4
{
  v6 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__PXFlexMusicLibrary_cancelDownloadForAsset_resourceType___block_invoke;
  block[3] = &unk_1E7749FF8;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(queue, block);
}

void __58__PXFlexMusicLibrary_cancelDownloadForAsset_resourceType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_downloadableAssetForAsset:*(a1 + 40) resourceType:*(a1 + 48)];
  [*(*(a1 + 32) + 112) removeObject:v2];
  if (![*(*(a1 + 32) + 112) countForObject:v2])
  {
    [v2 cancelDownload];
  }
}

- (void)requestDownloadForAsset:(id)a3 resourceType:(int64_t)a4
{
  v6 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__PXFlexMusicLibrary_requestDownloadForAsset_resourceType___block_invoke;
  block[3] = &unk_1E7749FF8;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(queue, block);
}

void __59__PXFlexMusicLibrary_requestDownloadForAsset_resourceType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_downloadableAssetForAsset:*(a1 + 40) resourceType:*(a1 + 48)];
  v3 = v2;
  if (v2)
  {
    v6 = v2;
    v4 = [v2 localURLExists];
    v3 = v6;
    if (!v4 || (v5 = [v6 contentUpdateAvailable], v3 = v6, v5))
    {
      [v3 requestDownload];
      [*(*(a1 + 32) + 112) addObject:v6];
      v3 = v6;
    }
  }
}

- (BOOL)hasLocalResourceForAsset:(id)a3 resourceType:(int64_t)a4
{
  v6 = a3;
  v7 = PLAudioPlaybackGetLog();
  v8 = os_signpost_id_make_with_pointer(v7, self);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = v8;
    if (os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v9, "PXFlexMusicLibrary - hasLocalResourceForAsset", " enableTelemetry=YES ", buf, 2u);
    }
  }

  *buf = 0;
  v23 = buf;
  v24 = 0x2020000000;
  v25 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__PXFlexMusicLibrary_hasLocalResourceForAsset_resourceType___block_invoke;
  block[3] = &unk_1E77458F8;
  block[4] = self;
  v11 = v6;
  v20 = buf;
  v21 = a4;
  v19 = v11;
  dispatch_sync(queue, block);
  v12 = PLAudioPlaybackGetLog();
  v13 = os_signpost_id_make_with_pointer(v12, self);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v14 = v13;
    if (os_signpost_enabled(v12))
    {
      *v17 = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_END, v14, "PXFlexMusicLibrary - hasLocalResourceForAsset", " enableTelemetry=YES ", v17, 2u);
    }
  }

  v15 = v23[24];
  _Block_object_dispose(buf, 8);

  return v15;
}

void __60__PXFlexMusicLibrary_hasLocalResourceForAsset_resourceType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_downloadableAssetForAsset:*(a1 + 40) resourceType:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = [v2 localURLExists];
}

- (id)cuesForAsset:(id)a3
{
  v4 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__212581;
  v23 = __Block_byref_object_dispose__212582;
  v24 = 0;
  v5 = PLAudioPlaybackGetLog();
  v6 = os_signpost_id_make_with_pointer(v5, self);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "PXFlexMusicLibrary - cuesForAsset", " enableTelemetry=YES ", buf, 2u);
    }
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__PXFlexMusicLibrary_cuesForAsset___block_invoke;
  block[3] = &unk_1E7746448;
  block[4] = self;
  v9 = v4;
  v16 = v9;
  v17 = &v19;
  dispatch_sync(queue, block);
  v10 = PLAudioPlaybackGetLog();
  v11 = os_signpost_id_make_with_pointer(v10, self);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = v11;
    if (os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, OS_SIGNPOST_INTERVAL_END, v12, "PXFlexMusicLibrary - cuesForAsset", " enableTelemetry=YES ", buf, 2u);
    }
  }

  v13 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v13;
}

void __35__PXFlexMusicLibrary_cuesForAsset___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 104);
  v3 = [*(a1 + 40) identifier];
  v4 = [v2 fetchSongWithUID:v3];

  v12 = 0uLL;
  v13 = 0;
  v5 = *(a1 + 40);
  if (!v5 || ([v5 targetDuration], (BYTE12(v12) & 1) == 0))
  {
    if (v4)
    {
      [v4 naturalDuration];
    }

    else
    {
      v10 = 0uLL;
      v11 = 0;
    }

    v12 = v10;
    v13 = v11;
  }

  v10 = v12;
  v11 = v13;
  v6 = [v4 renditionForDuration:&v10 withOptions:MEMORY[0x1E695E0F8]];
  v7 = [*(a1 + 32) _queue_cueSourceFromRendition:v6];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (id)fetchSortedAssetsGroupedByMood
{
  v3 = PLAudioPlaybackGetLog();
  v4 = os_signpost_id_make_with_pointer(v3, self);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v4;
    if (os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PXFlexMusicLibrary - fetchSortedAssetsGroupedByMood", " enableTelemetry=YES ", buf, 2u);
    }
  }

  *buf = 0;
  v15 = buf;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__212581;
  v18 = __Block_byref_object_dispose__212582;
  v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__PXFlexMusicLibrary_fetchSortedAssetsGroupedByMood__block_invoke;
  block[3] = &unk_1E7749A28;
  block[4] = self;
  block[5] = buf;
  dispatch_sync(queue, block);
  v7 = PLAudioPlaybackGetLog();
  v8 = os_signpost_id_make_with_pointer(v7, self);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = v8;
    if (os_signpost_enabled(v7))
    {
      *v12 = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_INTERVAL_END, v9, "PXFlexMusicLibrary - fetchSortedAssetsGroupedByMood", " enableTelemetry=YES ", v12, 2u);
    }
  }

  v10 = *(v15 + 5);
  _Block_object_dispose(buf, 8);

  return v10;
}

void __52__PXFlexMusicLibrary_fetchSortedAssetsGroupedByMood__block_invoke(uint64_t a1)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E699F6D8]);
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"hidden == NO"];
  [v2 setPredicate:v3];

  v23 = v2;
  v4 = [*(*(a1 + 32) + 104) fetchSongsWithOptions:v2];
  v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"songName" ascending:1];
  v29[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  v22 = v4;
  v7 = [v4 sortedArrayUsingDescriptors:v6];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = [v13 keywords];
        v15 = [v14 containsObject:@"_MSpecial"];

        v16 = @"Special";
        if ((v15 & 1) == 0)
        {
          v17 = DictionaryFromFMSongTags(v13);
          [_TtC12PhotosUICore19PXMemoryMoodFactory moodWithTagsDictionary:v17];
          v16 = PHStringForMemoryMood();

          if (!v16)
          {
            continue;
          }
        }

        v18 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:v16];

        if (!v18)
        {
          v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [*(*(*(a1 + 40) + 8) + 40) setObject:v19 forKeyedSubscript:v16];
        }

        v20 = [*(a1 + 32) _queue_flexMusicAssetWithSong:v13];
        v21 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:v16];
        [v21 addObject:v20];
      }

      v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }
}

- (id)fetchLocalAssetForMood:(unint64_t)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = PLAudioPlaybackGetLog();
  v6 = os_signpost_id_make_with_pointer(v5, self);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "PXFlexMusicLibrary - fetchLocalAssetForMood", " enableTelemetry=YES ", buf, 2u);
    }
  }

  v8 = 0;
  if (a3 > 31)
  {
    if (a3 > 255)
    {
      if (a3 == 256)
      {
        v8 = @"Party";
        goto LABEL_30;
      }

      if (a3 == 512)
      {
        v8 = @"Action";
        goto LABEL_30;
      }

      if (a3 != 1023)
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    switch(a3)
    {
      case 0x20uLL:
        v8 = @"Happy";
        break;
      case 0x40uLL:
        v8 = @"Uplifting";
        break;
      case 0x80uLL:
        v8 = @"Epic";
        break;
    }
  }

  else
  {
    if (a3 <= 3)
    {
      if (a3)
      {
        if (a3 == 1)
        {
          v8 = @"Ethereal";
        }

        else if (a3 == 2)
        {
          v8 = @"Sentimental";
        }

        goto LABEL_30;
      }

LABEL_22:
      v8 = @"Neutral";
      goto LABEL_30;
    }

    switch(a3)
    {
      case 4uLL:
        v8 = @"Gentle";
        break;
      case 8uLL:
        v8 = @"Chill";
        break;
      case 0x10uLL:
        goto LABEL_22;
    }
  }

LABEL_30:
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", *MEMORY[0x1E699F6A8], v8];
  v10 = PLStoryGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v27 = v9;
    _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_INFO, "[MemoriesMusic] (PXMusicCurator) Looking for bestLocallyAvailableAudioAsset with mood tag: %@", buf, 0xCu);
  }

  v11 = objc_alloc_init(MEMORY[0x1E699F6D8]);
  v12 = MEMORY[0x1E696AB28];
  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"canPlay == YES"];
  v25[0] = v13;
  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"tagIDs CONTAINS %@", v9];
  v25[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v16 = [v12 andPredicateWithSubpredicates:v15];
  [v11 setPredicate:v16];

  v17 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uid" ascending:1];
  v24 = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  [v11 setSortDescriptors:v18];

  v19 = [(PXFlexMusicLibrary *)self _fetchAssetsWithOptions:v11];
  v20 = PLAudioPlaybackGetLog();
  v21 = os_signpost_id_make_with_pointer(v20, self);
  if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v22 = v21;
    if (os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v20, OS_SIGNPOST_INTERVAL_END, v22, "PXFlexMusicLibrary - fetchLocalAssetForMood", " enableTelemetry=YES ", buf, 2u);
    }
  }

  return v19;
}

- (id)requestAssetsWithIdentifiers:(id)a3 resultHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  v9 = PLAudioPlaybackGetLog();
  v10 = os_signpost_id_make_with_pointer(v9, self);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = v10;
    if (os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v11, "PXFlexMusicLibrary - requestAssetsWithIdentifiers", " enableTelemetry=YES ", buf, 2u);
    }
  }

  queue = self->_queue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __65__PXFlexMusicLibrary_requestAssetsWithIdentifiers_resultHandler___block_invoke;
  v19[3] = &unk_1E774BDB0;
  v20 = v6;
  v21 = self;
  v13 = v8;
  v22 = v13;
  v23 = v7;
  v14 = v7;
  v15 = v6;
  dispatch_async(queue, v19);
  v16 = v23;
  v17 = v13;

  return v13;
}

void __65__PXFlexMusicLibrary_requestAssetsWithIdentifiers_resultHandler___block_invoke(uint64_t a1)
{
  v2 = +[PXAudioSettings sharedInstance];
  v3 = [v2 flexSimulateAssetFetchFailure];

  if (v3)
  {
    v6 = PXAudioAssetFetchResultWithArray(MEMORY[0x1E695E0F0]);
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E699F6D8]);
    v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uid in %@", *(a1 + 32)];
    [v4 setPredicate:v5];

    v6 = [*(a1 + 40) _queue_fetchAssetsWithOptions:v4];
  }

  [*(a1 + 48) setCompletedUnitCount:{objc_msgSend(*(a1 + 48), "totalUnitCount")}];
  v7 = PLAudioPlaybackGetLog();
  v8 = os_signpost_id_make_with_pointer(v7, *(a1 + 40));
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = v8;
    if (os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_INTERVAL_END, v9, "PXFlexMusicLibrary - requestAssetsWithIdentifiers", " enableTelemetry=YES ", buf, 2u);
    }
  }

  (*(*(a1 + 56) + 16))();
}

- (id)fetchAssetsWithIdentifiers:(id)a3
{
  v27[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLAudioPlaybackGetLog();
  v6 = os_signpost_id_make_with_pointer(v5, self);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "PXFlexMusicLibrary - fetchAssetsWithIdentifiers", " enableTelemetry=YES ", buf, 2u);
    }
  }

  v8 = +[PXAudioSettings sharedInstance];
  v9 = [v8 flexSimulateAssetFetchFailure];

  if (v9)
  {
    v16 = PXAudioAssetFetchResultWithArray(MEMORY[0x1E695E0F0]);
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E699F6D8]);
    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uid in %@", v4];
    [v10 setPredicate:v11];

    if ([v4 count] >= 2)
    {
      v12 = MEMORY[0x1E696AEB0];
      v21 = MEMORY[0x1E69E9820];
      v22 = 3221225472;
      v23 = __49__PXFlexMusicLibrary_fetchAssetsWithIdentifiers___block_invoke;
      v24 = &unk_1E77458D0;
      v25 = v4;
      v13 = [v12 sortDescriptorWithKey:@"uid" ascending:1 comparator:&v21];
      v27[0] = v13;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
      [v10 setSortDescriptors:v14];
    }

    v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uid in %@", v4, v21, v22, v23, v24];
    [v10 setPredicate:v15];

    v16 = [(PXFlexMusicLibrary *)self _fetchAssetsWithOptions:v10];
  }

  v17 = PLAudioPlaybackGetLog();
  v18 = os_signpost_id_make_with_pointer(v17, self);
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v19 = v18;
    if (os_signpost_enabled(v17))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v17, OS_SIGNPOST_INTERVAL_END, v19, "PXFlexMusicLibrary - fetchAssetsWithIdentifiers", " enableTelemetry=YES ", buf, 2u);
    }
  }

  return v16;
}

uint64_t __49__PXFlexMusicLibrary_fetchAssetsWithIdentifiers___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 indexOfObject:a2];
  v8 = [*(a1 + 32) indexOfObject:v6];

  if (v7 < v8)
  {
    return -1;
  }

  else
  {
    return v7 > v8;
  }
}

- (id)fetchAllAssets
{
  v3 = PLAudioPlaybackGetLog();
  v4 = os_signpost_id_make_with_pointer(v3, self);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v4;
    if (os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PXFlexMusicLibrary - fetchAllAssets", " enableTelemetry=YES ", buf, 2u);
    }
  }

  v6 = +[PXAudioSettings sharedInstance];
  v7 = [v6 flexSimulateAssetFetchFailure];

  if (v7)
  {
    PXAudioAssetFetchResultWithArray(MEMORY[0x1E695E0F0]);
  }

  else
  {
    [(PXFlexMusicLibrary *)self _fetchAssetsWithOptions:0];
  }
  v8 = ;
  v9 = PLAudioPlaybackGetLog();
  v10 = os_signpost_id_make_with_pointer(v9, self);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = v10;
    if (os_signpost_enabled(v9))
    {
      *v13 = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v11, "PXFlexMusicLibrary - fetchAllAssets", " enableTelemetry=YES ", v13, 2u);
    }
  }

  return v8;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PXFlexMusicLibrary;
  [(PXFlexMusicLibrary *)&v4 dealloc];
}

- (PXFlexMusicLibrary)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = PXFlexMusicLibrary;
  if ([(PXFlexMusicLibrary *)&v3 init])
  {
    px_dispatch_queue_create_serial();
  }

  return 0;
}

+ (id)_audioMixInputParametersForMixParameters:(id)a3 audioTrack:(id)a4 sampleRate:(int)a5
{
  v7 = a3;
  v8 = [MEMORY[0x1E6988040] audioMixInputParametersWithTrack:a4];
  v9 = [v7 volumeKeyFrames];
  v10 = [v9 count];
  v11 = v10 - 1;
  if (v10 >= 1)
  {
    v12 = v10;
    v13 = 0;
    do
    {
      v14 = [v9 objectAtIndexedSubscript:v13];
      v15 = v13 + 1;
      if (v13 < v11 && ([v9 objectAtIndexedSubscript:v13 + 1], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v17 = v16;
        memset(&v28, 0, sizeof(v28));
        CMTimeMake(&v26.start, [v14 sampleTime], a5);
        CMTimeMake(&duration, [v17 sampleTime] - objc_msgSend(v14, "sampleTime"), a5);
        CMTimeRangeMake(&v28, &v26.start, &duration);
        [v14 value];
        v19 = v18;
        [v17 value];
        LODWORD(v21) = v20;
        v26 = v28;
        [v8 setVolumeRampFromStartVolume:&v26 toEndVolume:COERCE_DOUBLE(__PAIR64__(v28.duration.flags timeRange:{v19)), v21}];
      }

      else
      {
        [v14 value];
        v23 = v22;
        CMTimeMake(&v28.start, [v14 sampleTime], a5);
        LODWORD(v24) = v23;
        [v8 setVolume:&v28 atTime:v24];
      }

      v13 = v15;
    }

    while (v12 != v15);
  }

  return v8;
}

+ (id)_mixParametersForAudioMixInputParameters:(id)a3 sampleRate:(int)a4
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E699F6E8]);
  v23 = **&MEMORY[0x1E6960CC0];
  v7 = *(MEMORY[0x1E6960CA8] + 16);
  v21 = *MEMORY[0x1E6960CA8];
  *v22 = v7;
  *&v22[16] = *(MEMORY[0x1E6960CA8] + 32);
  v19 = -1.0;
  v20 = -1.0;
  while (1)
  {
    while (1)
    {
      v18 = v23;
      v8 = [v5 getVolumeRampForTime:&v18 startVolume:&v20 endVolume:&v19 timeRange:&v21];
      memset(&v18, 0, sizeof(v18));
      time = v23;
      CMTimeConvertScale(&v18, &time, a4, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      time = v23;
      *&v16.value = v21;
      v16.epoch = *v22;
      if (CMTimeCompare(&time, &v16))
      {
        break;
      }

      if (v20 > -1.0)
      {
        v9 = objc_alloc(MEMORY[0x1E699F6E0]);
        *&v10 = v20;
        v11 = [v9 initWithValue:v18.value atTime:v10];
        [v6 appendVolumeKeyframe:v11];
      }

      time = v23;
      v16 = *&v22[8];
      CMTimeAdd(&v23, &time, &v16);
      if ((v8 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    if ((v8 & 1) == 0)
    {
      break;
    }

    *&v23.value = v21;
    v23.epoch = *v22;
  }

  if (v19 > -1.0)
  {
    v12 = objc_alloc(MEMORY[0x1E699F6E0]);
    *&v13 = v19;
    v14 = [v12 initWithValue:v18.value atTime:v13];
    [v6 appendVolumeKeyframe:v14];
  }

LABEL_11:

  return v6;
}

+ (id)coalesceAudioMixInputParametersA:(id)a3 withAudioMixInputParametersB:(id)a4 audioTrack:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v8 naturalTimeScale];
  v12 = [a1 _mixParametersForAudioMixInputParameters:v10 sampleRate:v11];

  v13 = [a1 _mixParametersForAudioMixInputParameters:v9 sampleRate:v11];

  v14 = [MEMORY[0x1E699F700] coalesceMixParamsA:v12 withMixParamsB:v13];
  v15 = [a1 _audioMixInputParametersForMixParameters:v14 audioTrack:v8 sampleRate:v11];

  return v15;
}

+ (void)purgeLocalFlexDataWithCompletion:(id)a3
{
  v4 = a3;
  v5 = PLAudioPlaybackGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "Purging local flex data…", buf, 2u);
  }

  v6 = dispatch_get_global_queue(25, 0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__PXFlexMusicLibrary_purgeLocalFlexDataWithCompletion___block_invoke;
  v8[3] = &unk_1E7747E18;
  v9 = v4;
  v10 = a1;
  v7 = v4;
  dispatch_async(v6, v8);
}

void __55__PXFlexMusicLibrary_purgeLocalFlexDataWithCompletion___block_invoke(uint64_t a1)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(*(a1 + 40));
  v3 = v2[13];
  v4 = *MEMORY[0x1E699F660];
  v9[0] = *MEMORY[0x1E699F678];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  [v3 purgeAllLocalCachedAssetsWithIDs:v5];

  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = *(a1 + 32);
  MAPurgeCatalogsWithPurpose();
}

void __55__PXFlexMusicLibrary_purgeLocalFlexDataWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLAudioPlaybackGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEBUG, "Finished purging local flex data with error %@", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

+ (PXFlexMusicLibrary)sharedLibrary
{
  if (sharedLibrary_onceToken != -1)
  {
    dispatch_once(&sharedLibrary_onceToken, &__block_literal_global_212720);
  }

  v3 = sharedLibrary_library;

  return v3;
}

void __35__PXFlexMusicLibrary_sharedLibrary__block_invoke()
{
  v0 = objc_alloc_init(PXFlexMusicLibrary);
  v1 = sharedLibrary_library;
  sharedLibrary_library = v0;
}

@end