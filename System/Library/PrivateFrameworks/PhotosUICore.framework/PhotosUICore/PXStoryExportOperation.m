@interface PXStoryExportOperation
@end

@implementation PXStoryExportOperation

void __56___PXStoryExportOperation_collectAnalyticsForExportEnd___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) status] == 2;
  v6 = [*(a1 + 32) configuration];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) storyQueue_storyModel];
  v5 = [*(a1 + 32) error];
  [PXStoryExportManager collectAnalyticsForExportEndWithConfiguration:v6 analyticsToken:v3 model:v4 withSuccess:v2 error:v5];
}

uint64_t __61___PXStoryExportOperation_engine_shouldRenderLayout_sprites___block_invoke(uint64_t result, uint64_t a2, unsigned int **a3, _BYTE *a4)
{
  v4 = **a3;
  v5 = *(*(result + 64) + v4);
  if (*a3[3] == 1 && v5 != 0)
  {
    PXAssertGetLog();
  }

  if ((v5 - 1) >= 2)
  {
    if (v5 == 4)
    {
      *(*(*(result + 56) + 8) + 24) = 1;
      [*(result + 40) errorForEntity:v4];
      objc_claimAutoreleasedReturnValue();
      v7 = objc_alloc(MEMORY[0x1E696AEC0]);
      v8 = objc_opt_class();
      NSStringFromClass(v8);
      objc_claimAutoreleasedReturnValue();
      PXGSpriteInfoDescription();
    }
  }

  else
  {
    *(*(*(result + 56) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void __46___PXStoryExportOperation__initializeProgress__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained cancel];
}

void __78___PXStoryExportOperation__exportWithoutMusicAudioTrackWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) audioQueue_audioWriterWithoutMusicTrack];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __78___PXStoryExportOperation__exportWithoutMusicAudioTrackWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v5 = WeakRetained;
  v4 = [v5 audioQueue_audioMixOutputWithoutMusic];
  [v5 _audioWriteQueue_exportAudioWithInput:v3 audioMixOutput:v4 completionHandler:*(a1 + 32)];
}

void __73___PXStoryExportOperation__exportDefaultAudioTrackWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) audioQueue_audioWriterDefaultTrack];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __73___PXStoryExportOperation__exportDefaultAudioTrackWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v5 = WeakRetained;
  v4 = [v5 audioQueue_audioMixOutput];
  [v5 _audioWriteQueue_exportAudioWithInput:v3 audioMixOutput:v4 completionHandler:*(a1 + 32)];
}

void __55___PXStoryExportOperation__audibleVideoHilightsInStory__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) storyQueue_storyModel];
  v2 = [v1 timeline];

  [v2 size];
  PXRectWithOriginAndSize();
}

