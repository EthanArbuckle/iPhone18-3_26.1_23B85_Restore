@interface SMBShare
- (SMBShare)init;
- (void)dealloc;
- (void)init;
@end

@implementation SMBShare

- (SMBShare)init
{
  v5.receiver = self;
  v5.super_class = SMBShare;
  v2 = [(SMBShare *)&v5 init];
  v3 = v2;
  if (v2 && pthread_mutex_init(&v2->statfs_lock, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBShare init];
    }

    return 0;
  }

  return v3;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->statfs_lock);
  v3.receiver = self;
  v3.super_class = SMBShare;
  [(SMBShare *)&v3 dealloc];
}

- (void)init
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

@end