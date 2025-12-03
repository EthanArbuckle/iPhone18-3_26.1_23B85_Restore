@interface MFAttachmentDataProvider
+ (id)dataProviderWithPath:(id)path;
+ (id)dataProviderWithURL:(id)l;
- (BOOL)exists;
- (BOOL)save:(id)save;
- (MFAttachmentDataProvider)initWithURL:(id)l;
- (id)_fileAttributes:(id)attributes;
- (id)data;
- (id)errorWithMessage:(id)message code:(int64_t)code;
- (void)dealloc;
@end

@implementation MFAttachmentDataProvider

+ (id)dataProviderWithURL:(id)l
{
  lCopy = l;
  v5 = [[self alloc] initWithURL:lCopy];

  return v5;
}

+ (id)dataProviderWithPath:(id)path
{
  if (path)
  {
    v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:?];
    v5 = [[self alloc] initWithURL:v4];
  }

  else
  {
    v6 = vm_imap_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_2720B1000, v6, OS_LOG_TYPE_DEFAULT, "#Attachments nil path detected in initializer", v8, 2u);
    }

    v5 = 0;
  }

  return v5;
}

- (MFAttachmentDataProvider)initWithURL:(id)l
{
  lCopy = l;
  v6 = [(MFAttachmentDataProvider *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, l);
  }

  return v7;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFAttachmentDataProvider;
  [(MFAttachmentDataProvider *)&v2 dealloc];
}

- (id)errorWithMessage:(id)message code:(int64_t)code
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA9B8];
  v11 = *MEMORY[0x277CCA450];
  v12[0] = message;
  v5 = MEMORY[0x277CBEAC0];
  messageCopy = message;
  v7 = [v5 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v4 errorWithDomain:@"MFAttachmentDataProviderErrorDomain" code:0 userInfo:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)exists
{
  _isFileURL = [(MFAttachmentDataProvider *)self _isFileURL];
  if (_isFileURL)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    _path = [(MFAttachmentDataProvider *)self _path];
    v6 = [defaultManager fileExistsAtPath:_path];

    LOBYTE(_isFileURL) = v6;
  }

  return _isFileURL;
}

- (id)_fileAttributes:(id)attributes
{
  attributesCopy = attributes;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
  if (attributesCopy)
  {
    v5 = strtoul([attributesCopy vf_lossyDefaultCStringBytes], 0, 8) & 0x1FF;
    if (v5)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v5];
      [v4 setObject:v6 forKey:*MEMORY[0x277CCA180]];
    }
  }

  return v4;
}

- (BOOL)save:(id)save
{
  v22 = *MEMORY[0x277D85DE8];
  saveCopy = save;
  _path = [(MFAttachmentDataProvider *)self _path];
  v6 = [_path copy];

  stringByDeletingLastPathComponent = [v6 stringByDeletingLastPathComponent];
  if (stringByDeletingLastPathComponent)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v17 = 0;
    v9 = [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v17];
    v10 = v17;
    if (v9)
    {
      v11 = MEMORY[0x277CBEB38];
      v12 = [(MFAttachmentDataProvider *)self _fileAttributes:0];
      v13 = [v11 dictionaryWithDictionary:v12];

      [v13 setObject:*MEMORY[0x277CCA198] forKey:*MEMORY[0x277CCA1B0]];
      if (([defaultManager createFileAtPath:v6 contents:saveCopy attributes:v13] & 1) == 0)
      {
        v14 = vm_imap_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v19 = v6;
          v20 = 2112;
          v21 = v10;
          _os_log_impl(&dword_2720B1000, v14, OS_LOG_TYPE_DEFAULT, "#Attachments Failed to create file for attachment %@: %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v13 = vm_imap_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v19 = stringByDeletingLastPathComponent;
        v20 = 2112;
        v21 = v10;
        _os_log_impl(&dword_2720B1000, v13, OS_LOG_TYPE_DEFAULT, "#Attachments Failed to create directory for attachment %@: %@", buf, 0x16u);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)data
{
  v2 = MEMORY[0x277D24F00];
  _path = [(MFAttachmentDataProvider *)self _path];
  v4 = [v2 dataWithContentsOfFile:_path];

  return v4;
}

@end