void __55___PXStoryExportOperation__audibleVideoHilightsInStory__block_invoke_2(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v57 = *MEMORY[0x1E69E9840];
  if (a2 >= 1)
  {
    v7 = a2;
    v8 = a1;
    do
    {
      v9 = *(a5 + 712);
      v10 = *(a5 + 736);
      v50 = *(a5 + 720);
      v51 = v10;
      v52 = *(a5 + 752);
      if (v9 >= 2)
      {
        v11 = [*(v8 + 32) clipWithIdentifier:*a5];
        v12 = [v11 resource];
        v13 = [v12 px_storyResourceDisplayAsset];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v29 = v12;
          v14 = a3[1];
          v48 = *a3;
          *v49 = v14;
          *&v49[16] = a3[2];
          PXStoryClipVideoSegmentTimeRange(v11, v33);
          v55 = *v33;
          v15 = *&v33[12];
          v56 = *&v33[8];
          v28 = *&v33[16];
          v27 = *&v33[32];
          v32 = *&v33[36];
          v30 = *&v33[24];
          v31 = *&v33[40];
          v45 = v48;
          v46 = *v49;
          v47 = *&v49[16];
          PXStoryClipSegmentPlaybackTimeRangeIncludingJLCuts(v11, &v45, 1u, v33);
          v53 = *v33;
          v26 = *&v33[12];
          v54 = *&v33[8];
          v23 = *&v33[16];
          v25 = *&v33[24];
          v16 = v33[36];
          v17 = *&v33[40];
          v46 = 0u;
          v47 = 0u;
          v45 = 0u;
          *v33 = v48;
          *&v33[16] = *v49;
          *&v33[32] = *&v49[16];
          PXStoryClipTimeRangeByAddingJLCutsToTimeRange(v11, v33, &v45);
          if ((v15 & 1) == 0 || (v32 & 1) == 0 || v31 || v30 < 0 || (v26 & 1) == 0 || (v16 & 1) == 0 || v17 || v25 < 0)
          {
            start = **&MEMORY[0x1E6960CC0];
            *duration = *&v49[8];
            *&duration[16] = *&v49[24];
            CMTimeRangeMake(v33, &start, duration);
            v53 = *v33;
            v18 = *&v33[12];
            v54 = *&v33[8];
            v19 = *&v33[16];
            v20 = v28;
          }

          else
          {
            start.value = v53;
            start.timescale = v54;
            start.flags = v26;
            start.epoch = v23;
            *duration = v55;
            *&duration[8] = __PAIR64__(v15, v56);
            v20 = v28;
            *&duration[16] = v28;
            CMTimeSubtract(v33, &start, duration);
            v53 = *v33;
            v18 = *&v33[12];
            v54 = *&v33[8];
            v19 = *&v33[16];
          }

          v21 = [_PXStoryExport_VideoHighlightInfo alloc];
          *duration = v45;
          *&duration[16] = v46;
          v35 = v47;
          *&v33[8] = v50;
          v39 = v19;
          start.value = v55;
          start.timescale = v56;
          start.flags = v15;
          start.epoch = v20;
          v41 = v30;
          v42 = v27;
          v43 = v32;
          v44 = v31;
          v36 = v53;
          v37 = v54;
          v38 = v18;
          *v33 = v9;
          *&v33[24] = v51;
          *&v33[40] = v52;
          v22 = [(_PXStoryExport_VideoHighlightInfo *)v21 initWithAsset:v13 loadingVideoTimeRange:&start loadedVideoPlaybackStartTime:&v36 storyPlaybackRange:duration audioInfo:v33];
          v8 = a1;
          [*(a1 + 48) addObject:v22];

          v12 = v29;
        }
      }

      a3 += 3;
      a5 += 768;
      --v7;
    }

    while (v7);
  }
}

void __84___PXStoryExportOperation__addAudioAssetsForVideoHilightsToAudioCompositionBuilder___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [*(a1 + 32) audioQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84___PXStoryExportOperation__addAudioAssetsForVideoHilightsToAudioCompositionBuilder___block_invoke_2;
  block[3] = &unk_1E77448F8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v16 = v6;
  v17 = v9;
  v18 = v7;
  v19 = v10;
  v20 = *(a1 + 48);
  v14 = *(a1 + 56);
  v11 = v14;
  v21 = v14;
  v12 = v7;
  v13 = v6;
  dispatch_sync(v8, block);
}

intptr_t __84___PXStoryExportOperation__addAudioAssetsForVideoHilightsToAudioCompositionBuilder___block_invoke_406(intptr_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    result = dispatch_semaphore_signal(*(result + 32));
    *(*(*(v1 + 40) + 8) + 24) = 1;
  }

  return result;
}

