@interface HDSPEnvironmentContext
+ (id)contextWithSource:(id)source;
- (HDSPEnvironmentContext)initWithSource:(id)source changeEvaluation:(id)evaluation;
- (id)contextByApplyingChangeEvaluation:(id)evaluation;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
@end

@implementation HDSPEnvironmentContext

+ (id)contextWithSource:(id)source
{
  sourceCopy = source;
  v4 = [[HDSPEnvironmentContext alloc] initWithSource:sourceCopy changeEvaluation:0];

  return v4;
}

- (id)contextByApplyingChangeEvaluation:(id)evaluation
{
  v13[2] = *MEMORY[0x277D85DE8];
  evaluationCopy = evaluation;
  v5 = [HDSPEnvironmentContext alloc];
  v6 = v5;
  source = self->_source;
  if (self->_changeEvaluation)
  {
    v13[0] = self->_changeEvaluation;
    v13[1] = evaluationCopy;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
    v9 = [HDSPSleepScheduleModelChangeEvaluation combinedEvaluation:v8];
    v10 = [(HDSPEnvironmentContext *)v6 initWithSource:source changeEvaluation:v9];
  }

  else
  {
    v10 = [(HDSPEnvironmentContext *)v5 initWithSource:self->_source changeEvaluation:evaluationCopy];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (HDSPEnvironmentContext)initWithSource:(id)source changeEvaluation:(id)evaluation
{
  sourceCopy = source;
  evaluationCopy = evaluation;
  v13.receiver = self;
  v13.super_class = HDSPEnvironmentContext;
  v9 = [(HDSPEnvironmentContext *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_source, source);
    objc_storeStrong(&v10->_changeEvaluation, evaluation);
    v11 = v10;
  }

  return v10;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(HDSPEnvironmentContext *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  source = [(HDSPEnvironmentContext *)self source];
  v6 = [v4 appendObject:source withName:@"source"];

  changeEvaluation = [(HDSPEnvironmentContext *)self changeEvaluation];
  v8 = [v4 appendObject:changeEvaluation withName:@"changeEvaluation" skipIfNil:1];

  return v4;
}

@end