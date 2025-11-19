@interface PLJournalFile
+ (BOOL)copyURL:(id)a3 toURL:(id)a4 error:(id *)a5;
+ (BOOL)createEmptyURL:(id)a3 error:(id *)a4;
+ (BOOL)moveURL:(id)a3 toURL:(id)a4 error:(id *)a5;
+ (BOOL)removeURL:(id)a3 error:(id *)a4;
+ (BOOL)writeData:(id)a3 toURL:(id)a4 atomically:(BOOL)a5 error:(id *)a6;
- (BOOL)_fileSize:(unint64_t *)a3 forKey:(id)a4 error:(id *)a5;
- (BOOL)appendEntries:(id)a3 error:(id *)a4;
- (BOOL)copyToURL:(id)a3 error:(id *)a4;
- (BOOL)createEmptyFileWithError:(id *)a3;
- (BOOL)enumerateEntriesUsingBlock:(id)a3 decodePayload:(BOOL)a4 error:(id *)a5;
- (BOOL)fileExists;
- (BOOL)moveToURL:(id)a3 error:(id *)a4;
- (BOOL)openForReadingUsingBlock:(id)a3 error:(id *)a4;
- (BOOL)openForWritingUsingBlock:(id)a3 error:(id *)a4;
- (BOOL)removeFileWithError:(id *)a3;
- (PLJournalFile)initWithURL:(id)a3 payloadClass:(Class)a4;
- (id)fileHandleForWritingWithError:(id *)a3;
@end

@implementation PLJournalFile

- (BOOL)fileExists
{
  v3 = objc_opt_class();
  url = self->_url;

  return [v3 fileExistsAtURL:url];
}

- (BOOL)_fileSize:(unint64_t *)a3 forKey:(id)a4 error:(id *)a5
{
  v6 = self;
  *a3 = 0;
  url = self->_url;
  v8 = a4;
  [(NSURL *)url removeCachedResourceValueForKey:v8];
  v9 = v6->_url;
  v16 = 0;
  v17 = 0;
  LODWORD(v6) = [(NSURL *)v9 getResourceValue:&v17 forKey:v8 error:&v16];

  v10 = v16;
  if (v6)
  {
    v11 = v17;
    v12 = v16;
    *a3 = [v11 unsignedLongLongValue];
    v13 = 1;
  }

  else
  {
    v14 = v16;
    v13 = PLIsErrorEqualToCode();
  }

  return v13;
}

- (BOOL)copyToURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  LOBYTE(a4) = [objc_opt_class() copyURL:self->_url toURL:v6 error:a4];

  return a4;
}

- (BOOL)moveToURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  LOBYTE(a4) = [objc_opt_class() moveURL:self->_url toURL:v6 error:a4];

  return a4;
}

- (BOOL)createEmptyFileWithError:(id *)a3
{
  v5 = objc_opt_class();
  url = self->_url;

  return [v5 createEmptyURL:url error:a3];
}

- (BOOL)removeFileWithError:(id *)a3
{
  v5 = objc_opt_class();
  url = self->_url;

  return [v5 removeURL:url error:a3];
}

- (BOOL)appendEntries:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([v6 count])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __37__PLJournalFile_appendEntries_error___block_invoke;
    v9[3] = &unk_1E7570BB0;
    v10 = v6;
    v11 = self;
    v12 = a4;
    v7 = [(PLJournalFile *)self openForWritingUsingBlock:v9 error:a4];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

uint64_t __37__PLJournalFile_appendEntries_error___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v23;
    while (2)
    {
      v9 = 0;
      v10 = v7;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v22 + 1) + 8 * v9);
        v12 = objc_autoreleasePoolPush();
        if ([v11 payloadClass] != *(*(a1 + 40) + 8))
        {
          v17 = MEMORY[0x1E695DF30];
          v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Payload classes don't match: %@, %@", objc_msgSend(v11, "payloadClass"), *(*(a1 + 40) + 8)];
          v19 = [v17 exceptionWithName:@"PLJournalException" reason:v18 userInfo:0];
          v20 = v19;

          objc_exception_throw(v19);
        }

        v21 = v10;
        v13 = [v11 writeToFileHandle:v3 checksumContext:0 error:&v21];
        v7 = v21;

        objc_autoreleasePoolPop(v12);
        if (!v13)
        {

          if (*(a1 + 48))
          {
            v14 = v7;
            v15 = 0;
            **(a1 + 48) = v7;
          }

          else
          {
            v15 = 0;
          }

          goto LABEL_16;
        }

        ++v9;
        v10 = v7;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 0;
  }

  v15 = 1;
