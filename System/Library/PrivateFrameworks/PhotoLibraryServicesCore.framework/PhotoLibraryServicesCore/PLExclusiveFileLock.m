@interface PLExclusiveFileLock
- (PLExclusiveFileLock)init;
- (PLExclusiveFileLock)initWithURL:(id)a3;
- (PLExclusiveFileLock)lockWithError:(id *)a3;
- (id)lockData;
- (id)lockFailure;
- (void)dealloc;
- (void)unlock;
@end

@implementation PLExclusiveFileLock

- (id)lockFailure
{
  v54[3] = *MEMORY[0x1E69E9840];
  v41 = 0;
  v3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:self->_url options:0 error:&v41];
  if (!v3)
  {
    v16 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696AA08];
    v53[0] = *MEMORY[0x1E696A278];
    v53[1] = v17;
    v54[0] = @"error reading lock information";
    v54[1] = v41;
    v53[2] = *MEMORY[0x1E696A998];
    v54[2] = self->_url;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:3];
    v18 = [v16 errorWithDomain:@"com.apple.photos.error" code:46010 userInfo:v5];
    goto LABEL_22;
  }

  v4 = [MEMORY[0x1E696AE40] propertyListWithData:v3 options:0 format:0 error:&v41];
  if (!v4)
  {
    v19 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696AA08];
    v51[0] = *MEMORY[0x1E696A278];
    v51[1] = v20;
    v52[0] = @"error reading lock information";
    v52[1] = v41;
    v51[2] = *MEMORY[0x1E696A998];
    v52[2] = self->_url;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:3];
    v18 = [v19 errorWithDomain:@"com.apple.photos.error" code:46010 userInfo:v21];

    v5 = 0;
    goto LABEL_22;
  }

  v5 = v4;
  v6 = [v4 objectForKeyedSubscript:@"pid"];
  v7 = [v6 intValue];

  v8 = [v5 objectForKeyedSubscript:@"hostuuid"];
  v9 = [v8 isEqualToString:qword_1EB41BD28];

  if (v9)
  {
    if (!v7)
    {
      v10 = MEMORY[0x1E696ABC0];
      v29 = *MEMORY[0x1E696A998];
      v47[0] = *MEMORY[0x1E696A278];
      v47[1] = v29;
      url = self->_url;
      v48[0] = @"locked by unknown process";
      v48[1] = url;
      v13 = MEMORY[0x1E695DF20];
      v14 = v48;
      v15 = v47;
      goto LABEL_14;
    }

    if (v7 == getpid())
    {
      v10 = MEMORY[0x1E696ABC0];
      v11 = *MEMORY[0x1E696A998];
      v45[0] = *MEMORY[0x1E696A278];
      v45[1] = v11;
      v12 = self->_url;
      v46[0] = @"locked by this process";
      v46[1] = v12;
      v13 = MEMORY[0x1E695DF20];
      v14 = v46;
      v15 = v45;
LABEL_14:
      v31 = [v13 dictionaryWithObjects:v14 forKeys:v15 count:2];
      v18 = [v10 errorWithDomain:@"com.apple.photos.error" code:46010 userInfo:v31];

      goto LABEL_22;
    }

    v32 = [v5 objectForKeyedSubscript:@"processname"];
    v33 = v32;
    v34 = @"hostname";
    if (v32)
    {
      v34 = v32;
    }

    v25 = v34;

    v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"locked by process %@(%d)", v25, v7];
    memset(buffer, 0, sizeof(buffer));
    v35 = getpid();
    if (proc_pidinfo(v35, 13, 1uLL, buffer, 64) && HIDWORD(buffer[0]) == 5)
    {
      v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"locked by zombie process %@(%d)", v25, v7];

      v28 = v36;
    }

    v37 = MEMORY[0x1E696ABC0];
    v38 = *MEMORY[0x1E696A588];
    v42[0] = *MEMORY[0x1E696A278];
    v42[1] = v38;
    v43[0] = @"locked by another process";
    v43[1] = v28;
    v42[2] = *MEMORY[0x1E696A998];
    v43[2] = self->_url;
    v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:3];
    v18 = [v37 errorWithDomain:@"com.apple.photos.error" code:46010 userInfo:v39];
  }

  else
  {
    v22 = [v5 objectForKeyedSubscript:@"hostname"];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = @"unknown";
    }

    v25 = [@"locked by host " stringByAppendingString:v24];

    v26 = MEMORY[0x1E696ABC0];
    v27 = *MEMORY[0x1E696A588];
    v49[0] = *MEMORY[0x1E696A278];
    v49[1] = v27;
    v50[0] = @"locked by remote host";
    v50[1] = v25;
    v49[2] = *MEMORY[0x1E696A998];
    v50[2] = self->_url;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:3];
    v18 = [v26 errorWithDomain:@"com.apple.photos.error" code:46010 userInfo:v28];
  }

