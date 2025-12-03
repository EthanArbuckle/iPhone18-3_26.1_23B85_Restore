@interface SXLayoutParametersManager
- (SXLayoutParametersManager)init;
- (id)layoutParametersForTask:(id)task previousLayoutOptions:(id)options;
- (void)layoutFinishedForTask:(id)task result:(id)result;
@end

@implementation SXLayoutParametersManager

- (SXLayoutParametersManager)init
{
  v6.receiver = self;
  v6.super_class = SXLayoutParametersManager;
  v2 = [(SXLayoutParametersManager *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    durations = v2->_durations;
    v2->_durations = dictionary;
  }

  return v2;
}

- (void)layoutFinishedForTask:(id)task result:(id)result
{
  taskCopy = task;
  resultCopy = result;
  [resultCopy duration];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [taskCopy elapsedDuration];
  }

  blueprint = [resultCopy blueprint];
  isComplete = [blueprint isComplete];

  if (isComplete)
  {
    durations = [(SXLayoutParametersManager *)self durations];
    v10 = MEMORY[0x1E696AD98];
    [resultCopy duration];
    v11 = [v10 numberWithDouble:?];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(taskCopy, "type")}];
    [durations setObject:v11 forKey:v12];
  }
}

- (id)layoutParametersForTask:(id)task previousLayoutOptions:(id)options
{
  taskCopy = task;
  optionsCopy = options;
  if ([taskCopy type] == 1)
  {
    v8 = 2;
  }

  else if (optionsCopy)
  {
    options = [taskCopy options];
    v10 = [optionsCopy diffWithLayoutOptions:options];

    v11 = 2;
    if (((1 << v10) & 0x10110) == 0)
    {
      v11 = 1;
    }

    if (v10 <= 0x10)
    {
      v8 = v11;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 1;
  }

  durations = [(SXLayoutParametersManager *)self durations];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(taskCopy, "type")}];
  v14 = [durations objectForKey:v13];

  if (v14)
  {
    [v14 doubleValue];
    v16 = v15;
  }

  else
  {
    v16 = -1.0;
  }

  v17 = [SXLayoutParameters alloc];
  options2 = [taskCopy options];
  v19 = [(SXLayoutParameters *)v17 initWithLayoutOptions:options2 layoutType:v8 expectedDuration:v16];

  return v19;
}

@end