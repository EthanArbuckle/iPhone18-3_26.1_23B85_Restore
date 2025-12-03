@interface PFSlowMotionUtilities
+ ($E33AF59C8D263E738CA17719EFF006B3)_timeRangeFromTime:(SEL)time toTime:(float)toTime;
+ ($E33AF59C8D263E738CA17719EFF006B3)adjustTimeRange:(SEL)range forNewStartTime:(id *)time endTime:(id *)endTime;
+ (BOOL)_isValidSlowMotionTimeRange:(id *)range;
+ (BOOL)_scaleComposition:(id)composition baseDuration:(double)duration slowMotionRate:(float)rate slowMotionRegions:(id)regions forExport:(BOOL)export outTimeRangeMapper:(id *)mapper;
+ (double)_scaleWithinComposition:(id)composition fromCursor:(double)cursor timeStep:(double)step rate:(float)rate timeRangeMapper:(id)mapper;
+ (id)_scaledCompositionForAsset:(id)asset slowMotionRate:(float)rate slowMotionTimeRange:(id *)range forExport:(BOOL)export outTimeRangeMapper:(id *)mapper;
+ (id)_setVolume:(float)volume forSlowMotionRegionsInTrack:(id)track timeRangeMapper:(id)mapper;
+ (id)_slowMotionRegionsFromSlowMotionTimeRange:(id *)range;
+ (id)assetFromVideoAsset:(id)asset slowMotionRate:(float)rate slowMotionTimeRange:(id *)range forExport:(BOOL)export outAudioMix:(id *)mix outTimeRangeMapper:(id *)mapper;
+ (id)audioMixForScaledComposition:(id)composition timeRangeMapper:(id)mapper;
+ (id)exportPresetForAsset:(id)asset preferredPreset:(id)preset;
+ (id)sharedConfiguration;
+ (id)timeRangeMapperForSourceDuration:(double)duration slowMotionRate:(float)rate slowMotionTimeRange:(id *)range forExport:(BOOL)export;
+ (void)configureExportSession:(id)session forcePreciseConversion:(BOOL)conversion;
@end

@implementation PFSlowMotionUtilities

+ ($E33AF59C8D263E738CA17719EFF006B3)adjustTimeRange:(SEL)range forNewStartTime:(id *)time endTime:(id *)endTime
{
  memset(&v17, 0, sizeof(v17));
  CMTimeMake(&v17, 0, 600);
  memset(&v16, 0, sizeof(v16));
  lhs.start = *a6;
  rhs.start = *endTime;
  CMTimeSubtract(&v16, &lhs.start, &rhs.start);
  memset(&lhs, 0, sizeof(lhs));
  rhs.start = v17;
  v12.start = v16;
  CMTimeRangeFromTimeToTime(&lhs, &rhs.start, &v12.start);
  memset(&v14, 0, sizeof(v14));
  *&rhs.start.value = *&time->var0.var0;
  rhs.start.epoch = time->var0.var3;
  v12.start = *endTime;
  CMTimeSubtract(&v14, &rhs.start, &v12.start);
  time->var0 = v14;
  *&retstr->var0.var0 = 0u;
  *&retstr->var0.var3 = 0u;
  *&retstr->var1.var1 = 0u;
  rhs = lhs;
  v10 = *&time->var0.var3;
  *&v12.start.value = *&time->var0.var0;
  *&v12.start.epoch = v10;
  *&v12.duration.timescale = *&time->var1.var1;
  return CMTimeRangeGetIntersection(retstr, &rhs, &v12);
}

+ (id)audioMixForScaledComposition:(id)composition timeRangeMapper:(id)mapper
{
  compositionCopy = composition;
  mapperCopy = mapper;
  sharedConfiguration = [self sharedConfiguration];
  [sharedConfiguration volumeDuringSlowMotion];
  v10 = v9;

  audioMix = 0;
  if (mapperCopy && v10 != 1.0)
  {
    audioMix = [MEMORY[0x1E6988038] audioMix];
    array = [MEMORY[0x1E695DF70] array];
    v13 = [PFMediaUtilities tracksWithMediaType:*MEMORY[0x1E69875A0] forAsset:compositionCopy];
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __70__PFSlowMotionUtilities_audioMixForScaledComposition_timeRangeMapper___block_invoke;
    v20 = &unk_1E7B65C60;
    selfCopy = self;
    v24 = v10;
    v21 = mapperCopy;
    v22 = array;
    v14 = array;
    [v13 enumerateObjectsUsingBlock:&v17];
    [audioMix setInputParameters:{v14, v17, v18, v19, v20}];
  }

  v15 = [audioMix copy];

  return v15;
}

