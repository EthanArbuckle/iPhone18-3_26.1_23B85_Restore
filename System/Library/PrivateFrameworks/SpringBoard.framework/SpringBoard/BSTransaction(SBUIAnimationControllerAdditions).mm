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
  v3 = [a1 childTransactions];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * i) coordinatingAnimationControllers];
        if (v8)
        {
          [v2 unionSet:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

@end