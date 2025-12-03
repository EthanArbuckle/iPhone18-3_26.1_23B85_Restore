@interface PXStoryExportAudioCompositionBuilder
- (AVMutableComposition)audioComposition;
- (BOOL)addAudioFromVideoHighlightAsset:(id)asset fromTime:(id *)time atStoryTimeRange:(id *)range volume:(float)volume fadeIn:(double)in fadeOut:(double)out shouldDuck:(BOOL)duck error:(id *)self0;
- (BOOL)addMusicAsset:(id)asset withAudioMix:(id)mix preferredVolume:(float)volume error:(id *)error;
- (PXStoryExportAudioCompositionBuilder)initWithMaximumDuration:(id *)duration outroDuration:(id *)outroDuration;
- (id)_insertAudioTrack:(id)track fromTime:(id *)time intoAudioCompositionTrack:(id)compositionTrack atTimeRange:(id *)range error:(id *)error;
- (id)_mutableAudioMixParametersCreatedIfNeededForCompositionTrack:(id)track;
- (id)_mutableAudioMixParametersForCompositionTrack:(id)track;
- (void)_applyMusicDuckingAndFadeOut;
- (void)_applyVolumeRampsToVideoHilightAudioSegment:(id)segment inAudioCompositionTrack:(id)track volume:(float)volume fadeIn:(double)in fadeOut:(double)out;
- (void)finishAndWaitWithResultHandler:(id)handler;
- (void)setMaximumDuration:(id *)duration;
- (void)setOutroDuration:(id *)duration;
@end

@implementation PXStoryExportAudioCompositionBuilder

- (void)setMaximumDuration:(id *)duration
{
  v3 = *&duration->var0;
  self->_maximumDuration.epoch = duration->var3;
  *&self->_maximumDuration.value = v3;
}

- (void)setOutroDuration:(id *)duration
{
  v3 = *&duration->var0;
  self->_outroDuration.epoch = duration->var3;
  *&self->_outroDuration.value = v3;
}

- (id)_mutableAudioMixParametersCreatedIfNeededForCompositionTrack:(id)track
{
  trackCopy = track;
  v5 = [(PXStoryExportAudioCompositionBuilder *)self _mutableAudioMixParametersForCompositionTrack:trackCopy];
  if (!v5)
  {
    v5 = [MEMORY[0x1E6988040] audioMixInputParametersWithTrack:trackCopy];
    audioMixParameters = [(PXStoryExportAudioCompositionBuilder *)self audioMixParameters];
    [audioMixParameters addObject:v5];
  }

  return v5;
}

