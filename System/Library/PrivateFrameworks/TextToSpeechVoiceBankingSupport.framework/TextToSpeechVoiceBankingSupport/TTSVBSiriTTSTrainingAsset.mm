@interface TTSVBSiriTTSTrainingAsset
- (NSString)factor;
- (NSString)language;
- (NSString)name;
- (NSString)path;
- (TTSVBSiriTTSTrainingAsset)initWithSiriTTSTrainingAsset:(id)asset;
@end

@implementation TTSVBSiriTTSTrainingAsset

- (NSString)factor
{
  asset = [(TTSVBSiriTTSTrainingAsset *)self asset];
  factor = [asset factor];

  return factor;
}

- (NSString)path
{
  asset = [(TTSVBSiriTTSTrainingAsset *)self asset];
  path = [asset path];

  return path;
}

- (NSString)language
{
  asset = [(TTSVBSiriTTSTrainingAsset *)self asset];
  language = [asset language];

  return language;
}

- (NSString)name
{
  asset = [(TTSVBSiriTTSTrainingAsset *)self asset];
  name = [asset name];

  return name;
}

- (TTSVBSiriTTSTrainingAsset)initWithSiriTTSTrainingAsset:(id)asset
{
  assetCopy = asset;
  v8.receiver = self;
  v8.super_class = TTSVBSiriTTSTrainingAsset;
  v5 = [(TTSVBSiriTTSTrainingAsset *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(TTSVBSiriTTSTrainingAsset *)v5 setAsset:assetCopy];
  }

  return v6;
}

@end