@interface UIApplication(PhotosUI)
+ (void)pu_prepareCPAnalytics;
- (id)ppt_testDefinitions;
- (void)pu_finishedAnimationSubTest:()PhotosUI forTest:;
- (void)pu_startedAnimationSubTest:()PhotosUI forTest:;
@end

@implementation UIApplication(PhotosUI)

+ (void)pu_prepareCPAnalytics
{
  if (pu_prepareCPAnalytics_onceToken != -1)
  {
    dispatch_once(&pu_prepareCPAnalytics_onceToken, &__block_literal_global_97317);
  }
}

- (void)pu_finishedAnimationSubTest:()PhotosUI forTest:
{
  v6 = a4;
  v7 = a3;
  [self finishedSubTest:@"Animation" forTest:v6];
  v8 = [v7 stringByAppendingString:@"-Animation"];

  [self finishedSubTest:v8 forTest:v6];
}

- (void)pu_startedAnimationSubTest:()PhotosUI forTest:
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 stringByAppendingString:@"-Latency"];
  [self startedSubTest:v8 forTest:v7 withMetrics:&unk_1F2B7D9A0];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__UIApplication_PhotosUI__pu_startedAnimationSubTest_forTest___block_invoke;
  v11[3] = &unk_1E7B809F0;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [self installCACommitCompletionBlock:v11];
}

- (id)ppt_testDefinitions
{
  if (ppt_testDefinitions_onceToken != -1)
  {
    dispatch_once(&ppt_testDefinitions_onceToken, &__block_literal_global_193);
  }

  v1 = ppt_testDefinitions_testDefinitions;

  return v1;
}

@end