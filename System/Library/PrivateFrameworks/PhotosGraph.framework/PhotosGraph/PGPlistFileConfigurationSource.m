@interface PGPlistFileConfigurationSource
- (PGPlistFileConfigurationSource)initWithPlistFileURL:(id)a3;
@end

@implementation PGPlistFileConfigurationSource

- (PGPlistFileConfigurationSource)initWithPlistFileURL:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PGPlistFileConfigurationSource;
  v5 = [(PGPlistFileConfigurationSource *)&v16 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v4 path];
  v8 = [v6 fileExistsAtPath:v7];

  if (v8)
  {
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v4];
    configurationData = v5->_configurationData;
    v5->_configurationData = v9;

LABEL_4:
    v11 = v5;
    goto LABEL_8;
  }

  v12 = +[PGLogging sharedLogging];
  v13 = [v12 loggingConnection];

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v18 = v4;
    _os_log_error_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_ERROR, "[PGConfigurationSource] failed to load PlistFile at filePath: %@", buf, 0xCu);
  }

  v11 = 0;
LABEL_8:

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

@end