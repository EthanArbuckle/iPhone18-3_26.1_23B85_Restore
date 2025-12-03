@interface PSQuotaInfo
- (PSQuotaInfo)init;
- (unint64_t)storageInUseForMediaKind:(int64_t)kind;
- (void)setStorageInUse:(unint64_t)use forMediaKind:(int64_t)kind;
@end

@implementation PSQuotaInfo

- (PSQuotaInfo)init
{
  v6.receiver = self;
  v6.super_class = PSQuotaInfo;
  v2 = [(PSQuotaInfo *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    mediaKindDict = v2->_mediaKindDict;
    v2->_mediaKindDict = v3;
  }

  return v2;
}

- (void)setStorageInUse:(unint64_t)use forMediaKind:(int64_t)kind
{
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:use];
  mediaKindDict = self->_mediaKindDict;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:kind];
  [(NSMutableDictionary *)mediaKindDict setObject:v8 forKeyedSubscript:v7];
}

- (unint64_t)storageInUseForMediaKind:(int64_t)kind
{
  mediaKindDict = self->_mediaKindDict;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:kind];
  v5 = [(NSMutableDictionary *)mediaKindDict objectForKeyedSubscript:v4];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  return unsignedIntegerValue;
}

@end