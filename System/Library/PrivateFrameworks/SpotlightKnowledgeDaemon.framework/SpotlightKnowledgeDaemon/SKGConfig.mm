@interface SKGConfig
- (SKGConfig)initWithConfigPath:(id)a3;
- (SKGConfig)initWithConfigPath:(id)a3 resourceDirectoryPath:(id)a4 resourceVersion:(int64_t)a5;
- (void)readConfig;
- (void)updateConfig;
@end

@implementation SKGConfig

- (SKGConfig)initWithConfigPath:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SKGConfig;
  v5 = [(SKGConfig *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4];
    v7 = *(v5 + 2);
    *(v5 + 2) = v6;

    *(v5 + 24) = vdupq_n_s64(0x7FFFFFFFuLL);
    [v5 readConfig];
  }

  return v5;
}

- (SKGConfig)initWithConfigPath:(id)a3 resourceDirectoryPath:(id)a4 resourceVersion:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = SKGConfig;
  v10 = [(SKGConfig *)&v14 init];
  if (v10)
  {
    v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8];
    configURL = v10->_configURL;
    v10->_configURL = v11;

    objc_storeStrong(&v10->_resourcePath, a4);
    v10->_currentResourceVersion = a5;
    v10->_currentReleaseVersion = 3;
    [(SKGConfig *)v10 updateConfig];
  }

  return v10;
}

- (void)readConfig
{
  if (!self->_configURL)
  {
    return;
  }

  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [(NSURL *)self->_configURL path];
  v5 = [v3 fileExistsAtPath:v4];

  if (!v5)
  {
    return;
  }

  v6 = MEMORY[0x277CBEA90];
  v7 = [(NSURL *)self->_configURL path];
  v21 = [v6 dataWithContentsOfFile:v7];

  v8 = *MEMORY[0x277CBECE8];
  v9 = v21;
  [v21 bytes];
  [v21 length];
  v10 = _MDPlistContainerCreateWithBytes();
  if (v10)
  {
    v11 = v10;
    v12 = _MDPlistContainerCopyRootObject();
    v13 = [v12 objectForKeyedSubscript:@"ReleaseVersion"];
    if (v13)
    {
      resourcePath = v13;
      v15 = [v12 objectForKeyedSubscript:@"ResourceVersion"];
      if (!v15)
      {
LABEL_8:

        goto LABEL_9;
      }

      v16 = v15;
      v17 = [v12 objectForKeyedSubscript:@"ResourcePath"];

      if (v17)
      {
        v18 = [v12 objectForKey:@"ReleaseVersion"];
        self->_currentReleaseVersion = [v18 intValue];

        v19 = [v12 objectForKey:@"ResourceVersion"];
        self->_currentResourceVersion = [v19 intValue];

        v20 = [v12 objectForKey:@"ResourcePath"];
        resourcePath = self->_resourcePath;
        self->_resourcePath = v20;
        goto LABEL_8;
      }
    }

LABEL_9:
    CFRelease(v11);
  }
}

- (void)updateConfig
{
  v18[3] = *MEMORY[0x277D85DE8];
  if (self->_configURL)
  {
    v17[0] = @"ReleaseVersion";
    v3 = [MEMORY[0x277CCABB0] numberWithInteger:self->_currentReleaseVersion];
    v18[0] = v3;
    v17[1] = @"ResourceVersion";
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_currentResourceVersion];
    v17[2] = @"ResourcePath";
    resourcePath = self->_resourcePath;
    v18[1] = v4;
    v18[2] = resourcePath;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];

    v7 = *MEMORY[0x277CBECE8];
    v8 = _MDPlistContainerCreateWithObject();
    if (v8)
    {
      v9 = v8;
      Bytes = _MDPlistContainerGetBytes();
      Length = _MDPlistContainerGetLength();
      if (Bytes)
      {
        v12 = Length == 0;
      }

      else
      {
        v12 = 1;
      }

      if (!v12)
      {
        v13 = [MEMORY[0x277CBEA90] dataWithBytes:Bytes length:Length];
        v14 = [MEMORY[0x277CCAA00] defaultManager];
        v15 = [(NSURL *)self->_configURL path];
        [v14 createFileAtPath:v15 contents:v13 attributes:0];
      }

      CFRelease(v9);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end