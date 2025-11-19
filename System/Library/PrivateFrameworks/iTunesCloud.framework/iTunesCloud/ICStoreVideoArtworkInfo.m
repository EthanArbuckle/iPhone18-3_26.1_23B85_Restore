@interface ICStoreVideoArtworkInfo
- (BOOL)isEqual:(id)a3;
- (ICStoreVideoArtworkInfo)initWithCoder:(id)a3;
- (ICStoreVideoArtworkInfo)initWithVideoArtworkResponseDictionary:(id)a3;
- (id)CRABSVideoURLMatchingSize:(CGSize)a3;
- (id)HLSVideoURLForAspectRatio:(double)a3;
- (id)_aspectRatioKeyForAspectRatio:(double)a3;
- (id)previewFrameArtworkInfoMatchingAspectRatio:(double)a3;
- (id)supportedSizesForCRABSVideoForAspectRatio:(double)a3;
- (unint64_t)hash;
@end

@implementation ICStoreVideoArtworkInfo

- (ICStoreVideoArtworkInfo)initWithCoder:(id)a3
{
  v4 = [a3 decodePropertyListForKey:@"responseDictionary"];
  v5 = [(ICStoreVideoArtworkInfo *)self initWithVideoArtworkResponseDictionary:v4];

  return v5;
}

- (unint64_t)hash
{
  v3 = MSVHasherSharedSeed();
  v5 = v4;
  v6 = v3 ^ 0x736F6D6570736575;
  v7 = v3 ^ 0x6C7967656E657261;
  v8 = v4 ^ 0x646F72616E646F6DLL;
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v10 hash];
  v12 = v5 ^ 0x7465646279746573 ^ v11;
  v13 = (v6 + v8) ^ __ROR8__(v8, 51);
  v14 = v7 + v12;
  v15 = (v7 + v12) ^ __ROR8__(v12, 48);
  v16 = v15 + __ROR8__(v6 + v8, 32);
  v58 = __ROR8__(v14 + v13, 32);
  v60 = v16 ^ __ROR8__(v15, 43);
  v17 = v16 ^ v11;
  v56 = (v14 + v13) ^ __ROR8__(v13, 47);

  v18 = self->_responseDictionary;
  v19 = [(NSDictionary *)v18 hash];
  v20 = (v17 + v56) ^ __ROR8__(v56, 51);
  v21 = v58 + (v60 ^ v19);
  v22 = __ROR8__(v60 ^ v19, 48);
  v23 = (v21 ^ v22) + __ROR8__(v17 + v56, 32);
  v24 = v23 ^ __ROR8__(v21 ^ v22, 43);
  v25 = v21 + v20;
  v59 = __ROR8__(v25, 32);
  v61 = v24;
  v55 = v23 ^ v19;
  v57 = v25 ^ __ROR8__(v20, 47);

  v26 = (v55 + v57) ^ __ROR8__(v57, 51);
  v27 = v59 + (v61 ^ 0x1000000000000000);
  v28 = __ROR8__(v61 ^ 0x1000000000000000, 48);
  v29 = (v27 ^ v28) + __ROR8__(v55 + v57, 32);
  v30 = v29 ^ __ROR8__(v27 ^ v28, 43);
  v31 = v27 + v26;
  v32 = v31 ^ __ROR8__(v26, 47);
  v33 = (v29 ^ 0x1000000000000000) + v32;
  v34 = v33 ^ __ROR8__(v32, 51);
  v35 = (__ROR8__(v31, 32) ^ 0xFFLL) + v30;
  v36 = __ROR8__(v30, 48);
  v37 = __ROR8__(v33, 32) + (v35 ^ v36);
  v38 = v37 ^ __ROR8__(v35 ^ v36, 43);
  v39 = v34 + v35;
  v40 = v39 ^ __ROR8__(v34, 47);
  v41 = v40 + v37;
  v42 = v41 ^ __ROR8__(v40, 51);
  v43 = __ROR8__(v39, 32) + v38;
  v44 = __ROR8__(v38, 48);
  v45 = __ROR8__(v41, 32) + (v43 ^ v44);
  v46 = v45 ^ __ROR8__(v43 ^ v44, 43);
  v47 = v42 + v43;
  v48 = v47 ^ __ROR8__(v42, 47);
  v49 = v48 + v45;
  v50 = v49 ^ __ROR8__(v48, 51);
  v51 = __ROR8__(v47, 32) + v46;
  v52 = __ROR8__(v46, 48);
  v53 = __ROR8__(v49, 32) + (v51 ^ v52);
  return (v50 + v51) ^ __ROR8__(v50, 47) ^ v53 ^ __ROR8__(v50 + v51, 32) ^ v53 ^ __ROR8__(v51 ^ v52, 43);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else if ([(ICStoreVideoArtworkInfo *)v4 isMemberOfClass:objc_opt_class()])
  {
    responseDictionary = self->_responseDictionary;
    v6 = [(ICStoreVideoArtworkInfo *)v4 responseDictionary];
    if (responseDictionary == v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = [(NSDictionary *)responseDictionary isEqual:v6];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_aspectRatioKeyForAspectRatio:(double)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v6 = [(NSDictionary *)self->_aspectRatioToCRABSVideoDictionaries objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [(NSDictionary *)self->_aspectRatioToCRABSVideoDictionaries allKeys];
    v7 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v8);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          [v11 doubleValue];
          if (vabdd_f64(v12, a3) <= 0.12)
          {
            v7 = v11;
            goto LABEL_13;
          }
        }

        v7 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v7;
}

