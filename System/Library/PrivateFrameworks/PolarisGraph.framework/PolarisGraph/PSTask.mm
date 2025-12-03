@interface PSTask
- (PSTask)initWithName:(id)name;
- (PSTask)initWithName:(id)name computeAgent:(int64_t)agent inputs:(id)inputs outputs:(id)outputs function:(void *)function userdata:(void *)userdata;
- (id)description;
- (void)addInput:(id)input;
- (void)addOutput:(id)output;
- (void)removeAllInputs;
- (void)setComputeAgentsForEspressoOps:(id)ops;
- (void)setFunction:(void *)function userdata:(void *)userdata userObject:(id)object;
- (void)updateBarrier:(id)barrier;
- (void)waitForBarrier:(id)barrier;
@end

@implementation PSTask

- (PSTask)initWithName:(id)name
{
  nameCopy = name;
  v18.receiver = self;
  v18.super_class = PSTask;
  v6 = [(PSTask *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, name);
    v8 = objc_opt_new();
    inputs = v7->_inputs;
    v7->_inputs = v8;

    v10 = objc_opt_new();
    outputs = v7->_outputs;
    v7->_outputs = v10;

    v12 = objc_opt_new();
    waitBarriers = v7->_waitBarriers;
    v7->_waitBarriers = v12;

    v14 = objc_opt_new();
    updateBarriers = v7->_updateBarriers;
    v7->_updateBarriers = v14;

    v7->_computeAgent = 0;
    segments = v7->_segments;
    v7->_segments = 0;

    v7->_enableAutoreleasePool = 1;
  }

  return v7;
}

- (PSTask)initWithName:(id)name computeAgent:(int64_t)agent inputs:(id)inputs outputs:(id)outputs function:(void *)function userdata:(void *)userdata
{
  inputsCopy = inputs;
  outputsCopy = outputs;
  v16 = [(PSTask *)self initWithName:name];
  v17 = v16;
  if (v16)
  {
    v16->_computeAgent = agent;
    v18 = [inputsCopy copy];
    inputs = v17->_inputs;
    v17->_inputs = v18;

    v20 = [outputsCopy copy];
    outputs = v17->_outputs;
    v17->_outputs = v20;

    [(PSTask *)v17 setFunction:function userdata:userdata];
  }

  return v17;
}

- (id)description
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"...<%@: %@>", objc_opt_class(), self->_name];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = self->_inputs;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 appendFormat:@"\n%@", *(*(&v20 + 1) + 8 * i)];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = self->_outputs;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v3 appendFormat:@"\n%@", *(*(&v16 + 1) + 8 * j)];
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v11);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)setFunction:(void *)function userdata:(void *)userdata userObject:(id)object
{
  objectCopy = object;
  [(PSTask *)self setFunction:function userdata:userdata];
  userObject = self->_userObject;
  self->_userObject = objectCopy;
}

- (void)addInput:(id)input
{
  v19 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  if ([inputCopy type] != 3)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = self->_inputs;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        v9 = 0;
        do
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          if ([*(*(&v14 + 1) + 8 * v9) type] == 3)
          {
            [PSTask addInput:?];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  v10 = [(NSArray *)self->_inputs arrayByAddingObject:inputCopy];
  inputs = self->_inputs;
  self->_inputs = v10;

  v12 = *MEMORY[0x277D85DE8];
}

- (void)addOutput:(id)output
{
  v4 = [(NSArray *)self->_outputs arrayByAddingObject:output];
  outputs = self->_outputs;
  self->_outputs = v4;

  MEMORY[0x2821F96F8]();
}

- (void)waitForBarrier:(id)barrier
{
  barrierCopy = barrier;
  [barrierCopy addBlockingTask:self];
  v5 = [(NSArray *)self->_waitBarriers arrayByAddingObject:barrierCopy];

  waitBarriers = self->_waitBarriers;
  self->_waitBarriers = v5;
}

- (void)updateBarrier:(id)barrier
{
  barrierCopy = barrier;
  [barrierCopy addUnblockingTask:self];
  v5 = [(NSArray *)self->_updateBarriers arrayByAddingObject:barrierCopy];

  updateBarriers = self->_updateBarriers;
  self->_updateBarriers = v5;
}

- (void)removeAllInputs
{
  v3 = objc_opt_new();
  inputs = self->_inputs;
  self->_inputs = v3;

  MEMORY[0x2821F96F8]();
}

- (void)setComputeAgentsForEspressoOps:(id)ops
{
  v26 = *MEMORY[0x277D85DE8];
  opsCopy = ops;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = opsCopy;
  v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = MEMORY[0x277CCACA8];
        v11 = [v9 objectForKeyedSubscript:@"OpCode"];
        v12 = [v9 objectForKeyedSubscript:@"ComputeBackend"];
        v13 = [v10 stringWithFormat:@"Espresso segment: %@ (Compute Agent: %@)", v11, v12];

        v14 = [v9 objectForKeyedSubscript:@"ComputeBackend"];
        if ([v14 isEqual:@"CPU"])
        {
          v15 = 0;
        }

        else
        {
          if (([v14 isEqual:@"ANE"] & 1) == 0)
          {
            v18 = PSLogInstance();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              [(PSTask(Espresso) *)v14 setComputeAgentsForEspressoOps:v9, v18];
            }

            _os_crash();
            __break(1u);
          }

          v15 = 2;
        }

        v16 = [PSSegment segmentWithName:v13 computeAgent:v15];
        [v4 addObject:v16];
      }

      v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  [(PSTask *)self setSegments:v4];
  v17 = *MEMORY[0x277D85DE8];
}

- (uint64_t)addInput:(char *)a1 .cold.1(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Synced inputs must be registered last, after all Wait/Pull/PullOptional resources.");
  v2 = __PSGraphLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_7_0();
    v19 = 244;
    OUTLINED_FUNCTION_2(&dword_25EC85000, v3, v4, "%s:%d Synced inputs must be registered last, after all Wait/Pull/PullOptional resources.", v5, v6, v7, v8, v18[0]);
  }

  v9 = OSLogFlushBuffers();
  if (v9)
  {
    v10 = v9;
    v11 = __PSGraphLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_7_0();
      v19 = v10;
      OUTLINED_FUNCTION_1(&dword_25EC85000, v12, v13, "%s() failed to flush buffers with error code: %d", v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4();
  }

  v14 = OUTLINED_FUNCTION_0();
  return [(PSTask(Espresso) *)v14 setComputeAgentsForEspressoOps:v15, v16];
}

@end