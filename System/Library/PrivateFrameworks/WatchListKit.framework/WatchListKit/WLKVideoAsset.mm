@interface WLKVideoAsset
- (WLKVideoAsset)initWithDictionary:(id)dictionary;
@end

@implementation WLKVideoAsset

- (WLKVideoAsset)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = WLKVideoAsset;
  v5 = [(WLKVideoAsset *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy wlk_stringForKey:@"hlsUrl"];
    URL = v5->_URL;
    v5->_URL = v6;

    v8 = [dictionaryCopy wlk_stringForKey:@"programId"];
    programID = v5->_programID;
    v5->_programID = v8;

    v10 = [dictionaryCopy wlk_stringForKey:@"assetId"];
    assetID = v5->_assetID;
    v5->_assetID = v10;
  }

  return v5;
}

@end