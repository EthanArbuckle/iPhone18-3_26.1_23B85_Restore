@interface PLFilesystemIterator
- (PLFilesystemIterator)initWithFilePath:(id)a3;
- (void)visitURLsLoadingPropertiesForKeys:(id)a3 withBlock:(id)a4;
@end

@implementation PLFilesystemIterator

- (void)visitURLsLoadingPropertiesForKeys:(id)a3 withBlock:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(PLFilesystemIterator *)self continueAfterError];
  v33 = 0;
  if ([(NSFileManager *)self->_fileManager fileExistsAtPath:self->_path isDirectory:&v33])
  {
    v9 = objc_autoreleasePoolPush();
    path = self->_path;
    if (v33)
    {
      fileManager = self->_fileManager;
      v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:path];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __68__PLFilesystemIterator_visitURLsLoadingPropertiesForKeys_withBlock___block_invoke;
      v31[3] = &unk_1E792FC60;
      v31[4] = self;
      v32 = v8;
      v13 = [(NSFileManager *)fileManager enumeratorAtURL:v12 includingPropertiesForKeys:v6 options:0 errorHandler:v31];

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v27 objects:v36 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v28;
LABEL_5:
        v18 = 0;
        while (1)
        {
          if (*v28 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v27 + 1) + 8 * v18);
          v20 = objc_autoreleasePoolPush();
          LODWORD(v19) = v7[2](v7, v19);
          objc_autoreleasePoolPop(v20);
          if (!v19)
          {
            break;
          }

          if (v16 == ++v18)
          {
            v16 = [v14 countByEnumeratingWithState:&v27 objects:v36 count:16];
            if (v16)
            {
              goto LABEL_5;
            }

            break;
          }
        }
      }
    }

    else
    {
      v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:path];
      (v7)[2](v7, v14);
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v21 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A798];
    v23 = self->_path;
    v34 = *MEMORY[0x1E696A368];
    v35 = v23;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v25 = [v21 errorWithDomain:v22 code:2 userInfo:v24];
    error = self->_error;
    self->_error = v25;
  }
}

- (PLFilesystemIterator)initWithFilePath:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PLFilesystemIterator.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"path"}];
  }

  v13.receiver = self;
  v13.super_class = PLFilesystemIterator;
  v7 = [(PLFilesystemIterator *)&v13 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_path, a3);
    v9 = objc_alloc_init(MEMORY[0x1E696AC08]);
    fileManager = v8->_fileManager;
    v8->_fileManager = v9;
  }

  return v8;
}

@end