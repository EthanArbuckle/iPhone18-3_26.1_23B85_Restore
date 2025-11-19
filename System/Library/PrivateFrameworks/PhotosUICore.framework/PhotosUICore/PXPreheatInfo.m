@interface PXPreheatInfo
- (PXPreheatInfo)initWithFetchResult:(id)a3 origin:(int64_t)a4;
- (void)markAsFinished;
@end

@implementation PXPreheatInfo

- (void)markAsFinished
{
  preheatedIndexes = self->_preheatedIndexes;
  self->_preheatedIndexes = 0;

  fetchResult = self->_fetchResult;
  self->_fetchResult = 0;
}

- (PXPreheatInfo)initWithFetchResult:(id)a3 origin:(int64_t)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = PXPreheatInfo;
  v8 = [(PXPreheatInfo *)&v12 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E696AD50]);
    preheatedIndexes = v8->_preheatedIndexes;
    v8->_preheatedIndexes = v9;

    objc_storeStrong(&v8->_fetchResult, a3);
    v8->_preheatOrigin = a4;
  }

  return v8;
}

@end