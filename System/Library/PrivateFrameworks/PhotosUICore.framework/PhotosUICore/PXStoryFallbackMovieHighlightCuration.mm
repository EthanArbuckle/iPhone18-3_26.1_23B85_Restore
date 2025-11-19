@interface PXStoryFallbackMovieHighlightCuration
+ ($3CC8671D27C23BF42ADDB32F2B5E48AE)maxHighlightDuration;
+ ($E59C7DEBCD57E98EE3F0104B12BEB13C)defaultHighlightRangeForPlaybackRange:(SEL)a3;
+ (id)movieHighlightCurationForDisplayAsset:(id)a3;
+ (id)movieHighlightCurationForLivePhotoAsset:(id)a3;
+ (id)movieHighlightCurationForVideoAsset:(id)a3;
+ (void)setMaxHighlightDuration:(id *)a3;
- (PXStoryFallbackMovieHighlightCuration)init;
- (PXStoryFallbackMovieHighlightCuration)initWithAssetDuration:(id *)a3 playbackRange:(id *)a4 highlightRange:(id *)a5 bestPlaybackRect:(CGRect)a6 normalizationData:(id)a7 audioQualityScore:(float)a8;
- (PXStoryMovieHighlight)defaultHighlight;
- (PXStoryMovieHighlight)fullMovie;
- (PXStoryMovieHighlight)movieSummary;
@end

@implementation PXStoryFallbackMovieHighlightCuration

- (PXStoryMovieHighlight)fullMovie
{
  v3 = [PXStoryMockMovieHighlight alloc];
  duration = self->_duration;
  *&start.value = PXStoryTimeZero;
  start.epoch = 0;
  CMTimeRangeMake(&v7, &start, &duration);
  *&v4 = self->_audioQualityScore;
  v5 = [(PXStoryMockMovieHighlight *)v3 initWithTimeRange:&v7 score:0 bestPlaybackRect:0 normalizationData:0 face:0 voice:0.0 music:self->_bestPlaybackRect.origin.x loudness:self->_bestPlaybackRect.origin.y peak:self->_bestPlaybackRect.size.width audioScore:self->_bestPlaybackRect.size.height, 0.0, 0.0, v4];

  return v5;
}

- (PXStoryMovieHighlight)movieSummary
{
  v3 = 0;
  if (self->_playbackRange.start.flags)
  {
    flags = self->_playbackRange.duration.flags;
    v5 = (flags & 1) != 0 && self->_playbackRange.duration.epoch == 0;
    if (v5 && (self->_playbackRange.duration.value & 0x8000000000000000) == 0)
    {
      timescale = self->_playbackRange.duration.timescale;
      *&v11 = self->_playbackRange.duration.value;
      *(&v11 + 1) = __PAIR64__(flags, timescale);
      *&v12 = 0;
      time2 = **&MEMORY[0x1E6960CC0];
      if (CMTimeCompare(&v11, &time2))
      {
        v7 = [PXStoryMockMovieHighlight alloc];
        *&v8 = self->_audioQualityScore;
        v9 = *&self->_playbackRange.start.epoch;
        v11 = *&self->_playbackRange.start.value;
        v12 = v9;
        v13 = *&self->_playbackRange.duration.timescale;
        v3 = [(PXStoryMockMovieHighlight *)v7 initWithTimeRange:&v11 score:0 bestPlaybackRect:0 normalizationData:0 face:0 voice:0.0 music:self->_bestPlaybackRect.origin.x loudness:self->_bestPlaybackRect.origin.y peak:self->_bestPlaybackRect.size.width audioScore:self->_bestPlaybackRect.size.height, 0.0, 0.0, v8];
      }

      else
      {
        v3 = 0;
      }
    }
  }

  return v3;
}

