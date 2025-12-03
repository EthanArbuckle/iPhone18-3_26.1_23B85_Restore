@interface AVAsset(_QLUtilities)
+ (void)assetIsAutoloopMedia:()_QLUtilities completionHandler:;
- (double)ql_imageSizeOfFirstVideoTrack;
- (uint64_t)ql_hasValidVideoTrack;
@end

@implementation AVAsset(_QLUtilities)

+ (void)assetIsAutoloopMedia:()_QLUtilities completionHandler:
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v12[0] = @"availableMetadataFormats";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __64__AVAsset__QLUtilities__assetIsAutoloopMedia_completionHandler___block_invoke;
    v9[3] = &unk_279AE11F8;
    v10 = v5;
    v11 = v6;
    [v10 loadValuesAsynchronouslyForKeys:v7 completionHandler:v9];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (uint64_t)ql_hasValidVideoTrack
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  tracks = [self tracks];
  v2 = [tracks countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v16;
    v5 = *MEMORY[0x277CE5EA8];
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(tracks);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        mediaType = [v7 mediaType];
        if ([mediaType isEqualToString:v5] && (objc_msgSend(v7, "naturalSize"), v9 > 0.0))
        {
          [v7 naturalSize];
          v11 = v10;

          if (v11 > 0.0)
          {
            v12 = 1;
            goto LABEL_14;
          }
        }

        else
        {
        }
      }

      v3 = [tracks countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v3);
  }

  v12 = 0;
LABEL_14:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (double)ql_imageSizeOfFirstVideoTrack
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [self tracksWithMediaType:*MEMORY[0x277CE5EA8]];
  firstObject = [v2 firstObject];

  if (firstObject)
  {
    [firstObject naturalSize];
    v5 = v4;
    v7 = v6;
    memset(v13, 0, sizeof(v13));
    [firstObject preferredTransform];
    if (vabdd_f64(1.57079633, fabsf(atan2f(0.0, 0.0))) < 0.0001)
    {
      v5 = v7;
    }
  }

  else
  {
    v8 = MEMORY[0x277D43EF8];
    v9 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v9 = *v8;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v13[0]) = 138412290;
      *(v13 + 4) = self;
      _os_log_impl(&dword_261653000, v9, OS_LOG_TYPE_ERROR, "Could not determine image size of video because could not obtain track of asset: %@ #Generic", v13, 0xCu);
    }

    v5 = *MEMORY[0x277CBF3A8];
    v10 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

@end