@interface RPTInteractionTestParameters
+ (id)interactionTestParametersWithTestName:(id)name interaction:(id)interaction duration:(double)duration completionHandler:(id)handler;
- (RPTInteractionTestParameters)initWithTestName:(id)name interactions:(id)interactions completionHandler:(id)handler;
- (id)composerBlock;
- (void)setDelays:(id)delays;
- (void)setDurations:(id)durations;
@end

@implementation RPTInteractionTestParameters

- (void)setDurations:(id)durations
{
  v15 = *MEMORY[0x277D85DE8];
  durationsCopy = durations;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [durationsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    while (1)
    {
      if (*v11 != v7)
      {
        objc_enumerationMutation(durationsCopy);
      }

      if (!--v6)
      {
        v6 = [durationsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (!v6)
        {
          break;
        }
      }
    }
  }

  v8 = [durationsCopy copy];
  durations = self->_durations;
  self->_durations = v8;
}

- (void)setDelays:(id)delays
{
  v15 = *MEMORY[0x277D85DE8];
  delaysCopy = delays;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [delaysCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    while (1)
    {
      if (*v11 != v7)
      {
        objc_enumerationMutation(delaysCopy);
      }

      if (!--v6)
      {
        v6 = [delaysCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (!v6)
        {
          break;
        }
      }
    }
  }

  v8 = [delaysCopy copy];
  delays = self->_delays;
  self->_delays = v8;
}

- (RPTInteractionTestParameters)initWithTestName:(id)name interactions:(id)interactions completionHandler:(id)handler
{
  nameCopy = name;
  interactionsCopy = interactions;
  handlerCopy = handler;
  v19.receiver = self;
  v19.super_class = RPTInteractionTestParameters;
  v11 = [(RPTInteractionTestParameters *)&v19 init];
  if (v11)
  {
    v12 = [nameCopy copy];
    testName = v11->_testName;
    v11->_testName = v12;

    v14 = [interactionsCopy copy];
    interactions = v11->_interactions;
    v11->_interactions = v14;

    v16 = MEMORY[0x2667162B0](handlerCopy);
    completionHandler = v11->_completionHandler;
    v11->_completionHandler = v16;
  }

  return v11;
}

+ (id)interactionTestParametersWithTestName:(id)name interaction:(id)interaction duration:(double)duration completionHandler:(id)handler
{
  v20[1] = *MEMORY[0x277D85DE8];
  interactionCopy = interaction;
  handlerCopy = handler;
  nameCopy = name;
  v13 = [self alloc];
  v20[0] = interactionCopy;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v15 = [v13 initWithTestName:nameCopy interactions:v14 completionHandler:handlerCopy];

  if (v15)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:duration];
    v19 = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    [v15 setDurations:v17];
  }

  return v15;
}

- (id)composerBlock
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__RPTInteractionTestParameters_composerBlock__block_invoke;
  v4[3] = &unk_279AF38A8;
  v4[4] = self;
  v2 = MEMORY[0x2667162B0](v4, a2);

  return v2;
}

void __45__RPTInteractionTestParameters_composerBlock__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) interactions];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__RPTInteractionTestParameters_composerBlock__block_invoke_2;
  v6[3] = &unk_279AF3880;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void __45__RPTInteractionTestParameters_composerBlock__block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v17 = a2;
  v5 = [*(a1 + 32) durations];
  v6 = [v5 count];

  v7 = 1.0;
  if (v6 > a3)
  {
    v8 = [*(a1 + 32) durations];
    v9 = [v8 objectAtIndexedSubscript:a3];
    [v9 doubleValue];
    v7 = v10;
  }

  [v17 invokeWithComposer:*(a1 + 40) duration:v7];
  v11 = [*(a1 + 32) delays];
  v12 = [v11 count];

  if (v12 > a3)
  {
    v13 = [*(a1 + 32) delays];
    v14 = [v13 objectAtIndexedSubscript:a3];
    [v14 doubleValue];
    v16 = v15;

    if (v16 > 0.0)
    {
      [*(a1 + 40) advanceTime:v16];
    }
  }
}

@end