- (PXStoryMovieHighlight)defaultHighlight
{
  v3 = 0;
  if (self->_highlightRange.start.flags)
  {
    flags = self->_highlightRange.duration.flags;
    v5 = (flags & 1) != 0 && self->_highlightRange.duration.epoch == 0;
    if (v5 && (self->_highlightRange.duration.value & 0x8000000000000000) == 0)
    {
      timescale = self->_highlightRange.duration.timescale;
      *&v12 = self->_highlightRange.duration.value;
      *(&v12 + 1) = __PAIR64__(flags, timescale);
      *&v13 = 0;
      time2 = **&MEMORY[0x1E6960CC0];
      if (CMTimeCompare(&v12, &time2))
      {
        v7 = [PXStoryMockMovieHighlight alloc];
        normalizationData = self->_normalizationData;
        *&v9 = self->_audioQualityScore;
        v10 = *&self->_highlightRange.start.epoch;
        v12 = *&self->_highlightRange.start.value;
        v13 = v10;
        v14 = *&self->_highlightRange.duration.timescale;
        v3 = [(PXStoryMockMovieHighlight *)v7 initWithTimeRange:&v12 score:normalizationData bestPlaybackRect:0 normalizationData:0 face:0 voice:0.0 music:self->_bestPlaybackRect.origin.x loudness:self->_bestPlaybackRect.origin.y peak:self->_bestPlaybackRect.size.width audioScore:self->_bestPlaybackRect.size.height, 0.0, 0.0, v9];
      }

      else
      {
        v3 = 0;
      }
    }
  }

  return v3;
}

- (PXStoryFallbackMovieHighlightCuration)initWithAssetDuration:(id *)a3 playbackRange:(id *)a4 highlightRange:(id *)a5 bestPlaybackRect:(CGRect)a6 normalizationData:(id)a7 audioQualityScore:(float)a8
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v18 = a7;
  v27.receiver = self;
  v27.super_class = PXStoryFallbackMovieHighlightCuration;
  v19 = [(PXStoryFallbackMovieHighlightCuration *)&v27 init];
  v20 = v19;
  if (v19)
  {
    v21 = *&a3->var0;
    *(v19 + 3) = a3->var3;
    *(v19 + 8) = v21;
    v22 = *&a4->var0.var0;
    v23 = *&a4->var1.var1;
    *(v19 + 3) = *&a4->var0.var3;
    *(v19 + 4) = v23;
    *(v19 + 2) = v22;
    v24 = *&a5->var0.var0;
    v25 = *&a5->var1.var1;
    *(v19 + 6) = *&a5->var0.var3;
    *(v19 + 7) = v25;
    *(v19 + 5) = v24;
    *(v19 + 16) = x;
    *(v19 + 17) = y;
    *(v19 + 18) = width;
    *(v19 + 19) = height;
    objc_storeStrong(v19 + 20, a7);
    v20->_audioQualityScore = a8;
  }

  return v20;
}

- (PXStoryFallbackMovieHighlightCuration)init
{
  v7 = 0;
  v6 = PXStoryTimeZero;
  memset(v5, 0, sizeof(v5));
  memset(v4, 0, sizeof(v4));
  LODWORD(v2) = 0.5;
  return [(PXStoryFallbackMovieHighlightCuration *)self initWithAssetDuration:&v6 playbackRange:v5 highlightRange:v4 bestPlaybackRect:0 normalizationData:*MEMORY[0x1E695F050] audioQualityScore:*(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), v2];
}

+ (id)movieHighlightCurationForLivePhotoAsset:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 livePhotoVideoDuration];
    *&v25[48] = *v25;
    memset(v25, 0, 48);
    [v5 px_storyResourceFetchBestPlaybackRange];
  }

  else
  {
    memset(v25, 0, sizeof(v25));
  }

  if ((v25[12] & 1) == 0 || (v25[36] & 1) == 0 || *&v25[40] || (*&v25[24] & 0x8000000000000000) != 0 || (time1.start.value = *&v25[24], *&time1.start.timescale = *&v25[32], time1.start.epoch = 0, v21 = *MEMORY[0x1E6960CC0], *&v22 = *(MEMORY[0x1E6960CC0] + 16), !CMTimeCompare(&time1.start, &v21)))
  {
    duration = *&v25[48];
    v21 = PXStoryTimeZero;
    *&v22 = 0;
    CMTimeRangeMake(&time1, &v21, &duration);
    *v25 = time1;
  }

  v6 = v5;
  [v6 px_storyResourceFetchBestPlaybackRect];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [v6 audioScore];
  v16 = v15;
  v17 = [a1 alloc];
  duration = *&v25[48];
  time1 = *v25;
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  LODWORD(v18) = v16;
  v19 = [v17 initWithAssetDuration:&duration playbackRange:&time1 highlightRange:&v21 bestPlaybackRect:0 normalizationData:v8 audioQualityScore:{v10, v12, v14, v18}];

  return v19;
}