void __70__PFSlowMotionUtilities_audioMixForScaledComposition_timeRangeMapper___block_invoke(uint64_t a1, uint64_t a2, double a3)
{
  LODWORD(a3) = *(a1 + 56);
  v4 = [*(a1 + 48) _setVolume:a2 forSlowMotionRegionsInTrack:*(a1 + 32) timeRangeMapper:a3];
  [*(a1 + 40) addObject:v4];
}

+ ($E33AF59C8D263E738CA17719EFF006B3)_timeRangeFromTime:(SEL)time toTime:(float)toTime
{
  *&retstr->var0.var3 = 0u;
  *&retstr->var1.var1 = 0u;
  *&retstr->var0.var0 = 0u;
  CMTimeMakeWithSeconds(&start, toTime, 600);
  CMTimeMakeWithSeconds(&v8, a5, 600);
  return CMTimeRangeFromTimeToTime(retstr, &start, &v8);
}

+ (id)_setVolume:(float)volume forSlowMotionRegionsInTrack:(id)track timeRangeMapper:(id)mapper
{
  v8 = MEMORY[0x1E6988040];
  mapperCopy = mapper;
  v10 = [v8 audioMixInputParametersWithTrack:track];
  sharedConfiguration = [self sharedConfiguration];
  rampDown = [sharedConfiguration rampDown];
  rampUp = [sharedConfiguration rampUp];
  sharedConfiguration2 = [self sharedConfiguration];
  [sharedConfiguration2 volumeDuringRampToSlowMotion];
  v16 = v15;

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __80__PFSlowMotionUtilities__setVolume_forSlowMotionRegionsInTrack_timeRangeMapper___block_invoke;
  v23[3] = &unk_1E7B65C38;
  v17 = v10;
  volumeCopy = volume;
  v29 = v16;
  v24 = v17;
  v25 = rampDown;
  v26 = rampUp;
  selfCopy = self;
  v18 = rampUp;
  v19 = rampDown;
  [mapperCopy enumerateScaledRegionsUsingBlock:v23];

  [v17 setAudioTimePitchAlgorithm:*MEMORY[0x1E69873A0]];
  v20 = v26;
  v21 = v17;

  return v17;
}

