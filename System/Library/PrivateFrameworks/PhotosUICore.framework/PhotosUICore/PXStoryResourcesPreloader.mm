@interface PXStoryResourcesPreloader
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentPlaybackTime;
- (BOOL)_isImagePreloadingNeededForClipInfo:(id *)a3;
- (BOOL)isLoadingLikelyToKeepUpWithPlayback;
- (NSArray)loadedTimeRanges;
- (NSError)error;
- (NSString)diagnosticDescription;
- (PXStoryResourcesPreloader)init;
- (PXStoryResourcesPreloader)initWithMediaProvider:(id)a3 displayScale:(double)a4 videoSessionManager:(id)a5 loadingStatusReporter:(id)a6 storyQueue:(id)a7 isExporting:(BOOL)a8 isInline:(BOOL)a9 limitVideoDownloadQuality:(BOOL)a10;
- (PXStoryResourcesPreloadingRequest)currentRequest;
- (float)loadingFractionComplete;
- (id)previousRequest;
- (int64_t)currentSegmentIdentifier;
- (int64_t)lagsCount;
- (void)_accumulateLoadedTimeRange:(id *)a3 moreExpected:(BOOL)a4;
- (void)_estimationNoteClipWithPlaybackStyle:(int64_t)a3 loadedWithLoadingTime:(double)a4;
- (void)_estimationNoteLoadingSegments:(id)a3 loadedSegments:(id)a4;
- (void)_estimationNoteSessionStartedWithSegmentsToLoad:(id)a3 preloadableClipsCounts:(id *)a4 inTimeline:(id)a5;
- (void)_estimationQueue_updateEstimation;
- (void)_invalidateEstimation;
- (void)_invalidateProcessing;
- (void)_noteLoadingEndedForClip:(id *)a3 inSegment:(int64_t)a4 resourceType:(id)a5 resourceIdentifier:(id)a6 timeRange:(id *)a7 error:(id)a8 loadingTime:(double)a9 playbackStyle:(int64_t)a10;
- (void)_noteLoadingStartedForClipInSegment:(int64_t)a3;
- (void)_noteSessionStartedWithLoadedSegments:(id)a3 segmentsToLoad:(id)a4 preloadableClipsCounts:(id *)a5 inTimeline:(id)a6;
- (void)_performChangesOnStoryQueue:(id)a3;
- (void)_stateQueue_accumulateLoadedTimeRange:(id *)a3 moreExpected:(BOOL)a4;
- (void)_timelineReadingQueue_loadResourcesForClipsInSegment:(int64_t)a3 request:(id)a4 clipLoadingGroup:(id)a5;
- (void)_timelineReadingQueue_processRequest:(id)a3 previousRequest:(id)a4;
- (void)_timelineReadingQueue_sessionStartedWithAlreadyLoadedSegments:(id)a3 segmentsToLoad:(id)a4 preloadableClipsCounts:(id *)a5 request:(id)a6;
- (void)_updateEstimation;
- (void)_updateProcessing;
- (void)dealloc;
- (void)didPerformChanges;
- (void)performChanges:(id)a3;
- (void)setCurrentPlaybackTime:(id *)a3;
- (void)setCurrentRequest:(id)a3;
- (void)setCurrentSegmentIdentifier:(int64_t)a3;
- (void)setError:(id)a3;
- (void)setIsLoadingLikelyToKeepUpWithPlayback:(BOOL)a3;
- (void)setLoadingFractionComplete:(float)a3;
- (void)startProcessingRequest:(id)a3;
@end

@implementation PXStoryResourcesPreloader

- (NSString)diagnosticDescription
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = [(PXStoryResourcesPreloader *)self loadingOperationQueue];
  v5 = [v4 operations];
  v6 = [v5 copy];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v13 = [v12 diagnosticDescription];
          [v3 appendFormat:@"%@\n", v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return v3;
}

- (BOOL)_isImagePreloadingNeededForClipInfo:(id *)a3
{
  var1 = a3->var1;
  if (var1 == 5)
  {

    return [(PXStoryResourcesPreloader *)self isExporting];
  }

  else if (var1 == 1)
  {
    var5 = a3->var5;
    if ((var5 - 3) >= 3)
    {
      return (var5 - 1) <= 1;
    }

    else
    {
      return ![(PXStoryResourcesPreloader *)self isExporting:v3];
    }
  }

  else
  {
    return 0;
  }
}

- (void)_timelineReadingQueue_loadResourcesForClipsInSegment:(int64_t)a3 request:(id)a4 clipLoadingGroup:(id)a5
{
  v8 = a4;
  v9 = a5;
  [(PXStoryResourcesPreloader *)self log];
  objc_claimAutoreleasedReturnValue();
  [(PXStoryResourcesPreloader *)self logContext];
  [(PXStoryResourcesPreloader *)self loadingStatusReporter];
  objc_claimAutoreleasedReturnValue();
  v10 = [v8 timeline];
  if (v10)
  {
    [v10 timeRangeForSegmentWithIdentifier:a3];
  }

  [v8 timeline];
  [objc_claimAutoreleasedReturnValue() size];
  PXRectWithOriginAndSize();
}

