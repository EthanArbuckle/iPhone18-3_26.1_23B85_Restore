@interface AVAsset(RCAdditions)
+ (id)rc_createSharingMetadataItemForKey:()RCAdditions andValue:;
+ (uint64_t)rc_updateMetadataInFile:()RCAdditions withMetadata:error:;
+ (uint64_t)rc_updateMetadataInFile:()RCAdditions withRecordingMetadata:error:;
- (__CFString)_codecNameForFormatID:()RCAdditions;
- (id)createExportSettingsForSampleRate:()RCAdditions channelCount:formatRanking:;
- (id)rc_allCodecNames;
- (id)rc_audioTracks;
- (id)rc_audioTracksPreferringSpatial;
- (id)rc_exportFormat;
- (id)rc_playbackFormat;
- (id)rc_recordingMetadata;
- (id)rc_sharingMetadata;
- (uint64_t)rc_hasSpatialTracks;
- (uint64_t)rc_trackIsSpatial:()RCAdditions;
@end

@implementation AVAsset(RCAdditions)

- (id)rc_recordingMetadata
{
  v2 = objc_opt_new();
  metadata = [self metadata];
  v4 = *MEMORY[0x277CE5FC0];
  v5 = firstStringValue(metadata, @"com.apple.iTunes.voice-memo-uuid", *MEMORY[0x277CE5FC0]);
  if (v5)
  {
    [v2 setObject:v5 forKeyedSubscript:@"uniqueID"];
  }

  v6 = [MEMORY[0x277CE6520] metadataItemsFromArray:metadata withKey:*MEMORY[0x277CE5F18] keySpace:*MEMORY[0x277CE5F98]];
  v7 = [v6 na_map:&__block_literal_global_159_0];
  firstObject = [v7 firstObject];

  if (firstObject)
  {
    [v2 setObject:firstObject forKeyedSubscript:@"date"];
  }

  v9 = firstStringValue(metadata, *MEMORY[0x277CE6008], *MEMORY[0x277CE5FB8]);
  v10 = v9;
  if (v9 && [v9 length])
  {
    [v2 setObject:v10 forKeyedSubscript:@"title"];
  }

  v11 = firstStringValue(metadata, @"com.apple.iTunes.music-memo-note", v4);
  if (v11)
  {
    [v2 setObject:v11 forKeyedSubscript:@"musicMemoTextNote"];
  }

  v12 = firstNumberValue(metadata, @"com.apple.iTunes.music-memo-rating", v4);
  if (v12)
  {
    [v2 setObject:v12 forKeyedSubscript:@"musicMemoStarRating"];
  }

  v13 = firstStringValue(metadata, @"com.apple.iTunes.music-memo-tags", v4);
  if (v13)
  {
    [v2 setObject:v13 forKeyedSubscript:@"musicMemoTags"];
  }

  return v2;
}

- (id)rc_sharingMetadata
{
  v2 = objc_opt_new();
  metadata = [self metadata];
  v4 = *MEMORY[0x277CE5FC0];
  v5 = firstNumberValue(metadata, @"com.apple.iTunes.voice-memo-plrt", *MEMORY[0x277CE5FC0]);
  if (v5)
  {
    [v2 setObject:v5 forKeyedSubscript:@"com.apple.iTunes.voice-memo-plrt"];
  }

  v6 = firstNumberValue(metadata, @"com.apple.iTunes.voice-memo-lrmx", v4);
  if (v6)
  {
    [v2 setObject:v6 forKeyedSubscript:@"com.apple.iTunes.voice-memo-lrmx"];
  }

  v7 = firstNumberValue(metadata, @"com.apple.iTunes.voice-memo-sivl", v4);
  if (v7)
  {
    [v2 setObject:v7 forKeyedSubscript:@"com.apple.iTunes.voice-memo-sivl"];
  }

  v8 = firstNumberValue(metadata, @"com.apple.iTunes.voice-memo-nhnc", v4);
  if (v8)
  {
    [v2 setObject:v8 forKeyedSubscript:@"com.apple.iTunes.voice-memo-nhnc"];
  }

  v9 = firstNumberValue(metadata, @"com.apple.iTunes.voice-memo-skps", v4);
  if (v9)
  {
    [v2 setObject:v9 forKeyedSubscript:@"com.apple.iTunes.voice-memo-skps"];
  }

  return v2;
}

