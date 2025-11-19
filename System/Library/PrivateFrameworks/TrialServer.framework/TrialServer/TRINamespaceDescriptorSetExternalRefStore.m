@interface TRINamespaceDescriptorSetExternalRefStore
- (BOOL)hasReferenceToPath:(id)a3;
- (TRINamespaceDescriptorSetExternalRefStore)initWithServerContext:(id)a3;
@end

@implementation TRINamespaceDescriptorSetExternalRefStore

- (TRINamespaceDescriptorSetExternalRefStore)initWithServerContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TRINamespaceDescriptorSetExternalRefStore;
  v6 = [(TRINamespaceDescriptorSetExternalRefStore *)&v9 init];
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
  v5 = [TRINamespaceDescriptorSetStorage alloc];
  v6 = [(TRIServerContext *)self->_context paths];
  v7 = [(TRINamespaceDescriptorSetStorage *)v5 initWithPaths:v6];

  v8 = [(TRINamespaceDescriptorSetStorage *)v7 parentDirForNamespaceDescriptorSets];
  v9 = [v8 stringByAppendingString:@"/"];

  v10 = [v4 triStringByResolvingSymlinksInPath];
  v11 = [v9 triStringByResolvingSymlinksInPath];
  v12 = [v10 hasPrefix:v11];

  if (v12)
  {
    v13 = [v4 lastPathComponent];
    v14 = v13;
    if (v13 && [v13 triIsPathSafePlausibleUniqueId])
    {
      v15 = [(TRIServerContext *)self->_context experimentDatabase];
      v16 = [v15 hasRecordReferencingTreatmentId:v14 withReferenceType:3];
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