- (id)previewFrameArtworkInfoMatchingAspectRatio:(double)a3
{
  v4 = [(ICStoreVideoArtworkInfo *)self _aspectRatioKeyForAspectRatio:a3];
  v5 = [(NSDictionary *)self->_aspectRatioToPreviewFrameArtworkInfo objectForKeyedSubscript:v4];

  return v5;
}

- (id)HLSVideoURLForAspectRatio:(double)a3
{
  v4 = [(ICStoreVideoArtworkInfo *)self _aspectRatioKeyForAspectRatio:a3];
  if (v4)
  {
    v5 = [(NSDictionary *)self->_aspectRatioToHLSVideoURL objectForKeyedSubscript:v4];
    v6 = [v5 absoluteString];
    v7 = [v6 length];

    if (v7)
    {
      v8 = v5;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)CRABSVideoURLMatchingSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v31 = *MEMORY[0x1E69E9840];
  v6 = [(ICStoreVideoArtworkInfo *)self _aspectRatioKeyForAspectRatio:a3.width / a3.height];
  if (v6)
  {
    v24 = v6;
    v7 = [(NSDictionary *)self->_aspectRatioToCRABSVideoDictionaries objectForKeyedSubscript:v6];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v25 = 0;
      v10 = *v27;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v26 + 1) + 8 * i);
          v13 = [v12 objectForKey:@"width"];
          v14 = [v12 objectForKey:@"height"];
          [v13 doubleValue];
          v16 = v15;
          [v14 doubleValue];
          v18 = vabdd_f64(v17, height);
          if (vabdd_f64(v16, width) <= 0.00000011920929 && v18 <= 0.00000011920929)
          {
            v20 = [v12 objectForKeyedSubscript:{@"assetUrl", v18}];
            v21 = [MEMORY[0x1E695DFF8] URLWithString:v20];

            v25 = v21;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v9);
    }

    else
    {
      v25 = 0;
    }

    v6 = v24;
    v22 = v25;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)supportedSizesForCRABSVideoForAspectRatio:(double)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = [(ICStoreVideoArtworkInfo *)self _aspectRatioKeyForAspectRatio:a3];
  v23 = [MEMORY[0x1E695DFA8] set];
  if (v4)
  {
    v5 = [(NSDictionary *)self->_aspectRatioToPreviewFrameArtworkInfo objectForKeyedSubscript:v4];
    v22 = v4;
    v6 = [(NSDictionary *)self->_aspectRatioToCRABSVideoDictionaries objectForKeyedSubscript:v4];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v24 + 1) + 8 * i);
          v12 = [v11 objectForKey:@"width"];
          v13 = [v11 objectForKey:@"height"];
          [v12 doubleValue];
          v15 = v14;
          [v13 doubleValue];
          v17 = v16;
          [v5 originalSize];
          if (v15 < v18)
          {
            [v5 originalSize];
            if (v17 < v19)
            {
              v20 = [MEMORY[0x1E696B098] valueWithCGSize:{v15, v17}];
              if (v20)
              {
                [v23 addObject:v20];
              }
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v8);
    }

    v4 = v22;
  }

  return v23;
}

