@interface TRIExperimentPostLaunchRecorder
+ (id)recorderFromContext:(id)context;
- (BOOL)recordEvent:(id)event;
- (TRIExperimentPostLaunchRecorder)initWithStorage:(id)storage logger:(id)logger;
@end

@implementation TRIExperimentPostLaunchRecorder

- (TRIExperimentPostLaunchRecorder)initWithStorage:(id)storage logger:(id)logger
{
  storageCopy = storage;
  loggerCopy = logger;
  v12.receiver = self;
  v12.super_class = TRIExperimentPostLaunchRecorder;
  v9 = [(TRIExperimentPostLaunchRecorder *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_storage, storage);
    objc_storeStrong(&v10->_logger, logger);
  }

  return v10;
}

+ (id)recorderFromContext:(id)context
{
  contextCopy = context;
  v4 = [TRIExperimentPostLaunchLogger alloc];
  client = [contextCopy client];
  v6 = [(TRIExperimentPostLaunchLogger *)v4 initWithClient:client];

  v7 = [TRIExperimentPostLaunchRecorder alloc];
  experimentHistoryDatabase = [contextCopy experimentHistoryDatabase];

  v9 = [(TRIExperimentPostLaunchRecorder *)v7 initWithStorage:experimentHistoryDatabase logger:v6];

  return v9;
}

- (BOOL)recordEvent:(id)event
{
  eventCopy = event;
  v9 = 0;
  storage = [(TRIExperimentPostLaunchRecorder *)self storage];
  v6 = [storage storeExperimentEvent:eventCopy isValidTransition:&v9];

  if (v6 && v9 == 1)
  {
    logger = [(TRIExperimentPostLaunchRecorder *)self logger];
    [logger logExperimentPostLaunchEvent:eventCopy];
  }

  return v6;
}

@end