LABEL_16:

  return v15;
}

- (BOOL)openForWritingUsingBlock:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PLJournalFile *)self fileHandleForWritingWithError:a4];
  if (v7)
  {
    v8 = v7;
    v9 = v6[2](v6, v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)fileHandleForWritingWithError:(id *)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [(NSURL *)self->_url path];
  v7 = [v6 stringByDeletingLastPathComponent];
  [v5 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:0];

  v8 = [(NSURL *)self->_url path];
  v9 = open([v8 fileSystemRepresentation], 513, 438);

  if (v9 == -1)
  {
    if (a3)
    {
      v10 = MEMORY[0x1E696ABC0];
      v11 = *MEMORY[0x1E696A798];
      v12 = *__error();
      v18 = *MEMORY[0x1E696A578];
      v13 = MEMORY[0x1E696AEC0];
      v14 = __error();
      v15 = [v13 stringWithUTF8String:strerror(*v14)];
      v19[0] = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      *a3 = [v10 errorWithDomain:v11 code:v12 userInfo:v16];

      a3 = 0;
    }
  }

  else
  {
    a3 = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:v9 closeOnDealloc:1];
    [a3 seekToEndOfFile];
  }

  return a3;
}

- (BOOL)enumerateEntriesUsingBlock:(id)a3 decodePayload:(BOOL)a4 error:(id *)a5
{
  v8 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__PLJournalFile_enumerateEntriesUsingBlock_decodePayload_error___block_invoke;
  v11[3] = &unk_1E7570B88;
  v14 = a4;
  v11[4] = self;
  v12 = v8;
  v13 = a5;
  v9 = v8;
  LOBYTE(a5) = [(PLJournalFile *)self openForReadingUsingBlock:v11 error:a5];

  return a5;
}

uint64_t __64__PLJournalFile_enumerateEntriesUsingBlock_decodePayload_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = 0;
    while (1)
    {
      v5 = v4;
      v6 = objc_autoreleasePoolPush();
      v7 = objc_alloc_init(PLJournalEntry);
      v12 = v4;
      v13 = 0;
      v8 = [(PLJournalEntry *)v7 readFromFileHandle:v3 decodePayload:*(a1 + 56) payloadClass:*(*(a1 + 32) + 8) entryOffset:&v13 error:&v12];
      v4 = v12;

      if (!v8)
      {
        break;
      }

      v9 = [(PLJournalEntry *)v7 payloadID];

      if (v9)
      {
        (*(*(a1 + 40) + 16))();
      }

      objc_autoreleasePoolPop(v6);
    }

    objc_autoreleasePoolPop(v6);
    if ([v4 code] == 51005)
    {
      v8 = 1;
    }

    else if (*(a1 + 48))
    {
      v10 = v4;
      **(a1 + 48) = v4;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)openForReadingUsingBlock:(id)a3 error:(id *)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(NSURL *)self->_url path];
  v8 = open([v7 fileSystemRepresentation], 0);

  if (v8 == -1)
  {
    if (*__error() == 2)
    {
      LOBYTE(a4) = v6[2](v6, 0);
    }

    else if (a4)
    {
      v10 = MEMORY[0x1E696ABC0];
      v11 = *MEMORY[0x1E696A798];
      v12 = *__error();
      v18 = *MEMORY[0x1E696A578];
      v13 = MEMORY[0x1E696AEC0];
      v14 = __error();
      v15 = [v13 stringWithUTF8String:strerror(*v14)];
      v19[0] = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      *a4 = [v10 errorWithDomain:v11 code:v12 userInfo:v16];

      LOBYTE(a4) = 0;
    }
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:v8 closeOnDealloc:0];
    LOBYTE(a4) = (v6)[2](v6, v9);
    close(v8);
  }

  return a4;
}

