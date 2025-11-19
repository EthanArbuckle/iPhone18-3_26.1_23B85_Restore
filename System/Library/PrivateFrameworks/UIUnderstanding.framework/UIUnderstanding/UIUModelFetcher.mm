@interface UIUModelFetcher
+ (BOOL)areModelsAvailable;
+ (BOOL)downloadModelSet:(int64_t)a3 timeout:(double)a4;
+ (BOOL)downloadModels:(double)a3;
@end

@implementation UIUModelFetcher

+ (BOOL)areModelsAvailable
{
  v2 = +[UIUModelFetcherCompat sharedFetcher];
  v3 = [v2 areAssetsPresent];

  return v3;
}

+ (BOOL)downloadModelSet:(int64_t)a3 timeout:(double)a4
{
  v6 = +[UIUModelFetcherCompat sharedFetcher];
  LOBYTE(a3) = [v6 startAssetDownloadWithModelSet:a3 timeout:a4];

  return a3;
}

+ (BOOL)downloadModels:(double)a3
{
  v4 = +[UIUModelFetcherCompat sharedFetcher];
  v5 = [v4 startAssetDownloadWithModelSet:1 timeout:a3];

  return v5;
}

@end