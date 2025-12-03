@interface RBAssertionBatchContext
+ (id)contextForProcess:(id)process acquisitionCompletionPolicy:(unint64_t)policy withDescriptorsToAcquire:(id)acquire identifiersToInvalidate:(id)invalidate daemonContext:(id)context;
+ (id)contextForProcess:(id)process withDescriptorsToAcquire:(id)acquire identifiersToInvalidate:(id)invalidate daemonContext:(id)context;
- (id)_init;
- (id)acquisitionContextForDescriptor:(id)descriptor;
@end

@implementation RBAssertionBatchContext

- (id)_init
{
  v3.receiver = self;
  v3.super_class = RBAssertionBatchContext;
  return [(RBAssertionBatchContext *)&v3 init];
}

+ (id)contextForProcess:(id)process withDescriptorsToAcquire:(id)acquire identifiersToInvalidate:(id)invalidate daemonContext:(id)context
{
  v33 = *MEMORY[0x277D85DE8];
  processCopy = process;
  acquireCopy = acquire;
  invalidateCopy = invalidate;
  contextCopy = context;
  if (processCopy)
  {
    if (acquireCopy)
    {
      goto LABEL_3;
    }

LABEL_20:
    +[RBAssertionBatchContext contextForProcess:withDescriptorsToAcquire:identifiersToInvalidate:daemonContext:];
    if (invalidateCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_21;
  }

  +[RBAssertionBatchContext contextForProcess:withDescriptorsToAcquire:identifiersToInvalidate:daemonContext:];
  if (!acquireCopy)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (invalidateCopy)
  {
    goto LABEL_4;
  }

LABEL_21:
  +[RBAssertionBatchContext contextForProcess:withDescriptorsToAcquire:identifiersToInvalidate:daemonContext:];
LABEL_4:
  v26 = invalidateCopy;
  selfCopy = self;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = acquireCopy;
  v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = *v29;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = [RBAssertionAcquisitionContext contextForProcess:processCopy withDescriptor:*(*(&v28 + 1) + 8 * i) daemonContext:contextCopy, v26, selfCopy, v28];
        acquisitionPolicy = [v20 acquisitionPolicy];
        if (acquisitionPolicy > v17)
        {
          v22 = acquisitionPolicy;
          if (RBSAcquisitionCompletionPolicyIsValid())
          {
            v17 = v22;
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v16);
  }

  else
  {
    v17 = 0;
  }

  v23 = [selfCopy contextForProcess:processCopy acquisitionCompletionPolicy:v17 withDescriptorsToAcquire:v14 identifiersToInvalidate:v26 daemonContext:contextCopy];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (id)contextForProcess:(id)process acquisitionCompletionPolicy:(unint64_t)policy withDescriptorsToAcquire:(id)acquire identifiersToInvalidate:(id)invalidate daemonContext:(id)context
{
  processCopy = process;
  acquireCopy = acquire;
  invalidateCopy = invalidate;
  contextCopy = context;
  if (processCopy)
  {
    if (acquireCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    +[RBAssertionBatchContext contextForProcess:acquisitionCompletionPolicy:withDescriptorsToAcquire:identifiersToInvalidate:daemonContext:];
    if (invalidateCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  +[RBAssertionBatchContext contextForProcess:acquisitionCompletionPolicy:withDescriptorsToAcquire:identifiersToInvalidate:daemonContext:];
  if (!acquireCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (invalidateCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  +[RBAssertionBatchContext contextForProcess:acquisitionCompletionPolicy:withDescriptorsToAcquire:identifiersToInvalidate:daemonContext:];
LABEL_4:
  _init = [[RBAssertionBatchContext alloc] _init];
  v16 = _init[2];
  _init[2] = processCopy;
  v17 = processCopy;

  v18 = [acquireCopy copy];
  v19 = _init[3];
  _init[3] = v18;

  v20 = [invalidateCopy copy];
  v21 = _init[4];
  _init[4] = v20;

  _init[6] = policy;

  return _init;
}

- (id)acquisitionContextForDescriptor:(id)descriptor
{
  v4 = [RBAssertionAcquisitionContext contextForProcess:self->_process withDescriptor:descriptor daemonContext:self->_daemonContext];
  [v4 setHoldToken:self->_holdToken];
  [v4 setUnitTesting:self->_unitTesting];
  [v4 setAllowAbstractTarget:self->_allowAbstractTarget];
  [v4 setAcquisitionPolicy:self->_acquisitionPolicy];
  [v4 setLaunchAssertion:self->_launchAssertion];
  [v4 setTargetClientRestriction:self->_targetClientRestriction];

  return v4;
}

+ (void)contextForProcess:withDescriptorsToAcquire:identifiersToInvalidate:daemonContext:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"process" object:? file:? lineNumber:? description:?];
}

+ (void)contextForProcess:withDescriptorsToAcquire:identifiersToInvalidate:daemonContext:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"descriptors" object:? file:? lineNumber:? description:?];
}

+ (void)contextForProcess:withDescriptorsToAcquire:identifiersToInvalidate:daemonContext:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"identifiers" object:? file:? lineNumber:? description:?];
}

+ (void)contextForProcess:acquisitionCompletionPolicy:withDescriptorsToAcquire:identifiersToInvalidate:daemonContext:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"process" object:? file:? lineNumber:? description:?];
}

+ (void)contextForProcess:acquisitionCompletionPolicy:withDescriptorsToAcquire:identifiersToInvalidate:daemonContext:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"descriptors" object:? file:? lineNumber:? description:?];
}

+ (void)contextForProcess:acquisitionCompletionPolicy:withDescriptorsToAcquire:identifiersToInvalidate:daemonContext:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"identifiers" object:? file:? lineNumber:? description:?];
}

@end