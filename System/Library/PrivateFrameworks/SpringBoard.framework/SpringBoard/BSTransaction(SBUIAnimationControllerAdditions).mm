@interface BSTransaction(SBUIAnimationControllerAdditions)
- (id)coordinatingAnimationControllers;
@end

@implementation BSTransaction(SBUIAnimationControllerAdditions)

- (id)coordinatingAnimationControllers
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  childTransactions = [self childTransactions];
  v4 = [childTransactions countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(childTransactions);
        }

        coordinatingAnimationControllers = [*(*(&v10 + 1) + 8 * i) coordinatingAnimationControllers];
        if (coordinatingAnimationControllers)
        {
          [v2 unionSet:coordinatingAnimationControllers];
        }
      }

      v5 = [childTransactions countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

@end