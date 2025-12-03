@interface PLPublishingMedia
+ (BOOL)isValidPublishingMedia:(id)media;
- (BOOL)isEqual:(id)equal;
- (PLPublishingMedia)initWithAVURLAsset:(id)asset;
- (PLPublishingMedia)initWithAsset:(id)asset;
- (PLPublishingMedia)initWithManagedAsset:(id)asset;
- (void)dealloc;
@end

@implementation PLPublishingMedia

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PLPublishingMedia;
  [(PLPublishingMedia *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  asset = self->_asset;
  asset = [equal asset];

  return [asset isEqual:asset];
}

- (PLPublishingMedia)initWithAVURLAsset:(id)asset
{
  if (!asset)
  {
    [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
  }

  v19.receiver = self;
  v19.super_class = PLPublishingMedia;
  v5 = [(PLPublishingMedia *)&v19 init];
  v6 = v5;
  if (v5)
  {
    [(PLPublishingMedia *)v5 setAsset:asset];
    v7 = [asset URL];
    v8 = [MEMORY[0x277CE1CB8] typeWithFilenameExtension:{objc_msgSend(v7, "pathExtension")}];
    v9 = [v8 conformsToType:*MEMORY[0x277CE1E00]];
    v10 = [objc_msgSend(asset "URL")];
    [objc_msgSend(objc_msgSend(MEMORY[0x277D3B450] tracksWithMediaType:*MEMORY[0x277CE5EA8] forAsset:{asset), "firstObject"), "naturalSize"}];
    if (v11 < 720.0 || v12 < 1280.0)
    {
      v14 = v12 >= 720.0 && v11 >= 1280.0;
      if (!asset)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v14 = 1;
      if (!asset)
      {
LABEL_15:
        memset(&time, 0, sizeof(time));
        goto LABEL_16;
      }
    }

    [asset duration];
LABEL_16:
    CMTimeConvertScale(&v17, &time, 1, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    value = v17.value;
    [(PLPublishingMedia *)v6 setIsVideo:v9];
    [(PLPublishingMedia *)v6 setPathForVideoFile:v10];
    [(PLPublishingMedia *)v6 setAssetURL:v7];
    [(PLPublishingMedia *)v6 setIsHDVideo:v14];
    [(PLPublishingMedia *)v6 setDuration:value];
  }

  return v6;
}

- (PLPublishingMedia)initWithManagedAsset:(id)asset
{
  if (!asset)
  {
    [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
  }

  v13.receiver = self;
  v13.super_class = PLPublishingMedia;
  v5 = [(PLPublishingMedia *)&v13 init];
  v6 = v5;
  if (v5)
  {
    [(PLPublishingMedia *)v5 setAsset:asset];
    isVideo = [asset isVideo];
    pathForVideoFile = [asset pathForVideoFile];
    isHDVideo = [asset isHDVideo];
    [MEMORY[0x277D3AD80] durationForManagedAsset:asset applyVideoAdjustments:1];
    v11 = v10;
    [(PLPublishingMedia *)v6 setIsVideo:isVideo];
    [(PLPublishingMedia *)v6 setPathForVideoFile:pathForVideoFile];
    -[PLPublishingMedia setAssetURL:](v6, "setAssetURL:", [asset assetURL]);
    [(PLPublishingMedia *)v6 setIsHDVideo:isHDVideo];
    [(PLPublishingMedia *)v6 setDuration:v11];
  }

  return v6;
}

- (PLPublishingMedia)initWithAsset:(id)asset
{
  assetCopy = asset;
  if (!asset)
  {
    [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
  }

  if (![PLPublishingMedia isValidPublishingMedia:assetCopy])
  {
    [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    assetCopy = [MEMORY[0x277CE6650] assetWithURL:assetCopy];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return [(PLPublishingMedia *)self initWithManagedAsset:assetCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return [(PLPublishingMedia *)self initWithAVURLAsset:assetCopy];
    }

    else
    {
      return 0;
    }
  }
}

+ (BOOL)isValidPublishingMedia:(id)media
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

@end