void __107__PXStoryResourcesPreloader__timelineReadingQueue_loadResourcesForClipsInSegment_request_clipLoadingGroup___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v94 = *MEMORY[0x1E69E9840];
  if (a2 >= 1)
  {
    v6 = a3;
    v7 = a2;
    v9 = 0;
    v10 = *MEMORY[0x1E695F060];
    v11 = *(MEMORY[0x1E695F060] + 8);
    v12 = (a5 + 160);
    do
    {
      v13 = *(v12 - 20);
      v88 = *(v12 - 9);
      v89 = *(v12 - 7);
      v90 = *(v12 - 5);
      v91 = *(v12 - 3);
      v84 = *(v12 - 17);
      v85 = *(v12 - 15);
      v86 = *(v12 - 13);
      v87 = *(v12 - 11);
      v83 = *(v12 - 19);
      v14 = *(v12 - 1);
      memcpy(__dst, v12, sizeof(__dst));
      v15 = *(a1 + 32);
      v76 = *(v12 - 9);
      v77 = *(v12 - 7);
      v78 = *(v12 - 5);
      v79 = *(v12 - 3);
      *&v73[24] = *(v12 - 17);
      *&v73[40] = *(v12 - 15);
      v74 = *(v12 - 13);
      v75 = *(v12 - 11);
      *&v73[8] = *(v12 - 19);
      *v73 = v13;
      v80 = v14;
      memcpy(v81, v12, sizeof(v81));
      if ([v15 _isClipPreloadable:v73])
      {
        if ([*(a1 + 40) isCancelled])
        {
          *a6 = 1;
          return;
        }

        v16 = [*(a1 + 48) clipWithIdentifier:v13];
        v17 = [v16 identifier];
        v42 = v16;
        v44 = [v16 resource];
        [*(a1 + 56) notifyStartedPreloadingClipIdentifier:v17];
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __107__PXStoryResourcesPreloader__timelineReadingQueue_loadResourcesForClipsInSegment_request_clipLoadingGroup___block_invoke_2;
        aBlock[3] = &unk_1E7745B78;
        v18 = *(a1 + 64);
        v53 = *(a1 + 88);
        v54 = v17;
        v55 = v6;
        v56 = v9;
        v19 = *(a1 + 32);
        v49 = v18;
        v50 = v19;
        v63 = v88;
        v64 = v89;
        v65 = v90;
        v66 = v91;
        v59 = v84;
        v60 = v85;
        v61 = v86;
        v62 = v87;
        v58 = v83;
        v57 = v13;
        v67 = v14;
        memcpy(v68, __dst, sizeof(v68));
        v69 = *(a1 + 96);
        v20 = *(a1 + 120);
        v70 = *(a1 + 104);
        v71 = v20;
        v72 = *(a1 + 136);
        v51 = *(a1 + 72);
        v52 = *(a1 + 80);
        v43 = _Block_copy(aBlock);
        v21 = *(a1 + 32);
        v76 = v88;
        v77 = v89;
        v78 = v90;
        v79 = v91;
        *&v73[24] = v84;
        *&v73[40] = v85;
        v74 = v86;
        v75 = v87;
        *&v73[8] = v83;
        *v73 = v13;
        v80 = v14;
        memcpy(v81, __dst, sizeof(v81));
        v22 = [v21 _isImagePreloadingNeededForClipInfo:v73];
        v23 = *(a1 + 32);
        v76 = v88;
        v77 = v89;
        v78 = v90;
        v79 = v91;
        *&v73[24] = v84;
        *&v73[40] = v85;
        v74 = v86;
        v75 = v87;
        *&v73[8] = v83;
        *v73 = v13;
        v41 = v14;
        v80 = v14;
        memcpy(v81, __dst, sizeof(v81));
        if ([v23 _isVideoPreloadingNeededForClipInfo:v73])
        {
          v24 = [*(a1 + 40) timelineAttributes] & 1;
        }

        else
        {
          v24 = 0;
        }

        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __107__PXStoryResourcesPreloader__timelineReadingQueue_loadResourcesForClipsInSegment_request_clipLoadingGroup___block_invoke_64;
        v45[3] = &unk_1E7745BA0;
        v46 = *(a1 + 56);
        v47 = v17;
        v25 = _Block_copy(v45);
        if (v22)
        {
          [*(a1 + 32) displayScale];
          v76 = v88;
          v77 = v89;
          v78 = v90;
          v79 = v91;
          *&v73[24] = v84;
          *&v73[40] = v85;
          v74 = v86;
          v75 = v87;
          *&v73[8] = v83;
          *v73 = v13;
          v80 = v41;
          memcpy(v81, __dst, sizeof(v81));
          PXStoryMediaSizeForDisplayAssetClipInfo(v73);
        }

        if (v24)
        {
          memset(v73, 0, 48);
          PXStoryClipVideoSegmentTimeRange(v42, v73);
          v26 = PLStoryGetLog();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            *buf = *v73;
            *&buf[16] = *&v73[16];
            v93 = *&v73[32];
            v27 = PXStoryTimeRangeDescription(buf);
            *buf = 138412546;
            *&buf[4] = v27;
            *&buf[12] = 2112;
            *&buf[14] = v44;
            _os_log_impl(&dword_1A3C1C000, v26, OS_LOG_TYPE_INFO, "[Buffering] preload time range %@ for video asset resource %@", buf, 0x16u);
          }

          v28 = [PXStoryVideoAssetResourcePreloadingOperation alloc];
          v29 = [*(a1 + 32) mediaProvider];
          *buf = *v73;
          *&buf[16] = *&v73[16];
          v93 = *&v73[32];
          v30 = [*(a1 + 32) videoSessionManager];
          v31 = [*(a1 + 32) isExporting];
          v32 = [*(a1 + 32) isInline];
          LOBYTE(v37) = [*(a1 + 32) limitVideoDownloadQuality];
          v33 = [(PXStoryVideoAssetResourcePreloadingOperation *)v28 initWithVideoAssetResource:v44 mediaProvider:v29 downloadTimeRange:buf videoSessionManager:v30 isExporting:v31 isInline:v32 limitVideoDownloadQuality:v37];

          [(PXStoryDisplayAssetResourcePreloadingOperation *)v33 setProgressHandler:v25];
          v34 = v43[2];
          v35.n128_u64[1] = *&v73[24];
          *buf = *v73;
          *&buf[16] = *&v73[16];
          v36.n128_u64[1] = *&v73[40];
          v93 = *&v73[32];
          v36.n128_u64[0] = v10;
          v35.n128_u64[0] = v11;
          v34(v36, v35);
          v6 = a3;
        }

        v7 = a2;
      }

      ++v9;
      v12 += 96;
    }

    while (v7 != v9);
  }
}

void __107__PXStoryResourcesPreloader__timelineReadingQueue_loadResourcesForClipsInSegment_request_clipLoadingGroup___block_invoke_2(uint64_t a1, void *a2, void *a3, _OWORD *a4, uint64_t a5, CGFloat a6, CGFloat a7)
{
  v49 = *MEMORY[0x1E69E9840];
  v12 = a2;
  v13 = a3;
  v14 = [v12 displayAsset];
  v15 = [v14 uuid];

  v16 = *(a1 + 32);
  v17 = os_signpost_id_make_with_pointer(v16, v12);
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v18 = v17;
    if (os_signpost_enabled(v16))
    {
      v28 = *(a1 + 64);
      v29 = *(a1 + 72);
      v19 = (*(a1 + 80) + 48 * *(a1 + 88));
      *buf = *v19;
      *&buf[16] = v19[1];
      *v44 = v19[2];
      v20 = PXStoryTimeRangeDescription(buf);
      v50.width = a6;
      v50.height = a7;
      v21 = NSStringFromCGSize(v50);
      v22 = a4[1];
      *buf = *a4;
      *&buf[16] = v22;
      *v44 = a4[2];
      v23 = PXStoryTimeRangeDescription(buf);
      *buf = 134219522;
      *&buf[4] = v28;
      *&buf[12] = 2050;
      *&buf[14] = v29;
      *&buf[22] = 2114;
      *&buf[24] = v13;
      *v44 = 2114;
      *&v44[2] = v15;
      *&v44[10] = 2114;
      *&v44[12] = v20;
      v45 = 2114;
      v46 = v21;
      v47 = 2114;
      v48 = v23;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v18, "PXStoryResourcesPreloaderBufferingOperation", "Context=%{signpost.telemetry:string2}lu clipIdentifier=%{signpost.description:attribute, public}ld resourceType=%{signpost.description:attribute, public}@ asset=%{signpost.description:attribute, public}@ timeRange=%{signpost.description:attribute, public}@ targetSize=%{signpost.description:attribute, public}@ videoSegmentTimeRange=%{signpost.description:attribute, public}@ ", buf, 0x48u);
    }
  }

  v24 = mach_absolute_time();
  objc_initWeak(buf, *(a1 + 40));
  objc_initWeak(&location, v12);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __107__PXStoryResourcesPreloader__timelineReadingQueue_loadResourcesForClipsInSegment_request_clipLoadingGroup___block_invoke_62;
  v31[3] = &unk_1E7745B50;
  v32 = *(a1 + 32);
  objc_copyWeak(&v36, &location);
  v37[1] = *(a1 + 64);
  objc_copyWeak(v37, buf);
  memcpy(v38, (a1 + 96), 0x308uLL);
  v25 = v13;
  v33 = v25;
  v26 = v15;
  v27 = *(a1 + 888);
  v39 = *(a1 + 872);
  v40 = v27;
  v41 = *(a1 + 904);
  v34 = v26;
  v38[97] = v24;
  v38[98] = a5;
  v35 = *(a1 + 48);
  [v12 setCompletionBlock:v31];
  [*(a1 + 40) _noteLoadingStartedForClipInSegment:*(a1 + 864)];
  dispatch_group_enter(*(a1 + 48));
  [*(a1 + 56) addObject:v12];

  objc_destroyWeak(v37);
  objc_destroyWeak(&v36);

  objc_destroyWeak(&location);
  objc_destroyWeak(buf);
}

void __107__PXStoryResourcesPreloader__timelineReadingQueue_loadResourcesForClipsInSegment_request_clipLoadingGroup___block_invoke_62(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v4 = os_signpost_id_make_with_pointer(v2, WeakRetained);

  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v5 = *(a1 + 80);
    *buf = 134217984;
    v7 = v5;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v2, OS_SIGNPOST_INTERVAL_END, v4, "PXStoryResourcesPreloaderBufferingOperation", "Context=%{signpost.telemetry:string2}lu ", buf, 0xCu);
  }

  objc_loadWeakRetained((a1 + 72));
  [objc_loadWeakRetained((a1 + 64)) error];
  objc_claimAutoreleasedReturnValue();
  mach_absolute_time();
  PXTimebaseConversionFactor();
}