void __84___PXStoryExportOperation__addAudioAssetsForVideoHilightsToAudioCompositionBuilder___block_invoke_2(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!v2)
  {
    v15 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x1E6978DF0]];
    v16 = [*(a1 + 56) asset];
    v22 = PXStoryErrorCreateWithCodeUnderlyingErrorDebugFormat(10, v15, @"failed to load video for asset %@", v17, v18, v19, v20, v21, v16);
    [*(a1 + 40) _setError:v22];

    v23 = PLStoryGetLog();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v24 = [*(a1 + 56) asset];
    v25 = [v24 uuid];
    LODWORD(buf[0]) = 138543362;
    *(buf + 4) = v25;
    v26 = "failed to load video for asset %{public}@";
    v27 = v23;
    goto LABEL_20;
  }

  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  if (!v3)
  {
    memset(v54, 0, sizeof(v54));
    goto LABEL_12;
  }

  [v3 loadedVideoPlaybackStartTime];
  v5 = *(a1 + 56);
  if (!v5)
  {
LABEL_12:
    memset(buf, 0, sizeof(buf));
    goto LABEL_13;
  }

  [v5 storyPlaybackRange];
  v6 = *(a1 + 56);
  if (!v6)
  {
LABEL_13:
    v53 = 0;
    v51 = 0u;
    v52 = 0u;
    v50 = 0u;
    v8 = 0;
    goto LABEL_14;
  }

  [v6 audioInfo];
  v7 = *(a1 + 56);
  v8 = v51;
  if (!v7)
  {
LABEL_14:
    v49 = 0;
    v47 = 0u;
    v48 = 0u;
    v46 = 0u;
    v9 = 0.0;
    goto LABEL_15;
  }

  [v7 audioInfo];
  v9 = *(&v48 + 1);
  v10 = *(a1 + 56);
  if (!v10)
  {
LABEL_15:
    v45 = 0.0;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    v12 = 0.0;
    goto LABEL_16;
  }

  [v10 audioInfo];
  v11 = *(a1 + 56);
  v12 = v45;
  if (v11)
  {
    [v11 audioInfo];
    v14 = v38 == 3;
    goto LABEL_17;
  }

LABEL_16:
  v14 = 0;
  v41 = 0;
  HIDWORD(v13) = 0;
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
LABEL_17:
  v37 = 0;
  LODWORD(v13) = v8;
  v28 = [v4 addAudioFromVideoHighlightAsset:v2 fromTime:v54 atStoryTimeRange:buf volume:v14 fadeIn:&v37 fadeOut:v13 shouldDuck:v9 error:v12];
  v23 = v37;
  if (v28)
  {
    goto LABEL_22;
  }

  v29 = [*(a1 + 56) asset];
  v24 = [v29 uuid];

  v35 = PXStoryErrorCreateWithCodeUnderlyingErrorDebugFormat(10, v23, @"failed to add audio from video %@ for asset %@", v30, v31, v32, v33, v34, *(a1 + 32));
  [*(a1 + 40) _setError:v35];

  v25 = PLStoryGetLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf[0]) = 138543362;
    *(buf + 4) = v24;
    v26 = "failed to add audio from video %{public}@";
    v27 = v25;
LABEL_20:
    _os_log_impl(&dword_1A3C1C000, v27, OS_LOG_TYPE_ERROR, v26, buf, 0xCu);
  }

LABEL_22:
  v36 = *(*(a1 + 80) + 8);
  if ((*(v36 + 24) & 1) == 0)
  {
    *(v36 + 24) = 1;
    dispatch_semaphore_signal(*(a1 + 72));
  }
}

