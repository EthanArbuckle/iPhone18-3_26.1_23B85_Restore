@interface PTAssetReader
+ (void)initialize;
- (BOOL)startReadingFrames:(unint64_t)a3 atTime:(id *)a4 error:(id *)a5;
- (BOOL)startReadingFrames:(unint64_t)a3 error:(id *)a4;
- (BOOL)updateFormatPropertiesFromAsset:(id)a3;
- (PTAssetReader)initWithAsset:(id)a3;
- (PTGlobalCinematographyMetadata)globalCinematographyMetadata;
- (PTGlobalRenderingMetadata)globalRenderingMetadata;
- (PTGlobalStabilizationMetadata)globalStabilizationMetadata;
- (PTGlobalVideoHeaderMetadata)globalVideoHeaderMetadata;
- (id)nextFrame;
- (id)popComposedFrame;
- (unint64_t)estimatedFrameCount;
- (unint64_t)frameCount;
- (void)_decodeGlobalMetadata;
- (void)_decodeMetadata:(id)a3;
- (void)nextFrame;
- (void)pushComposedFrame:(id)a3;
- (void)stopReadingFrames;
@end

@implementation PTAssetReader

+ (void)initialize
{
  v2 = objc_opt_class();

  [PTSerialization registerSerializationClass:v2];
}

- (void)pushComposedFrame:(id)a3
{
  v5 = a3;
  v4 = self->composedFrames;
  objc_sync_enter(v4);
  [(NSMutableArray *)self->composedFrames addObject:v5];
  objc_sync_exit(v4);
}

- (id)popComposedFrame
{
  v3 = self->composedFrames;
  objc_sync_enter(v3);
  if ([(NSMutableArray *)self->composedFrames count])
  {
    v4 = [(NSMutableArray *)self->composedFrames objectAtIndexedSubscript:0];
    [(NSMutableArray *)self->composedFrames removeObjectAtIndex:0];
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(v3);

  return v4;
}

- (BOOL)updateFormatPropertiesFromAsset:(id)a3
{
  v4 = loadTracksWithMediaType(a3, *MEMORY[0x277CE5EA8]);
  v5 = [v4 firstObject];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  [v5 estimatedDataRate];
  self->_estimatedDataRate = v7;
  [v6 nominalFrameRate];
  if (v8 == 0.0)
  {
    CMTimeMake(&v23, 1, 30);
  }

  else
  {
    [v6 nominalFrameRate];
    CMTimeMakeWithSeconds(&v23, 1.0 / v9, 90000);
  }

  self->_frameDuration = v23;
  v10 = [v6 formatDescriptions];
  v11 = [v10 firstObject];

  if (v11)
  {
    self->_formatDescription = v11;
    v12 = CMFormatDescriptionGetExtensions(v11);
    v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277CC4D10]];
    YCbCrMatrix = self->_YCbCrMatrix;
    self->_YCbCrMatrix = v13;

    v15 = [v12 objectForKeyedSubscript:*MEMORY[0x277CC4C00]];
    colorPrimaries = self->_colorPrimaries;
    self->_colorPrimaries = v15;

    v17 = [v12 objectForKeyedSubscript:*MEMORY[0x277CC4CC0]];
    transferFunction = self->_transferFunction;
    self->_transferFunction = v17;

    if (!self->_transferFunction)
    {
      v19 = [v12 objectForKeyedSubscript:*MEMORY[0x277CC4C90]];
      v20 = self->_transferFunction;
      self->_transferFunction = v19;
    }

    v21 = 1;
  }

  else
  {
LABEL_9:
    v21 = 0;
  }

  return v21;
}

