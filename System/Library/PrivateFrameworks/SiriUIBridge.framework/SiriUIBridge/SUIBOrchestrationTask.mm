@interface SUIBOrchestrationTask
- (SUIBOrchestrationTask)initWithBuilder:(id)a3;
- (SUIBOrchestrationTask)initWithCoder:(id)a3;
@end

@implementation SUIBOrchestrationTask

- (SUIBOrchestrationTask)initWithBuilder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SUIBOrchestrationTask;
  v5 = [(SUIBOrchestrationTask *)&v12 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = objc_alloc_init(SUIBOrchestrationTaskMutation);
    v4[2](v4, v7);
    v8 = [(SUIBOrchestrationTaskMutation *)v7 taskId];
    v9 = [v8 copy];
    taskId = v6->_taskId;
    v6->_taskId = v9;
  }

  return v6;
}

- (SUIBOrchestrationTask)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SUIBOrchestrationTask::taskId"];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __39__SUIBOrchestrationTask_initWithCoder___block_invoke;
  v9[3] = &unk_2784BFE08;
  v10 = v5;
  v6 = v5;
  v7 = [(SUIBOrchestrationTask *)self initWithBuilder:v9];

  return v7;
}

@end