@interface SiriTTSTrainerTask
- (NSError)error;
- (SiriTTSTrainerTask)initWithCoder:(id)a3;
- (SiriTTSTrainerTask)initWithLanguage:(id)a3 name:(id)a4;
- (SiriTTSTrainerTask)initWithTask:(id)a3;
- (double)timeIntervalSinceSubmission;
- (double)timeIntervalSinceTrainingStart;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SiriTTSTrainerTask

- (SiriTTSTrainerTask)initWithLanguage:(id)a3 name:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = SiriTTSTrainerTask;
  v9 = [(SiriTTSTrainerTask *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assetLanguage, a3);
    objc_storeStrong(&v10->_assetName, a4);
    v11 = v10;
  }

  return v10;
}

- (SiriTTSTrainerTask)initWithTask:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = SiriTTSTrainerTask;
  v5 = [(SiriTTSTrainerTask *)&v20 init];
  if (v5)
  {
    v6 = [v4 taskId];
    taskId = v5->_taskId;
    v5->_taskId = v6;

    v8 = [v4 trainingAssetPath];
    trainingAssetPath = v5->_trainingAssetPath;
    v5->_trainingAssetPath = v8;

    v10 = [v4 dataAssetPath];
    dataAssetPath = v5->_dataAssetPath;
    v5->_dataAssetPath = v10;

    v12 = [v4 inferenceAssetPath];
    inferenceAssetPath = v5->_inferenceAssetPath;
    v5->_inferenceAssetPath = v12;

    v5->_forceToStart = [v4 forceToStart];
    v5->_taskStatus = [v4 taskStatus];
    v5->_taskMode = [v4 taskMode];
    v5->_trainingStatus = [v4 trainingStatus];
    v14 = [v4 assetLanguage];
    assetLanguage = v5->_assetLanguage;
    v5->_assetLanguage = v14;

    v16 = [v4 assetName];
    assetName = v5->_assetName;
    v5->_assetName = v16;

    v5->_retryTimes = 0;
    v5->_normalizedProgressValue = 0.0;
    v5->_assetVersion = -1;
    v18 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  assetLanguage = self->_assetLanguage;
  v6 = a3;
  [v6 encodeObject:assetLanguage forKey:@"assetLanguage"];
  [v6 encodeObject:self->_assetName forKey:@"assetName"];
  [v6 encodeObject:self->_taskId forKey:@"taskId"];
  [v6 encodeObject:self->_trainingAssetPath forKey:@"trainingAssetPath"];
  [v6 encodeObject:self->_dataAssetPath forKey:@"dataAssetPath"];
  [v6 encodeObject:self->_inferenceAssetPath forKey:@"inferenceAssetPath"];
  [v6 encodeObject:self->_appId forKey:@"appId"];
  [v6 encodeBool:self->_forceToStart forKey:@"forceToStart"];
  [v6 encodeInteger:self->_taskStatus forKey:@"taskStatus"];
  [v6 encodeInteger:self->_taskMode forKey:@"taskMode"];
  [v6 encodeInteger:self->_trainingStatus forKey:@"trainingStatus"];
  [v6 encodeInteger:self->_currentTaskStatusProgressValue forKey:@"currentTaskStatusProgressValue"];
  [v6 encodeInteger:self->_totalTaskStatusProgressValue forKey:@"totalTaskStatusProgressValue"];
  *&v5 = self->_normalizedProgressValue;
  [v6 encodeFloat:@"normalizedProgressValue" forKey:v5];
  [v6 encodeInteger:self->_retryTimes forKey:@"retryTimes"];
  [(NSDate *)self->_taskSubmissionDate timeIntervalSinceReferenceDate];
  [v6 encodeDouble:@"taskSubmissionDate" forKey:?];
  [v6 encodeDouble:@"totalTrainingTime" forKey:self->_totalTrainingTime];
  [v6 encodeInteger:self->_assetVersion forKey:@"assetVersion"];
}

- (SiriTTSTrainerTask)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SiriTTSTrainerTask *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetLanguage"];
  assetLanguage = v5->_assetLanguage;
  v5->_assetLanguage = v6;

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetName"];
  assetName = v5->_assetName;
  v5->_assetName = v8;

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"taskId"];
  taskId = v5->_taskId;
  v5->_taskId = v10;

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"trainingAssetPath"];
  trainingAssetPath = v5->_trainingAssetPath;
  v5->_trainingAssetPath = v12;

  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dataAssetPath"];
  dataAssetPath = v5->_dataAssetPath;
  v5->_dataAssetPath = v14;

  v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inferenceAssetPath"];
  inferenceAssetPath = v5->_inferenceAssetPath;
  v5->_inferenceAssetPath = v16;

  v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appId"];
  appId = v5->_appId;
  v5->_appId = v18;

  v5->_forceToStart = [v4 decodeBoolForKey:@"forceToStart"];
  v5->_taskStatus = [v4 decodeIntegerForKey:@"taskStatus"];
  v5->_taskMode = [v4 decodeIntegerForKey:@"taskMode"];
  v5->_trainingStatus = [v4 decodeIntegerForKey:@"trainingStatus"];
  v5->_currentTaskStatusProgressValue = [v4 decodeIntegerForKey:@"currentTaskStatusProgressValue"];
  v5->_totalTaskStatusProgressValue = [v4 decodeIntegerForKey:@"totalTaskStatusProgressValue"];
  [v4 decodeFloatForKey:@"normalizedProgressValue"];
  v5->_normalizedProgressValue = v20;
  v5->_retryTimes = [v4 decodeIntegerForKey:@"retryTimes"];
  [v4 decodeDoubleForKey:@"taskSubmissionDate"];
  v5->_taskSubmissionDate = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  [v4 decodeDoubleForKey:@"totalTrainingTime"];
  v5->_totalTrainingTime = v21;
  v22 = [v4 decodeIntegerForKey:@"assetVersion"];

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