- (void)_timelineReadingQueue_processRequest:(id)a3 previousRequest:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6 && ([v6 isCancelled] & 1) == 0)
  {
    v8 = PLStoryGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v6 timeline];
      buf[0] = 138412546;
      *&buf[1] = v9;
      v13 = 2048;
      v14 = [v6 startingSegmentIdentifier];
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_INFO, "[Buffering] Starting for timeline: %@, starting segment %ld", buf, 0x16u);
    }

    v10 = [v6 timeline];
    if (![v6 shouldIgnoreStartingSegmentIdentifier] || objc_msgSend(v10, "numberOfSegments") > 2)
    {
      [v6 timeline];
      [objc_claimAutoreleasedReturnValue() size];
      PXRectWithOriginAndSize();
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __82__PXStoryResourcesPreloader__timelineReadingQueue_processRequest_previousRequest___block_invoke;
    v11[3] = &unk_1E774C3B0;
    v11[4] = self;
    [(PXStoryResourcesPreloader *)self _performChangesOnStoryQueue:v11];
  }
}

uint64_t __82__PXStoryResourcesPreloader__timelineReadingQueue_processRequest_previousRequest___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIsLoadingLikelyToKeepUpWithPlayback:1];
  v2 = *(a1 + 32);
  LODWORD(v3) = 1.0;

  return [v2 setLoadingFractionComplete:v3];
}

void __82__PXStoryResourcesPreloader__timelineReadingQueue_processRequest_previousRequest___block_invoke_2(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  if (a2 < a2 + a3)
  {
    v23 = v7;
    v24 = v6;
    v25 = v4;
    v26 = v5;
    v9 = a3;
    v10 = a2;
    do
    {
      if (v10 >= [*(a1 + 32) numberOfSegments])
      {
        break;
      }

      v12 = [*(a1 + 32) identifierForSegmentAtIndex:v10];
      v13 = [*(a1 + 40) identifiersOfSegmentsMatchingSegmentWithIdentifier:v12 inTimeline:*(a1 + 32)];
      if (([*(a1 + 48) containsIndex:v12] & 1) != 0 || v13 && objc_msgSend(*(a1 + 48), "containsIndexes:", v13))
      {
        [*(a1 + 56) addIndex:v12];
      }

      else if (a4)
      {
        [*(a1 + 64) addIndex:v12];
        v14 = *(a1 + 72);
        v15 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
        [v14 addObject:v15];

        v21 = 0u;
        v22 = 0u;
        v20 = 0u;
        v16 = *(a1 + 32);
        if (v16)
        {
          [v16 timeRangeForSegmentWithIdentifier:v12];
          v16 = *(a1 + 32);
        }

        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __82__PXStoryResourcesPreloader__timelineReadingQueue_processRequest_previousRequest___block_invoke_3;
        v18[3] = &unk_1E7745B00;
        v19 = *(a1 + 80);
        v17[0] = v20;
        v17[1] = v21;
        v17[2] = v22;
        [v16 enumerateClipsInTimeRange:v17 rect:v18 usingBlock:{*(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120)}];
      }

      ++v10;
      --v9;
    }

    while (v9);
  }
}

uint64_t __82__PXStoryResourcesPreloader__timelineReadingQueue_processRequest_previousRequest___block_invoke_3(uint64_t result, uint64_t a2, int a3, int a4, char *__src)
{
  if (a2 >= 1)
  {
    v15 = v5;
    v16 = v6;
    v8 = a2;
    v9 = result;
    do
    {
      v10 = *(v9 + 32);
      memcpy(v14, __src, sizeof(v14));
      result = [v10 _isClipPreloadable:v14];
      if (result)
      {
        v11 = *(v9 + 32);
        memcpy(v14, __src, sizeof(v14));
        if ([v11 _isImagePreloadingNeededForClipInfo:v14])
        {
          ++*(*(*(v9 + 40) + 8) + 32);
        }

        v12 = *(v9 + 32);
        memcpy(v14, __src, sizeof(v14));
        result = [v12 _isVideoPreloadingNeededForClipInfo:v14];
        if (result)
        {
          if (((*(__src + 19) - 3) & 0xFFFFFFFFFFFFFFFDLL) != 0)
          {
            v13 = 40;
          }

          else
          {
            v13 = 48;
          }

          ++*(*(*(v9 + 40) + 8) + v13);
        }
      }

      __src += 768;
      --v8;
    }

    while (v8);
  }

  return result;
}

- (void)_timelineReadingQueue_sessionStartedWithAlreadyLoadedSegments:(id)a3 segmentsToLoad:(id)a4 preloadableClipsCounts:(id *)a5 request:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [v10 timeline];
  v16 = *&a5->var0;
  *&v17 = a5->var2;
  [(PXStoryResourcesPreloader *)self _noteSessionStartedWithLoadedSegments:v12 segmentsToLoad:v11 preloadableClipsCounts:&v16 inTimeline:v13];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __137__PXStoryResourcesPreloader__timelineReadingQueue_sessionStartedWithAlreadyLoadedSegments_segmentsToLoad_preloadableClipsCounts_request___block_invoke;
  v19[3] = &unk_1E774A7B8;
  v19[4] = self;
  v20 = v10;
  v14 = v10;
  [v12 enumerateIndexesUsingBlock:v19];
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  [(PXStoryResourcesPreloader *)self _accumulateLoadedTimeRange:&v16 moreExpected:0];
  v15 = [v12 mutableCopy];

  [(PXStoryResourcesPreloader *)self setTimelineReadingQueue_loadedSegments:v15];
}

void __137__PXStoryResourcesPreloader__timelineReadingQueue_sessionStartedWithAlreadyLoadedSegments_segmentsToLoad_preloadableClipsCounts_request___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) timeline];
  v5 = v4;
  if (v4)
  {
    [v4 timeRangeForSegmentWithIdentifier:a2];
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  [v3 _accumulateLoadedTimeRange:v6 moreExpected:1];
}

