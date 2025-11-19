@interface WBSTouchIconCacheSettingsSQLiteStore
- (id)_selectAllEntriesSQLiteStatement;
@end

@implementation WBSTouchIconCacheSettingsSQLiteStore

- (id)_selectAllEntriesSQLiteStatement
{
  v3 = objc_alloc(MEMORY[0x1E69C89F0]);
  v4 = [(WBSSiteMetadataImageCacheSettingsSQLiteStore *)self database];
  v5 = [v3 initWithDatabase:v4 query:@"SELECT * FROM cache_settings"];

  return v5;
}

@end