void __114___PXStoryExportOperation__handleMediaRequestCompletedForSongAsset_avAsset_audioMix_info_audioCompositionBuilder___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 48) objectForKeyedSubscript:@"ProgramLoudnessLKFS"];

    if (v2)
    {
      v4 = [*(a1 + 48) objectForKeyedSubscript:@"ProgramLoudnessLKFS"];
      [v4 floatValue];
      v6 = v5;

      v7 = [*(a1 + 48) objectForKeyedSubscript:@"PeakdBFS"];
      [v7 floatValue];

      v8 = +[PXStorySettings sharedInstance];
      [v8 musicTargetLoudnessLKFS];
      PXVolumeGainForTargetLoudness(v9, v6);
      v11 = v10;
    }

    else
    {
      v11 = 1.0;
    }

    v19 = *(a1 + 32);
    v20 = *(a1 + 64);
    v21 = *(a1 + 72);
    v32 = 0;
    *&v3 = v11;
    v22 = [v20 addMusicAsset:v19 withAudioMix:v21 preferredVolume:&v32 error:v3];
    v23 = v32;
    if ((v22 & 1) == 0)
    {
      v24 = [*(a1 + 56) identifier];
      v30 = PXStoryErrorCreateWithCodeUnderlyingErrorDebugFormat(10, v23, @"failed to add song %@ to audio composition", v25, v26, v27, v28, v29, v24);
      [*(a1 + 40) _setError:v30];
    }
  }

  else if (([*(a1 + 40) isCancelled] & 1) == 0)
  {
    v31 = [*(a1 + 48) objectForKeyedSubscript:@"Error"];
    v12 = [*(a1 + 56) identifier];
    v18 = PXStoryErrorCreateWithCodeUnderlyingErrorDebugFormat(10, v31, @"failed to load media for song %@", v13, v14, v15, v16, v17, v12);
    [*(a1 + 40) _setError:v18];
  }
}

void __66___PXStoryExportOperation__addSongAssetToAudioCompositionBuilder___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) storyQueue_storyModel];
  v3 = [v2 currentSongResource];
  v4 = [v3 px_storyResourceSongAsset];

  if (!v4)
  {
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    [v5 targetDuration];
    if ((v19 & 1) == 0)
    {
      v6 = *(a1 + 32);
      if (v6)
      {
        [v6 exportDuration];
      }
    }

LABEL_10:

    goto LABEL_11;
  }

  if ([v4 catalog] == 2)
  {
    v7 = [*(a1 + 32) configuration];
    v8 = [v7 activityType];

    if (v8)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        PXAssertGetLog();
      }

      v5 = v4;
      v9 = [*(a1 + 32) configuration];
      v10 = [PXStoryExportManager collectAnalyticsForFixationWithAppleMusicAsset:v5 configuration:v9];

      if (!v10)
      {
        v17 = PXStoryErrorCreateWithCodeDebugFormat(10, @"Could not collect apple music fixation analytics", v11, v12, v13, v14, v15, v16, v18);
        [*(a1 + 32) _setError:v17];

        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

LABEL_11:
  if ([v4 defaultMediaProviderClass])
  {
    [*(a1 + 32) qualityOfService];
    px_dispatch_qos_from_nsqualityofservice();
  }

LABEL_13:
}

intptr_t __66___PXStoryExportOperation__addSongAssetToAudioCompositionBuilder___block_invoke_390(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _handleMediaRequestCompletedForSongAsset:*(a1 + 32) avAsset:v9 audioMix:v8 info:v7 audioCompositionBuilder:*(a1 + 40)];

  v11 = *(a1 + 48);

  return dispatch_semaphore_signal(v11);
}

uint64_t __47___PXStoryExportOperation__setupAudioExporting__block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __47___PXStoryExportOperation__setupAudioExporting__block_invoke_2;
  v3[3] = &unk_1E7742318;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 finishAndWaitWithResultHandler:v3];
}

void __47___PXStoryExportOperation__setupAudioExporting__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v20 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17 = v11;
  if (v20)
  {
    [*(a1 + 32) _audioWriteQueue_setupAudioReaderWithAudioExportComposition:v20 audioMix:v9 audioMixWithoutMusic:v10];
  }

  else if (v11)
  {
    v18 = PXStoryErrorCreateWithCodeUnderlyingErrorDebugFormat(10, v11, @"failed to build audio composition", v12, v13, v14, v15, v16, v19);
    [*(a1 + 32) _setError:v18];
  }
}

void __57___PXStoryExportOperation__checkForDriftFromCurrentTime___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  [WeakRetained _storyQueue_checkForDriftFromCurrentTime:&v3];
}

