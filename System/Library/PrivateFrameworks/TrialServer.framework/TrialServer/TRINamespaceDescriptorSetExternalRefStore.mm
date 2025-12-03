@interface TRINamespaceDescriptorSetExternalRefStore
- (BOOL)hasReferenceToPath:(id)path;
- (TRINamespaceDescriptorSetExternalRefStore)initWithServerContext:(id)context;
@end

@implementation TRINamespaceDescriptorSetExternalRefStore

- (TRINamespaceDescriptorSetExternalRefStore)initWithServerContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = TRINamespaceDescriptorSetExternalRefStore;
  v6 = [(TRINamespaceDescriptorSetExternalRefStore *)&v9 init];
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
  v5 = [TRINamespaceDescriptorSetStorage alloc];
  paths = [(TRIServerContext *)self->_context paths];
  v7 = [(TRINamespaceDescriptorSetStorage *)v5 initWithPaths:paths];

  parentDirForNamespaceDescriptorSets = [(TRINamespaceDescriptorSetStorage *)v7 parentDirForNamespaceDescriptorSets];
  v9 = [parentDirForNamespaceDescriptorSets stringByAppendingString:@"/"];

  triStringByResolvingSymlinksInPath = [pathCopy triStringByResolvingSymlinksInPath];
  triStringByResolvingSymlinksInPath2 = [v9 triStringByResolvingSymlinksInPath];
  v12 = [triStringByResolvingSymlinksInPath hasPrefix:triStringByResolvingSymlinksInPath2];

  if (v12)
  {
    lastPathComponent = [pathCopy lastPathComponent];
    v14 = lastPathComponent;
    if (lastPathComponent && [lastPathComponent triIsPathSafePlausibleUniqueId])
    {
      experimentDatabase = [(TRIServerContext *)self->_context experimentDatabase];
      v16 = [experimentDatabase hasRecordReferencingTreatmentId:v14 withReferenceType:3];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end