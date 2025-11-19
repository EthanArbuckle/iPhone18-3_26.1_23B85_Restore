@interface HDSPEnvironmentContext
+ (id)contextWithSource:(id)a3;
- (HDSPEnvironmentContext)initWithSource:(id)a3 changeEvaluation:(id)a4;
- (id)contextByApplyingChangeEvaluation:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
@end

@implementation HDSPEnvironmentContext

+ (id)contextWithSource:(id)a3
{
  v3 = a3;
  v4 = [[HDSPEnvironmentContext alloc] initWithSource:v3 changeEvaluation:0];

  return v4;
}

- (id)contextByApplyingChangeEvaluation:(id)a3
{
  v13[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [HDSPEnvironmentContext alloc];
  v6 = v5;
  source = self->_source;
  if (self->_changeEvaluation)
  {
    v13[0] = self->_changeEvaluation;
    v13[1] = v4;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
    v9 = [HDSPSleepScheduleModelChangeEvaluation combinedEvaluation:v8];
    v10 = [(HDSPEnvironmentContext *)v6 initWithSource:source changeEvaluation:v9];
  }

  else
  {
    v10 = [(HDSPEnvironmentContext *)v5 initWithSource:self->_source changeEvaluation:v4];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (HDSPEnvironmentContext)initWithSource:(id)a3 changeEvaluation:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = HDSPEnvironmentContext;
  v9 = [(HDSPEnvironmentContext *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_source, a3);
    objc_storeStrong(&v10->_changeEvaluation, a4);
    v11 = v10;
  }

  return v10;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(HDSPEnvironmentContext *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v5 = [(HDSPEnvironmentContext *)self source];
  v6 = [v4 appendObject:v5 withName:@"source"];

  v7 = [(HDSPEnvironmentContext *)self changeEvaluation];
  v8 = [v4 appendObject:v7 withName:@"changeEvaluation" skipIfNil:1];

  return v4;
}

@end