- (id)_mutableAudioMixParametersForCompositionTrack:(id)track
{
  v18 = *MEMORY[0x1E69E9840];
  trackID = [track trackID];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  audioMixParameters = [(PXStoryExportAudioCompositionBuilder *)self audioMixParameters];
  v6 = [audioMixParameters countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(audioMixParameters);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 trackID] == trackID)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [audioMixParameters countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (void)_applyMusicDuckingAndFadeOut
{
  v70 = *MEMORY[0x1E69E9840];
  v3 = +[PXStorySettings sharedInstance];
  memset(&v66, 0, sizeof(v66));
  [v3 duckingFadeDuration];
  CMTimeMakeWithSeconds(&v66, v4, 600);
  [(PXStoryExportAudioCompositionBuilder *)self musicCompositionDefaultVolume];
  v6 = v5;
  v35 = v3;
  [v3 musicDuckedVolume];
  v8 = v7;
  v64 = 0uLL;
  v65 = 0;
  [(PXStoryExportAudioCompositionBuilder *)self outroDuration];
  memset(&v63, 0, sizeof(v63));
  [(PXStoryExportAudioCompositionBuilder *)self maximumDuration];
  *&rhs.start.value = v64;
  rhs.start.epoch = v65;
  CMTimeSubtract(&start.start, &lhs.start, &rhs.start);
  *&lhs.start.value = v64;
  lhs.start.epoch = v65;
  CMTimeRangeMake(&v63, &start.start, &lhs.start);
  duckingAudioSegments = [(PXStoryExportAudioCompositionBuilder *)self duckingAudioSegments];
  v10 = [duckingAudioSegments sortedArrayUsingComparator:&__block_literal_global_248304];

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = [(PXStoryExportAudioCompositionBuilder *)self musicCompositionTracks];
  v43 = [obj countByEnumeratingWithState:&v59 objects:v69 count:16];
  if (v43)
  {
    v11 = v6 * v8;
    v41 = *v60;
    v38 = *(MEMORY[0x1E6960C70] + 16);
    v40 = *MEMORY[0x1E6960C70];
    v37 = *(MEMORY[0x1E6960C70] + 12);
    v39 = *(MEMORY[0x1E6960C70] + 8);
    selfCopy = self;
    do
    {
      v12 = 0;
      do
      {
        if (*v60 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v44 = *(*(&v59 + 1) + 8 * v12);
        v45 = v12;
        v13 = [MEMORY[0x1E6988040] audioMixInputParametersWithTrack:?];
        value = v40;
        timescale = v39;
        if (![v10 count])
        {
          *&start.start.value = *MEMORY[0x1E6960CC0];
          start.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
          [v13 setVolume:&start atTime:{COERCE_DOUBLE(__PAIR64__(HIDWORD(start.start.value), LODWORD(v6)))}];
        }

        if (![v10 count])
        {
          goto LABEL_42;
        }

        v14 = 0;
        v15 = 1;
        flags = v37;
        epoch = v38;
        do
        {
          v18 = [v10 objectAtIndexedSubscript:v14];
          if ([v18 isEmpty])
          {
            goto LABEL_41;
          }

          if (v18)
          {
            [v18 timeMapping];
          }

          else
          {
            v56 = 0u;
            memset(&v57, 0, sizeof(v57));
            v54 = 0u;
            v55 = 0u;
          }

          start = v57;
          if (!v14)
          {
            *&lhs.start.value = *&v57.start.value;
            lhs.start.epoch = v57.start.epoch;
            *&rhs.start.value = *MEMORY[0x1E6960CC0];
            rhs.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
            if (CMTimeCompare(&lhs.start, &rhs.start))
            {
              *&lhs.start.value = *MEMORY[0x1E6960CC0];
              lhs.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
              [v13 setVolume:&lhs atTime:{COERCE_DOUBLE(__PAIR64__(HIDWORD(lhs.start.value), LODWORD(v6)))}];
            }
          }

          memset(&v53, 0, sizeof(v53));
          *&lhs.start.value = *&start.start.value;
          lhs.start.epoch = start.start.epoch;
          rhs.start = v66;
          CMTimeSubtract(&v53, &lhs.start, &rhs.start);
          if (flags)
          {
            lhs.start = v53;
            rhs.start.value = value;
            rhs.start.timescale = timescale;
            rhs.start.flags = flags;
            rhs.start.epoch = epoch;
            v19 = CMTimeCompare(&lhs.start, &rhs.start) >> 31;
          }

          else
          {
            LOBYTE(v19) = 0;
          }

          memset(&lhs, 0, sizeof(lhs));
          rhs.start = v53;
          duration.start = v66;
          CMTimeRangeMake(&lhs, &rhs.start, &duration.start);
          rhs = lhs;
          CMTimeRangeGetEnd(&duration.start, &rhs);
          *&rhs.start.value = *&v63.start.value;
          rhs.start.epoch = v63.start.epoch;
          if ((CMTimeCompare(&duration.start, &rhs.start) & 0x80000000) == 0 || (v19 & 1) != 0 || (rhs.start = v53, *&duration.start.value = *MEMORY[0x1E6960CC0], duration.start.epoch = *(MEMORY[0x1E6960CC0] + 16), CMTimeCompare(&rhs.start, &duration.start) < 0))
          {
            *&rhs.start.value = *&start.start.value;
            rhs.start.epoch = start.start.epoch;
            *&duration.start.value = *&v63.start.value;
            duration.start.epoch = v63.start.epoch;
            if (CMTimeCompare(&rhs.start, &duration.start) < 0)
            {
              *&rhs.start.value = *&start.start.value;
              rhs.start.epoch = start.start.epoch;
              [v13 setVolume:&rhs atTime:{COERCE_DOUBLE(__PAIR64__(HIDWORD(start.start.value), LODWORD(v11)))}];
            }
          }

          else
          {
            rhs = lhs;
            [v13 setVolumeRampFromStartVolume:&rhs toEndVolume:COERCE_DOUBLE(__PAIR64__(lhs.duration.flags timeRange:{LODWORD(v6))), COERCE_DOUBLE(__PAIR64__(HIDWORD(lhs.start.epoch), LODWORD(v11)))}];
          }

          memset(&rhs, 0, sizeof(rhs));
          duration = start;
          CMTimeRangeGetEnd(&v50, &duration);
          duration.start = v66;
          CMTimeRangeMake(&rhs, &v50, &duration.start);
          memset(&v50, 0, sizeof(v50));
          duration = rhs;
          CMTimeRangeGetEnd(&v50, &duration);
          v20 = 0;
          v21 = -1;
          v22 = v15;
          while (v14 >= [v10 count] + v21)
          {

            v23 = 0;
            if (([0 isEmpty] & 1) == 0)
            {
              goto LABEL_34;
            }

LABEL_31:
            ++v22;
            --v21;
            v20 = v23;
          }

          v23 = [v10 objectAtIndexedSubscript:v22];

          if ([v23 isEmpty])
          {
            goto LABEL_31;
          }

          if (v23)
          {
            [v23 timeMapping];
            time1 = v48;
            memset(&duration, 0, 24);
            time2 = v66;
            CMTimeSubtract(&duration.start, &time1, &time2);
            time1 = v50;
            time2 = duration.start;
            v24 = CMTimeCompare(&time1, &time2) >= 0;

            goto LABEL_35;
          }

LABEL_34:
          v24 = 0;
LABEL_35:
          duration.start = v50;
          time1 = v63.start;
          if ((CMTimeCompare(&duration.start, &time1) & 0x80000000) == 0 || v24)
          {
            memset(&time1, 0, sizeof(time1));
            duration = start;
            CMTimeRangeGetEnd(&time1, &duration);
            duration.start = time1;
            time2 = v63.start;
            if (CMTimeCompare(&duration.start, &time2) < 0 && !v24)
            {
              duration.start = time1;
              [v13 setVolume:&duration atTime:{COERCE_DOUBLE(__PAIR64__(HIDWORD(time1.value), LODWORD(v6)))}];
            }
          }

          else
          {
            duration = rhs;
            [v13 setVolumeRampFromStartVolume:&duration toEndVolume:COERCE_DOUBLE(__PAIR64__(rhs.duration.flags timeRange:{LODWORD(v11))), COERCE_DOUBLE(__PAIR64__(HIDWORD(rhs.start.epoch), LODWORD(v6)))}];
          }

          value = v50.value;
          flags = v50.flags;
          timescale = v50.timescale;
          epoch = v50.epoch;
LABEL_41:

          ++v14;
          ++v15;
        }

        while (v14 < [v10 count]);
LABEL_42:
        memset(&start, 0, sizeof(start));
        if (v44)
        {
          [v44 timeRange];
        }

        else
        {
          memset(&lhs, 0, sizeof(lhs));
        }

        rhs = v63;
        CMTimeRangeGetIntersection(&start, &lhs, &rhs);
        if ((start.start.flags & 1) == 0 || (start.duration.flags & 1) == 0 || start.duration.epoch || start.duration.value < 0 || (lhs.start = start.duration, *&rhs.start.value = *MEMORY[0x1E6960CC0], rhs.start.epoch = *(MEMORY[0x1E6960CC0] + 16), CMTimeCompare(&lhs.start, &rhs.start)))
        {
          *&rhs.start.value = *&start.start.value;
          rhs.start.epoch = start.start.epoch;
          *&duration.start.value = *&v63.start.value;
          duration.start.epoch = v63.start.epoch;
          CMTimeSubtract(&lhs.start, &rhs.start, &duration.start);
          Seconds = CMTimeGetSeconds(&lhs.start);
          *&lhs.start.value = v64;
          lhs.start.epoch = v65;
          v26 = Seconds / CMTimeGetSeconds(&lhs.start);
          *&Seconds = v6 * PXStoryVolumeForFadeOutFractionCompleted(v26);
          lhs = start;
          CMTimeRangeGetEnd(&rhs.start, &lhs);
          *&duration.start.value = *&v63.start.value;
          duration.start.epoch = v63.start.epoch;
          CMTimeSubtract(&lhs.start, &rhs.start, &duration.start);
          v27 = CMTimeGetSeconds(&lhs.start);
          *&lhs.start.value = v64;
          lhs.start.epoch = v65;
          v28 = v27 / CMTimeGetSeconds(&lhs.start);
          *&v29 = v6 * PXStoryVolumeForFadeOutFractionCompleted(v28);
          lhs = start;
          [v13 setVolumeRampFromStartVolume:&lhs toEndVolume:COERCE_DOUBLE(__PAIR64__(start.duration.flags timeRange:{LODWORD(Seconds))), v29}];
        }

        v30 = [(PXStoryExportAudioCompositionBuilder *)selfCopy _mutableAudioMixParametersForCompositionTrack:v44];
        if (v30)
        {
          v31 = v30;
          audioMixParameters = [(PXStoryExportAudioCompositionBuilder *)selfCopy audioMixParameters];
          [audioMixParameters removeObjectIdenticalTo:v31];

          v33 = [PXFlexMusicLibrary coalesceAudioMixInputParametersA:v31 withAudioMixInputParametersB:v13 audioTrack:v44];
        }

        else
        {
          v33 = v13;
        }

        audioMixParameters2 = [(PXStoryExportAudioCompositionBuilder *)selfCopy audioMixParameters];
        [audioMixParameters2 addObject:v33];

        v12 = v45 + 1;
      }

      while (v45 + 1 != v43);
      v43 = [obj countByEnumeratingWithState:&v59 objects:v69 count:16];
    }

    while (v43);
  }
}

uint64_t __68__PXStoryExportAudioCompositionBuilder__applyMusicDuckingAndFadeOut__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v4)
  {
    [v4 timeMapping];
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
  }

  *&v22.value = v19;
  v22.epoch = v20;
  if (v5)
  {
    [v5 timeMapping];
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
  }

  time1 = v22;
  *&v8.value = v13;
  v8.epoch = v14;
  v6 = CMTimeCompare(&time1, &v8);

  return v6;
}