uint64_t __80__PFSlowMotionUtilities__setVolume_forSlowMotionRegionsInTrack_timeRangeMapper___block_invoke(uint64_t a1, double a2, double a3, float a4, float a5, float a6)
{
  v10 = *(a1 + 64);
  if (*&a3 == a4)
  {
    v11 = *(a1 + 32);
    CMTimeMakeWithSeconds(v55, a4, 600);
    *&v12 = v10;
    result = [v11 setVolume:v55 atTime:v12];
  }

  else
  {
    v16 = *&a3;
    if (*(a1 + 68) >= v10)
    {
      v22 = *(a1 + 32);
      v23 = *(a1 + 56);
      if (v23)
      {
        LODWORD(a2) = LODWORD(a3);
        *&a3 = a4;
        [v23 _timeRangeFromTime:a2 toTime:a3];
      }

      else
      {
        HIDWORD(v24) = 0;
        v56 = 0u;
        memset(v55, 0, sizeof(v55));
      }

      LODWORD(v24) = 1.0;
      v30 = v55;
      v31 = v22;
      *&a3 = v10;
    }

    else
    {
      v56 = 0u;
      memset(v55, 0, sizeof(v55));
      v17 = *(a1 + 56);
      [*(a1 + 40) volumeSuppressionIntroTime];
      if (v17)
      {
        v20 = v16;
        v21 = v18 + v16;
        *&v20 = v21;
        *&v21 = v16;
        [v17 _timeRangeFromTime:v21 toTime:v20];
      }

      else
      {
        v56 = 0u;
        memset(v55, 0, sizeof(v55));
      }

      v25 = *(a1 + 32);
      LODWORD(v19) = *(a1 + 68);
      v52 = *v55;
      v53 = *&v55[16];
      v54 = v56;
      [v25 setVolumeRampFromStartVolume:&v52 toEndVolume:COERCE_DOUBLE(__PAIR64__(DWORD1(v56) timeRange:{1.0)), v19}];
      v53 = 0u;
      v54 = 0u;
      v52 = 0u;
      v26 = *(a1 + 56);
      [*(a1 + 40) volumeSuppressionOutroTime];
      if (v26)
      {
        v28 = a4;
        v29 = a4 - v27;
        *&v29 = v29;
        *&v28 = a4;
        [v26 _timeRangeFromTime:v29 toTime:v28];
      }

      else
      {
        HIDWORD(v24) = 0;
        v53 = 0u;
        v54 = 0u;
        v52 = 0u;
      }

      v31 = *(a1 + 32);
      LODWORD(a3) = *(a1 + 64);
      LODWORD(v24) = *(a1 + 68);
      v49 = v52;
      v50 = v53;
      v51 = v54;
      v30 = &v49;
    }

    result = [v31 setVolumeRampFromStartVolume:v30 toEndVolume:v24 timeRange:{a3, v49, v50, v51}];
  }

  if (a5 < a6)
  {
    v32 = *(a1 + 64);
    if (*(a1 + 68) >= v32)
    {
      v39 = *(a1 + 32);
      v40 = *(a1 + 56);
      if (v40)
      {
        *&v14 = a5;
        *&v15 = a6;
        [v40 _timeRangeFromTime:v14 toTime:v15];
      }

      else
      {
        HIDWORD(v41) = 0;
        v56 = 0u;
        memset(v55, 0, sizeof(v55));
      }

      LODWORD(v15) = 1.0;
      v47 = v55;
      v48 = v39;
      *&v41 = v32;
    }

    else
    {
      v56 = 0u;
      memset(v55, 0, sizeof(v55));
      v33 = *(a1 + 56);
      [*(a1 + 48) volumeSuppressionOutroTime];
      if (v33)
      {
        v36 = a5;
        v37 = v34 + a5;
        *&v36 = v37;
        *&v37 = a5;
        [v33 _timeRangeFromTime:v37 toTime:v36];
      }

      else
      {
        HIDWORD(v38) = 0;
        v56 = 0u;
        memset(v55, 0, sizeof(v55));
      }

      v42 = *(a1 + 32);
      LODWORD(v38) = *(a1 + 64);
      LODWORD(v35) = *(a1 + 68);
      v52 = *v55;
      v53 = *&v55[16];
      v54 = v56;
      [v42 setVolumeRampFromStartVolume:&v52 toEndVolume:v38 timeRange:v35];
      v53 = 0u;
      v54 = 0u;
      v52 = 0u;
      v43 = *(a1 + 56);
      [*(a1 + 48) volumeSuppressionIntroTime];
      if (v43)
      {
        v45 = a6;
        v46 = a6 - v44;
        *&v46 = v46;
        *&v45 = a6;
        [v43 _timeRangeFromTime:v46 toTime:v45];
      }

      else
      {
        HIDWORD(v41) = 0;
        v53 = 0u;
        v54 = 0u;
        v52 = 0u;
      }

      v48 = *(a1 + 32);
      LODWORD(v41) = *(a1 + 68);
      v49 = v52;
      v50 = v53;
      v51 = v54;
      v15 = COERCE_DOUBLE(__PAIR64__(DWORD1(v54), 1.0));
      v47 = &v49;
    }

    return [v48 setVolumeRampFromStartVolume:v47 toEndVolume:v41 timeRange:{v15, v49, v50, v51}];
  }

  return result;
}

+ (id)exportPresetForAsset:(id)asset preferredPreset:(id)preset
{
  presetCopy = preset;
  assetCopy = asset;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) != 0 && [presetCopy isEqualToString:*MEMORY[0x1E6987338]])
  {
    v8 = *MEMORY[0x1E69872E0];

    presetCopy = v8;
  }

  return presetCopy;
}

+ (void)configureExportSession:(id)session forcePreciseConversion:(BOOL)conversion
{
  conversionCopy = conversion;
  sessionCopy = session;
  asset = [sessionCopy asset];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [PFMediaUtilities mainVideoTrackForAsset:asset];
    v11 = 0uLL;
    v12 = 0;
    [v7 nominalFrameRate];
    [PFVideoAdjustments minFrameDurationForNominalFrameRate:?];
    v9 = v11;
    v10 = v12;
    [sessionCopy setMinVideoFrameDuration:&v9];
    v8 = MEMORY[0x1E6987D58];
    if (!conversionCopy)
    {
      v8 = MEMORY[0x1E6987D50];
    }

    [sessionCopy setVideoFrameRateConversionAlgorithm:*v8];
  }
}

