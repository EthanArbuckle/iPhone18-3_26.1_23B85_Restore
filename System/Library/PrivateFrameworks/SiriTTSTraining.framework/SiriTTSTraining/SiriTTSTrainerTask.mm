@interface SiriTTSTrainerTask
- (NSError)error;
- (SiriTTSTrainerTask)initWithCoder:(id)coder;
- (SiriTTSTrainerTask)initWithLanguage:(id)language name:(id)name;
- (SiriTTSTrainerTask)initWithTask:(id)task;
- (double)timeIntervalSinceSubmission;
- (double)timeIntervalSinceTrainingStart;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SiriTTSTrainerTask

- (SiriTTSTrainerTask)initWithLanguage:(id)language name:(id)name
{
  languageCopy = language;
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = SiriTTSTrainerTask;
  v9 = [(SiriTTSTrainerTask *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assetLanguage, language);
    objc_storeStrong(&v10->_assetName, name);
    v11 = v10;
  }

  return v10;
}

- (SiriTTSTrainerTask)initWithTask:(id)task
{
  taskCopy = task;
  v20.receiver = self;
  v20.super_class = SiriTTSTrainerTask;
  v5 = [(SiriTTSTrainerTask *)&v20 init];
  if (v5)
  {
    taskId = [taskCopy taskId];
    taskId = v5->_taskId;
    v5->_taskId = taskId;

    trainingAssetPath = [taskCopy trainingAssetPath];
    trainingAssetPath = v5->_trainingAssetPath;
    v5->_trainingAssetPath = trainingAssetPath;

    dataAssetPath = [taskCopy dataAssetPath];
    dataAssetPath = v5->_dataAssetPath;
    v5->_dataAssetPath = dataAssetPath;

    inferenceAssetPath = [taskCopy inferenceAssetPath];
    inferenceAssetPath = v5->_inferenceAssetPath;
    v5->_inferenceAssetPath = inferenceAssetPath;

    v5->_forceToStart = [taskCopy forceToStart];
    v5->_taskStatus = [taskCopy taskStatus];
    v5->_taskMode = [taskCopy taskMode];
    v5->_trainingStatus = [taskCopy trainingStatus];
    assetLanguage = [taskCopy assetLanguage];
    assetLanguage = v5->_assetLanguage;
    v5->_assetLanguage = assetLanguage;

    assetName = [taskCopy assetName];
    assetName = v5->_assetName;
    v5->_assetName = assetName;

    v5->_retryTimes = 0;
    v5->_normalizedProgressValue = 0.0;
    v5->_assetVersion = -1;
    v18 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  assetLanguage = self->_assetLanguage;
  coderCopy = coder;
  [coderCopy encodeObject:assetLanguage forKey:@"assetLanguage"];
  [coderCopy encodeObject:self->_assetName forKey:@"assetName"];
  [coderCopy encodeObject:self->_taskId forKey:@"taskId"];
  [coderCopy encodeObject:self->_trainingAssetPath forKey:@"trainingAssetPath"];
  [coderCopy encodeObject:self->_dataAssetPath forKey:@"dataAssetPath"];
  [coderCopy encodeObject:self->_inferenceAssetPath forKey:@"inferenceAssetPath"];
  [coderCopy encodeObject:self->_appId forKey:@"appId"];
  [coderCopy encodeBool:self->_forceToStart forKey:@"forceToStart"];
  [coderCopy encodeInteger:self->_taskStatus forKey:@"taskStatus"];
  [coderCopy encodeInteger:self->_taskMode forKey:@"taskMode"];
  [coderCopy encodeInteger:self->_trainingStatus forKey:@"trainingStatus"];
  [coderCopy encodeInteger:self->_currentTaskStatusProgressValue forKey:@"currentTaskStatusProgressValue"];
  [coderCopy encodeInteger:self->_totalTaskStatusProgressValue forKey:@"totalTaskStatusProgressValue"];
  *&v5 = self->_normalizedProgressValue;
  [coderCopy encodeFloat:@"normalizedProgressValue" forKey:v5];
  [coderCopy encodeInteger:self->_retryTimes forKey:@"retryTimes"];
  [(NSDate *)self->_taskSubmissionDate timeIntervalSinceReferenceDate];
  [coderCopy encodeDouble:@"taskSubmissionDate" forKey:?];
  [coderCopy encodeDouble:@"totalTrainingTime" forKey:self->_totalTrainingTime];
  [coderCopy encodeInteger:self->_assetVersion forKey:@"assetVersion"];
}

- (SiriTTSTrainerTask)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SiriTTSTrainerTask *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetLanguage"];
  assetLanguage = v5->_assetLanguage;
  v5->_assetLanguage = v6;

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetName"];
  assetName = v5->_assetName;
  v5->_assetName = v8;

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"taskId"];
  taskId = v5->_taskId;
  v5->_taskId = v10;

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trainingAssetPath"];
  trainingAssetPath = v5->_trainingAssetPath;
  v5->_trainingAssetPath = v12;

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dataAssetPath"];
  dataAssetPath = v5->_dataAssetPath;
  v5->_dataAssetPath = v14;

  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inferenceAssetPath"];
  inferenceAssetPath = v5->_inferenceAssetPath;
  v5->_inferenceAssetPath = v16;

  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appId"];
  appId = v5->_appId;
  v5->_appId = v18;

  v5->_forceToStart = [coderCopy decodeBoolForKey:@"forceToStart"];
  v5->_taskStatus = [coderCopy decodeIntegerForKey:@"taskStatus"];
  v5->_taskMode = [coderCopy decodeIntegerForKey:@"taskMode"];
  v5->_trainingStatus = [coderCopy decodeIntegerForKey:@"trainingStatus"];
  v5->_currentTaskStatusProgressValue = [coderCopy decodeIntegerForKey:@"currentTaskStatusProgressValue"];
  v5->_totalTaskStatusProgressValue = [coderCopy decodeIntegerForKey:@"totalTaskStatusProgressValue"];
  [coderCopy decodeFloatForKey:@"normalizedProgressValue"];
  v5->_normalizedProgressValue = v20;
  v5->_retryTimes = [coderCopy decodeIntegerForKey:@"retryTimes"];
  [coderCopy decodeDoubleForKey:@"taskSubmissionDate"];
  v5->_taskSubmissionDate = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  [coderCopy decodeDoubleForKey:@"totalTrainingTime"];
  v5->_totalTrainingTime = v21;
  v22 = [coderCopy decodeIntegerForKey:@"assetVersion"];

  v5->_assetVersion = v22;
  return v5;
}

