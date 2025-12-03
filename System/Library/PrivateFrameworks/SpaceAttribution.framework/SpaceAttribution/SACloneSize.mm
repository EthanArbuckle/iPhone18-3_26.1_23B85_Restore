@interface SACloneSize
+ (id)newWithDataSize:(int64_t)size cloneSize:(int64_t)cloneSize purgeableSize:(int64_t)purgeableSize cacheFixUp:(unint64_t)up;
- (void)addCloneInfo:(id)info;
- (void)updateWithSizeInfo:(id)info;
@end

@implementation SACloneSize

+ (id)newWithDataSize:(int64_t)size cloneSize:(int64_t)cloneSize purgeableSize:(int64_t)purgeableSize cacheFixUp:(unint64_t)up
{
  v10 = objc_alloc_init(self);
  [v10 setDataSize:size];
  [v10 setCloneSize:cloneSize];
  [v10 setPurgeableSize:purgeableSize];
  [v10 setCacheFixUp:up];
  return v10;
}

- (void)updateWithSizeInfo:(id)info
{
  infoCopy = info;
  self->_dataSize += [infoCopy dataSize];
  self->_cloneSize += [infoCopy cloneSize];
  self->_purgeableSize += [infoCopy purgeableSize];
  cacheFixUp = [infoCopy cacheFixUp];

  self->_cacheFixUp += cacheFixUp;
}

- (void)addCloneInfo:(id)info
{
  infoCopy = info;
  clonesInfo = self->_clonesInfo;
  v8 = infoCopy;
  if (!clonesInfo)
  {
    v6 = objc_opt_new();
    v7 = self->_clonesInfo;
    self->_clonesInfo = v6;

    infoCopy = v8;
    clonesInfo = self->_clonesInfo;
  }

  [(NSMutableArray *)clonesInfo addObject:infoCopy];
}

@end