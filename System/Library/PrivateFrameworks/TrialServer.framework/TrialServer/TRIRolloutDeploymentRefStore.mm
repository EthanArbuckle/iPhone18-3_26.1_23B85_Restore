@interface TRIRolloutDeploymentRefStore
- (BOOL)hasReferenceToPath:(id)path;
- (TRIRolloutDeploymentRefStore)initWithServerContext:(id)context;
@end

@implementation TRIRolloutDeploymentRefStore

- (TRIRolloutDeploymentRefStore)initWithServerContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = TRIRolloutDeploymentRefStore;
  v6 = [(TRIRolloutDeploymentRefStore *)&v9 init];
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

  parentDirForRolloutDeployments = [(TRINamespaceResolverStorage *)v7 parentDirForRolloutDeployments];
  v9 = [parentDirForRolloutDeployments stringByAppendingString:@"/"];

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
      v23 = -1;
      v14 = 0;
      if ([MEMORY[0x277D73748] convertFromString:v16 usingBase:10 toI64:&v23] && !(v23 >> 31))
      {
        v17 = objc_alloc(MEMORY[0x277D737C8]);
        v18 = [v17 initWithRolloutId:v15 deploymentId:v23];
        rolloutDatabase = [(TRIServerContext *)self->_context rolloutDatabase];
        v20 = [rolloutDatabase recordWithDeployment:v18 usingTransaction:0];

        if (v20)
        {
          activeFactorPackSetId = [v20 activeFactorPackSetId];
          v14 = activeFactorPackSetId != 0;
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