- (void)_applyVolumeRampsToVideoHilightAudioSegment:(id)segment inAudioCompositionTrack:(id)track volume:(float)volume fadeIn:(double)in fadeOut:(double)out
{
  segmentCopy = segment;
  v13 = [(PXStoryExportAudioCompositionBuilder *)self _mutableAudioMixParametersCreatedIfNeededForCompositionTrack:track];
  v14 = +[PXStorySettings sharedInstance];
  audioFadeCurve = [v14 audioFadeCurve];
  if (segmentCopy)
  {
    [segmentCopy timeMapping];
    *&v45.value = v42;
    v45.epoch = v43;
    [segmentCopy timeMapping];
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    memset(&v45, 0, sizeof(v45));
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
  }

  v37 = v31;
  *v38 = v32;
  *&v38[16] = v33;
  v30 = v45;
  if (in <= 0.0)
  {
    time.start = v45;
    [v13 setVolume:&time atTime:{COERCE_DOUBLE(__PAIR64__(HIDWORD(v45.value), LODWORD(volume)))}];
  }

  else
  {
    memset(&v29, 0, sizeof(v29));
    CMTimeMakeWithSeconds(&v29, in, 600);
    memset(&v28, 0, sizeof(v28));
    time.start = v29;
    v16 = 1;
    CMTimeMultiplyByRatio(&v28, &time.start, 1, 30);
    v17 = 0.0;
    do
    {
      memset(&time, 0, sizeof(time));
      start.start = v30;
      duration = v28;
      CMTimeRangeMake(&time, &start.start, &duration);
      v18 = PXVolumeGainForAudioCurveAtTime(audioFadeCurve, v16 / 30.0);
      v19 = v18 * volume;
      start = time;
      [v13 setVolumeRampFromStartVolume:&start toEndVolume:COERCE_DOUBLE(__PAIR64__(time.duration.flags timeRange:{LODWORD(v17))), COERCE_DOUBLE(__PAIR64__(HIDWORD(time.start.epoch), v18 * volume))}];
      start.start = v30;
      duration = v28;
      CMTimeAdd(&v30, &start.start, &duration);
      ++v16;
      v17 = v19;
    }

    while (v16 != 31);
  }

  if (out > 0.0)
  {
    memset(&v29, 0, sizeof(v29));
    CMTimeMakeWithSeconds(&v29, out, 600);
    memset(&v28, 0, sizeof(v28));
    time.start = v45;
    *&start.start.value = *&v38[8];
    start.start.epoch = *&v38[24];
    CMTimeAdd(&v28, &time.start, &start.start);
    memset(&duration, 0, sizeof(duration));
    time.start = v29;
    v20 = 1;
    CMTimeMultiplyByRatio(&duration, &time.start, 1, 30);
    v21 = 0.0;
    do
    {
      start.start = v28;
      v24 = duration;
      CMTimeSubtract(&time.start, &start.start, &v24);
      v28 = time.start;
      memset(&time, 0, sizeof(time));
      start.start = v28;
      v24 = duration;
      CMTimeRangeMake(&time, &start.start, &v24);
      v22 = PXVolumeGainForAudioCurveAtTime(audioFadeCurve, v20 / 30.0) * volume;
      start = time;
      HIDWORD(v23) = time.duration.flags;
      *&v23 = v22;
      [v13 setVolumeRampFromStartVolume:&start toEndVolume:v23 timeRange:{COERCE_DOUBLE(__PAIR64__(HIDWORD(time.start.epoch), LODWORD(v21)))}];
      ++v20;
      v21 = v22;
    }

    while (v20 != 31);
  }
}