- (PTAssetReader)initWithAsset:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PTAssetReader;
  v6 = [(PTAssetReader *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_asset, a3);
    if ([(PTAssetReader *)v7 updateFormatPropertiesFromAsset:v5])
    {
      [(PTAssetReader *)v7 stopReadingFrames];
    }

    else
    {

      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)startReadingFrames:(unint64_t)a3 error:(id *)a4
{
  v5 = *MEMORY[0x277CC0898];
  v6 = *(MEMORY[0x277CC0898] + 16);
  return [(PTAssetReader *)self startReadingFrames:a3 atTime:&v5 error:a4];
}

- (BOOL)startReadingFrames:(unint64_t)a3 atTime:(id *)a4 error:(id *)a5
{
  v7 = a3;
  v8 = self;
  v89 = *MEMORY[0x277D85DE8];
  [(PTAssetReader *)self stopReadingFrames];
  v9 = MEMORY[0x277CE6410];
  v10 = [(PTAssetReader *)v8 asset];
  v11 = [v9 assetReaderWithAsset:v10 error:a5];
  assetReader = v8->assetReader;
  v8->assetReader = v11;

  v13 = v8->assetReader;
  if (v13)
  {
    v14 = [(AVAssetReader *)v13 asset];
    v15 = loadTracksWithMediaType(v14, *MEMORY[0x277CE5EA8]);
    memset(&range2, 0, sizeof(range2));
    v85 = 0u;
    v16 = [v15 countByEnumeratingWithState:&range2 objects:&range1 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = a5;
      v19 = v7;
      v20 = *range2.start.epoch;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*range2.start.epoch != v20)
          {
            objc_enumerationMutation(v15);
          }

          v22 = *(*&range2.start.timescale + 8 * i);
          if ([v22 isEnabled])
          {
            v7 = v19;
            a5 = v18;
            v23 = v22;
            goto LABEL_13;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&range2 objects:&range1 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }

      v7 = v19;
      a5 = v18;
    }

    v23 = 0;
LABEL_13:

    if (v23)
    {
      if (v7)
      {
        v79 = a4;
        v80 = v8;
        v81 = v23;
        v24 = [(AVAssetReader *)v8->assetReader asset];
        v25 = loadTracksWithMediaType(v24, *MEMORY[0x277CE5E70]);
        memset(&range2, 0, sizeof(range2));
        v85 = 0u;
        v26 = [v25 countByEnumeratingWithState:&range2 objects:&range1 count:16];
        if (v26)
        {
          v27 = v26;
          v77 = v24;
          v78 = v7;
          v28 = *range2.start.epoch;
          while (2)
          {
            for (j = 0; j != v27; ++j)
            {
              if (*range2.start.epoch != v28)
              {
                objc_enumerationMutation(v25);
              }

              v30 = *(*&range2.start.timescale + 8 * j);
              if ([v30 isEnabled])
              {
                v31 = [v30 formatDescriptions];
                v32 = [v31 firstObject];

                if (v32)
                {
                  v33 = CMMetadataFormatDescriptionGetIdentifiers(v32);
                  v34 = [@"mdta/" stringByAppendingString:@"com.apple.quicktime.cinematic-video.cinematography"];
                  v35 = [@"mdta/" stringByAppendingString:@"com.apple.quicktime.cinematography-dictionary"];
                  if ([v33 containsObject:v34] & 1) != 0 || (objc_msgSend(v33, "containsObject:", v35))
                  {
                    v36 = v30;

                    goto LABEL_31;
                  }
                }
              }
            }

            v27 = [v25 countByEnumeratingWithState:&range2 objects:&range1 count:16];
            if (v27)
            {
              continue;
            }

            break;
          }

          v36 = 0;
LABEL_31:
          v7 = v78;
          v24 = v77;
        }

        else
        {
          v36 = 0;
        }

        v8 = v80;
        if (!v36)
        {
          v74 = MEMORY[0x277CCACA8];
          v75 = [(AVAssetReader *)v80->assetReader asset];
          v76 = [v74 stringWithFormat:@"Couldn't find metadata track in asset: %@", v75];
          *a5 = AssetReaderError(v76);

          v37 = 0;
          v23 = v81;
          goto LABEL_65;
        }

        v23 = v81;
        [v81 timeRange];
        [v36 timeRange];
        if (!CMTimeRangeEqual(&range1, &range2))
        {
          v40 = _PTLogSystem();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            [v36 timeRange];
            v41 = *MEMORY[0x277CBECE8];
            range1 = range2;
            v42 = CMTimeRangeCopyDescription(v41, &range1);
            [v81 timeRange];
            range1 = range2;
            v43 = CMTimeRangeCopyDescription(v41, &range1);
            LODWORD(range1.start.value) = 138412546;
            *(&range1.start.value + 4) = v42;
            LOWORD(range1.start.flags) = 2112;
            *(&range1.start.flags + 2) = v43;
            _os_log_impl(&dword_2243FB000, v40, OS_LOG_TYPE_INFO, "WARNING: meta timeRange (%@) not equal to vide timeRange (%@)", &range1, 0x16u);
          }
        }

        v44 = [objc_alloc(MEMORY[0x277CE6430]) initWithTrack:v36 outputSettings:0];
        v45 = [objc_alloc(MEMORY[0x277CE6420]) initWithAssetReaderTrackOutput:v44];
        metadataAdaptor = v80->metadataAdaptor;
        v80->metadataAdaptor = v45;

        [(AVAssetReader *)v80->assetReader addOutput:v44];
        a4 = v79;
      }

      if ((v7 & 6) == 0)
      {
LABEL_57:
        if (a4->var2)
        {
          *&range1.start.value = *&a4->var0;
          range1.start.epoch = a4->var3;
          *&range2.start.value = *MEMORY[0x277CC08B0];
          range2.start.epoch = *(MEMORY[0x277CC08B0] + 16);
          CMTimeRangeMake(&v82, &range1.start, &range2.start);
          v70 = v8->assetReader;
          range1 = v82;
          [(AVAssetReader *)v70 setTimeRange:&range1];
        }

        if ([(AVAssetReader *)v8->assetReader startReading])
        {
          v37 = 1;
        }

        else
        {
          [(AVAssetReader *)v8->assetReader error];
          *a5 = v37 = 0;
        }

        goto LABEL_65;
      }

      v47 = objc_opt_new();
      composedFrames = v8->composedFrames;
      v8->composedFrames = v47;

      v49 = [(AVAssetReader *)v8->assetReader asset];
      v50 = loadTracksWithMediaType(v49, *MEMORY[0x277CE5E50]);
      memset(&range2, 0, sizeof(range2));
      v85 = 0u;
      v51 = [v50 countByEnumeratingWithState:&range2 objects:&range1 count:16];
      if (v51)
      {
        v52 = v51;
        v53 = *range2.start.epoch;
        while (2)
        {
          for (k = 0; k != v52; ++k)
          {
            if (*range2.start.epoch != v53)
            {
              objc_enumerationMutation(v50);
            }

            v55 = *(*&range2.start.timescale + 8 * k);
            if ([v55 isEnabled])
            {
              v56 = v55;
              goto LABEL_50;
            }
          }

          v52 = [v50 countByEnumeratingWithState:&range2 objects:&range1 count:16];
          if (v52)
          {
            continue;
          }

          break;
        }
      }

      v56 = 0;
LABEL_50:

      if (v56)
      {
        v57 = a4;
        v58 = [v23 trackID];
        v59 = [v56 trackID];
        v60 = objc_alloc_init(PTAssetReaderCompositionInstruction);
        *&range1.start.value = *MEMORY[0x277CC08F0];
        range1.start.epoch = *(MEMORY[0x277CC08F0] + 16);
        *&range2.start.value = *MEMORY[0x277CC08B0];
        range2.start.epoch = *(MEMORY[0x277CC08B0] + 16);
        CMTimeRangeMake(&v83, &range1.start, &range2.start);
        range1 = v83;
        [(PTAssetReaderCompositionInstruction *)v60 setTimeRange:&range1];
        [(PTAssetReaderCompositionInstruction *)v60 setVideTrackID:v58];
        [(PTAssetReaderCompositionInstruction *)v60 setAuxvTrackID:v59];
        [(PTAssetReaderCompositionInstruction *)v60 setAssetReader:v8];
        [v23 timeRange];
        [v56 timeRange];
        if (!CMTimeRangeEqual(&range1, &range2))
        {
          v61 = _PTLogSystem();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
          {
            [v56 timeRange];
            v62 = StringFromTimeRange(&range1);
            [v23 timeRange];
            v63 = StringFromTimeRange(&range1);
            LODWORD(range1.start.value) = 138412546;
            *(&range1.start.value + 4) = v62;
            LOWORD(range1.start.flags) = 2112;
            *(&range1.start.flags + 2) = v63;
            _os_log_impl(&dword_2243FB000, v61, OS_LOG_TYPE_INFO, "WARNING: auxv timeRange (%@) not equal to vide timeRange (%@)", &range1, 0x16u);
          }
        }

        v64 = [MEMORY[0x277CE6568] videoComposition];
        videoComposition = v8->videoComposition;
        v8->videoComposition = v64;

        [(AVMutableVideoComposition *)v8->videoComposition setCustomVideoCompositorClass:objc_opt_class()];
        [(AVMutableVideoComposition *)v8->videoComposition setSourceTrackIDForFrameTiming:v58];
        [v23 naturalSize];
        [(AVMutableVideoComposition *)v8->videoComposition setRenderSize:?];
        *&range1.start.value = *&v8->_frameDuration.value;
        range1.start.epoch = v8->_frameDuration.epoch;
        [(AVMutableVideoComposition *)v8->videoComposition setFrameDuration:&range1];
        v87 = v60;
        v66 = [MEMORY[0x277CBEA60] arrayWithObjects:&v87 count:1];
        [(AVMutableVideoComposition *)v8->videoComposition setInstructions:v66];

        v86[0] = v23;
        v86[1] = v56;
        v67 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:2];
        v68 = [objc_alloc(MEMORY[0x277CE6438]) initWithVideoTracks:v67 videoSettings:0];
        videoCompositionOutput = v8->videoCompositionOutput;
        v8->videoCompositionOutput = v68;

        [(AVAssetReaderVideoCompositionOutput *)v8->videoCompositionOutput setVideoComposition:v8->videoComposition];
        [(AVAssetReaderVideoCompositionOutput *)v8->videoCompositionOutput setAlwaysCopiesSampleData:0];
        if ([(AVAssetReader *)v8->assetReader canAddOutput:v8->videoCompositionOutput])
        {
          [(AVAssetReader *)v8->assetReader addOutput:v8->videoCompositionOutput];

          a4 = v57;
          goto LABEL_57;
        }

        *a5 = AssetReaderError(@"Cannot add videoCompositionOutput to assetReader");

        goto LABEL_64;
      }

      v71 = MEMORY[0x277CCACA8];
      v39 = [(AVAssetReader *)v8->assetReader asset];
      [v71 stringWithFormat:@"Couldn't find disparity track in asset: %@", v39];
    }

    else
    {
      v38 = MEMORY[0x277CCACA8];
      v39 = [(AVAssetReader *)v8->assetReader asset];
      [v38 stringWithFormat:@"Couldn't find video track in asset: %@", v39];
    }
    v72 = ;
    *a5 = AssetReaderError(v72);

