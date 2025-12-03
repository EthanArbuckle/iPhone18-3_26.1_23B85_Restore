@interface STGenericIntent
- (STGenericIntent)initWithCoder:(id)coder;
- (STGenericIntent)initWithName:(id)name;
- (id)getDateRangeParameter:(id)parameter;
- (id)getGroupParameter:(id)parameter;
- (id)getPersonParameter:(id)parameter;
- (id)getPlacesParameter:(id)parameter;
- (id)getTopicParameter:(id)parameter;
- (void)addParam:(id)param withValue:(id)value;
- (void)encodeWithCoder:(id)coder;
- (void)finished;
- (void)handleWithProgress:(int64_t)progress;
@end

@implementation STGenericIntent

- (STGenericIntent)initWithCoder:(id)coder
{
  v22[7] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = STGenericIntent;
  v5 = [(STGenericIntent *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_utterance"];
    utterance = v5->_utterance;
    v5->_utterance = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_attributes"];
    attributes = v5->_attributes;
    v5->_attributes = v10;

    v12 = MEMORY[0x277CBEB98];
    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v22[2] = objc_opt_class();
    v22[3] = objc_opt_class();
    v22[4] = objc_opt_class();
    v22[5] = objc_opt_class();
    v22[6] = objc_opt_class();
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:7];
    v14 = [v12 setWithArray:v13];

    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"parameters"];
    v16 = [v15 mutableCopy];
    parameters = v5->_parameters;
    v5->_parameters = v16;

    v5->_appInForeground = 1;
    siriTask = v5->_siriTask;
    v5->_siriTask = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"_name"];
  [coderCopy encodeObject:self->_utterance forKey:@"_utterance"];
  [coderCopy encodeObject:self->_parameters forKey:@"_parameters"];
  [coderCopy encodeObject:self->_attributes forKey:@"_attributes"];
}

- (void)addParam:(id)param withValue:(id)value
{
  valueCopy = value;
  paramCopy = param;
  parameters = [(STGenericIntent *)self parameters];
  [parameters setObject:valueCopy forKey:paramCopy];
}

- (id)getPlacesParameter:(id)parameter
{
  parameterCopy = parameter;
  parameters = [(STGenericIntent *)self parameters];
  v6 = [parameters objectForKey:parameterCopy];

  return v6;
}

- (id)getGroupParameter:(id)parameter
{
  parameterCopy = parameter;
  parameters = [(STGenericIntent *)self parameters];
  v6 = [parameters objectForKey:parameterCopy];

  return v6;
}

- (id)getPersonParameter:(id)parameter
{
  parameterCopy = parameter;
  parameters = [(STGenericIntent *)self parameters];
  v6 = [parameters objectForKey:parameterCopy];

  return v6;
}

- (id)getTopicParameter:(id)parameter
{
  parameterCopy = parameter;
  parameters = [(STGenericIntent *)self parameters];
  v6 = [parameters objectForKey:parameterCopy];

  return v6;
}

- (id)getDateRangeParameter:(id)parameter
{
  parameterCopy = parameter;
  parameters = [(STGenericIntent *)self parameters];
  v6 = [parameters objectForKey:parameterCopy];

  return v6;
}

- (void)handleWithProgress:(int64_t)progress
{
  v5 = +[STGenericIntentHelper sharedHelper];
  siriResponseQueue = [v5 siriResponseQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__STGenericIntent_handleWithProgress___block_invoke;
  v7[3] = &unk_279C52590;
  v7[4] = self;
  v7[5] = progress;
  dispatch_async(siriResponseQueue, v7);
}

void __38__STGenericIntent_handleWithProgress___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) siriTask];

  if (v2)
  {
    v3 = [*(a1 + 32) siriTask];
    v4 = [*(a1 + 32) intentRequest];
    v5 = [v4 responseWithCode:*(a1 + 40)];
    [v3 completeWithResponse:v5];

    [*(a1 + 32) setHandled:1];
    [*(a1 + 32) setSiriTask:0];
    v6 = *(a1 + 32);

    [v6 setIntentRequest:0];
  }
}

- (void)finished
{
  if (![(STGenericIntent *)self finishedState])
  {
    [(STGenericIntent *)self setFinishedState:1];
    v3 = MEMORY[0x277D85CD0];

    dispatch_async(v3, &__block_literal_global_408);
  }
}

void __27__STGenericIntent_finished__block_invoke()
{
  v1 = +[STGenericIntentHelper sharedHelper];
  v0 = [v1 waitForIntentCompleteSemaphore];
  dispatch_semaphore_signal(v0);
}

- (STGenericIntent)initWithName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = STGenericIntent;
  v6 = [(STGenericIntent *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, name);
    v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:10];
    parameters = v7->_parameters;
    v7->_parameters = v8;
  }

  return v7;
}

@end