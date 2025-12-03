@interface SiriTasksEvaluationResult
- (SiriTasksEvaluationResult)initWithDictionary:(id)dictionary;
- (SiriTasksEvaluationResult)initWithJSONData:(id)data;
- (SiriTasksEvaluationResult)initWithTaskId:(id)id isEffectiveTask:(BOOL)task isSuccessfulTask:(BOOL)successfulTask;
- (id)toJSON;
@end

@implementation SiriTasksEvaluationResult

- (SiriTasksEvaluationResult)initWithTaskId:(id)id isEffectiveTask:(BOOL)task isSuccessfulTask:(BOOL)successfulTask
{
  idCopy = id;
  v13.receiver = self;
  v13.super_class = SiriTasksEvaluationResult;
  v10 = [(SiriTasksEvaluationResult *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_taskId, id);
    v11->_isEffectiveTask = task;
    v11->_isSuccessfulTask = successfulTask;
  }

  return v11;
}

- (SiriTasksEvaluationResult)initWithJSONData:(id)data
{
  v10 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:data options:0 error:&v10];
  v5 = v10;
  v6 = v5;
  if (!v4)
  {
    NSLog(&cfstr_ErrorDeseriali.isa, v5);
LABEL_6:
    selfCopy = 0;
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = objc_opt_class();
    NSLog(&cfstr_GotAnInvalidJs.isa, v9);
    goto LABEL_6;
  }

  self = [(SiriTasksEvaluationResult *)self initWithDictionary:v4];
  selfCopy = self;
LABEL_7:

  return selfCopy;
}

- (SiriTasksEvaluationResult)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = SiriTasksEvaluationResult;
  v5 = [(SiriTasksEvaluationResult *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"taskId"];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [v6 copy];
      [(SiriTasksEvaluationResult *)v5 setTaskId:v7];

      v8 = [dictionaryCopy objectForKeyedSubscript:@"isEffectiveTask"];
      if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        -[SiriTasksEvaluationResult setIsEffectiveTask:](v5, "setIsEffectiveTask:", [v8 BOOLValue]);
        v9 = [dictionaryCopy objectForKeyedSubscript:@"isSuccessfulTask"];
        if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          -[SiriTasksEvaluationResult setIsSuccessfulTask:](v5, "setIsSuccessfulTask:", [v9 BOOLValue]);
          v10 = v5;
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)toJSON
{
  v12[3] = *MEMORY[0x277D85DE8];
  v12[0] = self->_taskId;
  v11[0] = @"taskId";
  v11[1] = @"isEffectiveTask";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:self->_isEffectiveTask];
  v12[1] = v3;
  v11[2] = @"isSuccessfulTask";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_isSuccessfulTask];
  v12[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v10 = 0;
  v6 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v5 options:0 error:&v10];
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:4];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end