+ (id)rc_createSharingMetadataItemForKey:()RCAdditions andValue:
{
  v5 = MEMORY[0x277CE6558];
  v6 = a4;
  v7 = objc_alloc_init(v5);
  [v7 setKeySpace:*MEMORY[0x277CE5FC0]];
  [v7 setKey:v6];

  v8 = objc_opt_class();
  *&v9 = self;
  v10 = [v8 _scaledIntFromFloat:v9];
  [v7 setValue:v10];

  return v7;
}

+ (uint64_t)rc_updateMetadataInFile:()RCAdditions withRecordingMetadata:error:
{
  v8 = a3;
  v9 = [RCCaptureFormat AVAssetAuthoringMetadataWithRecordingMetadata:a4];
  v10 = [self rc_updateMetadataInFile:v8 withMetadata:v9 error:a5];

  return v10;
}

+ (uint64_t)rc_updateMetadataInFile:()RCAdditions withMetadata:error:
{
  v7 = a4;
  v8 = [RCMutableMovie movieWithURL:a3 error:a5];
  v9 = v8;
  if (v8)
  {
    [v8 setMetadata:v7];
    v10 = [v9 rc_writeMovieHeaderWithOptions:0 error:a5];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)rc_audioTracks
{
  _rc_all_audioTracks = [self _rc_all_audioTracks];
  v2 = [_rc_all_audioTracks na_filter:&__block_literal_global_20];

  return v2;
}

- (id)rc_audioTracksPreferringSpatial
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [[RCSpatialAsset alloc] initWithAsset:self];
  v3 = v2;
  if (v2)
  {
    spatialTrack = [(RCSpatialAsset *)v2 spatialTrack];
    overdubTrack = [(RCSpatialAsset *)v3 overdubTrack];
    v6 = overdubTrack;
    if (overdubTrack)
    {
      v14 = spatialTrack;
      v15 = overdubTrack;
      v7 = MEMORY[0x277CBEA60];
      v8 = &v14;
      v9 = 2;
    }

    else
    {
      v13 = spatialTrack;
      v7 = MEMORY[0x277CBEA60];
      v8 = &v13;
      v9 = 1;
    }

    rc_audioTracks = [v7 arrayWithObjects:v8 count:{v9, v13, v14, v15, v16}];
  }

  else
  {
    rc_audioTracks = [self rc_audioTracks];
  }

  v11 = *MEMORY[0x277D85DE8];

  return rc_audioTracks;
}

