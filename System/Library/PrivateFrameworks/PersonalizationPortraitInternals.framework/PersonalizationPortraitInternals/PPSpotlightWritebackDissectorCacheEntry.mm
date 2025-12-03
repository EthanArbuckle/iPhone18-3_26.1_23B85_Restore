@interface PPSpotlightWritebackDissectorCacheEntry
- (PPSpotlightWritebackDissectorCacheEntry)initWithCachingDate:(id)date score:(double)score;
@end

@implementation PPSpotlightWritebackDissectorCacheEntry

- (PPSpotlightWritebackDissectorCacheEntry)initWithCachingDate:(id)date score:(double)score
{
  dateCopy = date;
  v11.receiver = self;
  v11.super_class = PPSpotlightWritebackDissectorCacheEntry;
  v8 = [(PPSpotlightWritebackDissectorCacheEntry *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_cachingDate, date);
    v9->_score = score;
  }

  return v9;
}

@end