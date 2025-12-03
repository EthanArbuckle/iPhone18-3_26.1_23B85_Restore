@interface SBAnalyticsStateMachineEventHandler
- (BOOL)handleEvent:(unint64_t)event withContext:(id)context;
- (SBAnalyticsStateMachineEventHandler)init;
@end

@implementation SBAnalyticsStateMachineEventHandler

- (SBAnalyticsStateMachineEventHandler)init
{
  v7.receiver = self;
  v7.super_class = SBAnalyticsStateMachineEventHandler;
  v2 = [(SBAnalyticsStateMachineEventHandler *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_currentState = 0;
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    edges = v3->_edges;
    v3->_edges = v4;
  }

  return v3;
}

- (BOOL)handleEvent:(unint64_t)event withContext:(id)context
{
  v20 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_edges;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([v12 fromState] == self->_currentState)
        {
          v13 = [v12 handleEvent:event withContext:contextCopy];
          if (self->_currentState != v13)
          {
            self->_currentState = v13;
            goto LABEL_12;
          }
        }
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return 1;
}

@end