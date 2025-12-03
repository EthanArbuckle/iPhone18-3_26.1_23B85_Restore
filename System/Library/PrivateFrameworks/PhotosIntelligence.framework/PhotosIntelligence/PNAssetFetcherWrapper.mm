@interface PNAssetFetcherWrapper
+ (id)fetchLimiterWithType:(int64_t)type limit:(int64_t)limit;
+ (id)fetchOptionsWithPhotoLibrary:(id)library limit:(int64_t)limit fetchBatchSize:(int64_t)size;
@end

@implementation PNAssetFetcherWrapper

+ (id)fetchLimiterWithType:(int64_t)type limit:(int64_t)limit
{
  if (type > 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = [[PNAssetFetcherLimiter alloc] initWithType:type limit:limit];
  }

  return v5;
}

+ (id)fetchOptionsWithPhotoLibrary:(id)library limit:(int64_t)limit fetchBatchSize:(int64_t)size
{
  libraryCopy = library;
  v8 = [[PNAssetFetcherOptions alloc] initWithPhotoLibrary:libraryCopy limit:limit sampleBatchSize:size];

  return v8;
}

@end