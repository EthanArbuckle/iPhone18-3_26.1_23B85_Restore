@interface HDSPSleepScheduleModelChangeEvaluation
+ (id)combinedEvaluation:(id)evaluation;
+ (id)emptyEvaluation;
+ (id)significantChangeWithTopLevelChangeKeys:(id)keys;
- (HDSPSleepScheduleModelChangeEvaluation)initWithIsSignificantChange:(BOOL)change topLevelChangeKeys:(id)keys;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
@end

@implementation HDSPSleepScheduleModelChangeEvaluation

- (HDSPSleepScheduleModelChangeEvaluation)initWithIsSignificantChange:(BOOL)change topLevelChangeKeys:(id)keys
{
  keysCopy = keys;
  v12.receiver = self;
  v12.super_class = HDSPSleepScheduleModelChangeEvaluation;
  v8 = [(HDSPSleepScheduleModelChangeEvaluation *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_isSignificantChange = change;
    objc_storeStrong(&v8->_topLevelChangeKeys, keys);
    v10 = v9;
  }

  return v9;
}

+ (id)combinedEvaluation:(id)evaluation
{
  v21 = *MEMORY[0x277D85DE8];
  evaluationCopy = evaluation;
  v4 = [MEMORY[0x277CBEB58] set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = evaluationCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v8 |= [v11 isSignificantChange];
        topLevelChangeKeys = [v11 topLevelChangeKeys];
        [v4 unionSet:topLevelChangeKeys];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  v13 = [[HDSPSleepScheduleModelChangeEvaluation alloc] initWithIsSignificantChange:v8 & 1 topLevelChangeKeys:v4];
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)emptyEvaluation
{
  v2 = [HDSPSleepScheduleModelChangeEvaluation alloc];
  v3 = [MEMORY[0x277CBEB98] set];
  v4 = [(HDSPSleepScheduleModelChangeEvaluation *)v2 initWithIsSignificantChange:0 topLevelChangeKeys:v3];

  return v4;
}

+ (id)significantChangeWithTopLevelChangeKeys:(id)keys
{
  keysCopy = keys;
  v4 = [[HDSPSleepScheduleModelChangeEvaluation alloc] initWithIsSignificantChange:1 topLevelChangeKeys:keysCopy];

  return v4;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(HDSPSleepScheduleModelChangeEvaluation *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v5 = [v4 appendBool:self->_isSignificantChange withName:@"isSignificantChange" ifEqualTo:1];
  v6 = [v4 appendInteger:-[NSSet count](self->_topLevelChangeKeys withName:{"count"), @"topLevelChangeKeys"}];

  return v4;
}

@end