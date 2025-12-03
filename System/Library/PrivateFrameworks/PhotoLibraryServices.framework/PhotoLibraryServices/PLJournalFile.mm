@interface PLJournalFile
+ (BOOL)copyURL:(id)l toURL:(id)rL error:(id *)error;
+ (BOOL)createEmptyURL:(id)l error:(id *)error;
+ (BOOL)moveURL:(id)l toURL:(id)rL error:(id *)error;
+ (BOOL)removeURL:(id)l error:(id *)error;
+ (BOOL)writeData:(id)data toURL:(id)l atomically:(BOOL)atomically error:(id *)error;
- (BOOL)_fileSize:(unint64_t *)size forKey:(id)key error:(id *)error;
- (BOOL)appendEntries:(id)entries error:(id *)error;
- (BOOL)copyToURL:(id)l error:(id *)error;
- (BOOL)createEmptyFileWithError:(id *)error;
- (BOOL)enumerateEntriesUsingBlock:(id)block decodePayload:(BOOL)payload error:(id *)error;
- (BOOL)fileExists;
- (BOOL)moveToURL:(id)l error:(id *)error;
- (BOOL)openForReadingUsingBlock:(id)block error:(id *)error;
- (BOOL)openForWritingUsingBlock:(id)block error:(id *)error;
- (BOOL)removeFileWithError:(id *)error;
- (PLJournalFile)initWithURL:(id)l payloadClass:(Class)class;
- (id)fileHandleForWritingWithError:(id *)error;
@end

@implementation PLJournalFile

- (BOOL)fileExists
{
  v3 = objc_opt_class();
  url = self->_url;

  return [v3 fileExistsAtURL:url];
}

- (BOOL)_fileSize:(unint64_t *)size forKey:(id)key error:(id *)error
{
  selfCopy = self;
  *size = 0;
  url = self->_url;
  keyCopy = key;
  [(NSURL *)url removeCachedResourceValueForKey:keyCopy];
  v9 = selfCopy->_url;
  v16 = 0;
  v17 = 0;
  LODWORD(selfCopy) = [(NSURL *)v9 getResourceValue:&v17 forKey:keyCopy error:&v16];

  v10 = v16;
  if (selfCopy)
  {
    v11 = v17;
    v12 = v16;
    *size = [v11 unsignedLongLongValue];
    v13 = 1;
  }

  else
  {
    v14 = v16;
    v13 = PLIsErrorEqualToCode();
  }

  return v13;
}

- (BOOL)copyToURL:(id)l error:(id *)error
{
  lCopy = l;
  LOBYTE(error) = [objc_opt_class() copyURL:self->_url toURL:lCopy error:error];

  return error;
}

- (BOOL)moveToURL:(id)l error:(id *)error
{
  lCopy = l;
  LOBYTE(error) = [objc_opt_class() moveURL:self->_url toURL:lCopy error:error];

  return error;
}

- (BOOL)createEmptyFileWithError:(id *)error
{
  v5 = objc_opt_class();
  url = self->_url;

  return [v5 createEmptyURL:url error:error];
}

- (BOOL)removeFileWithError:(id *)error
{
  v5 = objc_opt_class();
  url = self->_url;

  return [v5 removeURL:url error:error];
}

- (BOOL)appendEntries:(id)entries error:(id *)error
{
  entriesCopy = entries;
  if ([entriesCopy count])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __37__PLJournalFile_appendEntries_error___block_invoke;
    v9[3] = &unk_1E7570BB0;
    v10 = entriesCopy;
    selfCopy = self;
    errorCopy = error;
    v7 = [(PLJournalFile *)self openForWritingUsingBlock:v9 error:error];
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

- (BOOL)openForWritingUsingBlock:(id)block error:(id *)error
{
  blockCopy = block;
  v7 = [(PLJournalFile *)self fileHandleForWritingWithError:error];
  if (v7)
  {
    v8 = v7;
    v9 = blockCopy[2](blockCopy, v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)fileHandleForWritingWithError:(id *)error
{
  v19[1] = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [(NSURL *)self->_url path];
  stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];
  [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];

  path2 = [(NSURL *)self->_url path];
  v9 = open([path2 fileSystemRepresentation], 513, 438);

  if (v9 == -1)
  {
    if (error)
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
      *error = [v10 errorWithDomain:v11 code:v12 userInfo:v16];

      error = 0;
    }
  }

  else
  {
    error = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:v9 closeOnDealloc:1];
    [error seekToEndOfFile];
  }

  return error;
}