LABEL_64:
    v37 = 0;
LABEL_65:

    return v37;
  }

  return 0;
}

- (void)stopReadingFrames
{
  assetReader = self->assetReader;
  if (assetReader)
  {
    [(AVAssetReader *)assetReader cancelReading];
    v4 = self->assetReader;
    self->assetReader = 0;
  }

  metadataAdaptor = self->metadataAdaptor;
  self->metadataAdaptor = 0;

  videoComposition = self->videoComposition;
  self->videoComposition = 0;

  videoCompositionOutput = self->videoCompositionOutput;
  self->videoCompositionOutput = 0;

  composedFrames = self->composedFrames;
  self->composedFrames = 0;

  self->lastDecodedFrameIndex = -1;
}

- (unint64_t)estimatedFrameCount
{
  v3 = [(PTAssetReader *)self asset];
  v4 = loadTracksWithMediaType(v3, *MEMORY[0x277CE5EA8]);

  v5 = [v4 firstObject];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [(PTAssetReader *)self asset];
  v7 = v6;
  if (v6)
  {
    [v6 duration];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  Seconds = CMTimeGetSeconds(&time);
  [v5 nominalFrameRate];
  v10 = Seconds * v9;

  v11 = vcvtad_u64_f64(v10);
  if (!v11)
  {
LABEL_6:
    v12 = _PTLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(PTAssetReader *)v12 estimatedFrameCount];
    }

    v11 = 0;
  }

  return v11;
}

