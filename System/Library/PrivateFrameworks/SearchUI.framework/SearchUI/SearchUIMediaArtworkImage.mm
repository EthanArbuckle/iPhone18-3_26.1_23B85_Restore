@interface SearchUIMediaArtworkImage
- (SearchUIMediaArtworkImage)initWithSFImage:(id)a3;
- (SearchUIMediaArtworkImage)initWithSpotlightIdentifier:(id)a3;
- (void)loadImageWithScale:(double)a3 isDarkStyle:(BOOL)a4 completionHandler:(id)a5;
@end

@implementation SearchUIMediaArtworkImage

- (SearchUIMediaArtworkImage)initWithSFImage:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SearchUIMediaArtworkImage;
  v5 = [(SearchUIImage *)&v10 initWithSFImage:v4];
  if (v5)
  {
    v6 = [v4 persistentID];
    [(SearchUIMediaArtworkImage *)v5 setPersistentID:v6];

    v7 = [v4 universalLibraryID];
    [(SearchUIMediaArtworkImage *)v5 setUniversalLibraryID:v7];

    v8 = [v4 spotlightIdentifier];
    [(SearchUIMediaArtworkImage *)v5 setSpotlightIdentifier:v8];

    -[SearchUIMediaArtworkImage setMediaEntityType:](v5, "setMediaEntityType:", +[SearchUIMediaPlayerUtilities MPMediaEntityTypeForSFMediaEntityType:](SearchUIMediaPlayerUtilities, "MPMediaEntityTypeForSFMediaEntityType:", [v4 mediaEntityType]));
    [(SearchUIImage *)v5 setSupportsFastPathShadow:1];
  }

  return v5;
}

- (SearchUIMediaArtworkImage)initWithSpotlightIdentifier:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SearchUIMediaArtworkImage;
  v5 = [(SearchUIMediaArtworkImage *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SearchUIMediaArtworkImage *)v5 setSpotlightIdentifier:v4];
    [(SearchUIImage *)v6 setSupportsFastPathShadow:1];
  }

  return v6;
}

- (void)loadImageWithScale:(double)a3 isDarkStyle:(BOOL)a4 completionHandler:(id)a5
{
  v7 = a5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __78__SearchUIMediaArtworkImage_loadImageWithScale_isDarkStyle_completionHandler___block_invoke;
  v9[3] = &unk_1E85B28D8;
  v11 = a3;
  v9[4] = self;
  v10 = v7;
  v8 = v7;
  [SearchUIUtilities dispatchAsyncIfNecessary:v9];
}

void __78__SearchUIMediaArtworkImage_loadImageWithScale_isDarkStyle_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) universalLibraryID];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) universalLibraryID];
    v5 = [v4 length];

    if (v5)
    {
      v6 = +[SearchUIMediaPlayerUtilities MPMediaGroupingForMPMediaEntityType:](SearchUIMediaPlayerUtilities, "MPMediaGroupingForMPMediaEntityType:", [*(a1 + 32) mediaEntityType]);
      v7 = [MEMORY[0x1E69705D0] ULIDPropertyForGroupingType:v6];
      v8 = objc_opt_new();
      v9 = MEMORY[0x1E6970610];
      v10 = [*(a1 + 32) universalLibraryID];
      v11 = [v9 predicateWithValue:v10 forProperty:v7];

      [v8 setGroupingType:v6];
      [v8 addFilterPredicate:v11];
      goto LABEL_7;
    }
  }

  v12 = [*(a1 + 32) persistentID];
  if (v12)
  {
    v13 = v12;
    v14 = [*(a1 + 32) persistentID];
    v15 = [v14 length];

    if (v15)
    {
      v16 = +[SearchUIMediaPlayerUtilities MPMediaGroupingForMPMediaEntityType:](SearchUIMediaPlayerUtilities, "MPMediaGroupingForMPMediaEntityType:", [*(a1 + 32) mediaEntityType]);
      v7 = +[SearchUIMediaPlayerUtilities filterPropertyForMPMediaEntityType:](SearchUIMediaPlayerUtilities, "filterPropertyForMPMediaEntityType:", [*(a1 + 32) mediaEntityType]);
      v8 = objc_opt_new();
      v17 = MEMORY[0x1E6970610];
      v18 = objc_opt_new();
      v19 = [*(a1 + 32) persistentID];
      v20 = [v18 numberFromString:v19];
      v11 = [v17 predicateWithValue:v20 forProperty:v7];

      [v8 setGroupingType:v16];
      [v8 addFilterPredicate:v11];
      if (![*(a1 + 32) mediaEntityType])
      {
        v21 = [v8 items];
LABEL_8:
        v22 = v21;
        v23 = [v21 firstObject];

        if (v23)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

LABEL_7:
      v21 = [v8 collections];
      goto LABEL_8;
    }
  }

LABEL_9:
  v24 = [MEMORY[0x1E69705E8] defaultMediaLibrary];
  v25 = [*(a1 + 32) spotlightIdentifier];
  v23 = [v24 entityWithSpotlightIdentifier:v25];

  if (!v23)
  {
LABEL_19:
    (*(*(a1 + 40) + 16))();
    goto LABEL_20;
  }

LABEL_10:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_11:
    v26 = [v23 artworkCatalog];
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_18:
      (*(*(a1 + 40) + 16))();
      goto LABEL_19;
    }

    goto LABEL_11;
  }

  v27 = [v23 artworkCatalog];
  if (v27)
  {
    goto LABEL_16;
  }

  v26 = [v23 tiledArtworkCatalogWithRows:2 columns:2];
LABEL_12:
  v27 = v26;
  if (!v26)
  {
    goto LABEL_18;
  }

LABEL_16:
  [MEMORY[0x1E69D91A8] maxThumbnailSize];
  [v27 setFittingSize:{v28, v28}];
  [v27 setDestinationScale:*(a1 + 48)];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __78__SearchUIMediaArtworkImage_loadImageWithScale_isDarkStyle_completionHandler___block_invoke_2;
  v29[3] = &unk_1E85B28B0;
  v30 = *(a1 + 40);
  [v27 requestImageWithCompletion:v29];

LABEL_20:
}

@end