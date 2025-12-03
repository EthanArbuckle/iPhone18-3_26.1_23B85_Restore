@interface RBAssertionAcquisitionContext
+ (id)contextForProcess:(id)process withDescriptor:(id)descriptor daemonContext:(id)context;
@end

@implementation RBAssertionAcquisitionContext

+ (id)contextForProcess:(id)process withDescriptor:(id)descriptor daemonContext:(id)context
{
  v24 = *MEMORY[0x277D85DE8];
  processCopy = process;
  descriptorCopy = descriptor;
  contextCopy = context;
  if (processCopy)
  {
    if (descriptorCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    +[RBAssertionAcquisitionContext contextForProcess:withDescriptor:daemonContext:];
    if (descriptorCopy)
    {
      goto LABEL_3;
    }
  }

  +[RBAssertionAcquisitionContext contextForProcess:withDescriptor:daemonContext:];
LABEL_3:
  v11 = objc_alloc_init(RBAssertionAcquisitionContext);
  objc_storeStrong(&v11->_process, process);
  objc_storeStrong(&v11->_descriptor, descriptor);
  objc_storeStrong(&v11->_daemonContext, context);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  attributes = [descriptorCopy attributes];
  v13 = [attributes countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(attributes);
        }

        [*(*(&v19 + 1) + 8 * i) applyToAcquisitionContext:v11];
      }

      v14 = [attributes countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (void)contextForProcess:withDescriptor:daemonContext:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"process" object:? file:? lineNumber:? description:?];
}

+ (void)contextForProcess:withDescriptor:daemonContext:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"descriptor" object:? file:? lineNumber:? description:?];
}

@end