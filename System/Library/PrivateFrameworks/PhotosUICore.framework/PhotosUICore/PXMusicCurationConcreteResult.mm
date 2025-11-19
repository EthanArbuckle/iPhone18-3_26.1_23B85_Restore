@interface PXMusicCurationConcreteResult
- (PXMusicCurationConcreteResult)init;
- (PXMusicCurationConcreteResult)initWithAppleMusicCuration:(id)a3 flexMusicCuration:(id)a4 fallbackAsset:(id)a5 requestedCategories:(id)a6 error:(id)a7;
- (PXMusicCurationConcreteResult)initWithSongsByCategory:(id)a3;
- (id)description;
@end

@implementation PXMusicCurationConcreteResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PXMusicCurationConcreteResult *)self isComplete];
  v7 = @"NO";
  if (v6)
  {
    v7 = @"YES";
  }

  v8 = v7;
  v9 = [(PXMusicCurationConcreteResult *)self error];
  v10 = [(PXMusicCurationConcreteResult *)self songsByCategory];
  v11 = [v3 stringWithFormat:@"<%@:%p isComplete:%@, error:%@, songsByCategory:%@", v5, self, v8, v9, v10];;

  return v11;
}

- (PXMusicCurationConcreteResult)init
{
  v3 = [MEMORY[0x1E695DFD8] set];
  v4 = [(PXMusicCurationConcreteResult *)self initWithAppleMusicCuration:0 flexMusicCuration:0 fallbackAsset:0 requestedCategories:v3 error:0];

  return v4;
}

- (PXMusicCurationConcreteResult)initWithSongsByCategory:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DFD8] set];
  v6 = [(PXMusicCurationConcreteResult *)self initWithAppleMusicCuration:0 flexMusicCuration:0 fallbackAsset:0 requestedCategories:v5 error:0];

  songsByCategory = v6->_songsByCategory;
  v6->_songsByCategory = v4;

  v6->_isComplete = 1;
  return v6;
}

- (PXMusicCurationConcreteResult)initWithAppleMusicCuration:(id)a3 flexMusicCuration:(id)a4 fallbackAsset:(id)a5 requestedCategories:(id)a6 error:(id)a7
{
  v46 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v44.receiver = self;
  v44.super_class = PXMusicCurationConcreteResult;
  v17 = [(PXMusicCurationConcreteResult *)&v44 init];
  if (v17)
  {
    v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v15, "count")}];
    if (v12)
    {
      v19 = [v12 bestMusicSuggestions];
      [(NSDictionary *)v18 setObject:v19 forKeyedSubscript:@"AppleMusicBest"];

      v20 = [v12 musicForYou];
      [(NSDictionary *)v18 setObject:v20 forKeyedSubscript:@"AppleMusicForYou"];

      v21 = [v12 musicForPerformer];
      [(NSDictionary *)v18 setObject:v21 forKeyedSubscript:@"AppleMusicPerformer"];

      v22 = [v12 musicForTime];
      [(NSDictionary *)v18 setObject:v22 forKeyedSubscript:@"AppleMusicTime"];

      v23 = [v12 musicForLocation];
      [(NSDictionary *)v18 setObject:v23 forKeyedSubscript:@"AppleMusicLocation"];
    }

    if (v13)
    {
      v24 = [v13 bestSongSuggestions];
      [(NSDictionary *)v18 setObject:v24 forKeyedSubscript:@"FlexMusicBest"];

      v25 = [v13 secondarySongSuggestions];
      [(NSDictionary *)v18 setObject:v25 forKeyedSubscript:@"FlexMusicSecondary"];
    }

    if (v14)
    {
      v26 = PXAudioAssetFetchResultWithAsset(v14);
      [(NSDictionary *)v18 setObject:v26 forKeyedSubscript:@"FlexMusicFallback"];
    }

    v37 = v16;
    v38 = v14;
    obj = a7;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v27 = v15;
    v28 = [v27 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v41;
      while (2)
      {
        v31 = 0;
        do
        {
          if (*v41 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = [(NSDictionary *)v18 objectForKeyedSubscript:*(*(&v40 + 1) + 8 * v31)];

          if (!v32)
          {
            v33 = 0;
            goto LABEL_18;
          }

          ++v31;
        }

        while (v29 != v31);
        v29 = [v27 countByEnumeratingWithState:&v40 objects:v45 count:16];
        if (v29)
        {
          continue;
        }

        break;
      }
    }

    v33 = 1;
LABEL_18:

    songsByCategory = v17->_songsByCategory;
    v17->_songsByCategory = v18;
    v35 = v18;

    v17->_isComplete = v33;
    objc_storeStrong(&v17->_error, obj);

    v16 = v37;
    v14 = v38;
  }

  return v17;
}

@end