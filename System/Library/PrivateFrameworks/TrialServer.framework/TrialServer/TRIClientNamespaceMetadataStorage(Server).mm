@interface TRIClientNamespaceMetadataStorage(Server)
- (uint64_t)mergeNamespaceMetadata:()Server forNamespaceName:;
- (uint64_t)removeOutdatedNamespaceMetadataForNamespaceName:()Server currentCompatibilityVersion:;
@end

@implementation TRIClientNamespaceMetadataStorage(Server)

- (uint64_t)mergeNamespaceMetadata:()Server forNamespaceName:
{
  v7 = a3;
  v8 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  v9 = [self urlForNamespaceMetadataForNamespaceName:v8];
  v10 = MEMORY[0x277D73730];
  path = [v9 path];
  if (!path)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClientNamespaceMetadataStorage+Server.m" lineNumber:29 description:{@"Expression was unexpectedly nil/false: %@", @"[namespaceMetadataUrl path]"}];
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __85__TRIClientNamespaceMetadataStorage_Server__mergeNamespaceMetadata_forNamespaceName___block_invoke;
  v18[3] = &unk_279DE27C0;
  v18[4] = self;
  v12 = v8;
  v19 = v12;
  v13 = v7;
  v20 = v13;
  v21 = &v23;
  v22 = a2;
  v14 = [v10 acquireLockOnPath:path fileLockMode:1 blocking:1 andRunBlock:v18];

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v24 + 24);
  }

  _Block_object_dispose(&v23, 8);
  return v15 & 1;
}

- (uint64_t)removeOutdatedNamespaceMetadataForNamespaceName:()Server currentCompatibilityVersion:
{
  v7 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  v8 = [self urlForNamespaceMetadataForNamespaceName:v7];
  v9 = MEMORY[0x277D73730];
  path = [v8 path];
  if (!path)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClientNamespaceMetadataStorage+Server.m" lineNumber:74 description:{@"Expression was unexpectedly nil/false: %@", @"[namespaceMetadataUrl path]"}];
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __121__TRIClientNamespaceMetadataStorage_Server__removeOutdatedNamespaceMetadataForNamespaceName_currentCompatibilityVersion___block_invoke;
  v16[3] = &unk_279DE27E8;
  v16[4] = self;
  v11 = v7;
  v17 = v11;
  v18 = &v21;
  v20 = a4;
  v19 = a2;
  v12 = [v9 acquireLockOnPath:path fileLockMode:1 blocking:1 andRunBlock:v16];

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v22 + 24);
  }

  _Block_object_dispose(&v21, 8);
  return v13 & 1;
}

@end