void __39___PXStoryExportOperation__exportVideo__block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39___PXStoryExportOperation__exportVideo__block_invoke_2;
  v3[3] = &unk_1E774A1E0;
  objc_copyWeak(&v4, (a1 + 40));
  v2 = [*(a1 + 32) storyQueue_pixelBufferRenderDestination];
  [v2 setRenderCompletionBlock:v3];

  objc_destroyWeak(&v4);
}

void __39___PXStoryExportOperation__exportVideo__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) videoWriterQueue_pixelBufferWriter];
  v1 = [v2 assetWriterInput];
  [v1 markAsFinished];
}

void __39___PXStoryExportOperation__exportVideo__block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _storyQueue_processRenderedLayoutPixelBuffer:a2];
}

void __67___PXStoryExportOperation__writeVideoWithPixelBuffer_forStoryTime___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  [WeakRetained _videoWriterQueue_writeVideoWithPixelBuffer:v3 forStoryTime:&v4];

  CVPixelBufferRelease(*(a1 + 40));
}

uint64_t __55___PXStoryExportOperation__addVideoInputToAssetWriter___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setVideoWriterQueue_pixelBufferWriter:*(a1 + 40)];
  v2 = *(a1 + 32);
  memset(v4, 0, sizeof(v4));
  return [v2 setVideoQueue_firstWrittenStoryTime:v4];
}

void __53___PXStoryExportOperation__advanceLayoutToStoryTime___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  [WeakRetained _storyQueue_advanceLayoutToStoryTime:&v3];
}

void __44___PXStoryExportOperation__setupStoryLayout__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) videoWriterQueue_pixelBufferWriter];
  v3 = CVPixelBufferPoolRetain([v2 pixelBufferPool]);

  if (v3)
  {
    objc_initWeak(&location, *(a1 + 32));
    v10 = [*(a1 + 32) storyQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44___PXStoryExportOperation__setupStoryLayout__block_invoke_2;
    block[3] = &unk_1E77422A8;
    v18[1] = v3;
    objc_copyWeak(v18, &location);
    v11 = *(a1 + 32);
    v16 = v10;
    v17 = v11;
    v12 = v10;
    dispatch_async(v12, block);

    objc_destroyWeak(v18);
    objc_destroyWeak(&location);
  }

  else
  {
    v14 = PXStoryErrorCreateWithCodeDebugFormat(10, @"Unexpected adapter pixelBufferPool is nil", v4, v5, v6, v7, v8, v9, v13);
    [*(a1 + 32) _setError:v14];
  }
}