+ (double)_scaleWithinComposition:(id)composition fromCursor:(double)cursor timeStep:(double)step rate:(float)rate timeRangeMapper:(id)mapper
{
  v10 = cursor + step;
  memset(&v21, 0, sizeof(v21));
  v11 = step / rate;
  mapperCopy = mapper;
  compositionCopy = composition;
  CMTimeMakeWithSeconds(&start.start, cursor, 600);
  CMTimeMakeWithSeconds(&end, v10, 600);
  CMTimeRangeFromTimeToTime(&v21, &start.start, &end);
  memset(&end, 0, sizeof(end));
  CMTimeMakeWithSeconds(&end, v11, 600);
  start = v21;
  v18 = end;
  [compositionCopy scaleTimeRange:&start toDuration:&v18];

  start.start = end;
  Seconds = CMTimeGetSeconds(&start.start);
  v15 = Seconds + cursor;
  *&Seconds = step;
  *&v16 = v11;
  [mapperCopy addNextRange:Seconds scaledLength:v16];

  return v15;
}

+ (BOOL)_scaleComposition:(id)composition baseDuration:(double)duration slowMotionRate:(float)rate slowMotionRegions:(id)regions forExport:(BOOL)export outTimeRangeMapper:(id *)mapper
{
  exportCopy = export;
  v106 = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
  regionsCopy = regions;
  if (mapper)
  {
    v14 = objc_alloc_init(PFSlowMotionTimeRangeMapper);
    *mapper = v14;
  }

  else
  {
    v14 = 0;
  }

  sharedConfiguration = [self sharedConfiguration];
  rampDown = [sharedConfiguration rampDown];
  rampUp = [sharedConfiguration rampUp];
  v102 = 0;
  v101 = 0;
  *&v15 = rate;
  [rampDown computeRampToTargetRate:exportCopy forExport:&v102 outTimeSteps:&v101 outIntermediateRates:v15];
  v16 = v102;
  v59 = v101;
  v100 = 0;
  v99 = 0;
  *&v17 = rate;
  [rampUp computeRampToTargetRate:exportCopy forExport:&v100 outTimeSteps:&v99 outIntermediateRates:v17];
  v18 = v100;
  v58 = v99;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v19 = v16;
  v20 = [v19 countByEnumeratingWithState:&v95 objects:v105 count:16];
  if (v20)
  {
    v21 = *v96;
    v22 = 0.0;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v96 != v21)
        {
          objc_enumerationMutation(v19);
        }

        [*(*(&v95 + 1) + 8 * i) floatValue];
        v22 = v22 + v24;
      }

      v20 = [v19 countByEnumeratingWithState:&v95 objects:v105 count:16];
    }

    while (v20);
  }

  else
  {
    v22 = 0.0;
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v25 = v18;
  v26 = [v25 countByEnumeratingWithState:&v91 objects:v104 count:16];
  if (v26)
  {
    v27 = *v92;
    v28 = 0.0;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v92 != v27)
        {
          objc_enumerationMutation(v25);
        }

        [*(*(&v91 + 1) + 8 * j) floatValue];
        v28 = v28 + v30;
      }

      v26 = [v25 countByEnumeratingWithState:&v91 objects:v104 count:16];
    }

    while (v26);
  }

  else
  {
    v28 = 0.0;
  }

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  obj = regionsCopy;
  v31 = [obj countByEnumeratingWithState:&v87 objects:v103 count:16];
  if (v31)
  {
    v32 = *v88;
    v33 = 0.0;
    v65 = 0.0;
    while (1)
    {
      for (k = 0; k != v31; ++k)
      {
        if (*v88 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v35 = *(*(&v87 + 1) + 8 * k);
        memset(&v86, 0, sizeof(v86));
        CMTimeRangeMakeFromDictionary(&v86, v35);
        time.start = v86.duration;
        Seconds = CMTimeGetSeconds(&time.start);
        v37 = Seconds - v22 - v28;
        if (v37 > 0.0)
        {
          *&time.start.value = *&v86.start.value;
          time.start.epoch = v86.start.epoch;
          v38 = v65 + CMTimeGetSeconds(&time.start);
          v82 = 0;
          v83 = &v82;
          HIDWORD(v39) = 1065646817;
          v84 = 0x2020000000;
          v85 = v38;
          v40 = v38 - v33;
          if (v38 - v33 > 0.01)
          {
            *&v40 = v40;
            LODWORD(v39) = LODWORD(v40);
            [(PFSlowMotionTimeRangeMapper *)v14 addNextRange:v40 scaledLength:v39];
          }

          *&time.start.value = *&v86.start.value;
          time.start.epoch = v86.start.epoch;
          v41 = CMTimeGetSeconds(&time.start);
          time = v86;
          CMTimeRangeGetEnd(&v81, &time);
          v43 = duration - CMTimeGetSeconds(&v81);
          if (v41 >= 0.1)
          {
            v73[0] = MEMORY[0x1E69E9820];
            v73[1] = 3221225472;
            v73[2] = __118__PFSlowMotionUtilities__scaleComposition_baseDuration_slowMotionRate_slowMotionRegions_forExport_outTimeRangeMapper___block_invoke;
            v73[3] = &unk_1E7B65C10;
            v44 = v19;
            v74 = v44;
            v75 = v59;
            v78 = &v82;
            selfCopy = self;
            v76 = compositionCopy;
            v77 = v14;
            [v44 enumerateObjectsUsingBlock:v73];

            if (v43 < 0.1)
            {
              goto LABEL_34;
            }
          }

          else
          {
            if (v43 >= 0.1)
            {
              v37 = v22 + v37;
              goto LABEL_39;
            }

LABEL_34:
            if (compositionCopy)
            {
              [compositionCopy duration];
              v46 = CMTimeGetSeconds(&time.start);
              v47 = v83[3];
              HIDWORD(v42) = 1062948481;
              v37 = v46 - v47 + 0.00166666667;
              v45 = v47;
              if (v41 < 0.1)
              {
                goto LABEL_43;
              }

LABEL_42:
              [rampDown rampTime];
              v45 = v83[3];
LABEL_43:
              *&v42 = rate;
              [self _scaleWithinComposition:compositionCopy fromCursor:v14 timeStep:v45 rate:v37 timeRangeMapper:v42];
              v54 = v49;
              v83[3] = v49;
              if (v43 >= 0.1)
              {
                v66[0] = MEMORY[0x1E69E9820];
                v66[1] = 3221225472;
                v66[2] = __118__PFSlowMotionUtilities__scaleComposition_baseDuration_slowMotionRate_slowMotionRegions_forExport_outTimeRangeMapper___block_invoke_2;
                v66[3] = &unk_1E7B65C10;
                v55 = v25;
                v67 = v55;
                v68 = v58;
                v71 = &v82;
                selfCopy2 = self;
                v69 = compositionCopy;
                v70 = v14;
                [v55 enumerateObjectsWithOptions:2 usingBlock:v66];

                v49 = v83[3];
              }

              *&v50 = v38;
              *&v51 = v47;
              *&v52 = v54;
              *&v53 = v49;
              *&v49 = rate;
              [(PFSlowMotionTimeRangeMapper *)v14 markScaledRegionWithRate:v49 rampInStartTime:v50 rampInEndTime:v51 rampOutStartTime:v52 rampOutEndTime:v53];
              v33 = v83[3];
              if (v43 >= 0.1)
              {
                [rampUp rampTime];
              }

              v65 = v65 + v33 - v38 - Seconds;
              _Block_object_dispose(&v82, 8);
              continue;
            }

            *&time.start.value = *&v86.start.value;
            time.start.epoch = v86.start.epoch;
            v48 = duration - CMTimeGetSeconds(&time.start);
            if (v41 < 0.1)
            {
              v37 = v48 + 0.00166666667;
LABEL_39:
              v45 = v83[3];
              v47 = v45;
              goto LABEL_43;
            }

            v45 = v48 - v22;
            v37 = v45 + 0.00166666667;
          }

          v47 = v83[3];
          goto LABEL_42;
        }
      }

      v31 = [obj countByEnumeratingWithState:&v87 objects:v103 count:16];
      if (!v31)
      {
        LOBYTE(v31) = v65 > 0.0;
        break;
      }
    }
  }

  return v31;
}

