@interface SBKeyboardFocusPolicyEnforcerPipeline
- (SBKeyboardFocusPolicyEnforcerPipeline)init;
- (SBKeyboardFocusPolicyEnforcerPipeline)initWithEnforcers:(id)enforcers;
- (void)enforce:(id)enforce;
- (void)invalidate;
- (void)stopEnforcing;
@end

@implementation SBKeyboardFocusPolicyEnforcerPipeline

- (SBKeyboardFocusPolicyEnforcerPipeline)init
{
  v6.receiver = self;
  v6.super_class = SBKeyboardFocusPolicyEnforcerPipeline;
  v2 = [(SBKeyboardFocusPolicyEnforcerPipeline *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    policyEnforcers = v2->_policyEnforcers;
    v2->_policyEnforcers = v3;
  }

  return v2;
}

- (SBKeyboardFocusPolicyEnforcerPipeline)initWithEnforcers:(id)enforcers
{
  enforcersCopy = enforcers;
  v9.receiver = self;
  v9.super_class = SBKeyboardFocusPolicyEnforcerPipeline;
  v5 = [(SBKeyboardFocusPolicyEnforcerPipeline *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:enforcersCopy];
    policyEnforcers = v5->_policyEnforcers;
    v5->_policyEnforcers = v6;
  }

  return v5;
}

- (void)enforce:(id)enforce
{
  v17 = *MEMORY[0x277D85DE8];
  enforceCopy = enforce;
  mEMORY[0x277CF0668] = [MEMORY[0x277CF0668] sharedInstance];
  v6 = [mEMORY[0x277CF0668] transactionAssertionWithReason:@"SBKeyboardFocusPolicyEnforcerPipeline"];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->_policyEnforcers;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) enforce:{enforceCopy, v12}];
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  [v6 invalidate];
}

- (void)stopEnforcing
{
  v15 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CF0668] = [MEMORY[0x277CF0668] sharedInstance];
  v4 = [mEMORY[0x277CF0668] transactionAssertionWithReason:@"SBKeyboardFocusPolicyEnforcerPipeline"];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_policyEnforcers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) stopEnforcing];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [v4 invalidate];
}

- (void)invalidate
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_policyEnforcers;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) invalidate];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

@end