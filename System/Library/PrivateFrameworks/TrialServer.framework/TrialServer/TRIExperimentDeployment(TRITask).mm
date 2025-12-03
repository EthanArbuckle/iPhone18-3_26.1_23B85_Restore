@interface TRIExperimentDeployment(TRITask)
- (id)shortDesc;
- (id)taskTag;
@end

@implementation TRIExperimentDeployment(TRITask)

- (id)shortDesc
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  experimentId = [self experimentId];
  v4 = [v2 initWithFormat:@"%@.%d", experimentId, objc_msgSend(self, "deploymentId")];

  return v4;
}

- (id)taskTag
{
  v2 = MEMORY[0x277CCACA8];
  experimentId = [self experimentId];
  if ([self hasDeploymentId])
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(self, "deploymentId")}];
    v5 = [v2 stringWithFormat:@"%@.%@", experimentId, v4];
  }

  else
  {
    v5 = [v2 stringWithFormat:@"%@.%@", experimentId, @"_"];
  }

  return v5;
}

@end