- (void)_estimationQueue_updateEstimation
{
  v78 = *MEMORY[0x1E69E9840];
  v4 = [(PXStoryResourcesPreloader *)self currentRequest];
  v5 = v4;
  if (v4 && ([v4 isCancelled] & 1) == 0)
  {
    v6 = 0.0;
    if (self->_estimationQueue_sessionStarted)
    {
      [(PXStoryResourcesPreloadingStatsStore *)self->_estimationQueue_statsStore loadedFraction];
      v6 = v7;
    }

    [(PXStoryResourcesPreloader *)self logContext];
    v8 = self->_estimationQueue_currentSessionTimeline;
    v9 = [(PXStoryResourcesPreloader *)self currentSegmentIdentifier];
    v10 = [v5 startingSegmentIdentifier];
    v11 = [v5 timeline];

    if (v8 != v11)
    {
      v12 = [v5 timeline];
      v13 = [(PXStoryTimeline *)v8 identifiersOfSegmentsMatchingSegmentWithIdentifier:v9 inTimeline:v12];
      v9 = [v13 firstIndex];

      v14 = [v5 timeline];
      v15 = [(PXStoryTimeline *)v8 identifiersOfSegmentsMatchingSegmentWithIdentifier:v10 inTimeline:v14];
      v10 = [v15 firstIndex];
    }

    v53 = [(PXStoryTimeline *)v8 indexOfSegmentWithIdentifier:v9];
    v54 = +[PXStorySettings sharedInstance];
    if ([v54 preloadingEstimationStrategy])
    {
      if ([v54 preloadingEstimationStrategy] != 1)
      {
        v52 = [MEMORY[0x1E696AAA8] currentHandler];
        [v52 handleFailureInMethod:a2 object:self file:@"PXStoryResourcesPreloader.m" lineNumber:636 description:@"Code which should be unreachable has been reached"];

        abort();
      }

      time2.start.value = 0;
      *&time2.start.timescale = &time2;
      *&time2.start.epoch = 0x2020000000uLL;
      *&v64 = 0;
      *(&v64 + 1) = &v64;
      v65 = 0x2020000000;
      v66 = 0x7FFFFFFFFFFFFFFFLL;
      estimationQueue_loadedSegments = self->_estimationQueue_loadedSegments;
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __62__PXStoryResourcesPreloader__estimationQueue_updateEstimation__block_invoke;
      v59[3] = &unk_1E7745AB0;
      v60 = v8;
      v61 = &v64;
      p_time2 = &time2;
      v63 = v53;
      [(NSIndexSet *)estimationQueue_loadedSegments enumerateIndexesUsingBlock:v59];
      v17 = *(*&time2.start.timescale + 24);
      v18 = [v54 minPreloadedeSegments];
      LOBYTE(v19) = v17 > v18;
      v20 = PLStoryGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = @"NO";
        if (v17 > v18)
        {
          v21 = @"YES";
        }

        v22 = v21;
        mach_absolute_time();
        PXTimebaseConversionFactor();
      }

      _Block_object_dispose(&v64, 8);
      _Block_object_dispose(&time2, 8);
      LOBYTE(v23) = 1;
    }

    else
    {
      v64 = 0uLL;
      v65 = 0;
      [(PXStoryResourcesPreloader *)self currentPlaybackTime];
      memset(&v75, 0, sizeof(v75));
      if (v8)
      {
        [(PXStoryTimeline *)v8 timeRange];
      }

      else
      {
        memset(&time2, 0, sizeof(time2));
      }

      buf = time2;
      CMTimeRangeGetEnd(&v75, &buf);
      v24 = [(PXStoryTimeline *)v8 indexOfSegmentWithIdentifier:v10];
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v25 = [(NSArray *)self->_estimationQueue_loadingSegments objectEnumerator];
      v26 = [v25 countByEnumeratingWithState:&v70 objects:v77 count:16];
      if (v26)
      {
        v27 = *v71;
        v28 = 0x7FFFFFFFFFFFFFFFLL;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v71 != v27)
            {
              objc_enumerationMutation(v25);
            }

            v30 = -[PXStoryTimeline indexOfSegmentWithIdentifier:](v8, "indexOfSegmentWithIdentifier:", [*(*(&v70 + 1) + 8 * i) integerValue]);
            if (v30 >= v28)
            {
              v31 = v28;
            }

            else
            {
              v31 = v30;
            }

            if (v30 > v24 && v30 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v28 = v31;
            }
          }

          v26 = [v25 countByEnumeratingWithState:&v70 objects:v77 count:16];
        }

        while (v26);
      }

      else
      {
        v28 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v33 = [(PXStoryResourcesPreloader *)self isInline];
      v34 = v33;
      v35 = v53 == 0x7FFFFFFFFFFFFFFFLL || v28 == 0x7FFFFFFFFFFFFFFFLL;
      v23 = !v35;
      if (v35)
      {
        [0 appendString:@"canChangeIsLikelyToKeepUp = NO\n"];
        v37 = 1;
      }

      else
      {
        if (v33)
        {
          v36 = 2;
        }

        else
        {
          v38 = [(PXStoryResourcesPreloader *)self lagsCount];
          memset(&v69, 0, sizeof(v69));
          buf.start = v75;
          CMTimeMultiplyByRatio(&v69, &buf.start, 1, 2);
          CMTimeMakeWithSeconds(&v68, 30.0, 600);
          buf.start = v69;
          time2.start = v68;
          if (CMTimeCompare(&buf.start, &time2.start) >= 1)
          {
            CMTimeMakeWithSeconds(&v67, 30.0, 600);
            buf.start = v75;
            time2.start = v67;
            CMTimeSubtract(&v68, &buf.start, &time2.start);
            v69 = v68;
          }

          *&buf.start.value = v64;
          buf.start.epoch = v65;
          time2.start = v69;
          v36 = 2 * v38 + 2;
          if (CMTimeCompare(&buf.start, &time2.start) >= 1 && ![(PXStoryResourcesPreloader *)self isLoadingLikelyToKeepUpWithPlayback])
          {
            v36 = [(PXStoryTimeline *)v8 numberOfSegments];
          }
        }

        v37 = v28 < v24 || v28 - v53 >= v36;
        [0 appendFormat:@"Indexes: (%ld - %ld = %ld) >= %ld\n", v28, v53, v28 - v53, v36];
      }

      buf.start = v75;
      *&time2.start.value = v64;
      time2.start.epoch = v65;
      CMTimeSubtract(&v69, &buf.start, &time2.start);
      buf.start = v69;
      Seconds = CMTimeGetSeconds(&buf.start);
      [(PXStoryResourcesPreloadingStatsStore *)self->_estimationQueue_statsStore estimatedLoadingTimeLeft];
      v42 = v41;
      [0 appendFormat:@"playbackTimeLeft: %.2fs\n", *&Seconds];
      [0 appendFormat:@"loadingTimeLeft : %.2fs\n", *&v42];
      if (!v34 && Seconds < v42)
      {
        v37 = 0;
      }

      v43 = +[PXStorySettings sharedInstance];
      v44 = [v43 estimateTimeLeftPerPlaybackStyle];

      if ((v44 & v37) == 1)
      {
        v19 = [(PXStoryResourcesPreloadingStatsStore *)self->_estimationQueue_statsStore didDownloadFirstVideo];
      }

      else
      {
        v19 = (v44 ^ 1) & v37;
      }

      [(PXStoryResourcesPreloader *)self loadingFractionComplete];
      if (v6 != v45)
      {
        v46 = PLStoryGetLog();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          if (v19)
          {
            v47 = @"YES";
          }

          else
          {
            v47 = @"NO";
          }

          v48 = v47;
          if (v23)
          {
            v49 = @"YES";
          }

          else
          {
            v49 = @"NO";
          }

          v49;
          v48;
          mach_absolute_time();
          PXTimebaseConversionFactor();
        }
      }
    }

    if (v6 >= 1.0)
    {
      v50 = 1;
    }

    else
    {
      v50 = v23;
    }

    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __62__PXStoryResourcesPreloader__estimationQueue_updateEstimation__block_invoke_57;
    v55[3] = &unk_1E7745AD8;
    v57 = v50;
    v55[4] = self;
    v58 = (v6 >= 1.0) | v19 & 1;
    v56 = v6;
    [(PXStoryResourcesPreloader *)self _performChangesOnStoryQueue:v55];
    stateQueue_estimationDiagnostics = self->_stateQueue_estimationDiagnostics;
    self->_stateQueue_estimationDiagnostics = 0;
  }
}

uint64_t __62__PXStoryResourcesPreloader__estimationQueue_updateEstimation__block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) indexOfSegmentWithIdentifier:a2];
  if (result - *(a1 + 56) >= 2)
  {
    v4 = *(*(a1 + 40) + 8);
    if (*(v4 + 24) != 0x7FFFFFFFFFFFFFFFLL || result != 0x7FFFFFFFFFFFFFFFLL)
    {
      *(v4 + 24) = result;
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }

  return result;
}

uint64_t __62__PXStoryResourcesPreloader__estimationQueue_updateEstimation__block_invoke_57(uint64_t a1, double a2)
{
  if (*(a1 + 44) == 1)
  {
    [*(a1 + 32) setIsLoadingLikelyToKeepUpWithPlayback:*(a1 + 45)];
  }

  LODWORD(a2) = *(a1 + 40);
  v3 = *(a1 + 32);

  return [v3 setLoadingFractionComplete:a2];
}

- (void)_estimationNoteClipWithPlaybackStyle:(int64_t)a3 loadedWithLoadingTime:(double)a4
{
  v7 = [(PXStoryResourcesPreloader *)self estimationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__PXStoryResourcesPreloader__estimationNoteClipWithPlaybackStyle_loadedWithLoadingTime___block_invoke;
  block[3] = &unk_1E7745A10;
  block[4] = self;
  block[5] = a3;
  *&block[6] = a4;
  dispatch_async(v7, block);
}

uint64_t __88__PXStoryResourcesPreloader__estimationNoteClipWithPlaybackStyle_loadedWithLoadingTime___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 296) noteClipWithPlaybackStyle:*(a1 + 40) loadedWithLoadingTime:*(a1 + 48)];
  v2 = *(a1 + 32);

  return [v2 _estimationQueue_updateEstimation];
}