uint64_t __118__PFSlowMotionUtilities__scaleComposition_baseDuration_slowMotionRate_slowMotionRegions_forExport_outTimeRangeMapper___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) objectAtIndex:?];
  [v5 floatValue];
  v7 = v6;

  v8 = [*(a1 + 40) objectAtIndex:a3];
  [v8 floatValue];
  v10 = v9;

  LODWORD(v11) = v10;
  result = [*(a1 + 72) _scaleWithinComposition:*(a1 + 48) fromCursor:*(a1 + 56) timeStep:*(*(*(a1 + 64) + 8) + 24) rate:v7 timeRangeMapper:v11];
  *(*(*(a1 + 64) + 8) + 24) = v13;
  return result;
}

uint64_t __118__PFSlowMotionUtilities__scaleComposition_baseDuration_slowMotionRate_slowMotionRegions_forExport_outTimeRangeMapper___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) objectAtIndex:?];
  [v5 floatValue];
  v7 = v6;

  v8 = [*(a1 + 40) objectAtIndex:a3];
  [v8 floatValue];
  v10 = v9;

  LODWORD(v11) = v10;
  result = [*(a1 + 72) _scaleWithinComposition:*(a1 + 48) fromCursor:*(a1 + 56) timeStep:*(*(*(a1 + 64) + 8) + 24) rate:v7 timeRangeMapper:v11];
  *(*(*(a1 + 64) + 8) + 24) = v13;
  return result;
}