void __44___PXStoryExportOperation__setupStoryLayout__block_invoke_3(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 336);
  v3 = v2;
  v4 = *(a1 + 32);
  v5 = v4[43];
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v6 = [v4 uniqueIdentifier];
    *buf = 138543362;
    v27 = v6;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v5, "StoryExportRequestSetupLayout", "setup layout for export %{public}@", buf, 0xCu);
  }

  v7 = [*(a1 + 32) storyQueue_storyModel];
  v8 = objc_alloc_init(PXStoryPacingManualTimeSource);
  v9 = [[PXStoryPacingController alloc] initWithModel:v7 timeSource:v8 cueSource:*(a1 + 32)];
  [*(a1 + 32) setStoryQueue_pacingController:v9];
  [(PXStoryController *)v9 performChanges:&__block_literal_global_349];
  v10 = [[PXStoryLayout alloc] initWithModel:v7];
  v11 = [v7 extendedTraitCollection];
  [v11 displayScale];
  [(PXStoryLayout *)v10 setDisplayScale:?];

  v12 = +[PXStorySettings sharedInstance];
  if (![(PXStoryDiagnosticHUDLayout *)v12 isExportHUDEnabled])
  {
    goto LABEL_7;
  }

  v13 = +[PXStorySettings sharedInstance];
  v14 = [v13 exportHUDType];

  if (v14)
  {
    v12 = [[PXStoryDiagnosticHUDLayout alloc] initWithDataSource:*(a1 + 32)];
    [(PXStoryLayout *)v10 setDiagnosticOverlayLayout:v12];
LABEL_7:
  }

  v15 = [off_1E77215D8 alloc];
  v16 = [*(a1 + 32) storyQueue_pixelBufferRenderDestination];
  v17 = [*(a1 + 32) storyQueue];
  v18 = [v15 initWithPixelBufferDestination:v16 layoutQueue:v17 displayLinkClass:objc_opt_class()];

  [*(a1 + 32) setStoryQueue_engine:v18];
  [v18 setIsExporting:1];
  [v18 setVisible:1];
  [v18 setDelegate:*(a1 + 32)];
  [v18 setIsInitialLoad:0];
  [v18 setLayout:v10];
  v19 = [*(a1 + 32) storyQueue_mediaProvider];
  [v18 registerAllTextureProvidersWithMediaProvider:v19];

  v20 = [v18 displayLink];
  v21 = [*(a1 + 32) configuration];
  v22 = [v21 videoOptions];
  [v20 setPreferredFramesPerSecond:{objc_msgSend(v22, "frameRate")}];

  v23 = *(*(a1 + 32) + 336);
  v24 = v23;
  v25 = *(*(a1 + 32) + 344);
  if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v24, OS_SIGNPOST_INTERVAL_END, v25, "StoryExportRequestSetupLayout", "", buf, 2u);
  }
}

void __44___PXStoryExportOperation__setupStoryLayout__block_invoke_2(uint64_t a1)
{
  v7 = [[off_1E7721678 alloc] initWithPixelBufferPool:*(a1 + 56)];
  v2 = [off_1E7721670 alloc];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) videoOptions];
  [v4 scale];
  v5 = [v2 initWithLayoutQueue:v3 pixelBufferPool:v7 scale:0 enablePoolRelease:?];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setStoryQueue_pixelBufferRenderDestination:v5];

  CVPixelBufferPoolRelease(*(a1 + 56));
}

void __114___PXStoryExportOperation__waitForStoryStateWhileExportingCanContinueByWatchingChanges_timeout_verificationBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) storyQueue_storyModel];
  v3 = *(a1 + 80);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __114___PXStoryExportOperation__waitForStoryStateWhileExportingCanContinueByWatchingChanges_timeout_verificationBlock___block_invoke_2;
  v9[3] = &unk_1E7742230;
  v10 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  v12 = v4;
  v13 = v5;
  v11 = *(a1 + 48);
  v6 = [v2 pxStory_enumerateStatesByWatchingChanges:v3 usingBlock:v9];
  v7 = *(*(a1 + 64) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void __114___PXStoryExportOperation__waitForStoryStateWhileExportingCanContinueByWatchingChanges_timeout_verificationBlock___block_invoke_3(uint64_t a1)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    [*(*(*(a1 + 40) + 8) + 40) cancel];
  }

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    dispatch_semaphore_signal(*(a1 + 32));
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void __114___PXStoryExportOperation__waitForStoryStateWhileExportingCanContinueByWatchingChanges_timeout_verificationBlock___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  dispatch_assert_queue_V2(v6);
  LODWORD(v6) = (*(*(a1 + 48) + 16))();

  if (v6)
  {
    *a4 = 1;
    if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
    {
      dispatch_semaphore_signal(*(a1 + 40));
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }
}

uint64_t __68___PXStoryExportOperation__preloadStoryResourcesAndWaitForBuffering__block_invoke(uint64_t a1)
{
  v2 = [PXStoryResourcesPreloadingController alloc];
  v3 = [*(a1 + 32) storyQueue_storyModel];
  v4 = [*(a1 + 32) storyQueue_mediaProvider];
  v5 = [(PXStoryResourcesPreloadingController *)v2 initWithModel:v3 mediaProvider:v4];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  [*(*(*(a1 + 40) + 8) + 40) setIsPreloadingEnabled:1];
  [*(*(*(a1 + 40) + 8) + 40) performChanges:&__block_literal_global_319_194446];
  v8 = [PXStoryBufferingController alloc];
  v9 = [*(a1 + 32) storyQueue_storyModel];
  v10 = [(PXStoryBufferingController *)v8 initWithModel:v9];
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = *(*(*(a1 + 48) + 8) + 40);

  return [v13 performChanges:&__block_literal_global_323_194448];
}

