@interface TRIExperimentDeployment(TRITask)
- (id)shortDesc;
- (id)taskTag;
@end

@implementation TRIExperimentDeployment(TRITask)

- (id)shortDesc
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = [a1 experimentId];
  v4 = [v2 initWithFormat:@"%@.%d", v3, objc_msgSend(a1, "deploymentId")];

  return v4;
}

- (id)taskTag
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [a1 experimentId];
  if ([a1 hasDeploymentId])
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(a1, "deploymentId")}];
    v5 = [v2 stringWithFormat:@"%@.%@", v3, v4];
  }

  else
  {
    v5 = [v2 stringWithFormat:@"%@.%@", v3, @"_"];
  }

  return v5;
}

@end