@interface PFVideoAVObjectBuilder
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)convertToOriginalTimeFromScaledTime:(SEL)time forExport:(id *)export;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)convertToScaledTimeFromOriginalTime:(SEL)time forExport:(id *)export;
- ($E33AF59C8D263E738CA17719EFF006B3)slowMotionRampInRangeForExport:(SEL)export;
- ($E33AF59C8D263E738CA17719EFF006B3)slowMotionRampOutRangeForExport:(SEL)export;
- ($E33AF59C8D263E738CA17719EFF006B3)timeRange;
- (PFVideoAVObjectBuilder)initWithAsset:(id)asset audioMix:(id)mix videoComposition:(id)composition;
- (PFVideoAVObjectBuilder)initWithVideoAsset:(id)asset videoAdjustments:(id)adjustments;
- (id)_getOrCreateTimeRangeMapperForExport:(BOOL)export;
- (id)_trimAssetIfNecessary:(id)necessary error:(id *)error;
- (id)description;
- (void)_synchronouslyLoadSlowMotionPropertiesFromAsset:(id)asset;
- (void)requestAVAssetForExport:(BOOL)export withResultHandler:(id)handler;
- (void)requestAsynchronousAVAssetWithResultHandler:(id)handler;
- (void)requestAsynchronousExportSessionWithExportPreset:(id)preset resultHandler:(id)handler;
- (void)requestAsynchronousPlayerItemWithResultHandler:(id)handler;
- (void)requestExportSessionWithExportPreset:(id)preset resultHandler:(id)handler;
- (void)requestPlayerItemWithResultHandler:(id)handler;
- (void)setTimeRange:(id *)range;
@end

@implementation PFVideoAVObjectBuilder

- (void)setTimeRange:(id *)range
{
  v3 = *&range->var0.var0;
  v4 = *&range->var1.var1;
  *&self->_timeRange.start.epoch = *&range->var0.var3;
  *&self->_timeRange.duration.timescale = v4;
  *&self->_timeRange.start.value = v3;
}

- ($E33AF59C8D263E738CA17719EFF006B3)timeRange
{
  v3 = *&self[1].var1.var1;
  *&retstr->var0.var0 = *&self[1].var0.var3;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[2].var0.var0;
  return self;
}

- (id)_trimAssetIfNecessary:(id)necessary error:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  v7 = necessaryCopy;
  if ((self->_timeRange.start.flags & 1) == 0 || (self->_timeRange.duration.flags & 1) == 0 || self->_timeRange.duration.epoch || self->_timeRange.duration.value < 0)
  {
    v8 = necessaryCopy;
  }

  else
  {
    composition = [MEMORY[0x1E6988048] composition];
    v11 = *&self->_timeRange.start.epoch;
    v31 = *&self->_timeRange.start.value;
    v32 = v11;
    v33 = *&self->_timeRange.duration.timescale;
    v24 = *MEMORY[0x1E6960CC0];
    *&v25 = *(MEMORY[0x1E6960CC0] + 16);
    if ([PFMediaUtilities insertTimeRange:&v31 ofAsset:v7 atTime:&v24 intoMutableComposition:composition error:error])
    {
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      v12 = *MEMORY[0x1E6987608];
      v13 = [PFMediaUtilities tracksWithMediaType:*MEMORY[0x1E6987608] forAsset:v7];
      firstObject = [v13 firstObject];
      v15 = firstObject;
      if (firstObject)
      {
        [firstObject preferredTransform];
      }

      else
      {
        v32 = 0u;
        v33 = 0u;
        v31 = 0u;
      }

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      tracks = [composition tracks];
      v17 = [tracks countByEnumeratingWithState:&v27 objects:v34 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v28;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v28 != v19)
            {
              objc_enumerationMutation(tracks);
            }

            v21 = *(*(&v27 + 1) + 8 * i);
            mediaType = [v21 mediaType];
            v23 = [mediaType isEqualToString:v12];

            if (v23)
            {
              v24 = v31;
              v25 = v32;
              v26 = v33;
              [v21 setPreferredTransform:&v24];
            }
          }

          v18 = [tracks countByEnumeratingWithState:&v27 objects:v34 count:16];
        }

        while (v18);
      }

      v8 = composition;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)_synchronouslyLoadSlowMotionPropertiesFromAsset:(id)asset
{
  v12 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  if (assetCopy)
  {
    v5 = dispatch_group_create();
    dispatch_group_enter(v5);
    v6 = +[PFSlowMotionUtilities slowMotionSourceAssetPropertyKeys];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __74__PFVideoAVObjectBuilder__synchronouslyLoadSlowMotionPropertiesFromAsset___block_invoke;
    v8[3] = &unk_1E7B66D20;
    v9 = v5;
    v7 = v5;
    [assetCopy loadValuesAsynchronouslyForKeys:v6 completionHandler:v8];

    dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ was asked to load slo-mo properties from a nil AVAsset.", buf, 0xCu);
  }
}

