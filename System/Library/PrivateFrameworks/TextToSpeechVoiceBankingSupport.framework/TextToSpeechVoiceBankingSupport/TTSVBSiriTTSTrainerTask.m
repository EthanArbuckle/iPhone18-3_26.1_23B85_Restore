@interface TTSVBSiriTTSTrainerTask
- (NSString)taskID;
- (TTSVBSiriTTSTrainerTask)initWithSiriTTSTrainerTask:(id)a3;
- (TTSVBSiriTTSTrainerTask)initWithTaskID:(id)a3 localeID:(id)a4 trainingAssetURL:(id)a5 dataAssetURL:(id)a6 inferenceAssetURL:(id)a7 trainingMode:(int64_t)a8 startImmediately:(BOOL)a9;
- (double)normalizedProgressValue;
- (id)description;
- (int64_t)_ttsvbStatusForSiriTaskStatus:(int64_t)a3;
- (int64_t)_ttsvbStatusForSiriTrainingStatus:(int64_t)a3;
- (int64_t)currentTaskTotal;
- (int64_t)currentTaskValue;
- (int64_t)status;
- (int64_t)trainingStatus;
@end

@implementation TTSVBSiriTTSTrainerTask

- (TTSVBSiriTTSTrainerTask)initWithTaskID:(id)a3 localeID:(id)a4 trainingAssetURL:(id)a5 dataAssetURL:(id)a6 inferenceAssetURL:(id)a7 trainingMode:(int64_t)a8 startImmediately:(BOOL)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v29.receiver = self;
  v29.super_class = TTSVBSiriTTSTrainerTask;
  v20 = [(TTSVBSiriTTSTrainerTask *)&v29 init];
  if (v20)
  {
    if (a8 == 2)
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
    v24 = [[v22 alloc] initWithLanguage:v16 name:v21];
    [v24 setTaskId:v15];
    v25 = [v17 path];
    [v24 setTrainingAssetPath:v25];

    v26 = [v18 path];
    [v24 setDataAssetPath:v26];

    v27 = [v19 path];
    [v24 setInferenceAssetPath:v27];

    [v24 setTaskMode:a8];
    [v24 setForceToStart:a9];
    [(TTSVBSiriTTSTrainerTask *)v20 setTask:v24];
  }

  return v20;
}

- (id)description
{
  v3 = TTSVBSiriTTSTrainerTaskStatusDescription([(TTSVBSiriTTSTrainerTask *)self status]);
  v4 = [(TTSVBSiriTTSTrainerTask *)self trainingStatus];
  if (v4 > 4)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = *(&off_2789C3B78 + v4);
  }

  v6 = MEMORY[0x277CCACA8];
  v7 = [(TTSVBSiriTTSTrainerTask *)self taskID];
  v8 = [(TTSVBSiriTTSTrainerTask *)self task];
  v9 = [v6 stringWithFormat:@"TTSVBSiriTTSTrainerTask<%p> ID=%@ status=%@ trainingStatus=%@ [underlying Siri=%@]", self, v7, v3, v5, v8];

  return v9;
}

- (NSString)taskID
{
  v2 = [(TTSVBSiriTTSTrainerTask *)self task];
  v3 = [v2 taskId];

  return v3;
}

- (int64_t)status
{
  v3 = [(TTSVBSiriTTSTrainerTask *)self task];
  v4 = -[TTSVBSiriTTSTrainerTask _ttsvbStatusForSiriTaskStatus:](self, "_ttsvbStatusForSiriTaskStatus:", [v3 taskStatus]);

  return v4;
}

- (int64_t)trainingStatus
{
  v3 = [(TTSVBSiriTTSTrainerTask *)self task];
  v4 = -[TTSVBSiriTTSTrainerTask _ttsvbStatusForSiriTrainingStatus:](self, "_ttsvbStatusForSiriTrainingStatus:", [v3 trainingStatus]);

  return v4;
}

- (int64_t)currentTaskValue
{
  v2 = [(TTSVBSiriTTSTrainerTask *)self task];
  v3 = [v2 currentTaskStatusProgressValue];

  return v3;
}

- (int64_t)currentTaskTotal
{
  v2 = [(TTSVBSiriTTSTrainerTask *)self task];
  v3 = [v2 totalTaskStatusProgressValue];

  return v3;
}

- (double)normalizedProgressValue
{
  v2 = [(TTSVBSiriTTSTrainerTask *)self task];
  [v2 normalizedProgressValue];
  v4 = v3;

  return v4;
}

- (int64_t)_ttsvbStatusForSiriTaskStatus:(int64_t)a3
{
  if ((a3 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_233290120[a3 - 1];
  }
}

- (int64_t)_ttsvbStatusForSiriTrainingStatus:(int64_t)a3
{
  if ((a3 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (TTSVBSiriTTSTrainerTask)initWithSiriTTSTrainerTask:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TTSVBSiriTTSTrainerTask;
  v5 = [(TTSVBSiriTTSTrainerTask *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(TTSVBSiriTTSTrainerTask *)v5 setTask:v4];
  }

  return v6;
}

@end