- (id)_insertAudioTrack:(id)track fromTime:(id *)time intoAudioCompositionTrack:(id)compositionTrack atTimeRange:(id *)range error:(id *)error
{
  trackCopy = track;
  compositionTrackCopy = compositionTrack;
  memset(&v26[80], 0, 48);
  if (trackCopy)
  {
    [trackCopy timeRange];
  }

  memset(&v26[56], 0, 24);
  [(PXStoryExportAudioCompositionBuilder *)self maximumDuration];
  v14 = *&time->var0;
  time.epoch = time->var3;
  range = *&v26[80];
  *&time.value = v14;
  CMTimeClampToRange(v26, &time, &range);
  memset(&v26[24], 0, 24);
  time = *&v26[56];
  time2 = *v26;
  CMTimeMinimum(&range.start, &time, &time2);
  *v26 = range.start;
  range.start = *&v26[104];
  time2 = *v26;
  CMTimeSubtract(&time, &range.start, &time2);
  time2 = range->var1;
  CMTimeMinimum(&range.start, &time2, &time);
  *&v26[40] = range.start.epoch;
  *&v26[24] = *&range.start.value;
  time = range.start;
  time2 = *&v26[56];
  CMTimeMinimum(&range.start, &time, &time2);
  *&v26[24] = range.start;
  memset(&time, 0, sizeof(time));
  range.start = *&v26[56];
  time2 = range->var0;
  CMTimeMinimum(&time, &range.start, &time2);
  v22 = 0;
  range = *v26;
  time2 = time;
  v15 = [compositionTrackCopy insertTimeRange:&range ofTrack:trackCopy atTime:&time2 error:&v22];
  v16 = v22;
  if (v15 && ([compositionTrackCopy segments], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "count"), v17, v18))
  {
    range.start = time;
    v19 = [compositionTrackCopy segmentForTrackTime:&range];
    if (!v19)
    {
      PXAssertGetLog();
    }
  }

  else
  {
    v19 = 0;
  }

  if (error)
  {
    v20 = v16;
    *error = v16;
  }

  return v19;
}

