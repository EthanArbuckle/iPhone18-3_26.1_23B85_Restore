@interface _ISPlayerItemChefOperation
- ($542DF6A934A12223D4D27E794AA667E2)trimmedTimeRange;
- (_ISPlayerItemChefOperation)initWithAsset:(id)asset trimmedTimeRange:(id *)range photoTime:(id *)time includeAudio:(BOOL)audio includeVideo:(BOOL)video resultHandler:(id)handler;
- (void)_handleValuesDidLoad;
- (void)_preparePlayerItem;
- (void)main;
@end

@implementation _ISPlayerItemChefOperation

- ($542DF6A934A12223D4D27E794AA667E2)trimmedTimeRange
{
  v3 = *&self[6].var1.var1;
  *&retstr->var0.var0 = *&self[6].var0.var3;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[7].var0.var0;
  return self;
}

- (void)_preparePlayerItem
{
  v100 = *MEMORY[0x277D85DE8];
  asset = [(_ISPlayerItemChefOperation *)self asset];
  includeAudio = [(_ISPlayerItemChefOperation *)self includeAudio];
  resultHandler = [(_ISPlayerItemChefOperation *)self resultHandler];
  v92 = 0;
  v6 = [asset statusOfValueForKey:@"tracks" error:&v92];
  v7 = v92;
  if (v6 == 3)
  {
    v8 = ISGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.start.value) = 134218242;
      *(&buf.start.value + 4) = 3;
      LOWORD(buf.start.flags) = 2112;
      *(&buf.start.flags + 2) = v7;
      _os_log_error_impl(&dword_25E667000, v8, OS_LOG_TYPE_ERROR, "Property loading status:%ld error:%@", &buf, 0x16u);
    }

    v9 = resultHandler[2];
    *&buf.start.value = *MEMORY[0x277CC0898];
    buf.start.epoch = *(MEMORY[0x277CC0898] + 16);
    v9(resultHandler, 0, 0, &buf, v7);
  }

  else
  {
    v10 = *MEMORY[0x277CE5EA8];
    v11 = [MEMORY[0x277D3B450] tracksWithMediaType:*MEMORY[0x277CE5EA8] forAsset:asset];
    memset(&buf, 0, sizeof(buf));
    firstObject = [v11 firstObject];
    v13 = firstObject;
    v70 = resultHandler;
    if (firstObject)
    {
      [firstObject timeRange];
    }

    else
    {
      memset(&buf, 0, sizeof(buf));
    }

    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v14 = v11;
    v15 = [v14 countByEnumeratingWithState:&v88 objects:v98 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v89;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v89 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v88 + 1) + 8 * i);
          if (v19)
          {
            [v19 timeRange];
          }

          else
          {
            memset(&otherRange, 0, sizeof(otherRange));
          }

          range = buf;
          CMTimeRangeGetUnion(&v97, &range, &otherRange);
          buf = v97;
        }

        v16 = [v14 countByEnumeratingWithState:&v88 objects:v98 count:16];
      }

      while (v16);
    }

    v20 = objc_alloc_init(MEMORY[0x277CE6548]);
    v85 = v7;
    v97 = buf;
    v68 = *MEMORY[0x277CC0898];
    *&otherRange.start.value = *MEMORY[0x277CC0898];
    v67 = *(MEMORY[0x277CC0898] + 16);
    otherRange.start.epoch = v67;
    v71 = asset;
    v21 = [MEMORY[0x277D3B450] insertTimeRange:&v97 ofAsset:asset atTime:&otherRange intoMutableComposition:v20 error:&v85];
    v22 = v85;

    v23 = [v20 tracksWithMediaType:v10];
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = __48___ISPlayerItemChefOperation__preparePlayerItem__block_invoke;
    v83[3] = &unk_279A29F38;
    v24 = v14;
    v84 = v24;
    [v23 enumerateObjectsUsingBlock:v83];

    v69 = v24;
    if (v21)
    {
      v66 = v22;
      v25 = MEMORY[0x277CE65B0];
      v26 = [v20 copy];
      v27 = [v25 playerItemWithAsset:v26];

      LODWORD(v28) = 2139095039;
      [v27 setSpeedThresholdForIFrameOnlyPlayback:v28];
      [v27 setVideoApertureMode:*MEMORY[0x277CE62A8]];
      if (includeAudio)
      {
        flags = buf.duration.flags;
        if ((buf.duration.flags & 0x1D) == 1)
        {
          value = buf.duration.value;
          if (buf.duration.value >= 1)
          {
            v62 = v27;
            v64 = v20;
            timescale = buf.duration.timescale;
            epoch = buf.duration.epoch;
            v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
            memset(&otherRange, 0, 24);
            CMTimeMakeWithSeconds(&otherRange.start, 0.3, 600);
            v97.start.value = value;
            v97.start.timescale = timescale;
            v97.start.flags = flags;
            v97.start.epoch = epoch;
            CMTimeMultiplyByRatio(&range.start, &v97.start, 1, 2);
            time1 = otherRange.start;
            CMTimeMinimum(&v97.start, &time1, &range.start);
            otherRange.start.epoch = v97.start.epoch;
            *&otherRange.start.value = *&v97.start.value;
            memset(&range, 0, 24);
            v97.start.value = value;
            v97.start.timescale = timescale;
            v97.start.flags = flags;
            v97.start.epoch = epoch;
            time1 = otherRange.start;
            CMTimeSubtract(&range.start, &v97.start, &time1);
            v78 = 0u;
            v79 = 0u;
            v80 = 0u;
            v81 = 0u;
            v34 = [MEMORY[0x277D3B450] tracksWithMediaType:*MEMORY[0x277CE5E48] forAsset:v71];
            v35 = [v34 countByEnumeratingWithState:&v78 objects:v96 count:16];
            if (v35)
            {
              v36 = v35;
              v37 = *v79;
              v72 = *MEMORY[0x277CC08F0];
              v38 = *(MEMORY[0x277CC08F0] + 16);
              do
              {
                for (j = 0; j != v36; ++j)
                {
                  if (*v79 != v37)
                  {
                    objc_enumerationMutation(v34);
                  }

                  v40 = [MEMORY[0x277CE6540] audioMixInputParametersWithTrack:{*(*(&v78 + 1) + 8 * j), v62}];
                  *&time1.value = v72;
                  time1.epoch = v38;
                  duration = otherRange.start;
                  CMTimeRangeMake(&v97, &time1, &duration);
                  LODWORD(v41) = 1.0;
                  [v40 setVolumeRampFromStartVolume:&v97 toEndVolume:0.0 timeRange:v41];
                  time1 = range.start;
                  duration = otherRange.start;
                  CMTimeRangeMake(&v97, &time1, &duration);
                  LODWORD(v42) = 1.0;
                  [v40 setVolumeRampFromStartVolume:&v97 toEndVolume:v42 timeRange:0.0];
                  [v33 addObject:v40];
                }

                v36 = [v34 countByEnumeratingWithState:&v78 objects:v96 count:16];
              }

              while (v36);
            }

            v43 = objc_alloc_init(MEMORY[0x277CE6538]);
            [v43 setInputParameters:v33];
            [v62 setAudioMix:v43];

            v27 = v62;
            v20 = v64;
          }
        }
      }

      if ([(_ISPlayerItemChefOperation *)self isCancelled])
      {
        resultHandler = v70;
        v44 = v70[2];
        *&v97.start.value = v68;
        v97.start.epoch = v67;
        v44(v70, 0, 0, &v97, 0);
        asset = v71;
        v22 = v66;
      }

      else
      {
        v65 = v20;
        v47 = *MEMORY[0x277CBED28];
        v48 = *MEMORY[0x277CD6378];
        v94[0] = *MEMORY[0x277CD6380];
        v94[1] = v48;
        v49 = *MEMORY[0x277CD6388];
        v95[0] = v47;
        v95[1] = v49;
        v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v95 forKeys:v94 count:2];
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v63 = v27;
        tracks = [v27 tracks];
        v52 = [tracks countByEnumeratingWithState:&v73 objects:v93 count:16];
        if (v52)
        {
          v53 = v52;
          v54 = *v74;
          do
          {
            for (k = 0; k != v53; ++k)
            {
              if (*v74 != v54)
              {
                objc_enumerationMutation(tracks);
              }

              v56 = *(*(&v73 + 1) + 8 * k);
              assetTrack = [v56 assetTrack];
              mediaType = [assetTrack mediaType];
              v59 = [mediaType isEqualToString:v10];

              if (v59)
              {
                [v56 setVideoEnhancementFilterOptions:v50];
              }
            }

            v53 = [tracks countByEnumeratingWithState:&v73 objects:v93 count:16];
          }

          while (v53);
        }

        if (_preparePlayerItem_onceToken != -1)
        {
          dispatch_once(&_preparePlayerItem_onceToken, &__block_literal_global_61);
        }

        resultHandler = v70;
        asset = v71;
        v20 = v65;
        v22 = v66;
        v27 = v63;
        [v63 setImageQueueInterpolationCurve:_preparePlayerItem_InterpolationCurveControlPoints];
        memset(&v97, 0, 24);
        if (v71)
        {
          [v71 duration];
        }

        if (v70)
        {
          v60 = v70[2];
          *&otherRange.start.value = *&v97.start.value;
          otherRange.start.epoch = v97.start.epoch;
          v60(v70, 1, v63, &otherRange, v66);
        }
      }
    }

    else
    {
      v45 = ISGetLog();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v97.start.value) = 138412290;
        *(&v97.start.value + 4) = v22;
        _os_log_error_impl(&dword_25E667000, v45, OS_LOG_TYPE_ERROR, "Error inserting asset contents into composition: %@", &v97, 0xCu);
      }

      resultHandler = v70;
      v46 = v70[2];
      *&v97.start.value = v68;
      v97.start.epoch = v67;
      v46(v70, 0, 0, &v97, v22);
      asset = v71;
    }

    v7 = v22;
  }

  v61 = *MEMORY[0x277D85DE8];
}

