@interface SFSSResourceAsset
+ (id)generateResourceAssetFromResourceKeyString:(id)string;
- (SFSSResourceAsset)initWithPath:(id)path;
- (id)init:(id)init contentVersion:(int64_t)version;
- (id)key;
@end

@implementation SFSSResourceAsset

- (id)key
{
  v2 = MEMORY[0x277CCACA8];
  language = self->_language;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_contentVersion];
  stringValue = [v4 stringValue];
  v6 = [v2 stringWithFormat:@"%@:%@", language, stringValue];

  return v6;
}

- (id)init:(id)init contentVersion:(int64_t)version
{
  v17 = *MEMORY[0x277D85DE8];
  initCopy = init;
  v14.receiver = self;
  v14.super_class = SFSSResourceAsset;
  v7 = [(SFSSResourceAsset *)&v14 init];
  if (v7)
  {
    v8 = [initCopy stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
    language = v7->_language;
    v7->_language = v8;

    v7->_contentVersion = version;
  }

  v10 = SFSSGetLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [(SFSSResourceAsset *)v7 key];
    *buf = 138412290;
    v16 = v11;
    _os_log_impl(&dword_269079000, v10, OS_LOG_TYPE_INFO, "Init ResourceAsset with key=%@", buf, 0xCu);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

- (SFSSResourceAsset)initWithPath:(id)path
{
  v15 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v12.receiver = self;
  v12.super_class = SFSSResourceAsset;
  v6 = [(SFSSResourceAsset *)&v12 init];
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
      _os_log_impl(&dword_269079000, v8, OS_LOG_TYPE_INFO, "Init ResourceAsset with assetPath=%@", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (id)generateResourceAssetFromResourceKeyString:(id)string
{
  v3 = [string componentsSeparatedByString:@":"];
  v4 = [v3 objectAtIndex:0];
  v5 = [v3 objectAtIndex:1];
  integerValue = [v5 integerValue];

  v7 = [[SFSSResourceAsset alloc] init:v4 contentVersion:integerValue];

  return v7;
}

@end