- (ICStoreVideoArtworkInfo)initWithVideoArtworkResponseDictionary:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = [MEMORY[0x1E695DF90] dictionary];
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __66__ICStoreVideoArtworkInfo_initWithVideoArtworkResponseDictionary___block_invoke;
  v42[3] = &unk_1E7BF9C88;
  v8 = self;
  v43 = v8;
  v33 = v5;
  v9 = v5;
  v44 = v9;
  v32 = v6;
  v36 = v6;
  v45 = v36;
  v10 = v7;
  v46 = v10;
  v35 = v4;
  [v4 enumerateKeysAndObjectsUsingBlock:v42];
  v11 = [v9 allKeys];
  v12 = [v11 lastObject];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v13 = [v9 allKeys];
  v14 = [v13 countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v39;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v39 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v38 + 1) + 8 * i);
        if ([v18 compare:v12] == 1)
        {
          v19 = v18;

          v12 = v19;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v38 objects:v47 count:16];
    }

    while (v15);
  }

  v20 = [v10 objectForKeyedSubscript:v12];
  v21 = [v20 stringRepresentation];

  v22 = [v9 objectForKeyedSubscript:v12];
  v23 = [v36 objectForKeyedSubscript:v12];
  v24 = [v23 absoluteString];

  v25 = [v22 lastObject];
  v26 = [v25 objectForKeyedSubscript:@"assetUrl"];

  v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"pf=%@/hls=%@/crabs=%@", v21, v24, v26];
  v37.receiver = v8;
  v37.super_class = ICStoreVideoArtworkInfo;
  v28 = [(ICStoreVideoArtworkInfo *)&v37 init];
  p_isa = &v28->super.isa;
  if (v28)
  {
    objc_storeStrong(&v28->_responseDictionary, a3);
    objc_storeStrong(p_isa + 1, v33);
    objc_storeStrong(p_isa + 2, v32);
    objc_storeStrong(p_isa + 3, v7);
    objc_storeStrong(p_isa + 4, v27);
  }

  v30 = p_isa;

  return v30;
}

void __66__ICStoreVideoArtworkInfo_initWithVideoArtworkResponseDictionary___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v60 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (_NSIsNSDictionary())
  {
    v5 = [v4 objectForKeyedSubscript:@"previewFrame"];
    if (_NSIsNSDictionary())
    {
      v6 = [[ICStoreArtworkInfo alloc] initWithArtworkResponseDictionary:v5];
      if (v6)
      {
        v7 = [v5 objectForKeyedSubscript:@"width"];
        v8 = [v5 objectForKeyedSubscript:@"height"];
        if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
        {
          [v7 doubleValue];
          v10 = v9;
          [v8 doubleValue];
          v12 = v10 / v11;
          v13 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
          v14 = [v4 objectForKeyedSubscript:@"video"];
          v40 = v6;
          v41 = v5;
          v43 = a1;
          v38 = v8;
          v39 = v7;
          v36 = v14;
          v37 = v13;
          if (_NSIsNSString())
          {
            v34 = [MEMORY[0x1E695DFF8] URLWithString:v14];
          }

          else
          {
            v34 = 0;
          }

          v42 = v4;
          v15 = [v4 objectForKeyedSubscript:{@"videoFile", v34}];
          v44 = [MEMORY[0x1E695DF70] array];
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v16 = v15;
          v17 = [v16 countByEnumeratingWithState:&v47 objects:v59 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v48;
            v20 = @"height";
            v46 = v16;
            do
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v48 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v22 = *(*(&v47 + 1) + 8 * i);
                if (_NSIsNSDictionary())
                {
                  v23 = [v22 objectForKey:@"width"];
                  v24 = [v22 objectForKey:v20];
                  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
                  {
                    v25 = v20;
                    v26 = [v22 objectForKey:@"assetUrl"];
                    if (_NSIsNSString() && [v26 length])
                    {
                      v27 = [MEMORY[0x1E695DFF8] URLWithString:v26];
                      if (v27)
                      {
                        [v23 floatValue];
                        v29 = v28;
                        [v24 floatValue];
                        v31 = v29 / v30;
                        if (vabdd_f64(v12, v31) <= 0.12)
                        {
                          [v44 addObject:v22];
                          v12 = v31;
                        }

                        else
                        {
                          log = os_log_create("com.apple.amp.iTunesCloud", "StoreArtworkInfo");
                          if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
                          {
                            v32 = *(v43 + 32);
                            *buf = 134218754;
                            v52 = v32;
                            v53 = 2048;
                            v54 = v31;
                            v55 = 2048;
                            v56 = v12;
                            v57 = 2112;
                            v58 = v22;
                            _os_log_impl(&dword_1B4491000, log, OS_LOG_TYPE_ERROR, "NSURL: %p -initWithMasterPlaylistURL: Omitting video dictionary [received video dictionary with inconsistent aspect ratio] currentAspectRatio=%f aspectRatio=%f videoDictionary=%@", buf, 0x2Au);
                          }
                        }
                      }
                    }

                    v20 = v25;
                    v16 = v46;
                  }
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v47 objects:v59 count:16];
            }

            while (v18);
          }

          [*(v43 + 40) setObject:v44 forKeyedSubscript:v37];
          if (v35)
          {
            [*(v43 + 48) setObject:v35 forKeyedSubscript:v37];
          }

          else
          {
            v33 = [MEMORY[0x1E695DFF8] URLWithString:&stru_1F2C4A680];
            [*(v43 + 48) setObject:v33 forKeyedSubscript:v37];
          }

          v6 = v40;
          v5 = v41;
          v8 = v38;
          v7 = v39;
          [*(v43 + 56) setObject:v40 forKeyedSubscript:v37];

          v4 = v42;
        }
      }
    }
  }
}

@end