- (void)_handleValuesDidLoad
{
  if (([(_ISPlayerItemChefOperation *)self isCancelled]& 1) == 0)
  {
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50___ISPlayerItemChefOperation__handleValuesDidLoad__block_invoke;
    block[3] = &unk_279A2A180;
    block[4] = self;
    dispatch_async(workQueue, block);
  }
}

- (void)main
{
  asset = [(_ISPlayerItemChefOperation *)self asset];
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34___ISPlayerItemChefOperation_main__block_invoke;
  v4[3] = &unk_279A2A3C0;
  objc_copyWeak(&v5, &location);
  [asset loadValuesAsynchronouslyForKeys:&unk_28705CEE0 completionHandler:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (_ISPlayerItemChefOperation)initWithAsset:(id)asset trimmedTimeRange:(id *)range photoTime:(id *)time includeAudio:(BOOL)audio includeVideo:(BOOL)video resultHandler:(id)handler
{
  assetCopy = asset;
  handlerCopy = handler;
  v27.receiver = self;
  v27.super_class = _ISPlayerItemChefOperation;
  v17 = [(_ISPlayerItemChefOperation *)&v27 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_asset, asset);
    v20 = *&range->var0.var3;
    v19 = *&range->var1.var1;
    *&v18->_trimmedTimeRange.start.value = *&range->var0.var0;
    *&v18->_trimmedTimeRange.start.epoch = v20;
    *&v18->_trimmedTimeRange.duration.timescale = v19;
    v21 = *&time->var0;
    v18->_photoTime.epoch = time->var3;
    *&v18->_photoTime.value = v21;
    v18->_includeAudio = audio;
    v18->_includeVideo = video;
    v22 = [handlerCopy copy];
    resultHandler = v18->_resultHandler;
    v18->_resultHandler = v22;

    v24 = dispatch_queue_create("com.apple.playeritemchef", 0);
    workQueue = v18->_workQueue;
    v18->_workQueue = v24;
  }

  return v18;
}

@end