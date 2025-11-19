@interface PTVFXResourcesLogger
- (PTVFXResourcesLogger)initWithName:(id)a3 index:(int)a4;
- (id)progressHandler;
@end

@implementation PTVFXResourcesLogger

- (PTVFXResourcesLogger)initWithName:(id)a3 index:(int)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PTVFXResourcesLogger;
  v8 = [(PTVFXResourcesLogger *)&v11 init];
  objc_storeStrong(&v8->_name, a3);
  v8->_index = a4;
  v8->_verboseLogging = 0;
  kdebug_trace();
  if (v8->_verboseLogging)
  {
    v9 = _PTLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PTVFXResourcesLogger initWithName:v7 index:v9];
    }
  }

  return v8;
}

- (id)progressHandler
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__PTVFXResourcesLogger_progressHandler__block_invoke;
  v4[3] = &unk_278523360;
  v4[4] = self;
  v2 = MEMORY[0x22AA50020](v4, a2);

  return v2;
}

void __39__PTVFXResourcesLogger_progressHandler__block_invoke(uint64_t a1, void *a2, _BYTE *a3, float a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v9 = *(a1 + 32);
  v8 = a1 + 32;
  if (*(v9 + 20) == 1)
  {
    v10 = _PTLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = *(*v8 + 8);
      v13 = *a3;
      v14 = 138412802;
      v15 = v12;
      v16 = 2048;
      v17 = a4;
      v18 = 1024;
      v19 = v13;
      _os_log_error_impl(&dword_2243FB000, v10, OS_LOG_TYPE_ERROR, "VFX Init %@ progress %f stop %i ", &v14, 0x1Cu);
    }
  }

  if (v7)
  {
    v11 = _PTLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __39__PTVFXResourcesLogger_progressHandler__block_invoke_cold_1(v8, v7, v11);
    }
  }

  if (a4 == 1.0 || (*a3 & 1) != 0)
  {
    kdebug_trace();
  }
}

- (void)initWithName:(uint64_t)a1 index:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2243FB000, a2, OS_LOG_TYPE_ERROR, "VFX Init Start %@", &v2, 0xCu);
}

void __39__PTVFXResourcesLogger_progressHandler__block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *(*a1 + 8);
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_1_6(&dword_2243FB000, a2, a3, "VFX Init %@ error %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

@end