@interface TRIClientNamespaceMetadataStorage
- (TRIClientNamespaceMetadataStorage)initWithPaths:(id)a3;
- (id)loadNamespaceMetadataForNamespaceName:(id)a3 error:(id *)a4;
- (id)urlForNamespaceMetadataForNamespaceName:(id)a3;
@end

@implementation TRIClientNamespaceMetadataStorage

- (TRIClientNamespaceMetadataStorage)initWithPaths:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TRIClientNamespaceMetadataStorage;
  v6 = [(TRIClientNamespaceMetadataStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_paths, a3);
  }

  return v7;
}

- (id)loadNamespaceMetadataForNamespaceName:(id)a3 error:(id *)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(TRIClientNamespaceMetadataStorage *)self urlForNamespaceMetadataForNamespaceName:v6];
  v24 = 0;
  v8 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:v7 options:1 error:&v24];
  v9 = v24;
  v10 = v9;
  if (!v8)
  {
    v15 = [v9 domain];
    v16 = v15;
    if (v15 == *MEMORY[0x277CCA050])
    {
      v17 = [v10 code];

      if (v17 == 260)
      {
        v18 = TRILogCategory_ClientFramework();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v26 = v6;
          _os_log_debug_impl(&dword_22EA6B000, v18, OS_LOG_TYPE_DEBUG, "No namespace metadata found for namespace name %@", buf, 0xCu);
        }

LABEL_20:
        v14 = 0;
        goto LABEL_21;
      }
    }

    else
    {
    }

    v19 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v10;
      _os_log_error_impl(&dword_22EA6B000, v19, OS_LOG_TYPE_ERROR, "Unable to read metadata URL: %@", buf, 0xCu);
    }

    if (a4)
    {
      v20 = v10;
      v14 = 0;
      *a4 = v10;
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v23 = 0;
  v11 = [(TRIPBMessage *)TRIClientNamespaceMetadata parseFromData:v8 error:&v23];
  v10 = v23;
  if (v10)
  {
    v12 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v10;
      _os_log_error_impl(&dword_22EA6B000, v12, OS_LOG_TYPE_ERROR, "Failed to deserialize TRIClientNamespaceMetadata data with error %@", buf, 0xCu);
    }

    if (a4)
    {
      v13 = v10;
      v14 = 0;
      *a4 = v10;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = v11;
  }

LABEL_21:
  v21 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)urlForNamespaceMetadataForNamespaceName:(id)a3
{
  v13[3] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = MEMORY[0x277CBEBC0];
  v7 = [(TRIPaths *)self->_paths treatmentsDir];
  v13[0] = v7;
  v13[1] = v5;
  v13[2] = @"metadata.pb";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
  v9 = [v6 fileURLWithPathComponents:v8];

  if (!v9)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"TRIClientNamespaceMetadataStorage.m" lineNumber:71 description:{@"Expression was unexpectedly nil/false: %@", @"[NSURL fileURLWithPathComponents:@[[_paths treatmentsDir], namespaceName, @metadata.pb]]"}];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end