- (AVMutableComposition)audioComposition
{
  audioComposition = self->_audioComposition;
  if (!audioComposition)
  {
    v4 = objc_alloc_init(MEMORY[0x1E6988048]);
    v5 = self->_audioComposition;
    self->_audioComposition = v4;

    audioComposition = self->_audioComposition;
  }

  return audioComposition;
}

- (BOOL)addAudioFromVideoHighlightAsset:(id)asset fromTime:(id *)time atStoryTimeRange:(id *)range volume:(float)volume fadeIn:(double)in fadeOut:(double)out shouldDuck:(BOOL)duck error:(id *)self0
{
  duckCopy = duck;
  v60 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  error = [(PXStoryExportAudioCompositionBuilder *)self error];
  if (!error)
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v20 = *MEMORY[0x1E69875A0];
    v21 = [MEMORY[0x1E69C0708] tracksWithMediaType:*MEMORY[0x1E69875A0] forAsset:assetCopy];
    v22 = [v21 countByEnumeratingWithState:&v55 objects:v59 count:16];
    if (v22)
    {
      v23 = v22;
      v49 = v20;
      v50 = duckCopy;
      v24 = *v56;
LABEL_4:
      v25 = 0;
      while (1)
      {
        if (*v56 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v55 + 1) + 8 * v25);
        if ([v26 isEnabled])
        {
          break;
        }

        if (v23 == ++v25)
        {
          v23 = [v21 countByEnumeratingWithState:&v55 objects:v59 count:16];
          if (v23)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v27 = v26;

      if (!v27)
      {
        error = 0;
        goto LABEL_27;
      }

      currentVideoHighlightCompositionTrack = [(PXStoryExportAudioCompositionBuilder *)self currentVideoHighlightCompositionTrack];
      videoHighlightCompositionTrackB = [(PXStoryExportAudioCompositionBuilder *)self videoHighlightCompositionTrackB];

      if (currentVideoHighlightCompositionTrack == videoHighlightCompositionTrackB)
      {
        videoHighlightCompositionTrackA = [(PXStoryExportAudioCompositionBuilder *)self videoHighlightCompositionTrackA];

        v31 = v50;
        if (!videoHighlightCompositionTrackA)
        {
          audioComposition = [(PXStoryExportAudioCompositionBuilder *)self audioComposition];
          v37 = [audioComposition addMutableTrackWithMediaType:v49 preferredTrackID:0];

          [(PXStoryExportAudioCompositionBuilder *)self setVideoHighlightCompositionTrackA:v37];
        }

        videoHighlightCompositionTrackA2 = [(PXStoryExportAudioCompositionBuilder *)self videoHighlightCompositionTrackA];
      }

      else
      {
        videoHighlightCompositionTrackB2 = [(PXStoryExportAudioCompositionBuilder *)self videoHighlightCompositionTrackB];

        v31 = v50;
        if (!videoHighlightCompositionTrackB2)
        {
          audioComposition2 = [(PXStoryExportAudioCompositionBuilder *)self audioComposition];
          v33 = [audioComposition2 addMutableTrackWithMediaType:v49 preferredTrackID:0];

          [(PXStoryExportAudioCompositionBuilder *)self setVideoHighlightCompositionTrackB:v33];
        }

        videoHighlightCompositionTrackA2 = [(PXStoryExportAudioCompositionBuilder *)self videoHighlightCompositionTrackB];
      }

      v38 = videoHighlightCompositionTrackA2;
      [(PXStoryExportAudioCompositionBuilder *)self setCurrentVideoHighlightCompositionTrack:videoHighlightCompositionTrackA2];

      currentVideoHighlightCompositionTrack2 = [(PXStoryExportAudioCompositionBuilder *)self currentVideoHighlightCompositionTrack];
      v40 = *&range->var0.var3;
      v54[0] = *&range->var0.var0;
      v54[1] = v40;
      v54[2] = *&range->var1.var1;
      v51 = *&time->var0;
      var3 = time->var3;
      v53 = 0;
      v41 = [(PXStoryExportAudioCompositionBuilder *)self _insertAudioTrack:v27 fromTime:&v51 intoAudioCompositionTrack:currentVideoHighlightCompositionTrack2 atTimeRange:v54 error:&v53];
      error = v53;

      if (v41)
      {
        currentVideoHighlightCompositionTrack3 = [(PXStoryExportAudioCompositionBuilder *)self currentVideoHighlightCompositionTrack];
        *&v43 = volume;
        [(PXStoryExportAudioCompositionBuilder *)self _applyVolumeRampsToVideoHilightAudioSegment:v41 inAudioCompositionTrack:currentVideoHighlightCompositionTrack3 volume:v43 fadeIn:in fadeOut:out];

        if (v31)
        {
          duckingAudioSegments = [(PXStoryExportAudioCompositionBuilder *)self duckingAudioSegments];

          if (!duckingAudioSegments)
          {
            v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
            [(PXStoryExportAudioCompositionBuilder *)self setDuckingAudioSegments:v45];
          }

          duckingAudioSegments2 = [(PXStoryExportAudioCompositionBuilder *)self duckingAudioSegments];
          [duckingAudioSegments2 addObject:v41];
        }
      }
    }

    else
    {
LABEL_10:
      error = 0;
      v27 = v21;
    }
  }

LABEL_27:
  if (error)
  {
    v47 = error;
    *error = error;
  }

  [(PXStoryExportAudioCompositionBuilder *)self setError:error];

  return error == 0;
}

