@interface PNAssetFetcherWrapper
+ (id)fetchLimiterWithType:(int64_t)a3 limit:(int64_t)a4;
+ (id)fetchOptionsWithPhotoLibrary:(id)a3 limit:(int64_t)a4 fetchBatchSize:(int64_t)a5;
@end

@implementation PNAssetFetcherWrapper

+ (id)fetchLimiterWithType:(int64_t)a3 limit:(int64_t)a4
{
  if (a3 > 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = [[PNAssetFetcherLimiter alloc] initWithType:a3 limit:a4];
  }

  return v5;
}

+ (id)fetchOptionsWithPhotoLibrary:(id)a3 limit:(int64_t)a4 fetchBatchSize:(int64_t)a5
{
  v7 = a3;
  v8 = [[PNAssetFetcherOptions alloc] initWithPhotoLibrary:v7 limit:a4 sampleBatchSize:a5];

  return v8;
}

@end