- (void)_estimationNoteLoadingSegments:(id)a3 loadedSegments:(id)a4
{
  v6 = a4;
  v7 = [a3 copy];
  v8 = [v6 copy];

  v9 = [(PXStoryResourcesPreloader *)self estimationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__PXStoryResourcesPreloader__estimationNoteLoadingSegments_loadedSegments___block_invoke;
  block[3] = &unk_1E774A1B8;
  v13 = v7;
  v14 = self;
  v15 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, block);
}

void __75__PXStoryResourcesPreloader__estimationNoteLoadingSegments_loadedSegments___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 272);
  v3 = *(a1 + 32);
  v4 = v3;
  v5 = v3 != v2;
  if (v3 != v2)
  {
    v6 = [v3 isEqual:v2];

    if (v6)
    {
      v5 = 0;
      goto LABEL_6;
    }

    v7 = *(a1 + 40);
    v8 = *(a1 + 32);
    v4 = *(v7 + 272);
    *(v7 + 272) = v8;
  }

LABEL_6:
  v9 = *(*(a1 + 40) + 280);
  v10 = *(a1 + 48);
  v11 = v10;
  if (v10 == v9)
  {

LABEL_10:
    if (!v5)
    {
      return;
    }

    goto LABEL_11;
  }

  v12 = [v10 isEqual:v9];

  if (v12)
  {
    goto LABEL_10;
  }

  objc_storeStrong((*(a1 + 40) + 280), *(a1 + 48));
  [*(*(a1 + 40) + 288) removeIndexes:*(a1 + 48)];
LABEL_11:
  v13 = *(a1 + 40);

  [v13 _estimationQueue_updateEstimation];
}

- (void)_estimationNoteSessionStartedWithSegmentsToLoad:(id)a3 preloadableClipsCounts:(id *)a4 inTimeline:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(PXStoryResourcesPreloader *)self estimationQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __111__PXStoryResourcesPreloader__estimationNoteSessionStartedWithSegmentsToLoad_preloadableClipsCounts_inTimeline___block_invoke;
  v13[3] = &unk_1E7746980;
  v16 = *a4;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_sync(v10, v13);
}

void __111__PXStoryResourcesPreloader__estimationNoteSessionStartedWithSegmentsToLoad_preloadableClipsCounts_inTimeline___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 296);
  v10 = *(a1 + 56);
  v11 = *(a1 + 72);
  [v2 noteSessionStartedPreloadableClipsCounts:&v10];
  *(*(a1 + 32) + 304) = mach_absolute_time();
  v3 = *(a1 + 32);
  v4 = *(v3 + 272);
  *(v3 + 272) = 0;

  v5 = *(a1 + 32);
  v6 = *(v5 + 280);
  *(v5 + 280) = 0;

  v7 = [*(a1 + 40) mutableCopy];
  v8 = *(a1 + 32);
  v9 = *(v8 + 288);
  *(v8 + 288) = v7;

  objc_storeStrong((*(a1 + 32) + 264), *(a1 + 48));
  *(*(a1 + 32) + 256) = 1;
}

- (void)_updateProcessing
{
  objc_initWeak(&location, self);
  v3 = [(PXStoryResourcesPreloader *)self currentRequest];
  objc_initWeak(&from, v3);

  v4 = [(PXStoryResourcesPreloader *)self previousRequest];
  objc_initWeak(&v10, v4);

  v5 = [(PXStoryResourcesPreloader *)self timelineReadingQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__PXStoryResourcesPreloader__updateProcessing__block_invoke;
  v6[3] = &unk_1E7745A88;
  objc_copyWeak(&v7, &location);
  objc_copyWeak(&v8, &from);
  objc_copyWeak(&v9, &v10);
  dispatch_async(v5, v6);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __46__PXStoryResourcesPreloader__updateProcessing__block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  v2 = objc_loadWeakRetained(a1 + 5);
  v3 = objc_loadWeakRetained(a1 + 6);
  [WeakRetained _timelineReadingQueue_processRequest:v2 previousRequest:v3];
}

- (void)_invalidateProcessing
{
  v2 = [(PXStoryResourcesPreloader *)self updater];
  [v2 setNeedsUpdateOf:sel__updateProcessing];
}

- (void)_updateEstimation
{
  objc_initWeak(&location, self);
  v3 = [(PXStoryResourcesPreloader *)self estimationQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__PXStoryResourcesPreloader__updateEstimation__block_invoke;
  v4[3] = &unk_1E774C318;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __46__PXStoryResourcesPreloader__updateEstimation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _estimationQueue_updateEstimation];
}

- (void)_invalidateEstimation
{
  v2 = [(PXStoryResourcesPreloader *)self updater];
  [v2 setNeedsUpdateOf:sel__updateEstimation];
}

- (void)startProcessingRequest:(id)a3
{
  v14 = a3;
  v4 = [(PXStoryResourcesPreloader *)self currentRequest];

  v5 = v14;
  if (v4 != v14)
  {
    v6 = [(PXStoryResourcesPreloader *)self currentRequest];
    v7 = [v14 timeline];
    v8 = [v6 timeline];
    if (v7 == v8 || ([v7 isEqual:v8] & 1) != 0)
    {
      v9 = [v14 songResource];
      v10 = [v6 songResource];
      v11 = v10;
      if (v9 == v10)
      {
      }

      else
      {
        v12 = [v9 isEqual:v10];

        if ((v12 & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      v13 = [v14 startingSegmentIdentifier];
      if (v13 == [v6 startingSegmentIdentifier])
      {
LABEL_11:

        v5 = v14;
        goto LABEL_12;
      }
    }

    else
    {
    }

LABEL_10:
    [(PXStoryResourcesPreloader *)self setCurrentRequest:v14];
    goto LABEL_11;
  }

LABEL_12:
}

- (void)_noteLoadingEndedForClip:(id *)a3 inSegment:(int64_t)a4 resourceType:(id)a5 resourceIdentifier:(id)a6 timeRange:(id *)a7 error:(id)a8 loadingTime:(double)a9 playbackStyle:(int64_t)a10
{
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v20 = [(PXStoryResourcesPreloader *)self loadingStatusReporter];
  [v20 notifyPreloadingCompleteForClipIdentifier:a3->var0];

  v21 = [(PXStoryResourcesPreloader *)self stateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __138__PXStoryResourcesPreloader__noteLoadingEndedForClip_inSegment_resourceType_resourceIdentifier_timeRange_error_loadingTime_playbackStyle___block_invoke;
  block[3] = &unk_1E7745A38;
  block[4] = self;
  block[5] = a4;
  v22 = *&a7->var0.var3;
  v37 = *&a7->var0.var0;
  v38 = v22;
  v39 = *&a7->var1.var1;
  block[6] = a10;
  *&block[7] = a9;
  dispatch_async(v21, block);

  v23 = +[PXStorySettings sharedInstance];
  v24 = [v23 simulateResourcesBufferingError];

  if (!v19 && v24)
  {
    v19 = PXStoryErrorCreateWithCodeDebugFormat(22, @"Simulated preloading error.", v25, v26, v27, v28, v29, v30, v31[0]);
  }

  if (v19)
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __138__PXStoryResourcesPreloader__noteLoadingEndedForClip_inSegment_resourceType_resourceIdentifier_timeRange_error_loadingTime_playbackStyle___block_invoke_2;
    v31[3] = &unk_1E7745A60;
    v31[4] = self;
    v32 = v19;
    v33 = v17;
    v34 = v18;
    memcpy(v35, a3, sizeof(v35));
    [(PXStoryResourcesPreloader *)self _performChangesOnStoryQueue:v31];
  }
}

uint64_t __138__PXStoryResourcesPreloader__noteLoadingEndedForClip_inSegment_resourceType_resourceIdentifier_timeRange_error_loadingTime_playbackStyle___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 240);
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
  [v2 removeObject:v3];

  v4 = *(*(a1 + 32) + 240);
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
  v6 = [v4 countForObject:v5];

  if (!v6)
  {
    [*(*(a1 + 32) + 248) addIndex:*(a1 + 40)];
    v7 = *(a1 + 32);
    v8 = *(a1 + 80);
    v13[0] = *(a1 + 64);
    v13[1] = v8;
    v13[2] = *(a1 + 96);
    [v7 _stateQueue_accumulateLoadedTimeRange:v13 moreExpected:1];
  }

  v9 = *(a1 + 32);
  v10 = [v9[30] objectEnumerator];
  v11 = [v10 allObjects];
  [v9 _estimationNoteLoadingSegments:v11 loadedSegments:*(*(a1 + 32) + 248)];

  return [*(a1 + 32) _estimationNoteClipWithPlaybackStyle:*(a1 + 48) loadedWithLoadingTime:*(a1 + 56)];
}

void __138__PXStoryResourcesPreloader__noteLoadingEndedForClip_inSegment_resourceType_resourceIdentifier_timeRange_error_loadingTime_playbackStyle___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"An error occured when preloading: %@ uuid: %@, clip %ld", *(a1 + 48), *(a1 + 56), *(a1 + 64)];
  v3 = PXStoryErrorCreateWithCodeUnderlyingErrorDebugDescription(22, v2, v4);
  [*(a1 + 32) setError:v3];
}

