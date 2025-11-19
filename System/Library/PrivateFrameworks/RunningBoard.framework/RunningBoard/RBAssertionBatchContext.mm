@interface RBAssertionBatchContext
+ (id)contextForProcess:(id)a3 acquisitionCompletionPolicy:(unint64_t)a4 withDescriptorsToAcquire:(id)a5 identifiersToInvalidate:(id)a6 daemonContext:(id)a7;
+ (id)contextForProcess:(id)a3 withDescriptorsToAcquire:(id)a4 identifiersToInvalidate:(id)a5 daemonContext:(id)a6;
- (id)_init;
- (id)acquisitionContextForDescriptor:(id)a3;
@end

@implementation RBAssertionBatchContext

- (id)_init
{
  v3.receiver = self;
  v3.super_class = RBAssertionBatchContext;
  return [(RBAssertionBatchContext *)&v3 init];
}

+ (id)contextForProcess:(id)a3 withDescriptorsToAcquire:(id)a4 identifiersToInvalidate:(id)a5 daemonContext:(id)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_20:
    +[RBAssertionBatchContext contextForProcess:withDescriptorsToAcquire:identifiersToInvalidate:daemonContext:];
    if (v12)
    {
      goto LABEL_4;
    }

    goto LABEL_21;
  }

  +[RBAssertionBatchContext contextForProcess:withDescriptorsToAcquire:identifiersToInvalidate:daemonContext:];
  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (v12)
  {
    goto LABEL_4;
  }

LABEL_21:
  +[RBAssertionBatchContext contextForProcess:withDescriptorsToAcquire:identifiersToInvalidate:daemonContext:];
LABEL_4:
  v26 = v12;
  v27 = a1;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = v11;
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

        v20 = [RBAssertionAcquisitionContext contextForProcess:v10 withDescriptor:*(*(&v28 + 1) + 8 * i) daemonContext:v13, v26, v27, v28];
        v21 = [v20 acquisitionPolicy];
        if (v21 > v17)
        {
          v22 = v21;
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

  v23 = [v27 contextForProcess:v10 acquisitionCompletionPolicy:v17 withDescriptorsToAcquire:v14 identifiersToInvalidate:v26 daemonContext:v13];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (id)contextForProcess:(id)a3 acquisitionCompletionPolicy:(unint64_t)a4 withDescriptorsToAcquire:(id)a5 identifiersToInvalidate:(id)a6 daemonContext:(id)a7
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_8:
    +[RBAssertionBatchContext contextForProcess:acquisitionCompletionPolicy:withDescriptorsToAcquire:identifiersToInvalidate:daemonContext:];
    if (v13)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  +[RBAssertionBatchContext contextForProcess:acquisitionCompletionPolicy:withDescriptorsToAcquire:identifiersToInvalidate:daemonContext:];
  if (!v12)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v13)
  {
    goto LABEL_4;
  }

LABEL_9:
  +[RBAssertionBatchContext contextForProcess:acquisitionCompletionPolicy:withDescriptorsToAcquire:identifiersToInvalidate:daemonContext:];
LABEL_4:
  v15 = [[RBAssertionBatchContext alloc] _init];
  v16 = v15[2];
  v15[2] = v11;
  v17 = v11;

  v18 = [v12 copy];
  v19 = v15[3];
  v15[3] = v18;

  v20 = [v13 copy];
  v21 = v15[4];
  v15[4] = v20;

  v15[6] = a4;

  return v15;
}

- (id)acquisitionContextForDescriptor:(id)a3
{
  v4 = [RBAssertionAcquisitionContext contextForProcess:self->_process withDescriptor:a3 daemonContext:self->_daemonContext];
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