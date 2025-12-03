@interface PXMusicCurationConcreteResult
- (PXMusicCurationConcreteResult)init;
- (PXMusicCurationConcreteResult)initWithAppleMusicCuration:(id)curation flexMusicCuration:(id)musicCuration fallbackAsset:(id)asset requestedCategories:(id)categories error:(id)error;
- (PXMusicCurationConcreteResult)initWithSongsByCategory:(id)category;
- (id)description;
@end

@implementation PXMusicCurationConcreteResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  isComplete = [(PXMusicCurationConcreteResult *)self isComplete];
  v7 = @"NO";
  if (isComplete)
  {
    v7 = @"YES";
  }

  v8 = v7;
  error = [(PXMusicCurationConcreteResult *)self error];
  songsByCategory = [(PXMusicCurationConcreteResult *)self songsByCategory];
  v11 = [v3 stringWithFormat:@"<%@:%p isComplete:%@, error:%@, songsByCategory:%@", v5, self, v8, error, songsByCategory];;

  return v11;
}

- (PXMusicCurationConcreteResult)init
{
  v3 = [MEMORY[0x1E695DFD8] set];
  v4 = [(PXMusicCurationConcreteResult *)self initWithAppleMusicCuration:0 flexMusicCuration:0 fallbackAsset:0 requestedCategories:v3 error:0];

  return v4;
}

- (PXMusicCurationConcreteResult)initWithSongsByCategory:(id)category
{
  categoryCopy = category;
  v5 = [MEMORY[0x1E695DFD8] set];
  v6 = [(PXMusicCurationConcreteResult *)self initWithAppleMusicCuration:0 flexMusicCuration:0 fallbackAsset:0 requestedCategories:v5 error:0];

  songsByCategory = v6->_songsByCategory;
  v6->_songsByCategory = categoryCopy;

  v6->_isComplete = 1;
  return v6;
}

- (PXMusicCurationConcreteResult)initWithAppleMusicCuration:(id)curation flexMusicCuration:(id)musicCuration fallbackAsset:(id)asset requestedCategories:(id)categories error:(id)error
{
  v46 = *MEMORY[0x1E69E9840];
  curationCopy = curation;
  musicCurationCopy = musicCuration;
  assetCopy = asset;
  categoriesCopy = categories;
  errorCopy = error;
  v44.receiver = self;
  v44.super_class = PXMusicCurationConcreteResult;
  v17 = [(PXMusicCurationConcreteResult *)&v44 init];
  if (v17)
  {
    v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(categoriesCopy, "count")}];
    if (curationCopy)
    {
      bestMusicSuggestions = [curationCopy bestMusicSuggestions];
      [(NSDictionary *)v18 setObject:bestMusicSuggestions forKeyedSubscript:@"AppleMusicBest"];

      musicForYou = [curationCopy musicForYou];
      [(NSDictionary *)v18 setObject:musicForYou forKeyedSubscript:@"AppleMusicForYou"];

      musicForPerformer = [curationCopy musicForPerformer];
      [(NSDictionary *)v18 setObject:musicForPerformer forKeyedSubscript:@"AppleMusicPerformer"];

      musicForTime = [curationCopy musicForTime];
      [(NSDictionary *)v18 setObject:musicForTime forKeyedSubscript:@"AppleMusicTime"];

      musicForLocation = [curationCopy musicForLocation];
      [(NSDictionary *)v18 setObject:musicForLocation forKeyedSubscript:@"AppleMusicLocation"];
    }

    if (musicCurationCopy)
    {
      bestSongSuggestions = [musicCurationCopy bestSongSuggestions];
      [(NSDictionary *)v18 setObject:bestSongSuggestions forKeyedSubscript:@"FlexMusicBest"];

      secondarySongSuggestions = [musicCurationCopy secondarySongSuggestions];
      [(NSDictionary *)v18 setObject:secondarySongSuggestions forKeyedSubscript:@"FlexMusicSecondary"];
    }

    if (assetCopy)
    {
      v26 = PXAudioAssetFetchResultWithAsset(assetCopy);
      [(NSDictionary *)v18 setObject:v26 forKeyedSubscript:@"FlexMusicFallback"];
    }

    v37 = errorCopy;
    v38 = assetCopy;
    obj = error;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v27 = categoriesCopy;
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

    errorCopy = v37;
    assetCopy = v38;
  }

  return v17;
}

@end