- (unint64_t)frameCount
{
  result = self->_cachedAccurateFrameCount;
  if (!result)
  {
    [(PTAssetReader *)self startReadingFrames:4];
    while (1)
    {
      v4 = [(PTAssetReader *)self nextFrame];

      if (!v4)
      {
        break;
      }

      ++self->_cachedAccurateFrameCount;
    }

    [(PTAssetReader *)self stopReadingFrames];
    return self->_cachedAccurateFrameCount;
  }

  return result;
}

- (PTGlobalCinematographyMetadata)globalCinematographyMetadata
{
  globalCinematographyMetadata = self->_globalCinematographyMetadata;
  if (!globalCinematographyMetadata)
  {
    [(PTAssetReader *)self _decodeGlobalMetadata];
    globalCinematographyMetadata = self->_globalCinematographyMetadata;
  }

  return globalCinematographyMetadata;
}

- (PTGlobalRenderingMetadata)globalRenderingMetadata
{
  globalRenderingMetadata = self->_globalRenderingMetadata;
  if (!globalRenderingMetadata)
  {
    [(PTAssetReader *)self _decodeGlobalMetadata];
    globalRenderingMetadata = self->_globalRenderingMetadata;
  }

  return globalRenderingMetadata;
}

- (PTGlobalStabilizationMetadata)globalStabilizationMetadata
{
  globalStabilizationMetadata = self->_globalStabilizationMetadata;
  if (!globalStabilizationMetadata)
  {
    [(PTAssetReader *)self _decodeGlobalMetadata];
    globalStabilizationMetadata = self->_globalStabilizationMetadata;
  }

  return globalStabilizationMetadata;
}

