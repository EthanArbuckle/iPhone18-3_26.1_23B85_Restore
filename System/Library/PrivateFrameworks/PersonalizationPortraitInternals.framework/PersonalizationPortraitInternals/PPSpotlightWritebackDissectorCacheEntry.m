@interface PPSpotlightWritebackDissectorCacheEntry
- (PPSpotlightWritebackDissectorCacheEntry)initWithCachingDate:(id)a3 score:(double)a4;
@end

@implementation PPSpotlightWritebackDissectorCacheEntry

- (PPSpotlightWritebackDissectorCacheEntry)initWithCachingDate:(id)a3 score:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PPSpotlightWritebackDissectorCacheEntry;
  v8 = [(PPSpotlightWritebackDissectorCacheEntry *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_cachingDate, a3);
    v9->_score = a4;
  }

  return v9;
}

@end