@interface UIUModelFetcher
+ (BOOL)areModelsAvailable;
+ (BOOL)downloadModelSet:(int64_t)set timeout:(double)timeout;
+ (BOOL)downloadModels:(double)models;
@end

@implementation UIUModelFetcher

+ (BOOL)areModelsAvailable
{
  v2 = +[UIUModelFetcherCompat sharedFetcher];
  areAssetsPresent = [v2 areAssetsPresent];

  return areAssetsPresent;
}

+ (BOOL)downloadModelSet:(int64_t)set timeout:(double)timeout
{
  v6 = +[UIUModelFetcherCompat sharedFetcher];
  LOBYTE(set) = [v6 startAssetDownloadWithModelSet:set timeout:timeout];

  return set;
}

+ (BOOL)downloadModels:(double)models
{
  v4 = +[UIUModelFetcherCompat sharedFetcher];
  v5 = [v4 startAssetDownloadWithModelSet:1 timeout:models];

  return v5;
}

@end