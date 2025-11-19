@interface SiriTTSTrainerTaskInternal
- (BOOL)isCurrentTrainingStageDone;
- (SiriTTSTrainer)currentTrainer;
- (SiriTTSTrainerTaskInternal)initWithCoder:(id)a3;
- (id)getSuperTask;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SiriTTSTrainerTaskInternal

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SiriTTSTrainerTaskInternal;
  v4 = a3;
  [(SiriTTSTrainerTaskInternal *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_agentTrainingAssetPath forKey:{@"agentTrainingAssetPath", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_agentInferenceAssetPath forKey:@"agentInferenceAssetPath"];
}

- (SiriTTSTrainerTaskInternal)initWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = SiriTTSTrainerTaskInternal;
  v3 = a3;
  v4 = [(SiriTTSTrainerTaskInternal *)&v10 initWithCoder:v3];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"agentTrainingAssetPath", v10.receiver, v10.super_class}];
  agentTrainingAssetPath = v4->_agentTrainingAssetPath;
  v4->_agentTrainingAssetPath = v5;

  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"agentInferenceAssetPath"];

  agentInferenceAssetPath = v4->_agentInferenceAssetPath;
  v4->_agentInferenceAssetPath = v7;

  return v4;
}

- (id)getSuperTask
{
  v3 = objc_alloc_init(SiriTTSTrainerTask);
  v4 = [(SiriTTSTrainerTaskInternal *)self taskId];
  [v3 setTaskId:v4];

  v5 = [(SiriTTSTrainerTaskInternal *)self trainingAssetPath];
  [v3 setTrainingAssetPath:v5];

  v6 = [(SiriTTSTrainerTaskInternal *)self dataAssetPath];
  [v3 setDataAssetPath:v6];

  v7 = [(SiriTTSTrainerTaskInternal *)self inferenceAssetPath];
  [v3 setInferenceAssetPath:v7];

  [v3 setForceToStart:{-[SiriTTSTrainerTaskInternal forceToStart](self, "forceToStart")}];
  [v3 setTaskStatus:{-[SiriTTSTrainerTaskInternal taskStatus](self, "taskStatus")}];
  [v3 setTaskMode:{-[SiriTTSTrainerTaskInternal taskMode](self, "taskMode")}];
  [v3 setTrainingStatus:{-[SiriTTSTrainerTaskInternal trainingStatus](self, "trainingStatus")}];
  [v3 setCurrentTaskStatusProgressValue:{-[SiriTTSTrainerTaskInternal currentTaskStatusProgressValue](self, "currentTaskStatusProgressValue")}];
  [v3 setTotalTaskStatusProgressValue:{-[SiriTTSTrainerTaskInternal totalTaskStatusProgressValue](self, "totalTaskStatusProgressValue")}];
  [(SiriTTSTrainerTaskInternal *)self normalizedProgressValue];
  [v3 setNormalizedProgressValue:?];
  [v3 setAssetVersion:{-[SiriTTSTrainerTaskInternal assetVersion](self, "assetVersion")}];

  return v3;
}

- (BOOL)isCurrentTrainingStageDone
{
  result = 0;
  if ([(SiriTTSTrainerTaskInternal *)self totalTaskStatusProgressValue]>= 1)
  {
    v3 = [(SiriTTSTrainerTaskInternal *)self currentTaskStatusProgressValue];
    if (v3 == [(SiriTTSTrainerTaskInternal *)self totalTaskStatusProgressValue])
    {
      return 1;
    }
  }

  return result;
}

- (SiriTTSTrainer)currentTrainer
{
  WeakRetained = objc_loadWeakRetained(&self->_currentTrainer);

  return WeakRetained;
}

@end