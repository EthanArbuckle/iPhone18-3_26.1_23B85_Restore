@interface SACloneSize
+ (id)newWithDataSize:(int64_t)a3 cloneSize:(int64_t)a4 purgeableSize:(int64_t)a5 cacheFixUp:(unint64_t)a6;
- (void)addCloneInfo:(id)a3;
- (void)updateWithSizeInfo:(id)a3;
@end

@implementation SACloneSize

+ (id)newWithDataSize:(int64_t)a3 cloneSize:(int64_t)a4 purgeableSize:(int64_t)a5 cacheFixUp:(unint64_t)a6
{
  v10 = objc_alloc_init(a1);
  [v10 setDataSize:a3];
  [v10 setCloneSize:a4];
  [v10 setPurgeableSize:a5];
  [v10 setCacheFixUp:a6];
  return v10;
}

- (void)updateWithSizeInfo:(id)a3
{
  v4 = a3;
  self->_dataSize += [v4 dataSize];
  self->_cloneSize += [v4 cloneSize];
  self->_purgeableSize += [v4 purgeableSize];
  v5 = [v4 cacheFixUp];

  self->_cacheFixUp += v5;
}

- (void)addCloneInfo:(id)a3
{
  v4 = a3;
  clonesInfo = self->_clonesInfo;
  v8 = v4;
  if (!clonesInfo)
  {
    v6 = objc_opt_new();
    v7 = self->_clonesInfo;
    self->_clonesInfo = v6;

    v4 = v8;
    clonesInfo = self->_clonesInfo;
  }

  [(NSMutableArray *)clonesInfo addObject:v4];
}

@end