- (PLJournalFile)initWithURL:(id)a3 payloadClass:(Class)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PLJournalFile;
  v8 = [(PLJournalFile *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_url, a3);
    v9->_payloadClass = a4;
  }

  return v9;
}

+ (BOOL)writeData:(id)a3 toURL:(id)a4 atomically:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v9 = a4;
  v10 = a3;
  v11 = v10;
  if (v7)
  {
    v12 = [v9 lastPathComponent];
    v13 = [v12 stringByDeletingPathExtension];

    v14 = [v9 lastPathComponent];
    v15 = [v14 pathExtension];

    v16 = [v9 URLByDeletingLastPathComponent];
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-tmp", v13];
    v18 = [v17 stringByAppendingPathExtension:v15];
    v19 = [v16 URLByAppendingPathComponent:v18];

    LODWORD(v16) = [v11 writeToURL:v19 options:0 error:a6];
    if (v16)
    {
      v20 = [objc_opt_class() moveURL:v19 toURL:v9 error:a6];
    }

    else
    {
      v20 = 0;
    }

    v11 = v13;
  }

  else
  {
    v20 = [v10 writeToURL:v9 options:0 error:a6];
  }

  return v20;
}

+ (BOOL)copyURL:(id)a3 toURL:(id)a4 error:(id *)a5
{
  v21[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [a3 fileSystemRepresentation];
  v11 = [v9 fileSystemRepresentation];

  if (!copyfile(v10, v11, 0, 0x1000000u) || *__error() == 2)
  {
    return 1;
  }

  if (a5)
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A798];
    v15 = *__error();
    v20 = *MEMORY[0x1E696A578];
    v16 = MEMORY[0x1E696AEC0];
    v17 = __error();
    v18 = [v16 stringWithUTF8String:strerror(*v17)];
    v21[0] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    *a5 = [v13 errorWithDomain:v14 code:v15 userInfo:v19];
  }

  return 0;
}

+ (BOOL)moveURL:(id)a3 toURL:(id)a4 error:(id *)a5
{
  v24[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [a3 fileSystemRepresentation];
  v11 = [v9 fileSystemRepresentation];

  rename(v10, v11, v12);
  v14 = v13;
  if (a5 && v13)
  {
    v15 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A798];
    v17 = *__error();
    v23 = *MEMORY[0x1E696A578];
    v18 = MEMORY[0x1E696AEC0];
    v19 = __error();
    v20 = [v18 stringWithUTF8String:strerror(*v19)];
    v24[0] = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    *a5 = [v15 errorWithDomain:v16 code:v17 userInfo:v21];
  }

  return v14 == 0;
}

+ (BOOL)createEmptyURL:(id)a3 error:(id *)a4
{
  v21[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AC08];
  v6 = a3;
  v7 = [v5 defaultManager];
  v8 = [v6 path];
  v9 = [v8 stringByDeletingLastPathComponent];
  [v7 createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:0];

  v10 = [v6 path];

  v11 = open([v10 fileSystemRepresentation], 1537, 438);
  if (v11 == -1)
  {
    if (a4)
    {
      v12 = MEMORY[0x1E696ABC0];
      v13 = *MEMORY[0x1E696A798];
      v14 = *__error();
      v20 = *MEMORY[0x1E696A578];
      v15 = MEMORY[0x1E696AEC0];
      v16 = __error();
      v17 = [v15 stringWithUTF8String:strerror(*v16)];
      v21[0] = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      *a4 = [v12 errorWithDomain:v13 code:v14 userInfo:v18];
    }
  }

  else
  {
    close(v11);
  }

  return v11 != -1;
}

+ (BOOL)removeURL:(id)a3 error:(id *)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = [a3 path];
  v6 = unlink([v5 fileSystemRepresentation]);

  if (!v6 || *__error() == 2)
  {
    return 1;
  }

  if (a4)
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A798];
    v10 = *__error();
    v15 = *MEMORY[0x1E696A578];
    v11 = MEMORY[0x1E696AEC0];
    v12 = __error();
    v13 = [v11 stringWithUTF8String:strerror(*v12)];
    v16[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *a4 = [v8 errorWithDomain:v9 code:v10 userInfo:v14];
  }

  return 0;
}

@end