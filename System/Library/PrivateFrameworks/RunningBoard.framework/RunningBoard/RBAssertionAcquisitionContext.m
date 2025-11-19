@interface RBAssertionAcquisitionContext
+ (id)contextForProcess:(id)a3 withDescriptor:(id)a4 daemonContext:(id)a5;
@end

@implementation RBAssertionAcquisitionContext

+ (id)contextForProcess:(id)a3 withDescriptor:(id)a4 daemonContext:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    +[RBAssertionAcquisitionContext contextForProcess:withDescriptor:daemonContext:];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  +[RBAssertionAcquisitionContext contextForProcess:withDescriptor:daemonContext:];
LABEL_3:
  v11 = objc_alloc_init(RBAssertionAcquisitionContext);
  objc_storeStrong(&v11->_process, a3);
  objc_storeStrong(&v11->_descriptor, a4);
  objc_storeStrong(&v11->_daemonContext, a5);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = [v9 attributes];
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v12);
        }

        [*(*(&v19 + 1) + 8 * i) applyToAcquisitionContext:v11];
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
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