- (void)requestAVAssetForExport:(BOOL)export withResultHandler:(id)handler
{
  exportCopy = export;
  handlerCopy = handler;
  finalAsset = self->__finalAsset;
  if (finalAsset)
  {
    v8 = finalAsset;
    v9 = self->__finalAudioMix;
    v10 = self->__finalVideoComposition;
    if (handlerCopy)
    {
LABEL_3:
      v18 = 0;
      v11 = [(PFVideoAVObjectBuilder *)self _trimAssetIfNecessary:v8 error:&v18];
      v12 = v18;

      handlerCopy[2](handlerCopy, v11, v9, v10, v12);
      v8 = v11;
    }
  }

  else
  {
    [(PFVideoAVObjectBuilder *)self _synchronouslyLoadSlowMotionPropertiesFromAsset:self->_videoAsset];
    videoAsset = self->_videoAsset;
    [(PFVideoAdjustments *)self->_videoAdjustments slowMotionRate];
    v15 = v14;
    videoAdjustments = self->_videoAdjustments;
    if (videoAdjustments)
    {
      [(PFVideoAdjustments *)videoAdjustments slowMotionTimeRange];
    }

    else
    {
      HIDWORD(v17) = 0;
      memset(v20, 0, sizeof(v20));
    }

    v19 = 0;
    LODWORD(v17) = v15;
    v8 = [PFSlowMotionUtilities assetFromVideoAsset:videoAsset slowMotionRate:v20 slowMotionTimeRange:exportCopy forExport:&v19 outAudioMix:0 outTimeRangeMapper:v17];
    v9 = v19;
    v10 = 0;
    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }
}

- (void)requestAsynchronousAVAssetWithResultHandler:(id)handler
{
  handlerCopy = handler;
  v5 = self->_videoAsset;
  v6 = +[PFSlowMotionUtilities slowMotionSourceAssetPropertyKeys];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__PFVideoAVObjectBuilder_requestAsynchronousAVAssetWithResultHandler___block_invoke;
  v8[3] = &unk_1E7B668D0;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(AVAsset *)v5 loadValuesAsynchronouslyForKeys:v6 completionHandler:v8];
}

- (void)requestAsynchronousExportSessionWithExportPreset:(id)preset resultHandler:(id)handler
{
  presetCopy = preset;
  handlerCopy = handler;
  v8 = self->_videoAsset;
  v9 = +[PFSlowMotionUtilities slowMotionSourceAssetPropertyKeys];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __89__PFVideoAVObjectBuilder_requestAsynchronousExportSessionWithExportPreset_resultHandler___block_invoke;
  v12[3] = &unk_1E7B661F0;
  v12[4] = self;
  v13 = presetCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = presetCopy;
  [(AVAsset *)v8 loadValuesAsynchronouslyForKeys:v9 completionHandler:v12];
}