- (BOOL)addMusicAsset:(id)asset withAudioMix:(id)mix preferredVolume:(float)volume error:(id *)error
{
  v69 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  mixCopy = mix;
  error = [(PXStoryExportAudioCompositionBuilder *)self error];
  if (!error)
  {
    errorCopy = error;
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(PXStoryExportAudioCompositionBuilder *)self setMusicCompositionTracks:v13];

    *&v14 = volume;
    [(PXStoryExportAudioCompositionBuilder *)self setMusicCompositionDefaultVolume:v14];
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v15 = *MEMORY[0x1E69875A0];
    v42 = assetCopy;
    v16 = [MEMORY[0x1E69C0708] tracksWithMediaType:*MEMORY[0x1E69875A0] forAsset:assetCopy];
    v17 = [v16 countByEnumeratingWithState:&v63 objects:v68 count:16];
    if (v17)
    {
      v18 = v17;
      error = 0;
      v19 = *v64;
      v45 = mixCopy;
      selfCopy = self;
      v43 = v15;
      v44 = v16;
      v47 = *v64;
      do
      {
        v20 = 0;
        v49 = v18;
        do
        {
          if (*v64 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v63 + 1) + 8 * v20);
          if ([v21 isEnabled])
          {
            segments = [v21 segments];
            v23 = [segments count];

            if (v23)
            {
              audioComposition = [(PXStoryExportAudioCompositionBuilder *)self audioComposition];
              v25 = [audioComposition addMutableTrackWithMediaType:v15 preferredTrackID:0];

              v61 = 0u;
              v62 = 0u;
              v60 = 0u;
              if (v21)
              {
                [v21 timeRange];
              }

              v58 = v61;
              v59 = error;
              v54 = v60;
              v55 = v61;
              v56 = v62;
              v57 = v60;
              v26 = [(PXStoryExportAudioCompositionBuilder *)self _insertAudioTrack:v21 fromTime:&v57 intoAudioCompositionTrack:v25 atTimeRange:&v54 error:&v59];
              v27 = v59;

              if (v26)
              {
                v48 = v27;
                if (mixCopy)
                {
                  v52 = 0u;
                  v53 = 0u;
                  v50 = 0u;
                  v51 = 0u;
                  inputParameters = [mixCopy inputParameters];
                  v29 = [inputParameters countByEnumeratingWithState:&v50 objects:v67 count:16];
                  if (v29)
                  {
                    v30 = v29;
                    v31 = *v51;
                    while (2)
                    {
                      for (i = 0; i != v30; ++i)
                      {
                        if (*v51 != v31)
                        {
                          objc_enumerationMutation(inputParameters);
                        }

                        v33 = *(*(&v50 + 1) + 8 * i);
                        trackID = [v33 trackID];
                        if (trackID == [v21 trackID])
                        {
                          v35 = [v33 mutableCopy];
                          [v35 setTrackID:{objc_msgSend(v25, "trackID")}];
                          self = selfCopy;
                          audioMixParameters = [(PXStoryExportAudioCompositionBuilder *)selfCopy audioMixParameters];
                          [audioMixParameters addObject:v35];

                          goto LABEL_23;
                        }
                      }

                      v30 = [inputParameters countByEnumeratingWithState:&v50 objects:v67 count:16];
                      self = selfCopy;
                      if (v30)
                      {
                        continue;
                      }

                      break;
                    }
                  }

LABEL_23:

                  v16 = v44;
                  mixCopy = v45;
                  v15 = v43;
                }

                v37 = [MEMORY[0x1E6988040] audioMixInputParametersWithTrack:v25];
                v54 = *MEMORY[0x1E6960CC0];
                *&v55 = *(MEMORY[0x1E6960CC0] + 16);
                [v37 setVolume:&v54 atTime:0.0];
                audioMixParametersWithoutMusic = [(PXStoryExportAudioCompositionBuilder *)self audioMixParametersWithoutMusic];
                [audioMixParametersWithoutMusic addObject:v37];

                [(NSMutableArray *)self->_musicCompositionTracks addObject:v25];
                v27 = v48;
              }

              error = v27;
              v19 = v47;
            }

            v18 = v49;
          }

          ++v20;
        }

        while (v20 != v18);
        v18 = [v16 countByEnumeratingWithState:&v63 objects:v68 count:16];
      }

      while (v18);
    }

    else
    {
      error = 0;
    }

    error = errorCopy;
    assetCopy = v42;
  }

  if (error)
  {
    v39 = error;
    *error = error;
  }

  [(PXStoryExportAudioCompositionBuilder *)self setError:error];

  return error == 0;
}

