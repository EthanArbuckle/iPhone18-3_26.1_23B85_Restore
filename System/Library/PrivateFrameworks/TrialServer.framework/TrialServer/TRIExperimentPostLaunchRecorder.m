@interface TRIExperimentPostLaunchRecorder
+ (id)recorderFromContext:(id)a3;
- (BOOL)recordEvent:(id)a3;
- (TRIExperimentPostLaunchRecorder)initWithStorage:(id)a3 logger:(id)a4;
@end

@implementation TRIExperimentPostLaunchRecorder

- (TRIExperimentPostLaunchRecorder)initWithStorage:(id)a3 logger:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TRIExperimentPostLaunchRecorder;
  v9 = [(TRIExperimentPostLaunchRecorder *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_storage, a3);
    objc_storeStrong(&v10->_logger, a4);
  }

  return v10;
}

+ (id)recorderFromContext:(id)a3
{
  v3 = a3;
  v4 = [TRIExperimentPostLaunchLogger alloc];
  v5 = [v3 client];
  v6 = [(TRIExperimentPostLaunchLogger *)v4 initWithClient:v5];

  v7 = [TRIExperimentPostLaunchRecorder alloc];
  v8 = [v3 experimentHistoryDatabase];

  v9 = [(TRIExperimentPostLaunchRecorder *)v7 initWithStorage:v8 logger:v6];

  return v9;
}

- (BOOL)recordEvent:(id)a3
{
  v4 = a3;
  v9 = 0;
  v5 = [(TRIExperimentPostLaunchRecorder *)self storage];
  v6 = [v5 storeExperimentEvent:v4 isValidTransition:&v9];

  if (v6 && v9 == 1)
  {
    v7 = [(TRIExperimentPostLaunchRecorder *)self logger];
    [v7 logExperimentPostLaunchEvent:v4];
  }

  return v6;
}

@end