- (void)requestExportSessionWithExportPreset:(id)preset resultHandler:(id)handler
{
  presetCopy = preset;
  handlerCopy = handler;
  finalAsset = self->__finalAsset;
  if (finalAsset)
  {
    v9 = [MEMORY[0x1E6987E60] exportSessionWithAsset:finalAsset presetName:presetCopy];
    [v9 setAudioMix:self->__finalAudioMix];
    [v9 setVideoComposition:self->__finalVideoComposition];
    if (handlerCopy)
    {
LABEL_3:
      handlerCopy[2](handlerCopy, v9, 0);
    }
  }

  else
  {
    [(PFVideoAVObjectBuilder *)self _synchronouslyLoadSlowMotionPropertiesFromAsset:self->_videoAsset];
    videoAsset = self->_videoAsset;
    [(PFVideoAdjustments *)self->_videoAdjustments slowMotionRate];
    v12 = v11;
    videoAdjustments = self->_videoAdjustments;
    if (videoAdjustments)
    {
      [(PFVideoAdjustments *)videoAdjustments slowMotionTimeRange];
    }

    else
    {
      HIDWORD(v14) = 0;
      memset(v24, 0, sizeof(v24));
    }

    v23 = 0;
    LODWORD(v14) = v12;
    v15 = [PFSlowMotionUtilities assetFromVideoAsset:videoAsset slowMotionRate:v24 slowMotionTimeRange:1 forExport:&v23 outAudioMix:0 outTimeRangeMapper:v14];
    v16 = v23;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v22 = 0;
    v18 = [(PFVideoAVObjectBuilder *)self _trimAssetIfNecessary:v15 error:&v22];
    v19 = v22;

    if (v18)
    {
      v20 = [PFSlowMotionUtilities exportPresetForAsset:v18 preferredPreset:presetCopy];

      v9 = [MEMORY[0x1E6987E60] exportSessionWithAsset:v18 presetName:v20];
      [v9 setAudioMix:v16];
      if (isKindOfClass)
      {
        metadata = [(AVAsset *)self->_videoAsset metadata];
        [v9 setMetadata:metadata];

        [PFSlowMotionUtilities configureExportSession:v9 forcePreciseConversion:0];
      }

      presetCopy = v20;
    }

    else
    {
      v9 = 0;
    }

    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }
}

- (void)requestAsynchronousPlayerItemWithResultHandler:(id)handler
{
  handlerCopy = handler;
  v5 = self->_videoAsset;
  v6 = +[PFSlowMotionUtilities slowMotionSourceAssetPropertyKeys];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__PFVideoAVObjectBuilder_requestAsynchronousPlayerItemWithResultHandler___block_invoke;
  v8[3] = &unk_1E7B668D0;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(AVAsset *)v5 loadValuesAsynchronouslyForKeys:v6 completionHandler:v8];
}

- (void)requestPlayerItemWithResultHandler:(id)handler
{
  v38 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (self->__finalAsset)
  {
    v5 = [MEMORY[0x1E69880B0] playerItemWithAsset:?];
    [v5 setAudioMix:self->__finalAudioMix];
    [v5 setVideoComposition:self->__finalVideoComposition];
    v6 = 0;
    if (handlerCopy)
    {
LABEL_3:
      handlerCopy[2](handlerCopy, v5, v6);
    }
  }

  else
  {
    [(PFVideoAVObjectBuilder *)self _synchronouslyLoadSlowMotionPropertiesFromAsset:self->_videoAsset];
    videoAsset = self->_videoAsset;
    [(PFVideoAdjustments *)self->_videoAdjustments slowMotionRate];
    v9 = v8;
    videoAdjustments = self->_videoAdjustments;
    if (videoAdjustments)
    {
      [(PFVideoAdjustments *)videoAdjustments slowMotionTimeRange];
    }

    else
    {
      HIDWORD(v11) = 0;
      memset(v36, 0, sizeof(v36));
    }

    v35 = 0;
    LODWORD(v11) = v9;
    v12 = [PFSlowMotionUtilities assetFromVideoAsset:videoAsset slowMotionRate:v36 slowMotionTimeRange:0 forExport:&v35 outAudioMix:0 outTimeRangeMapper:v11];
    v13 = v35;
    v34 = 0;
    v14 = [(PFVideoAVObjectBuilder *)self _trimAssetIfNecessary:v12 error:&v34];
    v6 = v34;

    if (v14)
    {
      v5 = [MEMORY[0x1E69880B0] playerItemWithAsset:v14];
      [v5 setAudioMix:v13];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = [(AVAsset *)self->_videoAsset URL];
        v16 = v15;
        if (v15 && ([v15 isFileURL] & 1) == 0)
        {
          v27 = v16;
          v28 = v13;
          [MEMORY[0x1E696AF20] componentsWithURL:v16 resolvingAgainstBaseURL:0];
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v26 = v33 = 0u;
          obj = [v26 queryItems];
          v17 = [obj countByEnumeratingWithState:&v30 objects:v37 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v31;
            while (2)
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v31 != v19)
                {
                  objc_enumerationMutation(obj);
                }

                v21 = *(*(&v30 + 1) + 8 * i);
                name = [v21 name];
                v23 = [name isEqualToString:@"pbl"];

                if (v23)
                {
                  value = [v21 value];
                  intValue = [value intValue];

                  if (intValue >= 1)
                  {
                    [v5 setPreferredForwardBufferDuration:intValue];
                  }

                  goto LABEL_24;
                }
              }

              v18 = [obj countByEnumeratingWithState:&v30 objects:v37 count:16];
              if (v18)
              {
                continue;
              }

              break;
            }
          }

LABEL_24:

          v16 = v27;
          v13 = v28;
        }
      }
    }

    else
    {
      v5 = 0;
    }

    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }
}