LABEL_22:

  return v18;
}

- (id)lockData
{
  v15[5] = *MEMORY[0x1E69E9840];
  v15[0] = qword_1EB41BD28;
  v14[0] = @"hostuuid";
  v14[1] = @"hostname";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:&unk_1EB41BC24];
  v15[1] = v2;
  v14[2] = @"pid";
  v3 = [MEMORY[0x1E696AD98] numberWithInt:processInfo];
  v15[2] = v3;
  v14[3] = @"processname";
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:&unk_1EB41BC04];
  v15[3] = v4;
  v14[4] = @"uid";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:getuid()];
  v15[4] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:5];

  v11 = 0;
  v7 = [MEMORY[0x1E696AE40] dataWithPropertyList:v6 format:100 options:0 error:&v11];
  v8 = v11;
  if (!v7)
  {
    v9 = PLBackendGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&dword_1AA9BD000, v9, OS_LOG_TYPE_DEFAULT, "error serializing lock info: %@", buf, 0xCu);
    }
  }

  return v7;
}

- (void)unlock
{
  if ((self->_fd & 0x80000000) == 0)
  {
    v3 = [(NSURL *)self->_url path];
    unlink([v3 fileSystemRepresentation]);

    close(self->_fd);
    self->_fd = -1;
  }
}

- (PLExclusiveFileLock)lockWithError:(id *)a3
{
  v3 = a3;
  v23[2] = *MEMORY[0x1E69E9840];
  if (self->_fd == -1)
  {
    if (a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v19 = [MEMORY[0x1E696AAA8] currentHandler];
  v20 = [(NSURL *)self->_url path];
  [v19 handleFailureInMethod:a2 object:self file:@"PLExclusiveFileLock.m" lineNumber:83 description:{@"already locked: %@", v20}];

  if (!v3)
  {
LABEL_3:
    v21 = 0;
    v3 = &v21;
  }

LABEL_4:
  if (lockWithError__onceToken != -1)
  {
    dispatch_once(&lockWithError__onceToken, &__block_literal_global_6720);
  }

  v5 = [(NSURL *)self->_url path];
  self->_fd = open([v5 fileSystemRepresentation], 1573, 420);

  if (self->_fd == -1)
  {
    v8 = *__error();
    if (v8 == 35 || v8 == 16)
    {
      v9 = [(PLExclusiveFileLock *)self lockFailure];
      v10 = v9;
      result = 0;
      *v3 = v9;
    }

    else if (v8 == 4)
    {
      return [(PLExclusiveFileLock *)self lockWithError:v3];
    }

    else
    {
      v11 = MEMORY[0x1E696ABC0];
      v12 = *MEMORY[0x1E696A798];
      v13 = *__error();
      v22[0] = *MEMORY[0x1E696A278];
      v14 = MEMORY[0x1E696AEC0];
      v15 = __error();
      v16 = [v14 stringWithUTF8String:strerror(*v15)];
      v22[1] = *MEMORY[0x1E696A998];
      v23[0] = v16;
      v23[1] = self->_url;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
      *v3 = [v11 errorWithDomain:v12 code:v13 userInfo:v17];

      return 0;
    }
  }

  else
  {
    v6 = [(PLExclusiveFileLock *)self lockData];
    write(self->_fd, [v6 bytes], objc_msgSend(v6, "length"));
    fsync(self->_fd);

    return 1;
  }

  return result;
}

void __37__PLExclusiveFileLock_lockWithError___block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = getpid();
  proc_name(v0, &unk_1EB41BC04, 0x20u);
  gethostname(byte_1EB41BC24, 0xFFuLL);
  processInfo = v0;
  memset(v4, 0, sizeof(v4));
  v3.tv_sec = 0;
  v3.tv_nsec = 0;
  gethostuuid(v4, &v3);
  v1 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v4];
  v2 = [v1 UUIDString];

  qword_1EB41BD28 = v2;
}

- (void)dealloc
{
  if (self->_fd != -1)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [(NSURL *)self->_url path];
    [v4 handleFailureInMethod:a2 object:self file:@"PLExclusiveFileLock.m" lineNumber:73 description:{@"deallocated while locked: %@", v5}];
  }

  v6.receiver = self;
  v6.super_class = PLExclusiveFileLock;
  [(PLExclusiveFileLock *)&v6 dealloc];
}

- (PLExclusiveFileLock)initWithURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PLExclusiveFileLock;
  v6 = [(PLExclusiveFileLock *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_fd = -1;
    objc_storeStrong(&v6->_url, a3);
  }

  return v7;
}

- (PLExclusiveFileLock)init
{
  [(PLExclusiveFileLock *)self doesNotRecognizeSelector:a2];

  return 0;
}

@end