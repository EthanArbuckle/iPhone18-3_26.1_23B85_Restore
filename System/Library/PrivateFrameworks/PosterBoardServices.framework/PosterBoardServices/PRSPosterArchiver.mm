@interface PRSPosterArchiver
+ (id)archiveConfiguration:(id)configuration format:(int64_t)format error:(id *)error;
+ (id)unarchiveConfigurationAtURL:(id)l format:(int64_t)format error:(id *)error;
+ (id)unarchiveConfigurationFromData:(id)data format:(int64_t)format error:(id *)error;
+ (int64_t)formatForDataAtURL:(id)l;
- (PRSPosterArchiver)init;
- (PRSPosterArchiver)initWithFileManager:(id)manager processHandle:(id)handle unarchivingContainerURL:(id)l;
- (id)archiveConfiguration:(id)configuration format:(int64_t)format error:(id *)error;
- (id)unarchiveConfigurationAtURL:(id)l format:(int64_t)format error:(id *)error;
- (id)unarchiveConfigurationFromData:(id)data format:(int64_t)format error:(id *)error;
@end

@implementation PRSPosterArchiver

+ (int64_t)formatForDataAtURL:(id)l
{
  v3 = [MEMORY[0x1E69C5150] formatForDataAtURL:l];
  if (v3)
  {
    v4 = -1;
  }

  else
  {
    v4 = 0;
  }

  if (v3 == 1)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

+ (id)archiveConfiguration:(id)configuration format:(int64_t)format error:(id *)error
{
  configurationCopy = configuration;
  v8 = objc_alloc_init(PRSPosterArchiver);
  v9 = [(PRSPosterArchiver *)v8 archiveConfiguration:configurationCopy format:format error:error];

  return v9;
}

+ (id)unarchiveConfigurationAtURL:(id)l format:(int64_t)format error:(id *)error
{
  lCopy = l;
  v8 = objc_alloc_init(PRSPosterArchiver);
  v9 = [(PRSPosterArchiver *)v8 unarchiveConfigurationAtURL:lCopy format:format error:error];

  return v9;
}

+ (id)unarchiveConfigurationFromData:(id)data format:(int64_t)format error:(id *)error
{
  dataCopy = data;
  v8 = objc_alloc_init(PRSPosterArchiver);
  v9 = [(PRSPosterArchiver *)v8 unarchiveConfigurationFromData:dataCopy format:format error:error];

  return v9;
}

- (PRSPosterArchiver)init
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(PRSPosterArchiver *)self initWithFileManager:defaultManager];

  return v4;
}

- (PRSPosterArchiver)initWithFileManager:(id)manager processHandle:(id)handle unarchivingContainerURL:(id)l
{
  managerCopy = manager;
  handleCopy = handle;
  lCopy = l;
  v15.receiver = self;
  v15.super_class = PRSPosterArchiver;
  v11 = [(PRSPosterArchiver *)&v15 init];
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x1E69C5150]) initWithFileManager:managerCopy processHandle:handleCopy unarchivingContainerURL:lCopy];
    underlyingArchiver = v11->_underlyingArchiver;
    v11->_underlyingArchiver = v12;
  }

  return v11;
}

- (id)archiveConfiguration:(id)configuration format:(int64_t)format error:(id *)error
{
  _path = [configuration _path];
  if (format)
  {
    v9 = -1;
  }

  else
  {
    v9 = 0;
  }

  if (format == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  v11 = [(PFPosterArchiver *)self->_underlyingArchiver archivePath:_path format:v10 error:error];

  return v11;
}

- (id)unarchiveConfigurationAtURL:(id)l format:(int64_t)format error:(id *)error
{
  lCopy = l;
  underlyingArchiver = self->_underlyingArchiver;
  if (format)
  {
    v10 = -1;
  }

  else
  {
    v10 = 0;
  }

  if (format == 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  v21 = 0;
  v12 = [(PFPosterArchiver *)underlyingArchiver unarchivePathAtURL:lCopy format:v11 error:&v21];
  v13 = v21;
  v14 = v13;
  if (v12)
  {
    v15 = [[PRSPosterConfiguration alloc] _initWithPath:v12];
  }

  else
  {
    if (!v13)
    {
      lCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed unarchive PFPosterPath from URL: %@", lCopy];
      v17 = PFFunctionNameForAddress();
      v14 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    }

    v18 = PRSLogArchiver();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [PRSPosterArchiver unarchiveConfigurationAtURL:v14 format:v18 error:?];
    }

    v15 = 0;
    if (error && v14)
    {
      v19 = v14;
      v15 = 0;
      *error = v14;
    }
  }

  return v15;
}

- (id)unarchiveConfigurationFromData:(id)data format:(int64_t)format error:(id *)error
{
  dataCopy = data;
  underlyingArchiver = self->_underlyingArchiver;
  if (format)
  {
    v10 = -1;
  }

  else
  {
    v10 = 0;
  }

  if (format == 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  v21 = 0;
  v12 = [(PFPosterArchiver *)underlyingArchiver unarchivePathFromData:dataCopy format:v11 error:&v21];
  v13 = v21;
  v14 = v13;
  if (v12)
  {
    v15 = [[PRSPosterConfiguration alloc] _initWithPath:v12];
  }

  else
  {
    if (!v13)
    {
      dataCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed unarchive PFPosterPath from archiveData: %@", dataCopy];
      v17 = PFFunctionNameForAddress();
      v14 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    }

    v18 = PRSLogArchiver();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [PRSPosterArchiver unarchiveConfigurationFromData:v14 format:v18 error:?];
    }

    v15 = 0;
    if (error && v14)
    {
      v19 = v14;
      v15 = 0;
      *error = v14;
    }
  }

  return v15;
}

- (void)unarchiveConfigurationAtURL:(uint64_t)a1 format:(NSObject *)a2 error:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1C26FF000, a2, OS_LOG_TYPE_ERROR, "Unable to create incoming poster configuration from URL: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)unarchiveConfigurationFromData:(uint64_t)a1 format:(NSObject *)a2 error:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1C26FF000, a2, OS_LOG_TYPE_ERROR, "Unable to create incoming poster configuration from archiveData: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end