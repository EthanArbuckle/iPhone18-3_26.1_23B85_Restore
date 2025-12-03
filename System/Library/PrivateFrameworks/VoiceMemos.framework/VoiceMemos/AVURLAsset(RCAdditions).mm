@interface AVURLAsset(RCAdditions)
+ (id)rc_preciseTimingAssetWithURL:()RCAdditions;
+ (id)rc_transcriptionDataForURL:()RCAdditions;
+ (uint64_t)rc_updateFile:()RCAdditions withTranscriptionData:error:;
- (BOOL)rc_transcriptionDataExists;
- (id)rc_transcriptionData;
@end

@implementation AVURLAsset(RCAdditions)

+ (uint64_t)rc_updateFile:()RCAdditions withTranscriptionData:error:
{
  v46[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v36 = a5;
  v37 = a4;
  v35 = v7;
  v8 = [RCMutableMovie movieWithURL:v7 error:a5];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 tracksWithMediaType:*MEMORY[0x277CE5E48]];
    v34 = [v10 na_filter:&__block_literal_global_129];

    firstObject = [v34 firstObject];
    if (firstObject)
    {
      v11 = objc_opt_new();
      v46[0] = transcriptionIdentifier(0);
      v46[1] = transcriptionIdentifier(1);
      v12 = [MEMORY[0x277CBEB98] setWithObjects:v46 count:2];
      for (i = 1; i != -1; --i)
      {
      }

      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      metadata = [firstObject metadata];
      v15 = [metadata countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (v15)
      {
        v16 = *v40;
        do
        {
          for (j = 0; j != v15; ++j)
          {
            if (*v40 != v16)
            {
              objc_enumerationMutation(metadata);
            }

            v18 = *(*(&v39 + 1) + 8 * j);
            identifier = [v18 identifier];
            v20 = [v12 containsObject:identifier];

            if ((v20 & 1) == 0)
            {
              [v11 addObject:v18];
            }
          }

          v15 = [metadata countByEnumeratingWithState:&v39 objects:v43 count:16];
        }

        while (v15);
      }

      if (v37)
      {
        v21 = transcriptionIdentifier([v35 isQuickTime]);
        v22 = MEMORY[0x277CE6558];
        v23 = v37;
        v24 = objc_alloc_init(v22);
        v25 = [MEMORY[0x277CE6520] keyForIdentifier:v21];
        [v24 setKey:v25];

        v26 = [MEMORY[0x277CE6520] keySpaceForIdentifier:v21];
        [v24 setKeySpace:v26];

        [v24 setIdentifier:v21];
        [v24 setValue:v23];

        [v24 setDataType:*MEMORY[0x277CC05B0]];
        [v11 addObject:v24];
      }

      [firstObject setMetadata:v11];
      v27 = [v9 rc_writeMovieHeaderWithOptions:0 error:v36];
      v28 = v27;
      if (v36)
      {
        v29 = v27;
      }

      else
      {
        v29 = 1;
      }

      if ((v29 & 1) == 0)
      {
        v30 = OSLogForCategory(@"Default");
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [AVURLAsset(RCAdditions) rc_updateFile:v36 withTranscriptionData:v30 error:?];
        }
      }
    }

    else
    {
      if (!v36)
      {
        v28 = 0;
        goto LABEL_28;
      }

      v31 = MEMORY[0x277CCA9B8];
      v44 = *MEMORY[0x277CCA470];
      v45 = @"No audio tracks exist";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      [v31 errorWithDomain:@"com.apple.VoiceMemos.ErrorDomain" code:-1 userInfo:v11];
      *v36 = v28 = 0;
    }

LABEL_28:
    goto LABEL_29;
  }

  v28 = 0;
LABEL_29:

  v32 = *MEMORY[0x277D85DE8];
  return v28;
}

+ (id)rc_preciseTimingAssetWithURL:()RCAdditions
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc(objc_opt_class());
  v9 = *MEMORY[0x277CE6240];
  v10[0] = MEMORY[0x277CBEC38];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v4 initWithURL:v3 options:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)rc_transcriptionDataForURL:()RCAdditions
{
  v3 = a3;
  v4 = [MEMORY[0x277CE6530] movieWithURL:v3 options:0];
  v5 = [v4 tracksWithMediaType:*MEMORY[0x277CE5E48]];
  v6 = [v5 na_filter:&__block_literal_global_136_0];

  firstObject = [v6 firstObject];
  v8 = firstObject;
  if (firstObject)
  {
    metadata = [firstObject metadata];
    v10 = transcriptionIdentifier([v3 isQuickTime]);
    v11 = firstDataValue(metadata, v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)rc_transcriptionData
{
  rc_audioTracks = [self rc_audioTracks];
  firstObject = [rc_audioTracks firstObject];
  v4 = firstObject;
  if (firstObject)
  {
    metadata = [firstObject metadata];
    v6 = [self URL];
    v7 = transcriptionIdentifier([v6 isQuickTime]);
    v8 = firstDataValue(metadata, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)rc_transcriptionDataExists
{
  rc_audioTracks = [self rc_audioTracks];
  firstObject = [rc_audioTracks firstObject];
  v4 = firstObject;
  if (firstObject)
  {
    v5 = MEMORY[0x277CE6520];
    metadata = [firstObject metadata];
    v7 = [self URL];
    v8 = transcriptionIdentifier([v7 isQuickTime]);
    v9 = [v5 metadataItemsFromArray:metadata filteredByIdentifier:v8];
    v10 = [v9 count] != 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (void)rc_updateFile:()RCAdditions withTranscriptionData:error:.cold.1(uint64_t *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 136315394;
  v5 = "+[AVURLAsset(RCAdditions) rc_updateFile:withTranscriptionData:error:]";
  v6 = 2112;
  v7 = v2;
  _os_log_error_impl(&dword_272442000, a2, OS_LOG_TYPE_ERROR, "%s -- writeMovieHeaderToURL error = %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end