+ (id)movieHighlightCurationForVideoAsset:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = a3;
  memset(&start, 0, sizeof(start));
  [v4 duration];
  CMTimeMakeWithSeconds(&start, v5, 600);
  memset(&v49, 0, sizeof(v49));
  v6 = v4;
  v7 = v6;
  if (v6)
  {
    [v6 px_storyResourceFetchBestPlaybackRange];
  }

  else
  {
    memset(&v49, 0, sizeof(v49));
  }

  if ((v49.start.flags & 1) == 0 || (v49.duration.flags & 1) == 0 || v49.duration.epoch || v49.duration.value < 0 || (time1.start.value = v49.duration.value, *&time1.start.timescale = *&v49.duration.timescale, time1.start.epoch = 0, *&time2.start.value = *MEMORY[0x1E6960CC0], time2.start.epoch = *(MEMORY[0x1E6960CC0] + 16), !CMTimeCompare(&time1.start, &time2.start)))
  {
    v46.start = start;
    *&time2.start.value = PXStoryTimeZero;
    time2.start.epoch = 0;
    CMTimeRangeMake(&time1, &time2.start, &v46.start);
    v49 = time1;
  }

  if (([v7 mediaSubtypes] & 0x20000) != 0)
  {
    v8 = v7;
    v9 = [v8 px_storyResourceFetchVideoAdjustments];

    if ([v9 hasSlowMotionAdjustments])
    {
      memset(&time1, 0, sizeof(time1));
      if (v9)
      {
        [v9 slowMotionTimeRange];
      }

      v10 = MEMORY[0x1E69C0890];
      time2.start = start;
      Seconds = CMTimeGetSeconds(&time2.start);
      [v9 slowMotionRate];
      LODWORD(v13) = v12;
      time2 = time1;
      v14 = [v10 timeRangeMapperForSourceDuration:&time2 slowMotionRate:1 slowMotionTimeRange:Seconds forExport:v13];
      if (v14)
      {
        time2.start = start;
        v15 = CMTimeGetSeconds(&time2.start);
        *&v15 = v15;
        [v14 scaledTimeForOriginalTime:v15];
        v17 = v16;
        *&time2.start.value = *&time1.start.value;
        time2.start.epoch = time1.start.epoch;
        v18 = CMTimeGetSeconds(&time2.start);
        *&v18 = v18;
        [v14 scaledTimeForOriginalTime:v18];
        v20 = v19;
        time2 = time1;
        CMTimeRangeGetEnd(&v46.start, &time2);
        v21 = CMTimeGetSeconds(&v46.start);
        *&v21 = v21;
        [v14 scaledTimeForOriginalTime:v21];
        v23 = v22;
        CMTimeMakeWithSeconds(&time2.start, v17, 600);
        start = time2.start;
        CMTimeMakeWithSeconds(&time2.start, v20, 600);
        *&v49.start.value = *&time2.start.value;
        v49.start.epoch = time2.start.epoch;
        CMTimeMakeWithSeconds(&v47, v23, 600);
        *&v46.start.value = *&v49.start.value;
        v46.start.epoch = v49.start.epoch;
        time2.start = v47;
        CMTimeSubtract(&v48, &time2.start, &v46.start);
        v49.duration = v48;
LABEL_21:

        goto LABEL_22;
      }

      v25 = PLStoryGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = [v8 uuid];
        time2.start = start;
        v27 = PXStoryTimeDescription(&time2.start);
        time2 = time1;
        v28 = PXStoryTimeRangeDescription(&time2);
        LODWORD(time2.start.value) = 138543874;
        *(&time2.start.value + 4) = v26;
        LOWORD(time2.start.flags) = 2114;
        *(&time2.start.flags + 2) = v27;
        HIWORD(time2.start.epoch) = 2114;
        time2.duration.value = v28;
        _os_log_impl(&dword_1A3C1C000, v25, OS_LOG_TYPE_INFO, "Invalid slomo adjustment for video asset %{public}@, duration: %{public}@, slomo range: %{public}@, ignored.", &time2, 0x20u);
      }
    }

    else
    {
      v14 = PLStoryGetLog();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        goto LABEL_21;
      }

      v24 = [v8 uuid];
      time1.start = start;
      v25 = PXStoryTimeDescription(&time1.start);
      LODWORD(time1.start.value) = 138543618;
      *(&time1.start.value + 4) = v24;
      LOWORD(time1.start.flags) = 2114;
      *(&time1.start.flags + 2) = v25;
      _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_INFO, "Missing slomo adjustment for video asset %{public}@, duration: %{public}@, ignored.", &time1, 0x16u);
    }

    goto LABEL_21;
  }

