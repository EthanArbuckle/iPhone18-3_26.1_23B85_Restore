@interface PEResourceLoadResult
+ (id)_resultWithContentEditingInput:(id)a3 asset:(id)a4 assetLoadingAsRaw:(BOOL)a5;
- (void)setVideoComplementOriginalStillImageTime:(id *)a3;
@end

@implementation PEResourceLoadResult

- (void)setVideoComplementOriginalStillImageTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_videoComplementOriginalStillImageTime.epoch = a3->var3;
  *&self->_videoComplementOriginalStillImageTime.value = v3;
}

+ (id)_resultWithContentEditingInput:(id)a3 asset:(id)a4 assetLoadingAsRaw:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(PEResourceLoadResult);
  [(PEResourceLoadResult *)v9 _setContentEditingInput:v7];
  v10 = [v7 fullSizeImageURL];
  [(PEResourceLoadResult *)v9 _setImageURL:v10];

  [(PEResourceLoadResult *)v9 _setAssetLoadingAsRaw:v5];
  v24 = 0;
  v11 = [PESerializationUtility editSourceForContentEditingInput:v7 useEmbeddedPreview:v5 ^ 1 error:&v24];
  [(PEResourceLoadResult *)v9 _setEditSource:v11];
  [(PEResourceLoadResult *)v9 _setAsset:v8];

  v12 = [v7 videoURL];
  v13 = [v7 livePhoto];

  if (v13)
  {
    v14 = [v7 livePhoto];
    v15 = [v14 videoComplement];
    v16 = [v15 videoPath];

    if (v16)
    {
      v17 = MEMORY[0x277CBEBC0];
      v18 = [v7 livePhoto];
      v19 = [v18 videoComplement];
      v20 = [v19 videoPath];
      v21 = [v17 fileURLWithPath:v20];

      v12 = v21;
    }
  }

  [(PEResourceLoadResult *)v9 _setVideoComplementURL:v12];
  if ([v7 baseVersion] == 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = 2;
  }

  [(PEResourceLoadResult *)v9 _setPenultimateAvailability:v22];

  return v9;
}

@end