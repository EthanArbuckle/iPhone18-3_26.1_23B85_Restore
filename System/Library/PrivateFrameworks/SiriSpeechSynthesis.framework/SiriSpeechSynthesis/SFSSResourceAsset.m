@interface SFSSResourceAsset
+ (id)generateResourceAssetFromResourceKeyString:(id)a3;
- (SFSSResourceAsset)initWithPath:(id)a3;
- (id)init:(id)a3 contentVersion:(int64_t)a4;
- (id)key;
@end

@implementation SFSSResourceAsset

- (id)key
{
  v2 = MEMORY[0x277CCACA8];
  language = self->_language;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_contentVersion];
  v5 = [v4 stringValue];
  v6 = [v2 stringWithFormat:@"%@:%@", language, v5];

  return v6;
}

- (id)init:(id)a3 contentVersion:(int64_t)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v14.receiver = self;
  v14.super_class = SFSSResourceAsset;
  v7 = [(SFSSResourceAsset *)&v14 init];
  if (v7)
  {
    v8 = [v6 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
    language = v7->_language;
    v7->_language = v8;

    v7->_contentVersion = a4;
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

- (SFSSResourceAsset)initWithPath:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v12.receiver = self;
  v12.super_class = SFSSResourceAsset;
  v6 = [(SFSSResourceAsset *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetPath, a3);
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

+ (id)generateResourceAssetFromResourceKeyString:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@":"];
  v4 = [v3 objectAtIndex:0];
  v5 = [v3 objectAtIndex:1];
  v6 = [v5 integerValue];

  v7 = [[SFSSResourceAsset alloc] init:v4 contentVersion:v6];

  return v7;
}

@end