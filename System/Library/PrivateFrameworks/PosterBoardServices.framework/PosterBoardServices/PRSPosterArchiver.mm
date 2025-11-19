@interface PRSPosterArchiver
+ (id)archiveConfiguration:(id)a3 format:(int64_t)a4 error:(id *)a5;
+ (id)unarchiveConfigurationAtURL:(id)a3 format:(int64_t)a4 error:(id *)a5;
+ (id)unarchiveConfigurationFromData:(id)a3 format:(int64_t)a4 error:(id *)a5;
+ (int64_t)formatForDataAtURL:(id)a3;
- (PRSPosterArchiver)init;
- (PRSPosterArchiver)initWithFileManager:(id)a3 processHandle:(id)a4 unarchivingContainerURL:(id)a5;
- (id)archiveConfiguration:(id)a3 format:(int64_t)a4 error:(id *)a5;
- (id)unarchiveConfigurationAtURL:(id)a3 format:(int64_t)a4 error:(id *)a5;
- (id)unarchiveConfigurationFromData:(id)a3 format:(int64_t)a4 error:(id *)a5;
@end

@implementation PRSPosterArchiver

+ (int64_t)formatForDataAtURL:(id)a3
{
  v3 = [MEMORY[0x1E69C5150] formatForDataAtURL:a3];
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

+ (id)archiveConfiguration:(id)a3 format:(int64_t)a4 error:(id *)a5
{
  v7 = a3;
  v8 = objc_alloc_init(PRSPosterArchiver);
  v9 = [(PRSPosterArchiver *)v8 archiveConfiguration:v7 format:a4 error:a5];

  return v9;
}

+ (id)unarchiveConfigurationAtURL:(id)a3 format:(int64_t)a4 error:(id *)a5
{
  v7 = a3;
  v8 = objc_alloc_init(PRSPosterArchiver);
  v9 = [(PRSPosterArchiver *)v8 unarchiveConfigurationAtURL:v7 format:a4 error:a5];

  return v9;
}

+ (id)unarchiveConfigurationFromData:(id)a3 format:(int64_t)a4 error:(id *)a5
{
  v7 = a3;
  v8 = objc_alloc_init(PRSPosterArchiver);
  v9 = [(PRSPosterArchiver *)v8 unarchiveConfigurationFromData:v7 format:a4 error:a5];

  return v9;
}

- (PRSPosterArchiver)init
{
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(PRSPosterArchiver *)self initWithFileManager:v3];

  return v4;
}

- (PRSPosterArchiver)initWithFileManager:(id)a3 processHandle:(id)a4 unarchivingContainerURL:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = PRSPosterArchiver;
  v11 = [(PRSPosterArchiver *)&v15 init];
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x1E69C5150]) initWithFileManager:v8 processHandle:v9 unarchivingContainerURL:v10];
    underlyingArchiver = v11->_underlyingArchiver;
    v11->_underlyingArchiver = v12;
  }

  return v11;
}

- (id)archiveConfiguration:(id)a3 format:(int64_t)a4 error:(id *)a5
{
  v8 = [a3 _path];
  if (a4)
  {
    v9 = -1;
  }

  else
  {
    v9 = 0;
  }

  if (a4 == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  v11 = [(PFPosterArchiver *)self->_underlyingArchiver archivePath:v8 format:v10 error:a5];

  return v11;
}

- (id)unarchiveConfigurationAtURL:(id)a3 format:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  underlyingArchiver = self->_underlyingArchiver;
  if (a4)
  {
    v10 = -1;
  }

  else
  {
    v10 = 0;
  }

  if (a4 == 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  v21 = 0;
  v12 = [(PFPosterArchiver *)underlyingArchiver unarchivePathAtURL:v8 format:v11 error:&v21];
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
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed unarchive PFPosterPath from URL: %@", v8];
      v17 = PFFunctionNameForAddress();
      v14 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    }

    v18 = PRSLogArchiver();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [PRSPosterArchiver unarchiveConfigurationAtURL:v14 format:v18 error:?];
    }

    v15 = 0;
    if (a5 && v14)
    {
      v19 = v14;
      v15 = 0;
      *a5 = v14;
    }
  }

  return v15;
}

- (id)unarchiveConfigurationFromData:(id)a3 format:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  underlyingArchiver = self->_underlyingArchiver;
  if (a4)
  {
    v10 = -1;
  }

  else
  {
    v10 = 0;
  }

  if (a4 == 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  v21 = 0;
  v12 = [(PFPosterArchiver *)underlyingArchiver unarchivePathFromData:v8 format:v11 error:&v21];
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
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed unarchive PFPosterPath from archiveData: %@", v8];
      v17 = PFFunctionNameForAddress();
      v14 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    }

    v18 = PRSLogArchiver();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [PRSPosterArchiver unarchiveConfigurationFromData:v14 format:v18 error:?];
    }

    v15 = 0;
    if (a5 && v14)
    {
      v19 = v14;
      v15 = 0;
      *a5 = v14;
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