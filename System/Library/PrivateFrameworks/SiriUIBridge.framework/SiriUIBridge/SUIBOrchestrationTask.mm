@interface SUIBOrchestrationTask
- (SUIBOrchestrationTask)initWithBuilder:(id)builder;
- (SUIBOrchestrationTask)initWithCoder:(id)coder;
@end

@implementation SUIBOrchestrationTask

- (SUIBOrchestrationTask)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v12.receiver = self;
  v12.super_class = SUIBOrchestrationTask;
  v5 = [(SUIBOrchestrationTask *)&v12 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = objc_alloc_init(SUIBOrchestrationTaskMutation);
    builderCopy[2](builderCopy, v7);
    taskId = [(SUIBOrchestrationTaskMutation *)v7 taskId];
    v9 = [taskId copy];
    taskId = v6->_taskId;
    v6->_taskId = v9;
  }

  return v6;
}

- (SUIBOrchestrationTask)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SUIBOrchestrationTask::taskId"];

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