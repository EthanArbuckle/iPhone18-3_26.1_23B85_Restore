@interface MTFeedUpdatePreProcessResult
+ (MTFeedUpdatePreProcessResult)shouldNotContinueResult;
- (MTFeedUpdatePreProcessResult)initWithShouldContinue:(BOOL)continue createdPodcastUUID:(id)d;
@end

@implementation MTFeedUpdatePreProcessResult

- (MTFeedUpdatePreProcessResult)initWithShouldContinue:(BOOL)continue createdPodcastUUID:(id)d
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = MTFeedUpdatePreProcessResult;
  v8 = [(MTFeedUpdatePreProcessResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_shouldContinue = continue;
    objc_storeStrong(&v8->_createdPodcastUUID, d);
  }

  return v9;
}

+ (MTFeedUpdatePreProcessResult)shouldNotContinueResult
{
  v2 = [[MTFeedUpdatePreProcessResult alloc] initWithShouldContinue:0 createdPodcastUUID:0];

  return v2;
}

@end