- (BOOL)enumerateEntriesUsingBlock:(id)block decodePayload:(BOOL)payload error:(id *)error
{
  blockCopy = block;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__PLJournalFile_enumerateEntriesUsingBlock_decodePayload_error___block_invoke;
  v11[3] = &unk_1E7570B88;
  payloadCopy = payload;
  v11[4] = self;
  v12 = blockCopy;
  errorCopy = error;
  v9 = blockCopy;
  LOBYTE(error) = [(PLJournalFile *)self openForReadingUsingBlock:v11 error:error];

  return error;
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

- (BOOL)openForReadingUsingBlock:(id)block error:(id *)error
{
  v19[1] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  path = [(NSURL *)self->_url path];
  v8 = open([path fileSystemRepresentation], 0);

  if (v8 == -1)
  {
    if (*__error() == 2)
    {
      LOBYTE(error) = blockCopy[2](blockCopy, 0);
    }

    else if (error)
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
      *error = [v10 errorWithDomain:v11 code:v12 userInfo:v16];

      LOBYTE(error) = 0;
    }
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:v8 closeOnDealloc:0];
    LOBYTE(error) = (blockCopy)[2](blockCopy, v9);
    close(v8);
  }

  return error;
}

- (PLJournalFile)initWithURL:(id)l payloadClass:(Class)class
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = PLJournalFile;
  v8 = [(PLJournalFile *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_url, l);
    v9->_payloadClass = class;
  }

  return v9;
}

+ (BOOL)writeData:(id)data toURL:(id)l atomically:(BOOL)atomically error:(id *)error
{
  atomicallyCopy = atomically;
  lCopy = l;
  dataCopy = data;
  v11 = dataCopy;
  if (atomicallyCopy)
  {
    lastPathComponent = [lCopy lastPathComponent];
    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

    lastPathComponent2 = [lCopy lastPathComponent];
    pathExtension = [lastPathComponent2 pathExtension];

    uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-tmp", stringByDeletingPathExtension];
    v18 = [v17 stringByAppendingPathExtension:pathExtension];
    v19 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:v18];

    LODWORD(uRLByDeletingLastPathComponent) = [v11 writeToURL:v19 options:0 error:error];
    if (uRLByDeletingLastPathComponent)
    {
      v20 = [objc_opt_class() moveURL:v19 toURL:lCopy error:error];
    }

    else
    {
      v20 = 0;
    }

    v11 = stringByDeletingPathExtension;
  }

  else
  {
    v20 = [dataCopy writeToURL:lCopy options:0 error:error];
  }

  return v20;
}

+ (BOOL)copyURL:(id)l toURL:(id)rL error:(id *)error
{
  v21[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  fileSystemRepresentation = [l fileSystemRepresentation];
  fileSystemRepresentation2 = [rLCopy fileSystemRepresentation];

  if (!copyfile(fileSystemRepresentation, fileSystemRepresentation2, 0, 0x1000000u) || *__error() == 2)
  {
    return 1;
  }

  if (error)
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
    *error = [v13 errorWithDomain:v14 code:v15 userInfo:v19];
  }

  return 0;
}

+ (BOOL)moveURL:(id)l toURL:(id)rL error:(id *)error
{
  v24[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  fileSystemRepresentation = [l fileSystemRepresentation];
  fileSystemRepresentation2 = [rLCopy fileSystemRepresentation];

  rename(fileSystemRepresentation, fileSystemRepresentation2, v12);
  v14 = v13;
  if (error && v13)
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
    *error = [v15 errorWithDomain:v16 code:v17 userInfo:v21];
  }

  return v14 == 0;
}

+ (BOOL)createEmptyURL:(id)l error:(id *)error
{
  v21[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AC08];
  lCopy = l;
  defaultManager = [v5 defaultManager];
  path = [lCopy path];
  stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];
  [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];

  path2 = [lCopy path];

  v11 = open([path2 fileSystemRepresentation], 1537, 438);
  if (v11 == -1)
  {
    if (error)
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
      *error = [v12 errorWithDomain:v13 code:v14 userInfo:v18];
    }
  }

  else
  {
    close(v11);
  }

  return v11 != -1;
}

+ (BOOL)removeURL:(id)l error:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  path = [l path];
  v6 = unlink([path fileSystemRepresentation]);

  if (!v6 || *__error() == 2)
  {
    return 1;
  }

  if (error)
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
    *error = [v8 errorWithDomain:v9 code:v10 userInfo:v14];
  }

  return 0;
}

@end