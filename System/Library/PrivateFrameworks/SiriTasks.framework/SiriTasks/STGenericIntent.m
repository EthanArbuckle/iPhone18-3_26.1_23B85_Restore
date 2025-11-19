@interface STGenericIntent
- (STGenericIntent)initWithCoder:(id)a3;
- (STGenericIntent)initWithName:(id)a3;
- (id)getDateRangeParameter:(id)a3;
- (id)getGroupParameter:(id)a3;
- (id)getPersonParameter:(id)a3;
- (id)getPlacesParameter:(id)a3;
- (id)getTopicParameter:(id)a3;
- (void)addParam:(id)a3 withValue:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)finished;
- (void)handleWithProgress:(int64_t)a3;
@end

@implementation STGenericIntent

- (STGenericIntent)initWithCoder:(id)a3
{
  v22[7] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = STGenericIntent;
  v5 = [(STGenericIntent *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_utterance"];
    utterance = v5->_utterance;
    v5->_utterance = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_attributes"];
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

    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"parameters"];
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

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"_name"];
  [v5 encodeObject:self->_utterance forKey:@"_utterance"];
  [v5 encodeObject:self->_parameters forKey:@"_parameters"];
  [v5 encodeObject:self->_attributes forKey:@"_attributes"];
}

- (void)addParam:(id)a3 withValue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STGenericIntent *)self parameters];
  [v8 setObject:v6 forKey:v7];
}

- (id)getPlacesParameter:(id)a3
{
  v4 = a3;
  v5 = [(STGenericIntent *)self parameters];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (id)getGroupParameter:(id)a3
{
  v4 = a3;
  v5 = [(STGenericIntent *)self parameters];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (id)getPersonParameter:(id)a3
{
  v4 = a3;
  v5 = [(STGenericIntent *)self parameters];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (id)getTopicParameter:(id)a3
{
  v4 = a3;
  v5 = [(STGenericIntent *)self parameters];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (id)getDateRangeParameter:(id)a3
{
  v4 = a3;
  v5 = [(STGenericIntent *)self parameters];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)handleWithProgress:(int64_t)a3
{
  v5 = +[STGenericIntentHelper sharedHelper];
  v6 = [v5 siriResponseQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__STGenericIntent_handleWithProgress___block_invoke;
  v7[3] = &unk_279C52590;
  v7[4] = self;
  v7[5] = a3;
  dispatch_async(v6, v7);
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

- (STGenericIntent)initWithName:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = STGenericIntent;
  v6 = [(STGenericIntent *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, a3);
    v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:10];
    parameters = v7->_parameters;
    v7->_parameters = v8;
  }

  return v7;
}

@end