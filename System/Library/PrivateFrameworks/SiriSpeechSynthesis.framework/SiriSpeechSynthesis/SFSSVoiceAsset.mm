@interface SFSSVoiceAsset
+ (id)generateVoiceAssetFromVoiceKeyString:(id)string;
- (SFSSVoiceAsset)initWithPath:(id)path;
- (id)init:(id)init gender:(int64_t)gender name:(id)name type:(int64_t)type footprint:(int64_t)footprint contentVersion:(int64_t)version;
- (id)key;
@end

@implementation SFSSVoiceAsset

- (id)key
{
  v3 = MEMORY[0x277CCACA8];
  language = self->_language;
  v5 = [SFSpeechSynthesisUtils genderStringFromGender:self->_gender];
  name = self->_name;
  v7 = [SFSpeechSynthesisUtils typeStringFromType:self->_type];
  v8 = [SFSpeechSynthesisUtils footprintStringFromFootprint:self->_footprint];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:self->_contentVersion];
  stringValue = [v9 stringValue];
  v11 = [v3 stringWithFormat:@"%@:%@:%@:%@:%@:%@", language, v5, name, v7, v8, stringValue];

  return v11;
}

- (id)init:(id)init gender:(int64_t)gender name:(id)name type:(int64_t)type footprint:(int64_t)footprint contentVersion:(int64_t)version
{
  v26 = *MEMORY[0x277D85DE8];
  initCopy = init;
  nameCopy = name;
  v23.receiver = self;
  v23.super_class = SFSSVoiceAsset;
  v16 = [(SFSSVoiceAsset *)&v23 init];
  if (v16)
  {
    v17 = [initCopy stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
    language = v16->_language;
    v16->_language = v17;

    v16->_gender = gender;
    objc_storeStrong(&v16->_name, name);
    v16->_footprint = footprint;
    v16->_type = type;
    v16->_contentVersion = version;
  }

  v19 = SFSSGetLogObject();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = [(SFSSVoiceAsset *)v16 key];
    *buf = 138412290;
    v25 = v20;
    _os_log_impl(&dword_269079000, v19, OS_LOG_TYPE_INFO, "Init VoiceAsset with key=%@", buf, 0xCu);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v16;
}

- (SFSSVoiceAsset)initWithPath:(id)path
{
  v15 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v12.receiver = self;
  v12.super_class = SFSSVoiceAsset;
  v6 = [(SFSSVoiceAsset *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetPath, path);
    v8 = SFSSGetLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      assetPath = v7->_assetPath;
      *buf = 138412290;
      v14 = assetPath;
      _os_log_impl(&dword_269079000, v8, OS_LOG_TYPE_INFO, "Init VoiceAsset with assetPath=%@", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (id)generateVoiceAssetFromVoiceKeyString:(id)string
{
  v3 = [string componentsSeparatedByString:@":"];
  v4 = [v3 objectAtIndex:0];
  v5 = [v3 objectAtIndex:1];
  v6 = [SFSpeechSynthesisUtils genderFromString:v5];

  v7 = [v3 objectAtIndex:2];
  v8 = [v3 objectAtIndex:3];
  v9 = [SFSpeechSynthesisUtils typeFromString:v8];

  v10 = [v3 objectAtIndex:4];
  v11 = [SFSpeechSynthesisUtils footprintFromString:v10];

  v12 = [v3 objectAtIndex:5];
  integerValue = [v12 integerValue];

  v14 = [[SFSSVoiceAsset alloc] init:v4 gender:v6 name:v7 type:v9 footprint:v11 contentVersion:integerValue];

  return v14;
}

@end