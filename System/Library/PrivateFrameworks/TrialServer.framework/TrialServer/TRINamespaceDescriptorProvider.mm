@interface TRINamespaceDescriptorProvider
+ (id)_descriptorFromDynamicNamespaceRecord:(id)a3;
+ (id)providerWithNamespaceDatabase:(id)a3 defaultDescriptorDirectoryPath:(id)a4;
- (TRINamespaceDescriptorProvider)initWithNamespaceDatabase:(id)a3 defaultDescriptorDirectoryPath:(id)a4;
- (id)descriptorWithNamespaceName:(id)a3;
@end

@implementation TRINamespaceDescriptorProvider

+ (id)providerWithNamespaceDatabase:(id)a3 defaultDescriptorDirectoryPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithNamespaceDatabase:v7 defaultDescriptorDirectoryPath:v6];

  return v8;
}

- (TRINamespaceDescriptorProvider)initWithNamespaceDatabase:(id)a3 defaultDescriptorDirectoryPath:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"TRINamespaceDescriptorProvider.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"namespaceDatabase"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x277CCA890] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"TRINamespaceDescriptorProvider.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"descriptorDirectory"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = TRINamespaceDescriptorProvider;
  v11 = [(TRINamespaceDescriptorProvider *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_namespaceDatabase, a3);
    objc_storeStrong(&v12->_descriptorDirectory, a4);
  }

  return v12;
}

- (id)descriptorWithNamespaceName:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D73750] loadWithNamespaceName:v4 fromDirectory:self->_descriptorDirectory];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(TRINamespaceDatabase *)self->_namespaceDatabase dynamicNamespaceRecordWithNamespaceName:v4];
    if (v8)
    {
      v7 = [TRINamespaceDescriptorProvider _descriptorFromDynamicNamespaceRecord:v8];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

void __73__TRINamespaceDescriptorProvider__dynamicDescriptorsForContainer_teamId___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 appContainer];
  v4 = [v3 fetchStatus];

  if (v4 != 2)
  {
    v5 = *(a1 + 32);
    v6 = [TRINamespaceDescriptorProvider _descriptorFromDynamicNamespaceRecord:v7];
    [v5 addObject:v6];
  }
}

+ (id)_descriptorFromDynamicNamespaceRecord:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 defaultsFileURL];
  [v4 setFactorsURL:v5];

  v6 = [v3 appContainer];
  [v4 setAppContainer:v6];

  [v4 setCloudKitContainerId:{objc_msgSend(v3, "cloudKitContainer")}];
  v7 = objc_alloc(MEMORY[0x277D73750]);
  v8 = [v3 name];
  v9 = [v3 compatibilityVersion];

  v10 = [v7 initWithNamespaceName:v8 downloadNCV:v9 optionalParams:v4];

  return v10;
}

@end