- (NSError)error
{
  error = self->_error;
  if (self->_taskStatus == 4 && error == 0)
  {
    v7 = NSLocalizedDescriptionKey;
    v8 = @"Unknown failure";
    v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    v4 = [NSError errorWithDomain:@"SiriTTSTrainerTask" code:1000 userInfo:v5];
  }

  else
  {
    v4 = error;
  }

  return v4;
}

- (double)timeIntervalSinceTrainingStart
{
  if (qword_28CD08 != -1)
  {
    dispatch_once(&qword_28CD08, &__block_literal_global_3);
  }

  v3 = mach_absolute_time();
  trainingStartTime = self->_trainingStartTime;
  v5 = v3 >= trainingStartTime;
  v6 = v3 - trainingStartTime;
  result = *&_MergedGlobals_0 * v6;
  if (v6 == 0 || !v5)
  {
    return 0.0;
  }

  return result;
}

void __52__SiriTTSTrainerTask_timeIntervalSinceTrainingStart__block_invoke(id a1)
{
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v2) = info.denom;
  LODWORD(v1) = info.numer;
  *&_MergedGlobals_0 = v1 / v2 / 1000000000.0;
}

- (double)timeIntervalSinceSubmission
{
  if (!self->_taskSubmissionDate)
  {
    return 0.0;
  }

  v3 = +[NSDate now];
  [v3 timeIntervalSinceDate:self->_taskSubmissionDate];
  v5 = v4;

  return v5;
}

@end