- (PTGlobalVideoHeaderMetadata)globalVideoHeaderMetadata
{
  globalVideoHeaderMetadata = self->_globalVideoHeaderMetadata;
  if (!globalVideoHeaderMetadata)
  {
    [(PTAssetReader *)self _decodeGlobalMetadata];
    globalVideoHeaderMetadata = self->_globalVideoHeaderMetadata;
  }

  return globalVideoHeaderMetadata;
}

- (void)_decodeGlobalMetadata
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = [(PTAssetReader *)self asset];
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy_;
  v48 = __Block_byref_object_dispose_;
  v49 = 0;
  v4 = dispatch_semaphore_create(0);
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __loadMetadataForFormat_block_invoke;
  v40[3] = &unk_278522F28;
  v41 = @"com.apple.quicktime.mdta";
  v43 = &v44;
  v5 = v4;
  v42 = v5;
  [v3 loadMetadataForFormat:@"com.apple.quicktime.mdta" completionHandler:v40];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = v45[5];

  _Block_object_dispose(&v44, 8);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v36 objects:v50 count:16];
  if (v8)
  {
    v9 = *v37;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v37 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v36 + 1) + 8 * i);
        v12 = [v11 key];
        v13 = [v12 isEqualToString:@"com.apple.quicktime.cinematic-video"];

        if (v13)
        {
          v15 = [v11 value];
          v35 = 0;
          v16 = [PTGlobalVideoMetadata deserializeMetadataWithType:2 fromGlobalMetadata:v15 error:&v35];
          v17 = v35;
          globalRenderingMetadata = self->_globalRenderingMetadata;
          self->_globalRenderingMetadata = v16;

          if (v17)
          {
            v19 = _PTLogSystem();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              [PTAssetReader _decodeGlobalMetadata];
            }
          }

          v34 = v17;
          v20 = [PTGlobalVideoMetadata deserializeMetadataWithType:3 fromGlobalMetadata:v15 error:&v34];
          v21 = v34;

          globalStabilizationMetadata = self->_globalStabilizationMetadata;
          self->_globalStabilizationMetadata = v20;

          if (v21)
          {
            v23 = _PTLogSystem();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              [PTAssetReader _decodeGlobalMetadata];
            }
          }

          v33 = v21;
          v24 = [PTGlobalVideoMetadata deserializeMetadataWithType:4 fromGlobalMetadata:v15 error:&v33];
          v25 = v33;

          globalCinematographyMetadata = self->_globalCinematographyMetadata;
          self->_globalCinematographyMetadata = v24;

          if (v25)
          {
            v27 = _PTLogSystem();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              [PTAssetReader _decodeGlobalMetadata];
            }
          }

          v32 = v25;
          v28 = [PTGlobalVideoMetadata deserializeMetadataWithType:1 fromGlobalMetadata:v15 error:&v32];
          v29 = v32;

          globalVideoHeaderMetadata = self->_globalVideoHeaderMetadata;
          self->_globalVideoHeaderMetadata = v28;

          if (v29)
          {
            v31 = _PTLogSystem();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              [PTAssetReader _decodeGlobalMetadata];
            }
          }

          v14 = v7;
          goto LABEL_28;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v36 objects:v50 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = _PTLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [(PTAssetReader *)v14 _decodeGlobalMetadata];
  }