- (void)finishAndWaitWithResultHandler:(id)handler
{
  handlerCopy = handler;
  error = [(PXStoryExportAudioCompositionBuilder *)self error];

  if (error)
  {
    error2 = [(PXStoryExportAudioCompositionBuilder *)self error];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, error2);
  }

  else
  {
    if (self->_audioComposition)
    {
      [(PXStoryExportAudioCompositionBuilder *)self _applyMusicDuckingAndFadeOut];
      if ([(NSMutableArray *)self->_audioMixParameters count])
      {
        error2 = objc_alloc_init(MEMORY[0x1E6988038]);
        audioMixParameters = [(PXStoryExportAudioCompositionBuilder *)self audioMixParameters];
        [error2 setInputParameters:audioMixParameters];
      }

      else
      {
        error2 = 0;
      }

      if ([(NSMutableArray *)self->_audioMixParametersWithoutMusic count])
      {
        v7 = objc_alloc_init(MEMORY[0x1E6988038]);
        audioMixParametersWithoutMusic = [(PXStoryExportAudioCompositionBuilder *)self audioMixParametersWithoutMusic];
        [v7 setInputParameters:audioMixParametersWithoutMusic];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
      error2 = 0;
    }

    (*(handlerCopy + 2))(handlerCopy, self->_audioComposition, error2, v7, 0);
    v15 = PXStoryErrorCreateWithCodeDebugFormat(13, @"cannot use object after finishWithResultHandler was called", v9, v10, v11, v12, v13, v14, v16);
    [(PXStoryExportAudioCompositionBuilder *)self setError:v15];
  }
}

- (PXStoryExportAudioCompositionBuilder)initWithMaximumDuration:(id *)duration outroDuration:(id *)outroDuration
{
  v15.receiver = self;
  v15.super_class = PXStoryExportAudioCompositionBuilder;
  v6 = [(PXStoryExportAudioCompositionBuilder *)&v15 init];
  v7 = v6;
  if (v6)
  {
    v8 = *&duration->var0;
    *(v6 + 17) = duration->var3;
    *(v6 + 120) = v8;
    v9 = *&outroDuration->var0;
    *(v6 + 14) = outroDuration->var3;
    *(v6 + 6) = v9;
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    audioMixParameters = v7->_audioMixParameters;
    v7->_audioMixParameters = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    audioMixParametersWithoutMusic = v7->_audioMixParametersWithoutMusic;
    v7->_audioMixParametersWithoutMusic = v12;
  }

  return v7;
}

@end