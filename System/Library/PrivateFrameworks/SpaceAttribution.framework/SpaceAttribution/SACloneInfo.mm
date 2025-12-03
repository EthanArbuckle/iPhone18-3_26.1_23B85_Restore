@interface SACloneInfo
+ (id)newWithDataSize:(int64_t)size cloneSize:(int64_t)cloneSize purgeableSize:(int64_t)purgeableSize dirStatKey:(unint64_t)key attributionTag:(unint64_t)tag clonePath:(id)path;
- (SACloneInfo)initWithDataSize:(int64_t)size cloneSize:(int64_t)cloneSize purgeableSize:(int64_t)purgeableSize dirStatKey:(unint64_t)key attributionTag:(unint64_t)tag clonePath:(id)path;
- (id)generateDictionary;
@end

@implementation SACloneInfo

- (SACloneInfo)initWithDataSize:(int64_t)size cloneSize:(int64_t)cloneSize purgeableSize:(int64_t)purgeableSize dirStatKey:(unint64_t)key attributionTag:(unint64_t)tag clonePath:(id)path
{
  pathCopy = path;
  v19.receiver = self;
  v19.super_class = SACloneInfo;
  v16 = [(SACloneInfo *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_dataSize = size;
    v16->_cloneSize = cloneSize;
    v16->_purgeableSize = purgeableSize;
    objc_storeStrong(&v16->_clonePath, path);
    v17->_dirStatKey = key;
    v17->_attributionTagID = tag;
  }

  return v17;
}

+ (id)newWithDataSize:(int64_t)size cloneSize:(int64_t)cloneSize purgeableSize:(int64_t)purgeableSize dirStatKey:(unint64_t)key attributionTag:(unint64_t)tag clonePath:(id)path
{
  pathCopy = path;
  v15 = [[self alloc] initWithDataSize:size cloneSize:cloneSize purgeableSize:purgeableSize dirStatKey:key attributionTag:tag clonePath:pathCopy];

  return v15;
}

- (id)generateDictionary
{
  v11[0] = @"dataSize";
  v3 = [NSNumber numberWithLongLong:self->_dataSize];
  v12[0] = v3;
  v11[1] = @"cloneSize";
  v4 = [NSNumber numberWithLongLong:self->_cloneSize];
  v12[1] = v4;
  v11[2] = @"purgeableSize";
  v5 = [NSNumber numberWithLongLong:self->_purgeableSize];
  v12[2] = v5;
  v11[3] = @"dirStatsKey";
  v6 = [NSNumber numberWithLongLong:self->_dirStatKey];
  v12[3] = v6;
  v11[4] = @"attributionTag";
  v7 = [NSNumber numberWithLongLong:self->_attributionTagID];
  v11[5] = @"clonePath";
  clonePath = self->_clonePath;
  v12[4] = v7;
  v12[5] = clonePath;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:6];

  return v9;
}

@end