+ (id)timeRangeMapperForSourceDuration:(double)duration slowMotionRate:(float)rate slowMotionTimeRange:(id *)range forExport:(BOOL)export
{
  exportCopy = export;
  selfCopy = self;
  v10 = *&range->var0.var3;
  v17[0] = *&range->var0.var0;
  v17[1] = v10;
  v17[2] = *&range->var1.var1;
  v11 = [self _slowMotionRegionsFromSlowMotionTimeRange:v17];
  v16 = 0;
  *&v12 = rate;
  LOBYTE(selfCopy) = [selfCopy _scaleComposition:0 baseDuration:v11 slowMotionRate:exportCopy slowMotionRegions:&v16 forExport:duration outTimeRangeMapper:v12];
  v13 = v16;
  v14 = v13;
  if ((selfCopy & 1) == 0)
  {

    v14 = 0;
  }

  return v14;
}

+ (id)_slowMotionRegionsFromSlowMotionTimeRange:(id *)range
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695E480];
  v4 = *&range->var0.var3;
  *&v9.start.value = *&range->var0.var0;
  *&v9.start.epoch = v4;
  *&v9.duration.timescale = *&range->var1.var1;
  v5 = CMTimeRangeCopyAsDictionary(&v9, v3);
  if (v5)
  {
    v6 = v5;
    v10[0] = v5;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_scaledCompositionForAsset:(id)asset slowMotionRate:(float)rate slowMotionTimeRange:(id *)range forExport:(BOOL)export outTimeRangeMapper:(id *)mapper
{
  v51 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  if (!assetCopy || (*&v11 = rate, ![self _isValidSlowMotionRate:v11]) || (v12 = *&range->var0.var3, *&v49.start.value = *&range->var0.var0, *&v49.start.epoch = v12, *&v49.duration.timescale = *&range->var1.var1, !objc_msgSend(self, "_isValidSlowMotionTimeRange:", &v49)))
  {
    v31 = 0;
    v30 = 0;
    if (!mapper)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  composition = [MEMORY[0x1E6988048] composition];
  memset(&v48, 0, sizeof(v48));
  [assetCopy duration];
  memset(&v49, 0, sizeof(v49));
  *&start.start.value = *MEMORY[0x1E6960CC0];
  v38 = *&start.start.value;
  start.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
  epoch = start.start.epoch;
  end = v48;
  CMTimeRangeFromTimeToTime(&v49, &start.start, &end);
  v46 = 0;
  start = v49;
  *&end.value = v38;
  end.epoch = epoch;
  [PFMediaUtilities insertTimeRange:&start ofAsset:assetCopy atTime:&end intoMutableComposition:composition error:&v46];
  v36 = v46;
  start.start = v48;
  Seconds = CMTimeGetSeconds(&start.start);
  v16 = *&range->var0.var3;
  *&start.start.value = *&range->var0.var0;
  *&start.start.epoch = v16;
  *&start.duration.timescale = *&range->var1.var1;
  v17 = [self _slowMotionRegionsFromSlowMotionTimeRange:&start];
  *&v18 = rate;
  v34 = v17;
  mapperCopy = mapper;
  v35 = [self _scaleComposition:composition baseDuration:Seconds slowMotionRate:v18 slowMotionRegions:? forExport:? outTimeRangeMapper:?];
  v19 = [PFMediaUtilities mainVideoTrackForAsset:assetCopy];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v37 = composition;
  tracks = [composition tracks];
  v21 = [tracks countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v42;
    v24 = *MEMORY[0x1E6987608];
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v42 != v23)
        {
          objc_enumerationMutation(tracks);
        }

        v26 = *(*(&v41 + 1) + 8 * i);
        mediaType = [v26 mediaType];
        v28 = [mediaType isEqualToString:v24];

        if (v28)
        {
          if (v19)
          {
            [v19 preferredTransform];
          }

          else
          {
            memset(&start, 0, sizeof(start));
          }

          [v26 setPreferredTransform:&start];
        }

        v29 = +[PFMediaUtilities trackWithTrackID:forAsset:](PFMediaUtilities, "trackWithTrackID:forAsset:", [v26 trackID], assetCopy);
        [v26 setEnabled:{objc_msgSend(v29, "isEnabled")}];
      }

      v22 = [tracks countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v22);
  }

  v30 = v37;
  mapper = mapperCopy;
  v31 = v35;
  if (mapperCopy)
  {
LABEL_19:
    if ((v31 & 1) == 0)
    {
      *mapper = 0;
    }
  }

LABEL_21:
  if (v31)
  {
    v32 = [v30 copy];
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

+ (BOOL)_isValidSlowMotionTimeRange:(id *)range
{
  if ((range->var0.var2 & 1) == 0 || (range->var1.var2 & 1) == 0 || range->var1.var3 || range->var1.var0 < 0)
  {
    return 0;
  }

  v8 = v3;
  v9 = v4;
  time1 = range->var1;
  v6 = **&MEMORY[0x1E6960CC0];
  return CMTimeCompare(&time1, &v6) != 0;
}

+ (id)assetFromVideoAsset:(id)asset slowMotionRate:(float)rate slowMotionTimeRange:(id *)range forExport:(BOOL)export outAudioMix:(id *)mix outTimeRangeMapper:(id *)mapper
{
  exportCopy = export;
  assetCopy = asset;
  *&v15 = rate;
  v16 = [self _isValidSlowMotionRate:v15];
  v17 = *&range->var0.var3;
  v27 = *&range->var0.var0;
  v28 = v17;
  v29 = *&range->var1.var1;
  v18 = [self _isValidSlowMotionTimeRange:&v27];
  v19 = 0;
  if (v16 && v18)
  {
    v26 = 0;
    v20 = *&range->var0.var3;
    v27 = *&range->var0.var0;
    v28 = v20;
    v29 = *&range->var1.var1;
    v21 = [self _scaledCompositionForAsset:assetCopy slowMotionRate:&v27 slowMotionTimeRange:exportCopy forExport:&v26 outTimeRangeMapper:{COERCE_DOUBLE(__PAIR64__(DWORD1(v29), LODWORD(rate)))}];
    v22 = v26;
    if (v21)
    {
      v19 = [self audioMixForScaledComposition:v21 timeRangeMapper:v22];
      if (!mapper)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v19 = 0;
      if (!mapper)
      {
LABEL_6:

        if (v21)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }
    }

    v23 = v22;
    *mapper = v22;
    goto LABEL_6;
  }

LABEL_7:
  v21 = assetCopy;
LABEL_8:
  if (mix)
  {
    v24 = v19;
    *mix = v19;
  }

  return v21;
}

+ (id)sharedConfiguration
{
  if (sharedConfiguration_onceToken != -1)
  {
    dispatch_once(&sharedConfiguration_onceToken, &__block_literal_global_8399);
  }

  v3 = sharedConfiguration_configuration;

  return v3;
}

uint64_t __44__PFSlowMotionUtilities_sharedConfiguration__block_invoke()
{
  sharedConfiguration_configuration = objc_alloc_init(PFSlowMotionConfiguration);

  return MEMORY[0x1EEE66BB8]();
}

@end