@interface TTSVBSiriTTSTrainingAsset
- (NSString)factor;
- (NSString)language;
- (NSString)name;
- (NSString)path;
- (TTSVBSiriTTSTrainingAsset)initWithSiriTTSTrainingAsset:(id)a3;
@end

@implementation TTSVBSiriTTSTrainingAsset

- (NSString)factor
{
  v2 = [(TTSVBSiriTTSTrainingAsset *)self asset];
  v3 = [v2 factor];

  return v3;
}

- (NSString)path
{
  v2 = [(TTSVBSiriTTSTrainingAsset *)self asset];
  v3 = [v2 path];

  return v3;
}

- (NSString)language
{
  v2 = [(TTSVBSiriTTSTrainingAsset *)self asset];
  v3 = [v2 language];

  return v3;
}

- (NSString)name
{
  v2 = [(TTSVBSiriTTSTrainingAsset *)self asset];
  v3 = [v2 name];

  return v3;
}

- (TTSVBSiriTTSTrainingAsset)initWithSiriTTSTrainingAsset:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TTSVBSiriTTSTrainingAsset;
  v5 = [(TTSVBSiriTTSTrainingAsset *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(TTSVBSiriTTSTrainingAsset *)v5 setAsset:v4];
  }

  return v6;
}

@end