LABEL_28:
}

- (void)_decodeMetadata:(id)a3
{
  v54[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v54[0] = @"com.apple.quicktime.camera-dictionary";
  v54[1] = @"com.apple.quicktime.cinematography-dictionary";
  [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:2];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v4 = v47 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v45;
    v42 = v4;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v45 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v44 + 1) + 8 * i);
        v10 = [v3 objectForKeyedSubscript:v9];
        if (v10)
        {
          v11 = v10;
          v12 = [v3 objectForKeyedSubscript:v9];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            v14 = [v3 objectForKeyedSubscript:v9];
            objc_opt_class();
            v15 = objc_opt_isKindOfClass();

            if (v15)
            {
              v16 = [v3 objectForKeyedSubscript:v9];
              v52[0] = objc_opt_class();
              v52[1] = objc_opt_class();
              v52[2] = objc_opt_class();
              v52[3] = objc_opt_class();
              v52[4] = objc_opt_class();
              v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:5];
              v18 = MEMORY[0x277CCAAC8];
              v19 = [MEMORY[0x277CBEB98] setWithArray:v17];
              v43 = 0;
              v20 = [v18 unarchivedObjectOfClasses:v19 fromData:v16 error:&v43];
              v21 = v43;

              if (v21)
              {
                v22 = _PTLogSystem();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v49 = v9;
                  v50 = 2112;
                  v51 = v21;
                  _os_log_error_impl(&dword_2243FB000, v22, OS_LOG_TYPE_ERROR, "ERROR: Failed to decode metadata dictionary for %@. Decoder failed: %@", buf, 0x16u);
                }
              }

              else
              {
                [v3 setObject:v20 forKeyedSubscript:v9];
              }

              v4 = v42;
            }

            else
            {
              v21 = _PTLogSystem();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v49 = v9;
                _os_log_error_impl(&dword_2243FB000, v21, OS_LOG_TYPE_ERROR, "ERROR: Failed to decode metadata dictionary for %@. Value is not NSData.", buf, 0xCu);
              }
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v44 objects:v53 count:16];
    }

    while (v6);
  }

  v23 = [v3 objectForKeyedSubscript:@"com.apple.quicktime.cinematic-video.rendering"];

  if (v23)
  {
    v24 = [v3 objectForKeyedSubscript:@"com.apple.quicktime.cinematic-video.rendering"];
    v25 = [(PTAssetReader *)self globalRenderingMetadata];
    v26 = [v25 majorVersion];
    v27 = [(PTAssetReader *)self globalRenderingMetadata];
    v28 = +[PTTimedRenderingMetadata objectFromData:withMajorVersion:minorVersion:](PTTimedRenderingMetadata, "objectFromData:withMajorVersion:minorVersion:", v24, v26, [v27 minorVersion]);

    if (v28)
    {
      [v3 setObject:v28 forKeyedSubscript:@"com.apple.quicktime.cinematic-video.rendering"];
    }

    else
    {
      v29 = _PTLogSystem();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [(PTAssetReader *)v3 _decodeMetadata:?];
      }
    }
  }

  v30 = [v3 objectForKeyedSubscript:@"com.apple.quicktime.cinematic-video.stabilization"];

  if (v30)
  {
    v31 = [v3 objectForKeyedSubscript:@"com.apple.quicktime.cinematic-video.stabilization"];
    v32 = [(PTAssetReader *)self globalStabilizationMetadata];
    v33 = [v32 majorVersion];
    v34 = [(PTAssetReader *)self globalStabilizationMetadata];
    v35 = +[PTTimedStabilizationMetadata objectFromData:withMajorVersion:minorVersion:](PTTimedStabilizationMetadata, "objectFromData:withMajorVersion:minorVersion:", v31, v33, [v34 minorVersion]);

    if (v35)
    {
      [v3 setObject:v35 forKeyedSubscript:@"com.apple.quicktime.cinematic-video.stabilization"];
    }

    else
    {
      v36 = _PTLogSystem();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        [(PTAssetReader *)v3 _decodeMetadata:?];
      }
    }
  }

  v37 = [v3 objectForKeyedSubscript:@"com.apple.quicktime.cinematic-video.cinematography"];

  if (v37)
  {
    v38 = [v3 objectForKeyedSubscript:@"com.apple.quicktime.cinematic-video.cinematography"];
    v39 = [PTSerialization objectFromData:v38 error:0];

    if (v39)
    {
      [v3 setObject:v39 forKeyedSubscript:@"com.apple.quicktime.cinematic-video.cinematography"];
    }

    else
    {
      v40 = _PTLogSystem();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        [(PTAssetReader *)v3 _decodeMetadata:?];
      }
    }
  }
}