- (id)rc_playbackFormat
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  rc_audioTracks = [self rc_audioTracks];
  v2 = [rc_audioTracks countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v17;
    mSampleRate = 0.0;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(rc_audioTracks);
        }

        formatDescriptions = [*(*(&v16 + 1) + 8 * i) formatDescriptions];
        if ([formatDescriptions count])
        {
          v9 = 0;
          do
          {
            v10 = [formatDescriptions objectAtIndexedSubscript:v9];

            StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(v10);
            if (StreamBasicDescription)
            {
              if (mSampleRate < StreamBasicDescription->mSampleRate)
              {
                mSampleRate = StreamBasicDescription->mSampleRate;
              }

              mChannelsPerFrame = StreamBasicDescription->mChannelsPerFrame;
              if (v4 <= mChannelsPerFrame)
              {
                v4 = mChannelsPerFrame;
              }

              else
              {
                v4 = v4;
              }
            }

            ++v9;
          }

          while ([formatDescriptions count] > v9);
        }
      }

      v3 = [rc_audioTracks countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v3);

    v13 = 0;
    if (mSampleRate != 0.0 && v4)
    {
      v13 = [objc_alloc(MEMORY[0x277CB83A8]) initStandardFormatWithSampleRate:v4 channels:mSampleRate];
    }
  }

  else
  {

    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)rc_exportFormat
{
  v36 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [self rc_audioTracks];
  v26 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
  v1 = 0;
  v2 = 0;
  if (v26)
  {
    v25 = *v28;
    mSampleRate = 0.0;
    v4 = 0x277CCA000uLL;
    v5 = &RCAudioExportFormatRankings;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v28 != v25)
        {
          objc_enumerationMutation(obj);
        }

        formatDescriptions = [*(*(&v27 + 1) + 8 * i) formatDescriptions];
        if ([formatDescriptions count])
        {
          v8 = 0;
          do
          {
            v9 = [formatDescriptions objectAtIndexedSubscript:v8];

            StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(v9);
            if (StreamBasicDescription)
            {
              v11 = StreamBasicDescription;
              v12 = [*(v4 + 2992) numberWithUnsignedInt:StreamBasicDescription->mFormatID];
              v13 = [*v5 indexOfObject:v12];
              if (v13 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v14 = v5;
                v15 = v4;
                v16 = OSLogForCategory(@"Default");
                if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  mFormatID = v11->mFormatID;
                  *buf = 136315394;
                  v32 = "[AVAsset(RCAdditions) rc_exportFormat]";
                  v33 = 1024;
                  v34 = mFormatID;
                  _os_log_error_impl(&dword_272442000, v16, OS_LOG_TYPE_ERROR, "%s -- Invalid format: %i", buf, 0x12u);
                }

                v13 = 0;
                v4 = v15;
                v5 = v14;
              }

              if (v1 <= v13)
              {
                v1 = v13;
              }

              if (mSampleRate < v11->mSampleRate)
              {
                mSampleRate = v11->mSampleRate;
              }

              mChannelsPerFrame = v11->mChannelsPerFrame;
              if (v2 <= mChannelsPerFrame)
              {
                v2 = mChannelsPerFrame;
              }

              else
              {
                v2 = v2;
              }
            }

            ++v8;
          }

          while ([formatDescriptions count] > v8);
        }
      }

      v26 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v26);
  }

  else
  {
    mSampleRate = 0.0;
  }

  v19 = [self createExportSettingsForSampleRate:v2 channelCount:v1 formatRanking:mSampleRate];
  v20 = [objc_alloc(MEMORY[0x277CB83A8]) initWithSettings:v19];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)createExportSettingsForSampleRate:()RCAdditions channelCount:formatRanking:
{
  v5 = a5;
  v18[3] = *MEMORY[0x277D85DE8];
  if ((a5 & 0x8000000000000000) != 0 || [RCAudioExportFormatRankings count] < a5)
  {
    v8 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [AVAsset(RCAdditions) createExportSettingsForSampleRate:v5 channelCount:v8 formatRanking:?];
    }

    v5 = 0;
  }

  v9 = [RCAudioExportFormatRankings objectAtIndexedSubscript:v5];
  unsignedIntValue = [v9 unsignedIntValue];

  v17[0] = *MEMORY[0x277CB82E0];
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:self];
  v18[0] = v11;
  v17[1] = *MEMORY[0x277CB8280];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:unsignedIntValue];
  v18[1] = v12;
  v17[2] = *MEMORY[0x277CB82B0];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a4];
  v18[2] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)rc_allCodecNames
{
  v40 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  _rc_all_audioTracks = [self _rc_all_audioTracks];
  v4 = [_rc_all_audioTracks countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v34;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(_rc_all_audioTracks);
        }

        v8 = *(*(&v33 + 1) + 8 * i);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        formatDescriptions = [v8 formatDescriptions];
        v10 = [formatDescriptions countByEnumeratingWithState:&v29 objects:v38 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v30;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v30 != v12)
              {
                objc_enumerationMutation(formatDescriptions);
              }

              if (*(*(&v29 + 1) + 8 * j))
              {
                [array addObject:?];
              }
            }

            v11 = [formatDescriptions countByEnumeratingWithState:&v29 objects:v38 count:16];
          }

          while (v11);
        }
      }

      v5 = [_rc_all_audioTracks countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v5);
  }

  v14 = [MEMORY[0x277CBEB58] set];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = array;
  v16 = [v15 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v26;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v15);
        }

        StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(*(*(&v25 + 1) + 8 * k));
        if (StreamBasicDescription)
        {
          v21 = [self _codecNameForFormatID:{StreamBasicDescription->mFormatID, v25}];
          if (v21)
          {
            [v14 addObject:v21];
          }
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v17);
  }

  allObjects = [v14 allObjects];

  v23 = *MEMORY[0x277D85DE8];

  return allObjects;
}

