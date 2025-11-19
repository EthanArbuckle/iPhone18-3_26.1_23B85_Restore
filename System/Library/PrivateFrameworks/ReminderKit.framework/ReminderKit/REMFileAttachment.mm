@interface REMFileAttachment
+ (id)createTemporaryFileURLWithUTI:(id)a3;
+ (id)createTemporaryFileWithData:(id)a3 UTI:(id)a4;
- (BOOL)isEqual:(id)a3;
- (REMFileAttachment)initWithCoder:(id)a3;
- (REMFileAttachment)initWithObjectID:(id)a3 accountID:(id)a4 reminderID:(id)a5 UTI:(id)a6 fileSize:(unint64_t)a7 fileURL:(id)a8 data:(id)a9;
- (id)_deepCopy;
- (void)_deepCopy;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMFileAttachment

- (REMFileAttachment)initWithObjectID:(id)a3 accountID:(id)a4 reminderID:(id)a5 UTI:(id)a6 fileSize:(unint64_t)a7 fileURL:(id)a8 data:(id)a9
{
  v15 = a6;
  v16 = a8;
  v17 = a9;
  v23.receiver = self;
  v23.super_class = REMFileAttachment;
  v18 = [(REMAttachment *)&v23 initWithObjectID:a3 accountID:a4 reminderID:a5 UTI:v15];
  v19 = v18;
  if (v18)
  {
    v18->_fileSize = a7;
    objc_storeStrong(&v18->_fileURL, a8);
    v19->_isTemporaryFileURL = 0;
    if (v17)
    {
      v20 = [REMFileAttachment createTemporaryFileWithData:v17 UTI:v15];
      fileURL = v19->_fileURL;
      v19->_fileURL = v20;

      if (v19->_fileURL)
      {
        v19->_isTemporaryFileURL = 1;
      }
    }
  }

  return v19;
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "Unable to remove temporary file because {error: %@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (id)createTemporaryFileURLWithUTI:(id)a3
{
  v3 = UTTypeCopyPreferredTagWithClass(a3, *MEMORY[0x1E6963710]);
  v12 = 0;
  v4 = [REMPaths createTemporaryFileDirectoryURLIfNeededWithError:&v12];
  v5 = v12;
  if (v4)
  {
    v6 = [MEMORY[0x1E696AE30] processInfo];
    v7 = [v6 globallyUniqueString];

    v8 = [v4 URLByAppendingPathComponent:v7];
    v9 = v8;
    if (v3)
    {
      v10 = [v8 URLByAppendingPathExtension:v3];

      v9 = v10;
    }
  }

  else
  {
    v7 = +[REMLogStore write];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[REMFileAttachment createTemporaryFileURLWithUTI:];
    }

    v9 = 0;
  }

  return v9;
}

+ (id)createTemporaryFileWithData:(id)a3 UTI:(id)a4
{
  v5 = a3;
  v6 = [REMFileAttachment createTemporaryFileURLWithUTI:a4];
  if (v6)
  {
    v10 = 0;
    [v5 writeToURL:v6 options:1 error:&v10];
    v7 = v10;
    if (v7)
    {
      v8 = +[REMLogStore write];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        +[REMFileAttachment createTemporaryFileWithData:UTI:];
      }

      v6 = 0;
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = REMFileAttachment;
  [(REMAttachment *)&v10 encodeWithCoder:v4];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[REMFileAttachment fileSize](self, "fileSize")}];
  [v4 encodeObject:v5 forKey:@"fileSize"];
  v6 = [(REMFileAttachment *)self fileURL];

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x1E696AE98]);
    v8 = [(REMFileAttachment *)self fileURL];
    v9 = [v7 initWithURL:v8 readonly:{-[REMFileAttachment isTemporaryFileURL](self, "isTemporaryFileURL") ^ 1}];

    [v4 encodeObject:v9 forKey:@"fileURL"];
  }

  [v4 encodeBool:-[REMFileAttachment isTemporaryFileURL](self forKey:{"isTemporaryFileURL"), @"isTemporaryFileURL"}];
}

- (REMFileAttachment)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = REMFileAttachment;
  v5 = [(REMAttachment *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fileSize"];
    v5->_fileSize = [v6 unsignedLongLongValue];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fileURL"];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 url];
      fileURL = v5->_fileURL;
      v5->_fileURL = v9;
    }

    v5->_isTemporaryFileURL = [v4 decodeBoolForKey:@"isTemporaryFileURL"];
  }

  return v5;
}

- (id)_deepCopy
{
  v17.receiver = self;
  v17.super_class = REMFileAttachment;
  v3 = [(REMAttachment *)&v17 _deepCopy];
  [v3 setFileSize:{-[REMFileAttachment fileSize](self, "fileSize")}];
  if (![(REMFileAttachment *)self isTemporaryFileURL]|| ([(REMFileAttachment *)self fileURL], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v6 = [(REMFileAttachment *)self fileURL];
    v13 = v3;
    v14 = v6;
LABEL_9:
    [v13 setFileURL:v14];
    goto LABEL_10;
  }

  v5 = [(REMAttachment *)self uti];
  v6 = [REMFileAttachment createTemporaryFileURLWithUTI:v5];

  if (!v6)
  {
    v13 = v3;
    v14 = 0;
    goto LABEL_9;
  }

  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [(REMFileAttachment *)self fileURL];
  v16 = 0;
  [v7 linkItemAtURL:v8 toURL:v6 error:&v16];
  v9 = v16;

  if (v9)
  {
    v10 = +[REMLogStore write];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [REMFileAttachment _deepCopy];
    }

    v11 = v3;
    v12 = 0;
  }

  else
  {
    v11 = v3;
    v12 = v6;
  }

  [v11 setFileURL:v12];

LABEL_10:
  [v3 setIsTemporaryFileURL:{-[REMFileAttachment isTemporaryFileURL](self, "isTemporaryFileURL")}];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = REMFileAttachment;
  if ([(REMAttachment *)&v16 isEqual:v4])
  {
    v5 = v4;
    v6 = [v5 fileSize];
    if (v6 == [(REMFileAttachment *)self fileSize])
    {
      v7 = [v5 fileURL];
      v8 = [(REMFileAttachment *)self fileURL];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [v5 fileURL];
        v11 = [(REMFileAttachment *)self fileURL];
        v12 = [v10 isEqual:v11];

        if (!v12)
        {
          goto LABEL_5;
        }
      }

      v14 = [v5 isTemporaryFileURL];
      v13 = v14 ^ [(REMFileAttachment *)self isTemporaryFileURL]^ 1;
      goto LABEL_9;
    }

LABEL_5:
    LOBYTE(v13) = 0;
LABEL_9:

    goto LABEL_10;
  }

  LOBYTE(v13) = 0;
LABEL_10:

  return v13;
}

+ (void)createTemporaryFileURLWithUTI:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "Unable to create temporary directory because {error: %@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)createTemporaryFileWithData:UTI:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "Unable to write temporary file because {error: %@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_deepCopy
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "Unable to link temporary file because {error: %@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end