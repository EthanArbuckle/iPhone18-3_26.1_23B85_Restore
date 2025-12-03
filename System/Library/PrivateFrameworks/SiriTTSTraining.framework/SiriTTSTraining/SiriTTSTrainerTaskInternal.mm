@interface SiriTTSTrainerTaskInternal
- (BOOL)isCurrentTrainingStageDone;
- (SiriTTSTrainer)currentTrainer;
- (SiriTTSTrainerTaskInternal)initWithCoder:(id)coder;
- (id)getSuperTask;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SiriTTSTrainerTaskInternal

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SiriTTSTrainerTaskInternal;
  coderCopy = coder;
  [(SiriTTSTrainerTaskInternal *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_agentTrainingAssetPath forKey:{@"agentTrainingAssetPath", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_agentInferenceAssetPath forKey:@"agentInferenceAssetPath"];
}

- (SiriTTSTrainerTaskInternal)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = SiriTTSTrainerTaskInternal;
  coderCopy = coder;
  v4 = [(SiriTTSTrainerTaskInternal *)&v10 initWithCoder:coderCopy];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"agentTrainingAssetPath", v10.receiver, v10.super_class}];
  agentTrainingAssetPath = v4->_agentTrainingAssetPath;
  v4->_agentTrainingAssetPath = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"agentInferenceAssetPath"];

  agentInferenceAssetPath = v4->_agentInferenceAssetPath;
  v4->_agentInferenceAssetPath = v7;

  return v4;
}

- (id)getSuperTask
{
  v3 = objc_alloc_init(SiriTTSTrainerTask);
  taskId = [(SiriTTSTrainerTaskInternal *)self taskId];
  [v3 setTaskId:taskId];

  trainingAssetPath = [(SiriTTSTrainerTaskInternal *)self trainingAssetPath];
  [v3 setTrainingAssetPath:trainingAssetPath];

  dataAssetPath = [(SiriTTSTrainerTaskInternal *)self dataAssetPath];
  [v3 setDataAssetPath:dataAssetPath];

  inferenceAssetPath = [(SiriTTSTrainerTaskInternal *)self inferenceAssetPath];
  [v3 setInferenceAssetPath:inferenceAssetPath];

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
    currentTaskStatusProgressValue = [(SiriTTSTrainerTaskInternal *)self currentTaskStatusProgressValue];
    if (currentTaskStatusProgressValue == [(SiriTTSTrainerTaskInternal *)self totalTaskStatusProgressValue])
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