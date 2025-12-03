@interface TRIExperimentDeploymentRefStore
- (BOOL)hasReferenceToPath:(id)path;
- (TRIExperimentDeploymentRefStore)initWithServerContext:(id)context;
@end

@implementation TRIExperimentDeploymentRefStore

- (TRIExperimentDeploymentRefStore)initWithServerContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = TRIExperimentDeploymentRefStore;
  v6 = [(TRIExperimentDeploymentRefStore *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
  }

  return v7;
}

- (BOOL)hasReferenceToPath:(id)path
{
  pathCopy = path;
  v5 = [TRINamespaceResolverStorage alloc];
  paths = [(TRIServerContext *)self->_context paths];
  v7 = [(TRINamespaceResolverStorage *)v5 initWithPaths:paths];

  parentDirForExperimentDeployments = [(TRINamespaceResolverStorage *)v7 parentDirForExperimentDeployments];
  v9 = [parentDirForExperimentDeployments stringByAppendingString:@"/"];

  triStringByResolvingSymlinksInPath = [pathCopy triStringByResolvingSymlinksInPath];
  triStringByResolvingSymlinksInPath2 = [v9 triStringByResolvingSymlinksInPath];
  v12 = [triStringByResolvingSymlinksInPath hasPrefix:triStringByResolvingSymlinksInPath2];

  if (v12)
  {
    pathComponents = [pathCopy pathComponents];
    if ([pathComponents count] >= 2)
    {
      v15 = [pathComponents objectAtIndexedSubscript:{objc_msgSend(pathComponents, "count") - 2}];
      v16 = [pathComponents objectAtIndexedSubscript:{objc_msgSend(pathComponents, "count") - 1}];
      v22 = -1;
      v14 = 0;
      if ([MEMORY[0x277D73748] convertFromString:v16 usingBase:10 toI64:&v22] && !(v22 >> 31))
      {
        v17 = objc_alloc(MEMORY[0x277D736C0]);
        v18 = [v17 initWithExperimentId:v15 deploymentId:v22];
        experimentDatabase = [(TRIServerContext *)self->_context experimentDatabase];
        v20 = [experimentDatabase experimentRecordWithExperimentDeployment:v18];

        if (v20)
        {
          v14 = [v20 status] == 1;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end