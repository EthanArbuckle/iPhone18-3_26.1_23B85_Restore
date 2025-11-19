@interface SKSyncCommand
- (BOOL)returnWithError:(id *)a3;
- (void)onCallbackWithError:(id)a3;
@end

@implementation SKSyncCommand

- (void)onCallbackWithError:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(SKSyncCommand *)self setError:v4];
  if (v4)
  {
    v5 = SKGetOSLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[SKSyncCommand onCallbackWithError:]";
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_26BBB8000, v5, OS_LOG_TYPE_ERROR, "%s: Error details: %@", &v7, 0x16u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)returnWithError:(id *)a3
{
  v5 = [(SKSyncCommand *)self error];

  if (a3 && v5)
  {
    *a3 = [(SKSyncCommand *)self error];
  }

  v6 = [(SKSyncCommand *)self error];
  v7 = v6 == 0;

  return v7;
}

@end