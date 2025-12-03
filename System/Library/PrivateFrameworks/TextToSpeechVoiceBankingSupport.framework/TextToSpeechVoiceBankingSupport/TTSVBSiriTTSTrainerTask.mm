@interface TTSVBSiriTTSTrainerTask
- (NSString)taskID;
- (TTSVBSiriTTSTrainerTask)initWithSiriTTSTrainerTask:(id)task;
- (TTSVBSiriTTSTrainerTask)initWithTaskID:(id)d localeID:(id)iD trainingAssetURL:(id)l dataAssetURL:(id)rL inferenceAssetURL:(id)uRL trainingMode:(int64_t)mode startImmediately:(BOOL)immediately;
- (double)normalizedProgressValue;
- (id)description;
- (int64_t)_ttsvbStatusForSiriTaskStatus:(int64_t)status;
- (int64_t)_ttsvbStatusForSiriTrainingStatus:(int64_t)status;
- (int64_t)currentTaskTotal;
- (int64_t)currentTaskValue;
- (int64_t)status;
- (int64_t)trainingStatus;
@end

@implementation TTSVBSiriTTSTrainerTask

- (TTSVBSiriTTSTrainerTask)initWithTaskID:(id)d localeID:(id)iD trainingAssetURL:(id)l dataAssetURL:(id)rL inferenceAssetURL:(id)uRL trainingMode:(int64_t)mode startImmediately:(BOOL)immediately
{
  dCopy = d;
  iDCopy = iD;
  lCopy = l;
  rLCopy = rL;
  uRLCopy = uRL;
  v29.receiver = self;
  v29.super_class = TTSVBSiriTTSTrainerTask;
  v20 = [(TTSVBSiriTTSTrainerTask *)&v29 init];
  if (v20)
  {
    if (mode == 2)
    {
      v21 = @"natural";
    }

    else
    {
      v21 = @"default";
    }

    v31 = 0;
    v32 = &v31;
    v33 = 0x2050000000;
    v22 = getSiriTTSTrainerTaskClass_softClass_0;
    v34 = getSiriTTSTrainerTaskClass_softClass_0;
    if (!getSiriTTSTrainerTaskClass_softClass_0)
    {
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __getSiriTTSTrainerTaskClass_block_invoke_0;
      v30[3] = &unk_2789C3AA0;
      v30[4] = &v31;
      __getSiriTTSTrainerTaskClass_block_invoke_0(v30);
      v22 = v32[3];
    }

    v23 = v22;
    _Block_object_dispose(&v31, 8);
    v24 = [[v22 alloc] initWithLanguage:iDCopy name:v21];
    [v24 setTaskId:dCopy];
    path = [lCopy path];
    [v24 setTrainingAssetPath:path];

    path2 = [rLCopy path];
    [v24 setDataAssetPath:path2];

    path3 = [uRLCopy path];
    [v24 setInferenceAssetPath:path3];

    [v24 setTaskMode:mode];
    [v24 setForceToStart:immediately];
    [(TTSVBSiriTTSTrainerTask *)v20 setTask:v24];
  }

  return v20;
}

- (id)description
{
  v3 = TTSVBSiriTTSTrainerTaskStatusDescription([(TTSVBSiriTTSTrainerTask *)self status]);
  trainingStatus = [(TTSVBSiriTTSTrainerTask *)self trainingStatus];
  if (trainingStatus > 4)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = *(&off_2789C3B78 + trainingStatus);
  }

  v6 = MEMORY[0x277CCACA8];
  taskID = [(TTSVBSiriTTSTrainerTask *)self taskID];
  task = [(TTSVBSiriTTSTrainerTask *)self task];
  v9 = [v6 stringWithFormat:@"TTSVBSiriTTSTrainerTask<%p> ID=%@ status=%@ trainingStatus=%@ [underlying Siri=%@]", self, taskID, v3, v5, task];

  return v9;
}

- (NSString)taskID
{
  task = [(TTSVBSiriTTSTrainerTask *)self task];
  taskId = [task taskId];

  return taskId;
}

- (int64_t)status
{
  task = [(TTSVBSiriTTSTrainerTask *)self task];
  v4 = -[TTSVBSiriTTSTrainerTask _ttsvbStatusForSiriTaskStatus:](self, "_ttsvbStatusForSiriTaskStatus:", [task taskStatus]);

  return v4;
}

- (int64_t)trainingStatus
{
  task = [(TTSVBSiriTTSTrainerTask *)self task];
  v4 = -[TTSVBSiriTTSTrainerTask _ttsvbStatusForSiriTrainingStatus:](self, "_ttsvbStatusForSiriTrainingStatus:", [task trainingStatus]);

  return v4;
}

- (int64_t)currentTaskValue
{
  task = [(TTSVBSiriTTSTrainerTask *)self task];
  currentTaskStatusProgressValue = [task currentTaskStatusProgressValue];

  return currentTaskStatusProgressValue;
}

- (int64_t)currentTaskTotal
{
  task = [(TTSVBSiriTTSTrainerTask *)self task];
  totalTaskStatusProgressValue = [task totalTaskStatusProgressValue];

  return totalTaskStatusProgressValue;
}

- (double)normalizedProgressValue
{
  task = [(TTSVBSiriTTSTrainerTask *)self task];
  [task normalizedProgressValue];
  v4 = v3;

  return v4;
}

- (int64_t)_ttsvbStatusForSiriTaskStatus:(int64_t)status
{
  if ((status - 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_233290120[status - 1];
  }
}

- (int64_t)_ttsvbStatusForSiriTrainingStatus:(int64_t)status
{
  if ((status - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return status;
  }
}

- (TTSVBSiriTTSTrainerTask)initWithSiriTTSTrainerTask:(id)task
{
  taskCopy = task;
  v8.receiver = self;
  v8.super_class = TTSVBSiriTTSTrainerTask;
  v5 = [(TTSVBSiriTTSTrainerTask *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(TTSVBSiriTTSTrainerTask *)v5 setTask:taskCopy];
  }

  return v6;
}

@end