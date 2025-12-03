@interface SXRepeatedLayoutTask
- (SXRepeatedLayoutTask)initWithTask:(id)task result:(id)result;
@end

@implementation SXRepeatedLayoutTask

- (SXRepeatedLayoutTask)initWithTask:(id)task result:(id)result
{
  taskCopy = task;
  resultCopy = result;
  options = [taskCopy options];
  v9 = +[SXLayoutInstructions defaultInstructions];
  blueprint = [resultCopy blueprint];
  v11 = [resultCopy DOM];
  v19.receiver = self;
  v19.super_class = SXRepeatedLayoutTask;
  v12 = [(SXLayoutTask *)&v19 initWithOptions:options instructions:v9 blueprint:blueprint DOM:v11];

  if (v12)
  {
    v13 = taskCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12->_repeatCount = [v13 repeatCount] + 1;
      [v13 elapsedDuration];
      v15 = v14;
      [resultCopy duration];
      v17 = v15 + v16;
    }

    else
    {
      v12->_repeatCount = 1;
      [resultCopy duration];
    }

    v12->_elapsedDuration = v17;
  }

  return v12;
}

@end