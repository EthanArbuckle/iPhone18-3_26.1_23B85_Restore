@interface TRIRolloutDeploymentRefStore
- (BOOL)hasReferenceToPath:(id)a3;
- (TRIRolloutDeploymentRefStore)initWithServerContext:(id)a3;
@end

@implementation TRIRolloutDeploymentRefStore

- (TRIRolloutDeploymentRefStore)initWithServerContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TRIRolloutDeploymentRefStore;
  v6 = [(TRIRolloutDeploymentRefStore *)&v9 init];
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

  v8 = [(TRINamespaceResolverStorage *)v7 parentDirForRolloutDeployments];
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
      v23 = -1;
      v14 = 0;
      if ([MEMORY[0x277D73748] convertFromString:v16 usingBase:10 toI64:&v23] && !(v23 >> 31))
      {
        v17 = objc_alloc(MEMORY[0x277D737C8]);
        v18 = [v17 initWithRolloutId:v15 deploymentId:v23];
        v19 = [(TRIServerContext *)self->_context rolloutDatabase];
        v20 = [v19 recordWithDeployment:v18 usingTransaction:0];

        if (v20)
        {
          v21 = [v20 activeFactorPackSetId];
          v14 = v21 != 0;
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