LABEL_22:
  memset(&time1, 0, sizeof(time1));
  time2 = v49;
  [a1 defaultHighlightRangeForPlaybackRange:&time2];
  v29 = v7;
  [v29 px_storyResourceFetchBestPlaybackRect];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  v38 = v29;
  v39 = [v38 px_storyResourceFetchNormalizationData];

  [v38 audioScore];
  v41 = v40;
  v42 = [a1 alloc];
  v48 = start;
  time2 = v49;
  v46 = time1;
  LODWORD(v43) = v41;
  v44 = [v42 initWithAssetDuration:&v48 playbackRange:&time2 highlightRange:&v46 bestPlaybackRect:v39 normalizationData:v31 audioQualityScore:{v33, v35, v37, v43}];

  return v44;
}

+ (id)movieHighlightCurationForDisplayAsset:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 mediaType] == 2)
  {
    v5 = [a1 movieHighlightCurationForVideoAsset:v4];
  }

  else if ([v4 mediaType] == 1 && (objc_msgSend(v4, "mediaSubtypes") & 8) != 0)
  {
    v5 = [a1 movieHighlightCurationForLivePhotoAsset:v4];
  }

  else
  {
    v6 = PLStoryGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [v4 uuid];
      v10 = 138543874;
      v11 = v7;
      v12 = 2048;
      v13 = [v4 mediaType];
      v14 = 2048;
      v15 = [v4 mediaSubtypes];
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "Cannot form fallback movie highlight curation for asset %{public}@ type=%lu/%lu", &v10, 0x20u);
    }

    v5 = objc_alloc_init(a1);
  }

  v8 = v5;

  return v8;
}

+ ($E59C7DEBCD57E98EE3F0104B12BEB13C)defaultHighlightRangeForPlaybackRange:(SEL)a3
{
  v5 = *&a4->var0.var3;
  *&retstr->var0.var0 = *&a4->var0.var0;
  *&retstr->var0.var3 = v5;
  *&retstr->var1.var1 = *&a4->var1.var1;
  memset(&v11, 0, sizeof(v11));
  [a2 maxHighlightDuration];
  time1 = retstr->var1;
  time2 = v11;
  result = CMTimeCompare(&time1, &time2);
  if (result >= 1)
  {
    memset(&v10, 0, sizeof(v10));
    time1 = retstr->var1;
    CMTimeMultiplyByRatio(&v9, &time1, 1, 2);
    time1 = retstr->var0;
    time2 = v9;
    CMTimeAdd(&v10, &time1, &time2);
    v7 = *&v11.value;
    *&retstr->var1.var0 = *&v11.value;
    epoch = v11.epoch;
    retstr->var1.var3 = v11.epoch;
    *&time1.value = v7;
    time1.epoch = epoch;
    CMTimeMultiplyByRatio(&v9, &time1, 1, 2);
    time1 = v10;
    time2 = v9;
    return CMTimeSubtract(retstr, &time1, &time2);
  }

  return result;
}

+ (void)setMaxHighlightDuration:(id *)a3
{
  obj = a1;
  objc_sync_enter(obj);
  var3 = a3->var3;
  s_maxHighlightDuration = *&a3->var0;
  qword_1EB174F48 = var3;
  objc_sync_exit(obj);
}

+ ($3CC8671D27C23BF42ADDB32F2B5E48AE)maxHighlightDuration
{
  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  v4 = a2;
  objc_sync_enter(v4);
  if ((BYTE12(s_maxHighlightDuration) & 1) == 0)
  {
    v8 = 0u;
    v5 = [PXStoryAutoEditConfigurationFactory autoEditConfiguration:0];
    v6 = v5;
    if (v5)
    {
      [v5 maximumDurations];
    }

    else
    {
      v8 = 0u;
    }

    s_maxHighlightDuration = v8;
    qword_1EB174F48 = 0;
  }

  *&retstr->var0 = s_maxHighlightDuration;
  retstr->var3 = qword_1EB174F48;
  objc_sync_exit(v4);

  return result;
}

@end