- (void)_noteLoadingStartedForClipInSegment:(int64_t)a3
{
  v6 = [(PXStoryResourcesPreloader *)self stateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__PXStoryResourcesPreloader__noteLoadingStartedForClipInSegment___block_invoke;
  block[3] = &unk_1E7745A10;
  block[4] = self;
  block[5] = a3;
  block[6] = a2;
  dispatch_async(v6, block);
}

void __65__PXStoryResourcesPreloader__noteLoadingStartedForClipInSegment___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 248) containsIndex:*(a1 + 40)])
  {
    PXAssertGetLog();
  }

  v2 = *(*(a1 + 32) + 240);
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
  [v2 addObject:v3];

  v4 = *(a1 + 32);
  v5 = [v4[30] objectEnumerator];
  v6 = [v5 allObjects];
  [v4 _estimationNoteLoadingSegments:v6 loadedSegments:*(*(a1 + 32) + 248)];
}

- (void)_stateQueue_accumulateLoadedTimeRange:(id *)a3 moreExpected:(BOOL)a4
{
  v27 = *MEMORY[0x1E69E9840];
  p_stateQueue_loadedContinuousTimeRange = &self->_stateQueue_loadedContinuousTimeRange;
  value = self->_stateQueue_loadedContinuousTimeRange.start.value;
  flags = self->_stateQueue_loadedContinuousTimeRange.start.flags;
  timescale = self->_stateQueue_loadedContinuousTimeRange.start.timescale;
  if (flags)
  {
    v7 = self->_stateQueue_loadedContinuousTimeRange.duration.flags;
    if ((v7 & 1) != 0 && self->_stateQueue_loadedContinuousTimeRange.duration.epoch == 0)
    {
      v9 = self->_stateQueue_loadedContinuousTimeRange.duration.value;
      if ((v9 & 0x8000000000000000) == 0)
      {
        epoch = self->_stateQueue_loadedContinuousTimeRange.start.epoch;
        v13 = self->_stateQueue_loadedContinuousTimeRange.duration.timescale;
        *time1 = *&a3->var0.var0;
        *&time1[16] = a3->var0.var3;
        time2.start.value = p_stateQueue_loadedContinuousTimeRange->start.value;
        time2.start.timescale = self->_stateQueue_loadedContinuousTimeRange.start.timescale;
        time2.start.flags = flags;
        time2.start.epoch = epoch;
        if ((CMTimeCompare(time1, &time2.start) & 0x80000000) == 0 && a4)
        {
          time2.start.value = value;
          time2.start.timescale = timescale;
          time2.start.flags = flags;
          time2.start.epoch = epoch;
          time2.duration.value = v9;
          time2.duration.timescale = v13;
          time2.duration.flags = v7;
          time2.duration.epoch = 0;
          v14 = *&a3->var0.var3;
          v21[0] = *&a3->var0.var0;
          v21[1] = v14;
          v21[2] = *&a3->var1.var1;
          PXStoryTimeRangeUnion(&time2, v21, time1);
          v15 = *&time1[16];
          *&p_stateQueue_loadedContinuousTimeRange->start.value = *time1;
          *&p_stateQueue_loadedContinuousTimeRange->start.epoch = v15;
          *&p_stateQueue_loadedContinuousTimeRange->duration.timescale = v24;
          return;
        }

        stateQueue_loadedTimeRanges = self->_stateQueue_loadedTimeRanges;
        v17 = [PXStoryTimeRangeValue alloc];
        *time1 = value;
        *&time1[8] = __PAIR64__(flags, timescale);
        *&time1[16] = epoch;
        *&time1[24] = v9;
        v24 = __PAIR64__(v7, v13);
        v18 = [(PXStoryTimeRangeValue *)v17 initWithStoryTimeRange:time1];
        [(NSMutableArray *)stateQueue_loadedTimeRanges addObject:v18];
      }
    }
  }

  v19 = *&a3->var0.var0;
  v20 = *&a3->var1.var1;
  *&p_stateQueue_loadedContinuousTimeRange->start.epoch = *&a3->var0.var3;
  *&p_stateQueue_loadedContinuousTimeRange->duration.timescale = v20;
  *&p_stateQueue_loadedContinuousTimeRange->start.value = v19;
}

- (void)_accumulateLoadedTimeRange:(id *)a3 moreExpected:(BOOL)a4
{
  v7 = [(PXStoryResourcesPreloader *)self stateQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v8 = *&a3->var0.var3;
  v10 = *&a3->var0.var0;
  v9[2] = __69__PXStoryResourcesPreloader__accumulateLoadedTimeRange_moreExpected___block_invoke;
  v9[3] = &unk_1E77459E8;
  v9[4] = self;
  v11 = v8;
  v12 = *&a3->var1.var1;
  v13 = a4;
  dispatch_async(v7, v9);
}

uint64_t __69__PXStoryResourcesPreloader__accumulateLoadedTimeRange_moreExpected___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 88);
  v3 = *(a1 + 56);
  v5[0] = *(a1 + 40);
  v5[1] = v3;
  v5[2] = *(a1 + 72);
  return [v1 _stateQueue_accumulateLoadedTimeRange:v5 moreExpected:v2];
}

- (void)_noteSessionStartedWithLoadedSegments:(id)a3 segmentsToLoad:(id)a4 preloadableClipsCounts:(id *)a5 inTimeline:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = a4;
  v13 = [(PXStoryResourcesPreloader *)self stateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __116__PXStoryResourcesPreloader__noteSessionStartedWithLoadedSegments_segmentsToLoad_preloadableClipsCounts_inTimeline___block_invoke;
  block[3] = &unk_1E774C620;
  block[4] = self;
  v17 = v10;
  v14 = v10;
  dispatch_sync(v13, block);

  v15 = *a5;
  [(PXStoryResourcesPreloader *)self _estimationNoteSessionStartedWithSegmentsToLoad:v12 preloadableClipsCounts:&v15 inTimeline:v11];

  [(PXStoryResourcesPreloader *)self _estimationNoteLoadingSegments:0 loadedSegments:v14];
}

void __116__PXStoryResourcesPreloader__noteSessionStartedWithLoadedSegments_segmentsToLoad_preloadableClipsCounts_inTimeline___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 176) removeAllObjects];
  v2 = (*(a1 + 32) + 184);
  *v2 = 0u;
  v2[1] = 0u;
  v2[2] = 0u;
  [*(*(a1 + 32) + 240) removeAllObjects];
  v3 = [*(a1 + 40) mutableCopy];
  v4 = *(a1 + 32);
  v5 = *(v4 + 248);
  *(v4 + 248) = v3;
}

- (NSArray)loadedTimeRanges
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__213020;
  v11 = __Block_byref_object_dispose__213021;
  v12 = 0;
  v3 = [(PXStoryResourcesPreloader *)self stateQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__PXStoryResourcesPreloader_loadedTimeRanges__block_invoke;
  v6[3] = &unk_1E7749A28;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __45__PXStoryResourcesPreloader_loadedTimeRanges__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 196) & 1) != 0 && ((*(v2 + 220) & 1) != 0 ? (v3 = *(v2 + 224) == 0) : (v3 = 0), v3 && (*(v2 + 208) & 0x8000000000000000) == 0))
  {
    v4 = *(v2 + 176);
    v5 = [PXStoryTimeRangeValue alloc];
    v6 = *(*(a1 + 32) + 184);
    v7 = *(*(a1 + 32) + 216);
    v15[1] = *(*(a1 + 32) + 200);
    v15[2] = v7;
    v15[0] = v6;
    v8 = [(PXStoryTimeRangeValue *)v5 initWithStoryTimeRange:v15];
    v9 = [v4 arrayByAddingObject:v8];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  else
  {
    v12 = [*(v2 + 176) copy];
    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }
}

