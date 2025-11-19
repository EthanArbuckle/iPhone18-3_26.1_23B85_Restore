@interface TRIExperimentDeploymentRefStore
- (BOOL)hasReferenceToPath:(id)a3;
- (TRIExperimentDeploymentRefStore)initWithServerContext:(id)a3;
@end

@implementation TRIExperimentDeploymentRefStore

- (TRIExperimentDeploymentRefStore)initWithServerContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TRIExperimentDeploymentRefStore;
  v6 = [(TRIExperimentDeploymentRefStore *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, a3);
  }

  return v7;
}

- (BOOL)hasReferenceToPath:(id)a3
{
  v4 = a3;
  v5 = [TRINamespaceResolverStorage alloc];
  v6 = [(TRIServerContext *)self->_context paths];
  v7 = [(TRINamespaceResolverStorage *)v5 initWithPaths:v6];

  v8 = [(TRINamespaceResolverStorage *)v7 parentDirForExperimentDeployments];
  v9 = [v8 stringByAppendingString:@"/"];

  v10 = [v4 triStringByResolvingSymlinksInPath];
  v11 = [v9 triStringByResolvingSymlinksInPath];
  v12 = [v10 hasPrefix:v11];

  if (v12)
  {
    v13 = [v4 pathComponents];
    if ([v13 count] >= 2)
    {
      v15 = [v13 objectAtIndexedSubscript:{objc_msgSend(v13, "count") - 2}];
      v16 = [v13 objectAtIndexedSubscript:{objc_msgSend(v13, "count") - 1}];
      v22 = -1;
      v14 = 0;
      if ([MEMORY[0x277D73748] convertFromString:v16 usingBase:10 toI64:&v22] && !(v22 >> 31))
      {
        v17 = objc_alloc(MEMORY[0x277D736C0]);
        v18 = [v17 initWithExperimentId:v15 deploymentId:v22];
        v19 = [(TRIServerContext *)self->_context experimentDatabase];
        v20 = [v19 experimentRecordWithExperimentDeployment:v18];

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