- (__CFString)_codecNameForFormatID:()RCAdditions
{
  switch(a3)
  {
    case 1633772320:
      v4 = RCAudioCodecNameAACLC;
LABEL_7:
      v5 = *v4;

      return v5;
    case 1634754915:
      v4 = &RCAudioCodecNameAPAC;
      goto LABEL_7;
    case 1634492771:
      v4 = RCAudioCodecNameALAC;
      goto LABEL_7;
  }

  v5 = 0;

  return v5;
}

- (uint64_t)rc_trackIsSpatial:()RCAdditions
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  asset = [v4 asset];

  if (asset == self)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      obj = [v4 segments];
      v6 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v6)
      {
        v24 = v4;
        v7 = *v27;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v27 != v7)
            {
              objc_enumerationMutation(obj);
            }

            v9 = *(*(&v26 + 1) + 8 * i);
            v10 = MEMORY[0x277CE6650];
            sourceURL = [v9 sourceURL];
            v12 = [v10 assetWithURL:sourceURL];

            v13 = [[RCSpatialAsset alloc] initWithAsset:v12];
            if (v13)
            {
              v14 = v13;
              sourceTrackID = [v9 sourceTrackID];
              spatialTrack = [(RCSpatialAsset *)v14 spatialTrack];
              trackID = [spatialTrack trackID];

              if (sourceTrackID == trackID)
              {
                v6 = 1;
                goto LABEL_18;
              }
            }

            else
            {
            }
          }

          v6 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v6);
LABEL_18:
        v4 = v24;
      }
    }

    else
    {
      v18 = [[RCSpatialAsset alloc] initWithAsset:self];
      v19 = v18;
      if (v18)
      {
        spatialTrack2 = [(RCSpatialAsset *)v18 spatialTrack];
        trackID2 = [spatialTrack2 trackID];
        v6 = trackID2 == [v4 trackID];
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v6;
}

- (uint64_t)rc_hasSpatialTracks
{
  v18 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    tracks = [self tracks];
    v3 = [tracks na_flatMap:&__block_literal_global_90];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [MEMORY[0x277CBEB98] setWithArray:{v3, 0}];
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = *v14;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = [MEMORY[0x277CE6650] assetWithURL:*(*(&v13 + 1) + 8 * i)];
          rc_hasSpatialTracks = [v8 rc_hasSpatialTracks];

          if (rc_hasSpatialTracks)
          {
            v5 = 1;
            goto LABEL_13;
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    v10 = [[RCSpatialAsset alloc] initWithAsset:self];
    v5 = v10 != 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)createExportSettingsForSampleRate:()RCAdditions channelCount:formatRanking:.cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[AVAsset(RCAdditions) createExportSettingsForSampleRate:channelCount:formatRanking:]";
  v5 = 2048;
  v6 = a1;
  _os_log_error_impl(&dword_272442000, a2, OS_LOG_TYPE_ERROR, "%s -- Invalid format ranking: %ld", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end