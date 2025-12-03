@interface REMFileAttachment
+ (id)createTemporaryFileURLWithUTI:(id)i;
+ (id)createTemporaryFileWithData:(id)data UTI:(id)i;
- (BOOL)isEqual:(id)equal;
- (REMFileAttachment)initWithCoder:(id)coder;
- (REMFileAttachment)initWithObjectID:(id)d accountID:(id)iD reminderID:(id)reminderID UTI:(id)i fileSize:(unint64_t)size fileURL:(id)l data:(id)data;
- (id)_deepCopy;
- (void)_deepCopy;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMFileAttachment

- (REMFileAttachment)initWithObjectID:(id)d accountID:(id)iD reminderID:(id)reminderID UTI:(id)i fileSize:(unint64_t)size fileURL:(id)l data:(id)data
{
  iCopy = i;
  lCopy = l;
  dataCopy = data;
  v23.receiver = self;
  v23.super_class = REMFileAttachment;
  v18 = [(REMAttachment *)&v23 initWithObjectID:d accountID:iD reminderID:reminderID UTI:iCopy];
  v19 = v18;
  if (v18)
  {
    v18->_fileSize = size;
    objc_storeStrong(&v18->_fileURL, l);
    v19->_isTemporaryFileURL = 0;
    if (dataCopy)
    {
      v20 = [REMFileAttachment createTemporaryFileWithData:dataCopy UTI:iCopy];
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

+ (id)createTemporaryFileURLWithUTI:(id)i
{
  v3 = UTTypeCopyPreferredTagWithClass(i, *MEMORY[0x1E6963710]);
  v12 = 0;
  v4 = [REMPaths createTemporaryFileDirectoryURLIfNeededWithError:&v12];
  v5 = v12;
  if (v4)
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    globallyUniqueString = [processInfo globallyUniqueString];

    v8 = [v4 URLByAppendingPathComponent:globallyUniqueString];
    v9 = v8;
    if (v3)
    {
      v10 = [v8 URLByAppendingPathExtension:v3];

      v9 = v10;
    }
  }

  else
  {
    globallyUniqueString = +[REMLogStore write];
    if (os_log_type_enabled(globallyUniqueString, OS_LOG_TYPE_ERROR))
    {
      +[REMFileAttachment createTemporaryFileURLWithUTI:];
    }

    v9 = 0;
  }

  return v9;
}

+ (id)createTemporaryFileWithData:(id)data UTI:(id)i
{
  dataCopy = data;
  v6 = [REMFileAttachment createTemporaryFileURLWithUTI:i];
  if (v6)
  {
    v10 = 0;
    [dataCopy writeToURL:v6 options:1 error:&v10];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = REMFileAttachment;
  [(REMAttachment *)&v10 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[REMFileAttachment fileSize](self, "fileSize")}];
  [coderCopy encodeObject:v5 forKey:@"fileSize"];
  fileURL = [(REMFileAttachment *)self fileURL];

  if (fileURL)
  {
    v7 = objc_alloc(MEMORY[0x1E696AE98]);
    fileURL2 = [(REMFileAttachment *)self fileURL];
    v9 = [v7 initWithURL:fileURL2 readonly:{-[REMFileAttachment isTemporaryFileURL](self, "isTemporaryFileURL") ^ 1}];

    [coderCopy encodeObject:v9 forKey:@"fileURL"];
  }

  [coderCopy encodeBool:-[REMFileAttachment isTemporaryFileURL](self forKey:{"isTemporaryFileURL"), @"isTemporaryFileURL"}];
}

- (REMFileAttachment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = REMFileAttachment;
  v5 = [(REMAttachment *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fileSize"];
    v5->_fileSize = [v6 unsignedLongLongValue];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fileURL"];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 url];
      fileURL = v5->_fileURL;
      v5->_fileURL = v9;
    }

    v5->_isTemporaryFileURL = [coderCopy decodeBoolForKey:@"isTemporaryFileURL"];
  }

  return v5;
}

- (id)_deepCopy
{
  v17.receiver = self;
  v17.super_class = REMFileAttachment;
  _deepCopy = [(REMAttachment *)&v17 _deepCopy];
  [_deepCopy setFileSize:{-[REMFileAttachment fileSize](self, "fileSize")}];
  if (![(REMFileAttachment *)self isTemporaryFileURL]|| ([(REMFileAttachment *)self fileURL], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    fileURL = [(REMFileAttachment *)self fileURL];
    v13 = _deepCopy;
    v14 = fileURL;
LABEL_9:
    [v13 setFileURL:v14];
    goto LABEL_10;
  }

  v5 = [(REMAttachment *)self uti];
  fileURL = [REMFileAttachment createTemporaryFileURLWithUTI:v5];

  if (!fileURL)
  {
    v13 = _deepCopy;
    v14 = 0;
    goto LABEL_9;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  fileURL2 = [(REMFileAttachment *)self fileURL];
  v16 = 0;
  [defaultManager linkItemAtURL:fileURL2 toURL:fileURL error:&v16];
  v9 = v16;

  if (v9)
  {
    v10 = +[REMLogStore write];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [REMFileAttachment _deepCopy];
    }

    v11 = _deepCopy;
    v12 = 0;
  }

  else
  {
    v11 = _deepCopy;
    v12 = fileURL;
  }

  [v11 setFileURL:v12];

LABEL_10:
  [_deepCopy setIsTemporaryFileURL:{-[REMFileAttachment isTemporaryFileURL](self, "isTemporaryFileURL")}];

  return _deepCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v16.receiver = self;
  v16.super_class = REMFileAttachment;
  if ([(REMAttachment *)&v16 isEqual:equalCopy])
  {
    v5 = equalCopy;
    fileSize = [v5 fileSize];
    if (fileSize == [(REMFileAttachment *)self fileSize])
    {
      fileURL = [v5 fileURL];
      fileURL2 = [(REMFileAttachment *)self fileURL];
      v9 = fileURL2;
      if (fileURL == fileURL2)
      {
      }

      else
      {
        fileURL3 = [v5 fileURL];
        fileURL4 = [(REMFileAttachment *)self fileURL];
        v12 = [fileURL3 isEqual:fileURL4];

        if (!v12)
        {
          goto LABEL_5;
        }
      }

      isTemporaryFileURL = [v5 isTemporaryFileURL];
      v13 = isTemporaryFileURL ^ [(REMFileAttachment *)self isTemporaryFileURL]^ 1;
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