void __68___PXStoryExportOperation__preloadStoryResourcesAndWaitForBuffering__block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(*(*(a1 + 56) + 8) + 40);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68___PXStoryExportOperation__preloadStoryResourcesAndWaitForBuffering__block_invoke_5;
  v10[3] = &unk_1E7742198;
  v4 = *(a1 + 32);
  v5 = *(a1 + 56);
  v6 = *(a1 + 40);
  v11 = v4;
  v12 = v6;
  v13 = v5;
  v7 = [v3 pxStory_enumerateStatesByWatchingChanges:v2 usingBlock:v10];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

uint64_t __68___PXStoryExportOperation__preloadStoryResourcesAndWaitForBuffering__block_invoke_7(void *a1)
{
  [*(*(a1[4] + 8) + 40) cancel];
  v2 = *(a1[4] + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  [*(*(a1[5] + 8) + 40) performChanges:&__block_literal_global_333_194435];
  v4 = *(*(a1[6] + 8) + 40);

  return [v4 performChanges:&__block_literal_global_335_194436];
}

void __68___PXStoryExportOperation__preloadStoryResourcesAndWaitForBuffering__block_invoke_10(uint64_t a1)
{
  v2 = [*(a1 + 32) storyQueue_storyModel];
  v3 = [v2 timeline];
  v4 = v3;
  if (v3)
  {
    [v3 timeRange];
  }

  else
  {
    memset(v20, 0, sizeof(v20));
    v19 = 0u;
  }

  v21 = *(v20 + 8);

  time = v21;
  if (CMTimeGetSeconds(&time) == 0.0)
  {
    v11 = PXStoryErrorCreateWithCodeDebugFormat(10, @"empty timeline", v5, v6, v7, v8, v9, v10, v16);
    [*(a1 + 32) _setError:v11];
  }

  else
  {
    time = v21;
    [*(a1 + 32) _setExportDuration:&time];
    v12 = [*(a1 + 32) storyQueue_storyModel];
    v13 = v12;
    if (v12)
    {
      [v12 outroDuration];
    }

    else
    {
      memset(&v17, 0, sizeof(v17));
    }

    v14 = *(a1 + 32);
    time = v17;
    [v14 _setOutroDuration:&time];

    v11 = [*(a1 + 32) storyQueue_storyModel];
    v15 = [v11 currentStyle];
    [*(a1 + 32) _setExportedStyle:v15];
  }
}

void __68___PXStoryExportOperation__preloadStoryResourcesAndWaitForBuffering__block_invoke_5(uint64_t a1, void *a2, char a3, _BYTE *a4)
{
  v16 = a2;
  if ((a3 & 2) != 0)
  {
    [*(*(*(a1 + 48) + 8) + 40) loadingFractionComplete];
    [*(a1 + 32) setCompletedUnitCount:(v7 * 100.0)];
  }

  if ((a3 & 1) != 0 && [*(*(*(a1 + 48) + 8) + 40) isCompleted])
  {
    [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 32), "totalUnitCount")}];
    *a4 = 1;
  }

  if ((a3 & 4) != 0)
  {
    v13 = [*(*(*(a1 + 48) + 8) + 40) error];
    if (v13)
    {
      v14 = PXStoryErrorCreateWithCodeUnderlyingErrorDebugFormat(10, v13, @"resource preloading failed", v8, v9, v10, v11, v12, v15);
      [*(a1 + 40) _setError:v14];

      *a4 = 1;
    }
  }
}

