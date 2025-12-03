@interface PEResourceLoadResult
+ (id)_resultWithContentEditingInput:(id)input asset:(id)asset assetLoadingAsRaw:(BOOL)raw;
- (void)setVideoComplementOriginalStillImageTime:(id *)time;
@end

@implementation PEResourceLoadResult

- (void)setVideoComplementOriginalStillImageTime:(id *)time
{
  v3 = *&time->var0;
  self->_videoComplementOriginalStillImageTime.epoch = time->var3;
  *&self->_videoComplementOriginalStillImageTime.value = v3;
}

+ (id)_resultWithContentEditingInput:(id)input asset:(id)asset assetLoadingAsRaw:(BOOL)raw
{
  rawCopy = raw;
  inputCopy = input;
  assetCopy = asset;
  v9 = objc_alloc_init(PEResourceLoadResult);
  [(PEResourceLoadResult *)v9 _setContentEditingInput:inputCopy];
  fullSizeImageURL = [inputCopy fullSizeImageURL];
  [(PEResourceLoadResult *)v9 _setImageURL:fullSizeImageURL];

  [(PEResourceLoadResult *)v9 _setAssetLoadingAsRaw:rawCopy];
  v24 = 0;
  v11 = [PESerializationUtility editSourceForContentEditingInput:inputCopy useEmbeddedPreview:rawCopy ^ 1 error:&v24];
  [(PEResourceLoadResult *)v9 _setEditSource:v11];
  [(PEResourceLoadResult *)v9 _setAsset:assetCopy];

  videoURL = [inputCopy videoURL];
  livePhoto = [inputCopy livePhoto];

  if (livePhoto)
  {
    livePhoto2 = [inputCopy livePhoto];
    videoComplement = [livePhoto2 videoComplement];
    videoPath = [videoComplement videoPath];

    if (videoPath)
    {
      v17 = MEMORY[0x277CBEBC0];
      livePhoto3 = [inputCopy livePhoto];
      videoComplement2 = [livePhoto3 videoComplement];
      videoPath2 = [videoComplement2 videoPath];
      v21 = [v17 fileURLWithPath:videoPath2];

      videoURL = v21;
    }
  }

  [(PEResourceLoadResult *)v9 _setVideoComplementURL:videoURL];
  if ([inputCopy baseVersion] == 1)
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