- (void)setError:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(PXStoryResourcesPreloader *)self stateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__PXStoryResourcesPreloader_setError___block_invoke;
  block[3] = &unk_1E7746448;
  v6 = v4;
  v8 = v6;
  v9 = self;
  v10 = &v11;
  dispatch_sync(v5, block);

  if (*(v12 + 24) == 1)
  {
    [(PXStoryResourcesPreloader *)self signalChange:4];
  }

  _Block_object_dispose(&v11, 8);
}

void __38__PXStoryResourcesPreloader_setError___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 120);
  v3 = *(a1 + 32);
  if (v3 == v2)
  {
  }

  else
  {
    v5 = v3;
    v4 = [v3 isEqual:v2];

    if ((v4 & 1) == 0)
    {
      objc_storeStrong((*(a1 + 40) + 120), *(a1 + 32));
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }
}

- (NSError)error
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__213020;
  v11 = __Block_byref_object_dispose__213021;
  v12 = 0;
  v3 = [(PXStoryResourcesPreloader *)self stateQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__PXStoryResourcesPreloader_error__block_invoke;
  v6[3] = &unk_1E7749A28;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setLoadingFractionComplete:(float)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v5 = [(PXStoryResourcesPreloader *)self stateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__PXStoryResourcesPreloader_setLoadingFractionComplete___block_invoke;
  block[3] = &unk_1E77467E8;
  v7 = a3;
  block[4] = self;
  block[5] = &v8;
  dispatch_sync(v5, block);

  if (*(v9 + 24) == 1)
  {
    [(PXStoryResourcesPreloader *)self signalChange:2];
  }

  _Block_object_dispose(&v8, 8);
}

void __56__PXStoryResourcesPreloader_setLoadingFractionComplete___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  if (v1 != *(v2 + 112))
  {
    *(v2 + 112) = v1;
    v4 = *(a1 + 32);
    if (v4[28] >= 1.0)
    {
      v5 = PLStoryGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [*(a1 + 32) logContext];
        v12 = 134217984;
        v13 = v6;
        _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_INFO, "[Buffering] [Context=%llu] Preloading finished", &v12, 0xCu);
      }

      v4 = *(a1 + 32);
    }

    v7 = [v4 log];
    v8 = os_signpost_id_make_with_pointer(v7, *(a1 + 32));
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v9 = v8;
      if (os_signpost_enabled(v7))
      {
        v10 = [*(a1 + 32) logContext];
        v11 = *(a1 + 48);
        v12 = 134218240;
        v13 = v10;
        v14 = 2048;
        v15 = v11;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_EVENT, v9, "PXStoryResourcesPreloaderFractionComplete", "Context=%{signpost.telemetry:string2}lu %.2f", &v12, 0x16u);
      }
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (float)loadingFractionComplete
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(PXStoryResourcesPreloader *)self stateQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__PXStoryResourcesPreloader_loadingFractionComplete__block_invoke;
  v6[3] = &unk_1E7749A28;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[6];
  _Block_object_dispose(&v7, 8);
  return v4;
}

float __52__PXStoryResourcesPreloader_loadingFractionComplete__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 112);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int64_t)lagsCount
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(PXStoryResourcesPreloader *)self stateQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__PXStoryResourcesPreloader_lagsCount__block_invoke;
  v6[3] = &unk_1E7749A28;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)setIsLoadingLikelyToKeepUpWithPlayback:(BOOL)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v5 = [(PXStoryResourcesPreloader *)self stateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__PXStoryResourcesPreloader_setIsLoadingLikelyToKeepUpWithPlayback___block_invoke;
  block[3] = &unk_1E77465B0;
  v7 = a3;
  block[4] = self;
  block[5] = &v8;
  dispatch_sync(v5, block);

  if (*(v9 + 24) == 1)
  {
    [(PXStoryResourcesPreloader *)self signalChange:2];
  }

  _Block_object_dispose(&v8, 8);
}

uint64_t __68__PXStoryResourcesPreloader_setIsLoadingLikelyToKeepUpWithPlayback___block_invoke(uint64_t result)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = *(result + 48);
  v2 = *(result + 32);
  if (v1 != *(v2 + 97))
  {
    v3 = result;
    *(v2 + 97) = v1;
    if ((*(result + 48) & 1) == 0)
    {
      ++*(*(result + 32) + 104);
    }

    *(*(*(result + 40) + 8) + 24) = 1;
    v4 = *(result + 48);
    result = *(result + 32);
    if (v4 != 1)
    {
      goto LABEL_10;
    }

    if (*(result + 96) == 1)
    {
      v5 = [result log];
      v6 = os_signpost_id_make_with_pointer(v5, *(v3 + 32));
      if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v7 = v6;
        if (os_signpost_enabled(v5))
        {
          v8 = [*(v3 + 32) logContext];
          v9 = +[PXNetworkStatusMonitor sharedInstance];
          v14 = 134218240;
          v15 = v8;
          v16 = 2050;
          v17 = [v9 bestAvailableNetworkType];
          _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_END, v7, "PXStoryResourcesPreloaderNotLikelyToKeepUp", "Context=%{signpost.telemetry:string2}lu  enableTelemetry=YES networkType=%{signpost.telemetry:number1,public}lu ", &v14, 0x16u);
        }
      }

      result = *(v3 + 32);
      if ((*(v3 + 48) & 1) == 0)
      {
LABEL_10:
        v10 = [result log];
        v11 = os_signpost_id_make_with_pointer(v10, *(v3 + 32));
        if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v12 = v11;
          if (os_signpost_enabled(v10))
          {
            v13 = [*(v3 + 32) logContext];
            v14 = 134217984;
            v15 = v13;
            _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PXStoryResourcesPreloaderNotLikelyToKeepUp", "Context=%{signpost.telemetry:string2}lu ", &v14, 0xCu);
          }
        }

        result = *(v3 + 32);
      }
    }

    *(result + 96) = 1;
  }

  return result;
}

- (BOOL)isLoadingLikelyToKeepUpWithPlayback
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(PXStoryResourcesPreloader *)self stateQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__PXStoryResourcesPreloader_isLoadingLikelyToKeepUpWithPlayback__block_invoke;
  v5[3] = &unk_1E7749A28;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)setCurrentRequest:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(PXStoryResourcesPreloader *)self stateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__PXStoryResourcesPreloader_setCurrentRequest___block_invoke;
  block[3] = &unk_1E7746448;
  v6 = v4;
  v8 = v6;
  v9 = self;
  v10 = &v11;
  dispatch_sync(v5, block);

  if (*(v12 + 24) == 1)
  {
    [(PXStoryResourcesPreloader *)self _invalidateEstimation];
    [(PXStoryResourcesPreloader *)self _invalidateProcessing];
  }

  _Block_object_dispose(&v11, 8);
}

