@interface PLPhotoLibraryPathManager
@end

@implementation PLPhotoLibraryPathManager

uint64_t __89__PLPhotoLibraryPathManager_conveniences__cleanupOutboundSharingFilesWithExpiryInterval___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = PLBackendGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "cleanupOutboundSharingFilesWithExpiryTimeout: Failed to identify url: %@, error: %@", &v8, 0x16u);
  }

  return 1;
}

@end