@interface MTFeedUpdatePreProcessResult
+ (MTFeedUpdatePreProcessResult)shouldNotContinueResult;
- (MTFeedUpdatePreProcessResult)initWithShouldContinue:(BOOL)a3 createdPodcastUUID:(id)a4;
@end

@implementation MTFeedUpdatePreProcessResult

- (MTFeedUpdatePreProcessResult)initWithShouldContinue:(BOOL)a3 createdPodcastUUID:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MTFeedUpdatePreProcessResult;
  v8 = [(MTFeedUpdatePreProcessResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_shouldContinue = a3;
    objc_storeStrong(&v8->_createdPodcastUUID, a4);
  }

  return v9;
}

+ (MTFeedUpdatePreProcessResult)shouldNotContinueResult
{
  v2 = [[MTFeedUpdatePreProcessResult alloc] initWithShouldContinue:0 createdPodcastUUID:0];

  return v2;
}

@end