void __68___PXStoryExportOperation__preloadStoryResourcesAndWaitForBuffering__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setIsSongResourcesPreloadingEnabled:0];
  [v2 setIsActive:1];
}

void __43___PXStoryExportOperation__setupStoryModel__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 336);
  v3 = v2;
  v4 = *(a1 + 32);
  v5 = v4[43];
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v6 = [v4 uniqueIdentifier];
    *buf = 138543362;
    v14 = v6;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v5, "StoryExportRequestSetupStoryModel", "setup layout for export %{public}@", buf, 0xCu);
  }

  v7 = [*(a1 + 32) _storyQueue_createStoryModel];
  [*(a1 + 32) setStoryQueue_storyModel:v7];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __43___PXStoryExportOperation__setupStoryModel__block_invoke_313;
  v12[3] = &unk_1E77485B0;
  v12[4] = *(a1 + 32);
  [v7 performChanges:v12];
  v8 = *(*(a1 + 32) + 336);
  v9 = v8;
  v10 = *(*(a1 + 32) + 344);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 134217984;
    v14 = v7;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v9, OS_SIGNPOST_INTERVAL_END, v10, "StoryExportRequestSetupStoryModel", "setup layout with model %p", buf, 0xCu);
  }

  v11 = [[PXStorySongController alloc] initWithModel:v7];
  [*(a1 + 32) setStoryQueue_songController:v11];
}

void __43___PXStoryExportOperation__setupStoryModel__block_invoke_313(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  v3 = [v2 videoOptions];
  [v4 setPrefersExportLayoutMatchesPlayback:{objc_msgSend(v3, "prefersExportLayoutMatchesPlayback")}];

  [v4 setDesiredPlayState:1];
  [v4 setMusicReadinessStatus:3];
}

void __31___PXStoryExportOperation_main__block_invoke(uint64_t a1)
{
  v5 = +[PXApplicationState sharedState];
  v2 = [v5 beginDisablingIdleTimerForReason:@"Story export (PXStoryExportManager)"];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __31___PXStoryExportOperation_main__block_invoke_297(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    v2 = +[PXApplicationState sharedState];
    [v2 endDisablingIdleTimer:*(*(*(a1 + 32) + 8) + 40)];
  }
}

__n128 __45___PXStoryExportOperation__setOutroDuration___block_invoke(uint64_t a1)
{
  v1 = (*(a1 + 32) + 300);
  v2 = *(a1 + 56);
  result = *(a1 + 40);
  *v1 = result;
  v1[1].n128_u64[0] = v2;
  return result;
}

__n128 __40___PXStoryExportOperation_outroDuration__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  v2 = (*(a1 + 32) + 300);
  v3 = *(*(a1 + 32) + 316);
  result = *v2;
  v1[2] = *v2;
  v1[3].n128_u64[0] = v3;
  return result;
}

__n128 __46___PXStoryExportOperation__setExportDuration___block_invoke(uint64_t a1)
{
  v1 = (*(a1 + 32) + 276);
  v2 = *(a1 + 56);
  result = *(a1 + 40);
  *v1 = result;
  v1[1].n128_u64[0] = v2;
  return result;
}

__n128 __41___PXStoryExportOperation_exportDuration__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  v2 = (*(a1 + 32) + 276);
  v3 = *(*(a1 + 32) + 292);
  result = *v2;
  v1[2] = *v2;
  v1[3].n128_u64[0] = v3;
  return result;
}

void __37___PXStoryExportOperation__setError___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 264), *(a1 + 40));
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [v2 domain];
    if ([v3 isEqualToString:@"PXStoryErrorDomain"])
    {
      v4 = [*(a1 + 40) code];

      if (v4 == 11)
      {
        v5 = 3;
LABEL_7:
        *(*(a1 + 32) + 256) = v5;
        return;
      }
    }

    else
    {
    }

    v5 = 4;
    goto LABEL_7;
  }
}

@end