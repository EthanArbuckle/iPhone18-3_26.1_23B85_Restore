@interface NSOperationQueue
@end

@implementation NSOperationQueue

void __69__NSOperationQueue_SPUIAdditions__logStateOperationCountGreaterThan___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) operationCount] > *(a1 + 40))
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v2 = [*(a1 + 32) operations];
    v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v3)
    {
      v4 = v3;
      LODWORD(v5) = 0;
      LODWORD(v6) = 0;
      LODWORD(v7) = 0;
      v8 = *v13;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v2);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          v7 = v7 + [v10 isExecuting];
          v5 = v5 + [v10 isCancelled];
          v6 = v6 + [v10 isFinished];
        }

        v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v4);
    }

    else
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
    }

    NSLog(&cfstr_QueueStateCoun.isa, [*(a1 + 32) operationCount], v7, v5, v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end