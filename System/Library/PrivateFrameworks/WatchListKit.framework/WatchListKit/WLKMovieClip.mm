@interface WLKMovieClip
+ (id)movieClipsWithArray:(id)array;
- (WLKMovieClip)init;
- (WLKMovieClip)initWithDictionary:(id)dictionary;
- (WLKMovieClipAsset)preferredAsset;
- (id)_init;
- (id)preferredURL;
@end

@implementation WLKMovieClip

+ (id)movieClipsWithArray:(id)array
{
  v22 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  if (arrayCopy)
  {
    array = [MEMORY[0x277CBEB18] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = arrayCopy;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          if (v10)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v11 = v10;
              v12 = [WLKMovieClip alloc];
              v13 = [(WLKMovieClip *)v12 initWithDictionary:v11, v17];

              [array addObject:v13];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    v14 = [array copy];
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (WLKMovieClip)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    _init = [(WLKMovieClip *)self _init];
    if (_init)
    {
      v6 = [dictionaryCopy wlk_stringForKey:@"title"];
      v7 = [v6 copy];
      v8 = _init[1];
      _init[1] = v7;

      v9 = [dictionaryCopy wlk_dictionaryForKey:@"previewArtwork"];
      if (v9)
      {
        v10 = [[WLKMovieClipPreviewArtwork alloc] initWithDictionary:v9];
        v11 = _init[2];
        _init[2] = v10;
      }

      v12 = [dictionaryCopy wlk_arrayForKey:@"clipAssets"];
      if (v12)
      {
        v13 = [WLKMovieClipAsset movieClipAssetsWithArray:v12];
        v14 = [v13 copy];
        v15 = _init[3];
        _init[3] = v14;
      }

      v16 = [dictionaryCopy wlk_stringForKey:@"hlsUrl"];
      v17 = _init[4];
      _init[4] = v16;
    }

    self = _init;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = WLKMovieClip;
  return [(WLKMovieClip *)&v3 init];
}

- (WLKMovieClip)init
{
  [MEMORY[0x277CBEAD8] raise:@"WLKMovieClip" format:@"-init is not supported. Use -initWithDictionary:"];

  return 0;
}

- (WLKMovieClipAsset)preferredAsset
{
  v18[4] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__9;
  v16 = __Block_byref_object_dispose__9;
  v17 = 0;
  v18[0] = @"1080pHdVideo";
  v18[1] = @"720pHdVideo";
  v18[2] = @"sd480pVideo";
  v18[3] = @"sdVideo";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __30__WLKMovieClip_preferredAsset__block_invoke;
  v11[3] = &unk_279E605E0;
  v11[4] = self;
  v11[5] = &v12;
  [v3 enumerateObjectsUsingBlock:v11];
  v4 = v13[5];
  if (!v4)
  {
    assets = [(WLKMovieClip *)self assets];
    firstObject = [assets firstObject];
    v7 = v13[5];
    v13[5] = firstObject;

    v4 = v13[5];
  }

  v8 = v4;

  _Block_object_dispose(&v12, 8);
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void __30__WLKMovieClip_preferredAsset__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = [*(a1 + 32) assets];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __30__WLKMovieClip_preferredAsset__block_invoke_2;
  v10[3] = &unk_279E605B8;
  v8 = *(a1 + 40);
  v11 = v6;
  v12 = v8;
  v13 = a4;
  v9 = v6;
  [v7 enumerateObjectsUsingBlock:v10];
}

void __30__WLKMovieClip_preferredAsset__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 flavor];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
    **(a1 + 48) = 1;
  }
}

- (id)preferredURL
{
  hlsUrl = [(WLKMovieClip *)self hlsUrl];
  if (!hlsUrl)
  {
    preferredAsset = [(WLKMovieClip *)self preferredAsset];
    hlsUrl = [preferredAsset url];
  }

  return hlsUrl;
}

@end