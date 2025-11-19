@interface PSQuotaInfo
- (PSQuotaInfo)init;
- (unint64_t)storageInUseForMediaKind:(int64_t)a3;
- (void)setStorageInUse:(unint64_t)a3 forMediaKind:(int64_t)a4;
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

- (void)setStorageInUse:(unint64_t)a3 forMediaKind:(int64_t)a4
{
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  mediaKindDict = self->_mediaKindDict;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [(NSMutableDictionary *)mediaKindDict setObject:v8 forKeyedSubscript:v7];
}

- (unint64_t)storageInUseForMediaKind:(int64_t)a3
{
  mediaKindDict = self->_mediaKindDict;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)mediaKindDict objectForKeyedSubscript:v4];
  v6 = [v5 unsignedIntegerValue];

  return v6;
}

@end