@interface WBSFileLockFactoryPOSIX
- (id)coordinationLockURL:(id)l;
- (id)lockURL:(id)l error:(id *)error;
@end

@implementation WBSFileLockFactoryPOSIX

- (id)coordinationLockURL:(id)l
{
  lCopy = l;
  scheme = [lCopy scheme];
  v5 = [scheme isEqualToString:@"file"];

  if (v5)
  {
    path = [lCopy path];
    v7 = [path length];

    if (v7)
    {
      v8 = MEMORY[0x1E695DFF8];
      absoluteString = [lCopy absoluteString];
      v10 = [absoluteString stringByAppendingString:@"-lock"];
      v11 = [v8 URLWithString:v10];

      goto LABEL_7;
    }
  }

  else
  {
    v12 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(WBSFileLockFactoryPOSIX *)lCopy coordinationLockURL:v12, v13, v14, v15, v16, v17, v18];
    }
  }

  v11 = 0;
LABEL_7:

  return v11;
}

- (id)lockURL:(id)l error:(id *)error
{
  v42 = *MEMORY[0x1E69E9840];
  lCopy = l;
  scheme = [lCopy scheme];
  v8 = [scheme isEqualToString:@"file"];

  if ((v8 & 1) == 0)
  {
    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    }

    v14 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(WBSFileLockFactoryPOSIX *)lCopy coordinationLockURL:v14, v15, v16, v17, v18, v19, v20];
    }

    goto LABEL_14;
  }

  v9 = [(WBSFileLockFactoryPOSIX *)self coordinationLockURL:lCopy];
  fileSystemRepresentation = [v9 fileSystemRepresentation];

  if (!fileSystemRepresentation)
  {
    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    }

    v21 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [(WBSFileLockFactoryPOSIX *)lCopy lockURL:v21 error:v22, v23, v24, v25, v26, v27];
    }

    goto LABEL_14;
  }

  v11 = open(fileSystemRepresentation, 512, 438);
  if (v11 != -1)
  {
    v12 = v11;
    if (flock(v11, 6) != -1)
    {
      v13 = [[WBSFileLockPOSIX alloc] initWithFileDescriptor:v12];
      goto LABEL_15;
    }

    v34 = *__error();
    close(v12);
    v35 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = v35;
      v37 = *__error();
      *buf = 136380931;
      v39 = fileSystemRepresentation;
      v40 = 1024;
      v41 = v37;
      _os_log_impl(&dword_1BB6F3000, v36, OS_LOG_TYPE_INFO, "Failed to acquire coordination lock at %{private}s: %{errno}d", buf, 0x12u);
    }

    if (error)
    {
      v32 = MEMORY[0x1E696ABC0];
      v33 = *MEMORY[0x1E696A798];
      v31 = v34;
      goto LABEL_26;
    }

LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  v29 = *__error();
  v30 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    *buf = 136380931;
    v39 = fileSystemRepresentation;
    v40 = 1024;
    v41 = v29;
    _os_log_impl(&dword_1BB6F3000, v30, OS_LOG_TYPE_INFO, "Failed to open coordination lock at %{private}s: %{errno}d", buf, 0x12u);
  }

  if (!error)
  {
    goto LABEL_14;
  }

  v31 = v29;
  v32 = MEMORY[0x1E696ABC0];
  v33 = *MEMORY[0x1E696A798];
LABEL_26:
  [v32 errorWithDomain:v33 code:v31 userInfo:0];
  *error = v13 = 0;
LABEL_15:

  return v13;
}

@end