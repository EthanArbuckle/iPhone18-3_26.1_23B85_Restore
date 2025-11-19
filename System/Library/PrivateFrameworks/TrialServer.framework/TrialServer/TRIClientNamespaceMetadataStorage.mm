@interface TRIClientNamespaceMetadataStorage
@end

@implementation TRIClientNamespaceMetadataStorage

void __85__TRIClientNamespaceMetadataStorage_Server__mergeNamespaceMetadata_forNamespaceName___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) loadNamespaceMetadataForNamespaceName:*(a1 + 40) error:0];
  v3 = v2;
  if (v2 && (v4 = [v2 compatibilityVersion], v4 == objc_msgSend(*(a1 + 48), "compatibilityVersion")))
  {
    v5 = v3;
    v6 = [*(a1 + 48) factorNamePurgeabilityLevels];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __85__TRIClientNamespaceMetadataStorage_Server__mergeNamespaceMetadata_forNamespaceName___block_invoke_2;
    v22[3] = &unk_279DE2798;
    v7 = v5;
    v23 = v7;
    [v6 enumerateKeysAndEnumsUsingBlock:v22];
  }

  else
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_26F567000, v8, OS_LOG_TYPE_DEBUG, "Found ClientNamespaceMetadata with different compatibility version, overwriting", buf, 2u);
    }

    v7 = *(a1 + 48);
  }

  v9 = [*(a1 + 32) urlForNamespaceMetadataForNamespaceName:*(a1 + 40)];
  v10 = [v7 data];
  if (!v10)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"TRIClientNamespaceMetadataStorage+Server.m" lineNumber:51 description:{@"Expression was unexpectedly nil/false: %@", @"[mergedNamespaceMetadata data]"}];
  }

  v11 = [v9 URLByDeletingLastPathComponent];
  v12 = [v11 path];

  if (!v12)
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"TRIClientNamespaceMetadataStorage+Server.m" lineNumber:52 description:{@"Expression was unexpectedly nil/false: %@", @"[[metadataURL URLByDeletingLastPathComponent] path]"}];
  }

  if (([MEMORY[0x277CCAA00] triIdempotentCreateDirectoryOrFaultWithPath:v12] & 1) == 0)
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  v21 = 0;
  v13 = [v10 writeToURL:v9 options:268435457 error:&v21];
  v14 = v21;
  if ((v13 & 1) == 0)
  {
    v15 = TRILogCategory_Server();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 40);
      v18 = [*(a1 + 48) compatibilityVersion];
      *buf = 138543874;
      v25 = v17;
      v26 = 1024;
      v27 = v18;
      v28 = 2114;
      v29 = v14;
      _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "Failed to write TRIClientNamespaceMetadata for namespace %{public}@ and compatibility version %u: %{public}@", buf, 0x1Cu);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __85__TRIClientNamespaceMetadataStorage_Server__mergeNamespaceMetadata_forNamespaceName___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 factorNamePurgeabilityLevels];
  [v6 setEnum:a3 forKey:v5];
}

void __121__TRIClientNamespaceMetadataStorage_Server__removeOutdatedNamespaceMetadataForNamespaceName_currentCompatibilityVersion___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v17 = 0;
  v4 = [v2 loadNamespaceMetadataForNamespaceName:v3 error:&v17];
  v5 = v17;
  if (v5)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  if (!v4 || [v4 compatibilityVersion] == *(a1 + 64))
  {
    v6 = 1;
    v7 = v5;
LABEL_6:
    *(*(*(a1 + 48) + 8) + 24) = v6;
    goto LABEL_7;
  }

  v9 = [*(a1 + 32) urlForNamespaceMetadataForNamespaceName:*(a1 + 40)];
  v7 = [v9 path];

  if (!v7)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"TRIClientNamespaceMetadataStorage+Server.m" lineNumber:90 description:{@"Expression was unexpectedly nil/false: %@", @"[[self urlForNamespaceMetadataForNamespaceName:namespaceName] path]"}];
  }

  if (unlink([v7 fileSystemRepresentation]) && *__error() != 2)
  {
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 40);
      v12 = [v4 compatibilityVersion];
      v13 = __error();
      v14 = strerror(*v13);
      v15 = *__error();
      *buf = 138544130;
      v19 = v11;
      v20 = 1024;
      v21 = v12;
      v22 = 2080;
      v23 = v14;
      v24 = 1024;
      v25 = v15;
      _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "Failed to delete outdated TRIClientNamespaceMetadata for namespace %{public}@ and compatibility version %u: %s (%d)", buf, 0x22u);
    }

    v6 = 0;
    goto LABEL_6;
  }

LABEL_7:

  v8 = *MEMORY[0x277D85DE8];
}

@end