- (id)nextFrame
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  ++self->lastDecodedFrameIndex;
  v4 = objc_opt_new();
  [v4 setIndex:self->lastDecodedFrameIndex];
  metadataAdaptor = self->metadataAdaptor;
  if (metadataAdaptor)
  {
    v6 = [(AVAssetReaderOutputMetadataAdaptor *)metadataAdaptor nextTimedMetadataGroup];
    if (v6)
    {
      v32 = self;
      v33 = v4;
      v34 = v3;
      v7 = [MEMORY[0x277CBEB38] dictionary];
      v55 = *MEMORY[0x277CC0898];
      v8 = *(MEMORY[0x277CC0898] + 12);
      v56 = *(MEMORY[0x277CC0898] + 8);
      v9 = *(MEMORY[0x277CC0898] + 16);
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v31 = v6;
      v10 = [v6 items];
      v11 = [v10 countByEnumeratingWithState:&v50 objects:v54 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v51;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v51 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v50 + 1) + 8 * i);
            if (v8)
            {
              if (v15)
              {
                [*(*(&v50 + 1) + 8 * i) time];
              }

              else
              {
                memset(time1, 0, 24);
              }

              time2.value = v55;
              time2.timescale = v56;
              time2.flags = v8;
              time2.epoch = v9;
              if (CMTimeCompare(time1, &time2))
              {
                NSLog(&cfstr_WarningMetadat.isa);
              }
            }

            else
            {
              if (v15)
              {
                [*(*(&v50 + 1) + 8 * i) time];
                v8 = *&time1[12];
                v9 = *&time1[16];
              }

              else
              {
                v9 = 0;
                v8 = 0;
                memset(time1, 0, 24);
              }

              v55 = *time1;
              v56 = *&time1[8];
            }

            v16 = [v15 value];
            v17 = [v15 key];
            [v7 setObject:v16 forKeyedSubscript:v17];
          }

          v12 = [v10 countByEnumeratingWithState:&v50 objects:v54 count:16];
        }

        while (v12);
      }

      self = v32;
      [(PTAssetReader *)v32 _decodeMetadata:v7];
      v4 = v33;
      [v33 setMetadata:v7];
      *time1 = v55;
      *&time1[8] = __PAIR64__(v8, v56);
      *&time1[16] = v9;
      [v33 setMetadataTime:time1];
      if ((v8 & 1) == 0)
      {
        NSLog(&cfstr_WarningMetadat_0.isa);
      }

      v3 = v34;
      v6 = v31;
    }

    else if (!self->videoCompositionOutput)
    {

      v4 = 0;
    }
  }

  videoCompositionOutput = self->videoCompositionOutput;
  if (!videoCompositionOutput)
  {
    goto LABEL_46;
  }

  v19 = [(AVAssetReaderVideoCompositionOutput *)videoCompositionOutput copyNextSampleBuffer];
  if (!v19)
  {
    v21 = v4;
    v4 = 0;
LABEL_45:

LABEL_46:
    v4 = v4;
    v26 = v4;
    goto LABEL_47;
  }

  CFRelease(v19);
  v20 = [(PTAssetReader *)self popComposedFrame];
  if (v20)
  {
    v21 = v20;
    [v20 time];
    *time1 = v47;
    *&time1[16] = v48;
    [v4 setTime:time1];
    [v4 setColorBuffer:{CVPixelBufferRetain(objc_msgSend(v21, "colorBuffer"))}];
    [v21 time];
    *time1 = v45;
    *&time1[16] = v46;
    [v4 setColorBufferTime:time1];
    v22 = [(AVAssetReaderVideoCompositionOutput *)self->videoCompositionOutput videoTracks];
    v23 = [v22 objectAtIndexedSubscript:0];
    v24 = v23;
    if (v23)
    {
      [v23 preferredTransform];
    }

    else
    {
      v43 = 0u;
      v44 = 0u;
      v42 = 0u;
    }

    *time1 = v42;
    *&time1[16] = v43;
    v41 = v44;
    [v4 setColorBufferPreferredTransform:time1];

    if ([v21 auxBuffer])
    {
      if (CVPixelBufferGetPixelFormatType([v21 auxBuffer]) == 1751411059)
      {
        [v4 setDisparityBuffer:{CVPixelBufferRetain(objc_msgSend(v21, "auxBuffer"))}];
        [v21 time];
        *time1 = v38;
        *&time1[16] = v39;
        [v4 setDisparityBufferTime:time1];
        v27 = [(AVAssetReaderVideoCompositionOutput *)self->videoCompositionOutput videoTracks];
        v28 = [v27 objectAtIndexedSubscript:1];
        v29 = v28;
        if (v28)
        {
          [v28 preferredTransform];
        }

        else
        {
          v36 = 0u;
          v37 = 0u;
          v35 = 0u;
        }

        *time1 = v35;
        *&time1[16] = v36;
        v41 = v37;
        [v4 setDisparityBufferPreferredTransform:time1];
      }

      else
      {
        v27 = _PTLogSystem();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [(PTAssetReader *)v4 nextFrame];
        }
      }
    }

    goto LABEL_45;
  }

  v25 = _PTLogSystem();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    [(PTAssetReader *)v4 nextFrame];
  }

  v26 = 0;
LABEL_47:

  objc_autoreleasePoolPop(v3);
  return v26;
}

- (void)_decodeMetadata:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKeyedSubscript:a2];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_4(&dword_2243FB000, v3, v4, "Failed to deserialize timed rendering metadata: %@", v5, v6, v7, v8, v9);
}

- (void)_decodeMetadata:(void *)a1 .cold.2(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKeyedSubscript:a2];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_4(&dword_2243FB000, v3, v4, "Failed to deserialize timed stabilization metadata: %@", v5, v6, v7, v8, v9);
}

- (void)_decodeMetadata:(void *)a1 .cold.3(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKeyedSubscript:a2];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_4(&dword_2243FB000, v3, v4, "Failed to deserialize cinematography metadata: %@", v5, v6, v7, v8, v9);
}

- (void)nextFrame
{
  [a1 index];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_4(&dword_2243FB000, v1, v2, "Failed to get composed frame %lu from custom compositor", v3, v4, v5, v6, v7);
}

@end