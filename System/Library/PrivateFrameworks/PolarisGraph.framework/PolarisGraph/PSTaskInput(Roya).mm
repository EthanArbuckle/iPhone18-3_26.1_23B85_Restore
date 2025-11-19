@interface PSTaskInput(Roya)
@end

@implementation PSTaskInput(Roya)

- (uint64_t)initWithResourceKey:()Roya type:capacity:forwardingCount:.cold.1(char **a1)
{
  v13 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "PSInputTypeSynced cannot be set directly. Please use -initSyncedInputWithResourceKey: instead.");
  v2 = __PSGraphLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v9 = 136315394;
    v10 = "[PSTaskInput(Roya) initWithResourceKey:type:capacity:forwardingCount:]";
    v11 = 1024;
    v12 = 24;
    _os_log_impl(&dword_25EC85000, v2, OS_LOG_TYPE_FAULT, "%s:%d PSInputTypeSynced cannot be set directly. Please use -initSyncedInputWithResourceKey: instead.", &v9, 0x12u);
  }

  v3 = OSLogFlushBuffers();
  if (v3)
  {
    v4 = v3;
    v5 = __PSGraphLogSharedInstance();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[PSTaskInput(Roya) initWithResourceKey:type:capacity:forwardingCount:]";
      v11 = 1024;
      v12 = v4;
      _os_log_impl(&dword_25EC85000, v5, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v9, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v6 = *a1;
  v7 = abort_with_reason();
  return [PSDependencyResolver initWithVertices:v7 withParentToEdgeFetcher:? withChildToEdgeFetcher:?];
}

@end