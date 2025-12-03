@interface TRIFactorPackSetExternalReferenceStore
- (BOOL)hasReferenceToPath:(id)path;
- (TRIFactorPackSetExternalReferenceStore)initWithServerContext:(id)context;
@end

@implementation TRIFactorPackSetExternalReferenceStore

- (TRIFactorPackSetExternalReferenceStore)initWithServerContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = TRIFactorPackSetExternalReferenceStore;
  v6 = [(TRIFactorPackSetExternalReferenceStore *)&v9 init];
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
  v5 = [TRIFactorPackSetStorage alloc];
  paths = [(TRIServerContext *)self->_context paths];
  v7 = [(TRIFactorPackSetStorage *)v5 initWithPaths:paths];

  parentDirForFactorPackSets = [(TRIFactorPackSetStorage *)v7 parentDirForFactorPackSets];
  v9 = [parentDirForFactorPackSets stringByAppendingString:@"/"];

  triStringByResolvingSymlinksInPath = [pathCopy triStringByResolvingSymlinksInPath];
  triStringByResolvingSymlinksInPath2 = [v9 triStringByResolvingSymlinksInPath];
  v12 = [triStringByResolvingSymlinksInPath hasPrefix:triStringByResolvingSymlinksInPath2];

  if (v12)
  {
    lastPathComponent = [pathCopy lastPathComponent];
    v14 = TRIValidateFactorPackSetId();

    if (v14)
    {
      rolloutDatabase = [(TRIServerContext *)self->_context rolloutDatabase];
      v16 = [rolloutDatabase hasRecordReferencingFactorPackSetId:v14 withReferenceType:3];

      experimentDatabase = [(TRIServerContext *)self->_context experimentDatabase];
      LOBYTE(rolloutDatabase) = [experimentDatabase hasRecordReferencingFactorPackSetId:v14 withReferenceType:3];

      v18 = v16 | rolloutDatabase;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

@end