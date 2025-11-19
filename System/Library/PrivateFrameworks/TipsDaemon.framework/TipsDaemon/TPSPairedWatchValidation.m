@interface TPSPairedWatchValidation
- (TPSPairedWatchValidation)initWithCapability:(id)a3;
- (void)validateWithCompletion:(id)a3;
@end

@implementation TPSPairedWatchValidation

- (TPSPairedWatchValidation)initWithCapability:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TPSPairedWatchValidation;
  v6 = [(TPSPairedWatchValidation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_capability, a3);
  }

  return v7;
}

- (void)validateWithCompletion:(id)a3
{
  v4 = MEMORY[0x277D2BCF8];
  v5 = a3;
  v6 = [v4 sharedInstance];
  v7 = [v6 getActivePairedDevice];

  if (v7)
  {
    v8 = [(TPSPairedWatchValidation *)self capability];

    if (v8)
    {
      v9 = [(TPSPairedWatchValidation *)self capability];
      v8 = [v7 supportsCapability:v9];
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [(TPSPairedWatchValidation *)self validateWithCompletion:v8, v10];
  }

  v5[2](v5, v8, 0);
}

- (void)validateWithCompletion:(NSObject *)a3 .cold.1(void *a1, char a2, NSObject *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = [a1 name];
  v7 = [a1 capability];
  v9 = 138412802;
  v10 = v6;
  v11 = 2112;
  v12 = v7;
  v13 = 1024;
  v14 = a2 & 1;
  _os_log_debug_impl(&dword_232D6F000, a3, OS_LOG_TYPE_DEBUG, "%@ - capability: %@. Valid: %d", &v9, 0x1Cu);

  v8 = *MEMORY[0x277D85DE8];
}

@end