void __47__PXStoryResourcesPreloader_setCurrentRequest___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 160);
  if (*(a1 + 32) != v2)
  {
    objc_storeStrong((v1 + 168), v2);
    [*(*(a1 + 40) + 168) setIsCancelled:1];
    objc_storeStrong((*(a1 + 40) + 160), *(a1 + 32));
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (id)previousRequest
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__213020;
  v11 = __Block_byref_object_dispose__213021;
  v12 = 0;
  v3 = [(PXStoryResourcesPreloader *)self stateQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__PXStoryResourcesPreloader_previousRequest__block_invoke;
  v6[3] = &unk_1E7749A28;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (PXStoryResourcesPreloadingRequest)currentRequest
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__213020;
  v11 = __Block_byref_object_dispose__213021;
  v12 = 0;
  v3 = [(PXStoryResourcesPreloader *)self stateQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__PXStoryResourcesPreloader_currentRequest__block_invoke;
  v6[3] = &unk_1E7749A28;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setCurrentSegmentIdentifier:(int64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v5 = [(PXStoryResourcesPreloader *)self stateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PXStoryResourcesPreloader_setCurrentSegmentIdentifier___block_invoke;
  block[3] = &unk_1E77477B8;
  block[5] = &v7;
  block[6] = a3;
  block[4] = self;
  dispatch_sync(v5, block);

  if (*(v8 + 24) == 1)
  {
    [(PXStoryResourcesPreloader *)self _invalidateEstimation];
  }

  _Block_object_dispose(&v7, 8);
}

void *__57__PXStoryResourcesPreloader_setCurrentSegmentIdentifier___block_invoke(void *result)
{
  v1 = result[6];
  v2 = result[4];
  if (v1 != *(v2 + 152))
  {
    *(v2 + 152) = v1;
    *(*(result[5] + 8) + 24) = 1;
  }

  return result;
}

- (int64_t)currentSegmentIdentifier
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(PXStoryResourcesPreloader *)self stateQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__PXStoryResourcesPreloader_currentSegmentIdentifier__block_invoke;
  v6[3] = &unk_1E7749A28;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)setCurrentPlaybackTime:(id *)a3
{
  v5 = [(PXStoryResourcesPreloader *)self stateQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__PXStoryResourcesPreloader_setCurrentPlaybackTime___block_invoke;
  v6[3] = &unk_1E7749770;
  v7 = *a3;
  v6[4] = self;
  dispatch_sync(v5, v6);
}

__n128 __52__PXStoryResourcesPreloader_setCurrentPlaybackTime___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 128);
  v5 = *(*(a1 + 32) + 144);
  time1 = *(a1 + 40);
  *&time2.value = v2;
  time2.epoch = v5;
  if (CMTimeCompare(&time1, &time2))
  {
    v4 = (*(a1 + 32) + 128);
    result = *(a1 + 40);
    v4[1].n128_u64[0] = *(a1 + 56);
    *v4 = result;
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentPlaybackTime
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3810000000;
  v11 = &unk_1A561E057;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v5 = [(PXStoryResourcesPreloader *)self stateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__PXStoryResourcesPreloader_currentPlaybackTime__block_invoke;
  block[3] = &unk_1E7749A28;
  block[4] = self;
  block[5] = &v8;
  dispatch_sync(v5, block);

  *retstr = *(v9 + 4);
  _Block_object_dispose(&v8, 8);
  return result;
}

__n128 __48__PXStoryResourcesPreloader_currentPlaybackTime__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  v2 = (*(a1 + 32) + 128);
  v3 = *(*(a1 + 32) + 144);
  result = *v2;
  v1[2] = *v2;
  v1[3].n128_u64[0] = v3;
  return result;
}

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PXStoryResourcesPreloader;
  [(PXStoryResourcesPreloader *)&v4 didPerformChanges];
  v3 = [(PXStoryResourcesPreloader *)self updater];
  [v3 updateIfNeeded];
}

- (void)_performChangesOnStoryQueue:(id)a3
{
  v4 = a3;
  v5 = [(PXStoryResourcesPreloader *)self storyQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__PXStoryResourcesPreloader__performChangesOnStoryQueue___block_invoke;
  v7[3] = &unk_1E774C2F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXStoryResourcesPreloader;
  [(PXStoryResourcesPreloader *)&v3 performChanges:a3];
}

- (void)dealloc
{
  [(PXStoryResourcesPreloadingRequest *)self->_stateQueue_currentRequest setIsCancelled:1];
  v3 = [(PXStoryResourcesPreloader *)self loadingOperationQueue];
  [v3 cancelAllOperations];

  v4.receiver = self;
  v4.super_class = PXStoryResourcesPreloader;
  [(PXStoryResourcesPreloader *)&v4 dealloc];
}

- (PXStoryResourcesPreloader)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryResourcesPreloader.m" lineNumber:162 description:{@"%s is not available as initializer", "-[PXStoryResourcesPreloader init]"}];

  abort();
}

- (PXStoryResourcesPreloader)initWithMediaProvider:(id)a3 displayScale:(double)a4 videoSessionManager:(id)a5 loadingStatusReporter:(id)a6 storyQueue:(id)a7 isExporting:(BOOL)a8 isInline:(BOOL)a9 limitVideoDownloadQuality:(BOOL)a10
{
  v10 = a9;
  v18 = a3;
  v52 = a5;
  v19 = a6;
  v20 = a7;
  v53.receiver = self;
  v53.super_class = PXStoryResourcesPreloader;
  v21 = [(PXStoryResourcesPreloader *)&v53 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_mediaProvider, a3);
    v22->_displayScale = a4;
    objc_storeStrong(&v22->_videoSessionManager, a5);
    objc_storeStrong(&v22->_loadingStatusReporter, a6);
    v23 = *MEMORY[0x1E69BFF60];
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v26 = os_log_create(v23, [v25 UTF8String]);
    log = v22->_log;
    v22->_log = v26;

    objc_storeStrong(&v22->_storyQueue, a7);
    v22->_isExporting = a8;
    v22->_isInline = v10;
    v22->_limitVideoDownloadQuality = a10;
    v28 = [[off_1E7721940 alloc] initWithTarget:v22 needsUpdateSelector:sel__setNeedsUpdate];
    updater = v22->_updater;
    v22->_updater = v28;

    [(PXUpdater *)v22->_updater addUpdateSelector:sel__updateEstimation];
    [(PXUpdater *)v22->_updater addUpdateSelector:sel__updateProcessing];
    v30 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v31 = dispatch_queue_create("PXStoryResourcesPreloader.timelineReading", v30);
    timelineReadingQueue = v22->_timelineReadingQueue;
    v22->_timelineReadingQueue = v31;

    v33 = dispatch_queue_create("PXStoryResourcesPreloader.state", v30);
    stateQueue = v22->_stateQueue;
    v22->_stateQueue = v33;

    v35 = dispatch_queue_create("PXStoryResourcesPreloader.estimation", v30);
    estimationQueue = v22->_estimationQueue;
    v22->_estimationQueue = v35;

    v37 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    loadingOperationQueue = v22->_loadingOperationQueue;
    v22->_loadingOperationQueue = v37;

    if (v10)
    {
      [(NSOperationQueue *)v22->_loadingOperationQueue setMaxConcurrentOperationCount:1];
    }

    else
    {
      v39 = +[PXStorySettings sharedInstance];
      -[NSOperationQueue setMaxConcurrentOperationCount:](v22->_loadingOperationQueue, "setMaxConcurrentOperationCount:", [v39 simultaneousPreloadingOperationsCount]);
    }

    [(NSOperationQueue *)v22->_loadingOperationQueue setQualityOfService:25, v18, v52];
    [(NSOperationQueue *)v22->_loadingOperationQueue setName:@"PXStoryResourcesPreloader.resourcesLoading"];
    v40 = objc_alloc_init(MEMORY[0x1E696AD50]);
    timelineReadingQueue_loadedSegments = v22->_timelineReadingQueue_loadedSegments;
    v22->_timelineReadingQueue_loadedSegments = v40;

    v42 = objc_alloc_init(MEMORY[0x1E696AB50]);
    stateQueue_loadingSegments = v22->_stateQueue_loadingSegments;
    v22->_stateQueue_loadingSegments = v42;

    v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
    stateQueue_loadedTimeRanges = v22->_stateQueue_loadedTimeRanges;
    v22->_stateQueue_loadedTimeRanges = v44;

    v46 = objc_alloc_init(MEMORY[0x1E696AD50]);
    stateQueue_loadedSegments = v22->_stateQueue_loadedSegments;
    v22->_stateQueue_loadedSegments = v46;

    v48 = objc_alloc_init(PXStoryResourcesPreloadingStatsStore);
    estimationQueue_statsStore = v22->_estimationQueue_statsStore;
    v22->_estimationQueue_statsStore = v48;

    v18 = v51;
  }

  return v22;
}

@end