- (id)description
{
  if (self->__finalAsset)
  {
    v8.receiver = self;
    v8.super_class = PFVideoAVObjectBuilder;
    v3 = [(PFVideoAVObjectBuilder *)&v8 description];
    [v3 stringByAppendingFormat:@"(%@, %@, %@)", self->__finalAsset, self->__finalAudioMix, self->__finalVideoComposition];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PFVideoAVObjectBuilder;
    v3 = [(PFVideoAVObjectBuilder *)&v7 description];
    [v3 stringByAppendingFormat:@"(%@, %@)", self->_videoAsset, self->_videoAdjustments, v6];
  }
  v4 = ;

  return v4;
}

- (PFVideoAVObjectBuilder)initWithAsset:(id)asset audioMix:(id)mix videoComposition:(id)composition
{
  assetCopy = asset;
  mixCopy = mix;
  compositionCopy = composition;
  v15.receiver = self;
  v15.super_class = PFVideoAVObjectBuilder;
  v12 = [(PFVideoAVObjectBuilder *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->__finalAsset, asset);
    objc_storeStrong(&v13->__finalAudioMix, mix);
    objc_storeStrong(&v13->__finalVideoComposition, composition);
  }

  return v13;
}

- (PFVideoAVObjectBuilder)initWithVideoAsset:(id)asset videoAdjustments:(id)adjustments
{
  assetCopy = asset;
  adjustmentsCopy = adjustments;
  v14.receiver = self;
  v14.super_class = PFVideoAVObjectBuilder;
  v9 = [(PFVideoAVObjectBuilder *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_videoAsset, asset);
    v11 = [adjustmentsCopy copy];
    videoAdjustments = v10->_videoAdjustments;
    v10->_videoAdjustments = v11;
  }

  return v10;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)convertToOriginalTimeFromScaledTime:(SEL)time forExport:(id *)export
{
  *retstr = *export;
  v7 = [(PFVideoAVObjectBuilder *)self _getOrCreateTimeRangeMapperForExport:a5];
  if (v7)
  {
    v11 = *export;
    Seconds = CMTimeGetSeconds(&v11);
    *&Seconds = Seconds;
    [v7 originalTimeForScaledTime:Seconds];
    CMTimeMakeWithSeconds(retstr, v9, +[PFSlowMotionUtilities preferredTimeScale]);
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)convertToScaledTimeFromOriginalTime:(SEL)time forExport:(id *)export
{
  *retstr = *export;
  v7 = [(PFVideoAVObjectBuilder *)self _getOrCreateTimeRangeMapperForExport:a5];
  if (v7)
  {
    v11 = *export;
    Seconds = CMTimeGetSeconds(&v11);
    *&Seconds = Seconds;
    [v7 scaledTimeForOriginalTime:Seconds];
    CMTimeMakeWithSeconds(retstr, v9, +[PFSlowMotionUtilities preferredTimeScale]);
  }

  return result;
}

- ($E33AF59C8D263E738CA17719EFF006B3)slowMotionRampOutRangeForExport:(SEL)export
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x5010000000;
  v16 = &unk_1B36BE437;
  v5 = *(MEMORY[0x1E6960C98] + 16);
  v17 = *MEMORY[0x1E6960C98];
  v18 = v5;
  v19 = *(MEMORY[0x1E6960C98] + 32);
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 0;
  v6 = [(PFVideoAVObjectBuilder *)self _getOrCreateTimeRangeMapperForExport:a4];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__PFVideoAVObjectBuilder_SlowMotion__slowMotionRampOutRangeForExport___block_invoke;
  v10[3] = &unk_1E7B66218;
  v10[4] = v11;
  v10[5] = &v13;
  [v6 enumerateScaledRegionsUsingBlock:v10];
  v7 = v14;
  v8 = *(v14 + 3);
  *&retstr->var0.var0 = *(v14 + 2);
  *&retstr->var0.var3 = v8;
  *&retstr->var1.var1 = *(v7 + 4);

  _Block_object_dispose(v11, 8);
  _Block_object_dispose(&v13, 8);
  return result;
}

