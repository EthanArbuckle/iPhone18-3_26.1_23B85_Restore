@interface SBKeyboardFocusResolutionPipeline
- (SBKeyboardFocusResolutionPipeline)initWithResolutionStages:(id)stages;
- (void)generateKeyboardFocusPolicy:(id)policy resolutionContext:(id)context;
@end

@implementation SBKeyboardFocusResolutionPipeline

- (SBKeyboardFocusResolutionPipeline)initWithResolutionStages:(id)stages
{
  stagesCopy = stages;
  v9.receiver = self;
  v9.super_class = SBKeyboardFocusResolutionPipeline;
  v5 = [(SBKeyboardFocusResolutionPipeline *)&v9 init];
  if (v5)
  {
    v6 = [stagesCopy copy];
    stages = v5->_stages;
    v5->_stages = v6;
  }

  return v5;
}

- (void)generateKeyboardFocusPolicy:(id)policy resolutionContext:(id)context
{
  v19 = *MEMORY[0x277D85DE8];
  policyCopy = policy;
  contextCopy = context;
  v17 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_stages;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v14 != v11)
      {
        objc_enumerationMutation(v8);
      }

      [*(*(&v13 + 1) + 8 * v12) resolveKeyboardFocusPolicy:policyCopy context:contextCopy stop:{&v17, v13}];
      if (v17)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v18 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

@end