double __70__PFVideoAVObjectBuilder_SlowMotion__slowMotionRampOutRangeForExport___block_invoke(uint64_t a1, double a2, double a3, double a4, float a5, float a6)
{
  v6 = *(*(a1 + 32) + 8);
  if ((*(v6 + 24) & 1) == 0)
  {
    *(v6 + 24) = 1;
    CMTimeMakeWithSeconds(&v12, a5, +[PFSlowMotionUtilities preferredTimeScale]);
    *(*(*(a1 + 40) + 8) + 32) = v12;
    CMTimeMakeWithSeconds(&v11, (a6 - a5), +[PFSlowMotionUtilities preferredTimeScale]);
    result = *&v11.value;
    *(*(*(a1 + 40) + 8) + 56) = v11;
  }

  return result;
}

- ($E33AF59C8D263E738CA17719EFF006B3)slowMotionRampInRangeForExport:(SEL)export
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x5010000000;
  v16 = &unk_1B36BE437;
  v5 = *(MEMORY[0x1E6960C98] + 16);
  v17 = *MEMORY[0x1E6960C98];
  v18 = v5;
  v19 = *(MEMORY[0x1E6960C98] + 32);
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 0;
  v6 = [(PFVideoAVObjectBuilder *)self _getOrCreateTimeRangeMapperForExport:a4];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__PFVideoAVObjectBuilder_SlowMotion__slowMotionRampInRangeForExport___block_invoke;
  v10[3] = &unk_1E7B66218;
  v10[4] = v11;
  v10[5] = &v13;
  [v6 enumerateScaledRegionsUsingBlock:v10];
  v7 = v14;
  v8 = *(v14 + 3);
  *&retstr->var0.var0 = *(v14 + 2);
  *&retstr->var0.var3 = v8;
  *&retstr->var1.var1 = *(v7 + 4);

  _Block_object_dispose(v11, 8);
  _Block_object_dispose(&v13, 8);
  return result;
}

double __69__PFVideoAVObjectBuilder_SlowMotion__slowMotionRampInRangeForExport___block_invoke(uint64_t a1, double a2, float a3, float a4)
{
  v4 = *(*(a1 + 32) + 8);
  if ((*(v4 + 24) & 1) == 0)
  {
    *(v4 + 24) = 1;
    CMTimeMakeWithSeconds(&v10, a3, +[PFSlowMotionUtilities preferredTimeScale]);
    *(*(*(a1 + 40) + 8) + 32) = v10;
    CMTimeMakeWithSeconds(&v9, (a4 - a3), +[PFSlowMotionUtilities preferredTimeScale]);
    result = *&v9.value;
    *(*(*(a1 + 40) + 8) + 56) = v9;
  }

  return result;
}

- (id)_getOrCreateTimeRangeMapperForExport:(BOOL)export
{
  exportCopy = export;
  if (export)
  {
    v5 = 32;
  }

  else
  {
    v5 = 24;
  }

  v6 = *(&self->super.isa + v5);
  if (!v6)
  {
    videoAsset = self->_videoAsset;
    if (videoAsset)
    {
      [(AVAsset *)videoAsset duration];
    }

    else
    {
      v14 = 0uLL;
      *&v15 = 0;
    }

    Seconds = CMTimeGetSeconds(&v14);
    [(PFVideoAdjustments *)self->_videoAdjustments slowMotionRate];
    v11 = v10;
    videoAdjustments = self->_videoAdjustments;
    if (videoAdjustments)
    {
      [(PFVideoAdjustments *)videoAdjustments slowMotionTimeRange];
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
      v14 = 0u;
    }

    LODWORD(v9) = v11;
    v6 = [PFSlowMotionUtilities timeRangeMapperForSourceDuration:&v14 slowMotionRate:exportCopy slowMotionTimeRange:Seconds forExport:v9];
    objc_storeStrong((&self->super.isa + v5), v6);
  }

  return v6;
}

@end