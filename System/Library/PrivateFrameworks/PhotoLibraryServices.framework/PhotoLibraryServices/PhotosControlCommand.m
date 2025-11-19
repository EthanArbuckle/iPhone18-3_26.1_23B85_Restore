@interface PhotosControlCommand
+ (id)name;
- (BOOL)processArgc:(int)a3 argv:(char *)a4;
- (BOOL)processOption:(int)a3 arg:(id)a4;
- (BOOL)writeData:(id)a3 toPathOrStdout:(id)a4;
- (PhotosControlCommand)init;
- (PhotosControlCommand)initWithArgc:(int)a3 argv:(char *)a4;
- (id)dataForPathOrStdin:(id)a3;
- (id)description;
- (id)formatDuration:(double)a3;
- (id)libraryURLFromArgument:(id)a3;
- (id)nonBindingAssetsdClient;
- (int)run;
- (void)_output:(uint64_t)a3 arguments:(FILE *)a4 file:;
- (void)installInterruptHandler:(id)a3;
- (void)outputCompactJsonObject:(id)a3;
- (void)outputErrorWithJsonOutput:(BOOL)a3 format:(id)a4;
- (void)outputJsonObject:(id)a3;
@end

@implementation PhotosControlCommand

- (void)installInterruptHandler:(id)a3
{
  v4 = a3;
  v5 = _Block_copy(self->_interruptHandler);
  v6 = v5;
  if (v5)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __48__PhotosControlCommand_installInterruptHandler___block_invoke_2;
    v15[3] = &unk_1E75712A0;
    v16 = v5;
    v17 = v4;
    v7 = _Block_copy(v15);
    interruptHandler = self->_interruptHandler;
    self->_interruptHandler = v7;
  }

  else
  {
    v9 = dispatch_get_global_queue(0, 0);
    v10 = dispatch_source_create(MEMORY[0x1E69E9700], 2uLL, 0, v9);

    objc_initWeak(&location, self);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __48__PhotosControlCommand_installInterruptHandler___block_invoke;
    handler[3] = &unk_1E75788C0;
    objc_copyWeak(&v20, &location);
    dispatch_source_set_event_handler(v10, handler);
    dispatch_resume(v10);
    v18.__sigaction_u.__sa_handler = 1;
    *&v18.sa_mask = 0;
    sigaction(2, &v18, 0);
    interruptSource = self->_interruptSource;
    self->_interruptSource = v10;
    v12 = v10;

    v13 = _Block_copy(v4);
    v14 = self->_interruptHandler;
    self->_interruptHandler = v13;

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

void __48__PhotosControlCommand_installInterruptHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = _Block_copy(WeakRetained[4]);
  if (v2)
  {
    v2[2]();
  }

  exit(1);
}

uint64_t __48__PhotosControlCommand_installInterruptHandler___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (id)nonBindingAssetsdClient
{
  nonBindingAssetsdClient = self->_nonBindingAssetsdClient;
  if (!nonBindingAssetsdClient)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69BF288]);
    v5 = self->_nonBindingAssetsdClient;
    self->_nonBindingAssetsdClient = v4;

    nonBindingAssetsdClient = self->_nonBindingAssetsdClient;
  }

  return nonBindingAssetsdClient;
}

- (id)libraryURLFromArgument:(id)a3
{
  v4 = a3;
  v5 = [v4 integerValue];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
  v7 = [v6 stringValue];
  v8 = [v7 isEqualToString:v4];

  if (v8)
  {
    if ((v5 - 1) >= 3)
    {
      if (!v5)
      {
        v11 = [MEMORY[0x1E696AD98] numberWithInteger:0];
        v12 = PLStringFromWellKnownPhotoLibraryIdentifier();
        [(PhotosControlCommand *)self outputError:@"Library identifier %@ (%@) is not valid in this context\n", v11, v12];
      }
    }

    else
    {
      v9 = [MEMORY[0x1E69BF2A0] wellKnownPhotoLibraryURLForIdentifier:v5];
      v10 = PLStringFromWellKnownPhotoLibraryIdentifier();
      [(PhotosControlCommand *)self output:@"Selected %@ at %@\n", v10, v9];

      if (v9)
      {
        goto LABEL_20;
      }
    }
  }

  v33 = 0;
  valid = PLIsValidUUIDString();
  v31 = 0;
  v32 = 0;
  v14 = PLPhotoLibraryIdentifierDecodeIdentifierPropertiesFromArchivalStringRepresentation(v4, &v32, &v31, &v33);
  v15 = v32;
  v16 = v31;
  if ((valid & 1) != 0 || v14)
  {
    v18 = objc_alloc_init(MEMORY[0x1E69BF288]);
    v19 = [v18 libraryManagementClient];
    v20 = objc_alloc_init(PLPhotoLibrarySearchCriteria);
    v21 = v20;
    v29 = self;
    if (valid)
    {
      [(PLPhotoLibrarySearchCriteria *)v20 setUuid:v4];
    }

    else
    {
      [(PLPhotoLibrarySearchCriteria *)v20 setUuid:v15];
      [(PLPhotoLibrarySearchCriteria *)v21 setContainerIdentifier:v16];
      [(PLPhotoLibrarySearchCriteria *)v21 setDomain:v33];
    }

    v30 = 0;
    v28 = v19;
    v22 = [v19 findPhotoLibraryIdentifiersMatchingSearchCriteria:v21 error:&v30];
    v23 = v30;
    v24 = [v22 firstObject];
    v9 = [v24 libraryURL];

    if (v9)
    {
      v25 = [v9 path];
      [(PhotosControlCommand *)v29 output:@"Found library with identifier %@ at %@\n", v4, v25];
    }

    else
    {
      v26 = @"No match";
      if (!v22)
      {
        v26 = v23;
      }

      [(PhotosControlCommand *)v29 outputError:@"Failed to find library with identifier %@: %@\n", v4, v26];
    }
  }

  else
  {
    v17 = objc_alloc(MEMORY[0x1E695DFF8]);
    v18 = [v4 stringByStandardizingPath];
    v9 = [v17 initFileURLWithPath:v18 isDirectory:1];
  }

LABEL_20:

  return v9;
}

- (id)formatDuration:(double)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (a3 == 0.0)
  {
    v3 = @"0.0 s";
  }

  else
  {
    v4 = a3;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [&unk_1F0FBFE68 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      while (2)
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(&unk_1F0FBFE68);
          }

          if (fabs(v4) >= 1.0)
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"%3.2f %@", *&v4, *(*(&v11 + 1) + 8 * v8)];
            goto LABEL_13;
          }

          v4 = v4 * 1000.0;
          ++v8;
        }

        while (v6 != v8);
        v6 = [&unk_1F0FBFE68 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"%3.2f ns", *&v4, v10];
    v3 = LABEL_13:;
  }

  return v3;
}

- (BOOL)writeData:(id)a3 toPathOrStdout:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"PhotosControlCommand.m" lineNumber:294 description:{@"Invalid parameter not satisfying: %@", @"data"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v19 = [MEMORY[0x1E696AAA8] currentHandler];
  [v19 handleFailureInMethod:a2 object:self file:@"PhotosControlCommand.m" lineNumber:295 description:{@"Invalid parameter not satisfying: %@", @"path"}];

LABEL_3:
  if ([v9 isEqualToString:@"-"])
  {
    v10 = [MEMORY[0x1E696AC00] fileHandleWithStandardOutput];
    v21 = 0;
    v11 = [v10 writeData:v7 error:&v21];
    v12 = v21;

    if (v11)
    {
      v13 = 1;
    }

    else
    {
      [(PhotosControlCommand *)self outputError:@"Unable to write data to standard output: %@\n", v12];
      v13 = 0;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:v9 isDirectory:0];
    v20 = 0;
    v13 = [v7 writeToURL:v14 options:0 error:&v20];
    v15 = v20;
    v16 = v15;
    if ((v13 & 1) == 0)
    {
      [(PhotosControlCommand *)self outputError:@"Unable to write data to %@: %@\n", v9, v15];
    }

    v12 = 0;
  }

  return v13;
}

- (id)dataForPathOrStdin:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PhotosControlCommand.m" lineNumber:272 description:{@"Invalid parameter not satisfying: %@", @"path"}];
  }

  if (![v5 isEqualToString:@"-"])
  {
    v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5 isDirectory:0];
    v13 = 0;
    v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v8 options:0 error:&v13];
    v9 = v13;
    if (!v7 || ![v7 length])
    {
      [(PhotosControlCommand *)self outputError:@"Unable to read data of file at path %@: %@\n", v5, v9];

      goto LABEL_12;
    }

LABEL_10:
    v7 = v7;
    v10 = v7;
    goto LABEL_13;
  }

  v6 = [MEMORY[0x1E696AC00] fileHandleWithStandardInput];
  v7 = [v6 readDataToEndOfFile];

  if (v7 && [v7 length])
  {
    goto LABEL_10;
  }

  [(PhotosControlCommand *)self outputError:@"Unable to read data from standard input\n"];
LABEL_12:
  v10 = 0;
LABEL_13:

  return v10;
}

- (void)_output:(uint64_t)a3 arguments:(FILE *)a4 file:
{
  if (a1)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = a2;
    v9 = [[v6 alloc] initWithFormat:v7 arguments:a3];

    v8 = v9;
    fputs([v9 UTF8String], a4);
  }
}

- (void)outputErrorWithJsonOutput:(BOOL)a3 format:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v10 = @"error";
    v5 = MEMORY[0x1E696AEC0];
    v6 = a4;
    v7 = [[v5 alloc] initWithFormat:v6 arguments:&v12];

    v11[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [(PhotosControlCommand *)self outputJsonObject:v8];
  }

  else
  {
    v9 = *MEMORY[0x1E69E9848];
    v7 = a4;
    [(PhotosControlCommand *)self _output:v7 arguments:&v12 file:v9];
  }
}

- (void)outputCompactJsonObject:(id)a3
{
  v6 = 0;
  v4 = [MEMORY[0x1E696ACB0] dataWithJSONObject:a3 options:0 error:&v6];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v4 encoding:4];
    [(PhotosControlCommand *)self output:@"%@\n", v5];
  }
}

- (void)outputJsonObject:(id)a3
{
  v6 = 0;
  v4 = [MEMORY[0x1E696ACB0] dataWithJSONObject:a3 options:1 error:&v6];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v4 encoding:4];
    [(PhotosControlCommand *)self output:@"%@\n", v5];
  }
}

- (int)run
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [(PhotosControlCommand *)self outputError:@"%@ must implement '- (int)run'\n", v4];

  return 70;
}

- (BOOL)processOption:(int)a3 arg:(id)a4
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"%@ must implement %@ to support option processing", v8, v9}];

  return 0;
}

- (BOOL)processArgc:(int)a3 argv:(char *)a4
{
  v7 = [objc_opt_class() minimumArgs];
  v8 = [objc_opt_class() maximumArgs];
  if (v7 > a3)
  {
    args = [objc_opt_class() name];
    [(PhotosControlCommand *)self outputError:@"command '%@' expects at least %ld non-option arguments\n", args, v7];
LABEL_5:
    v11 = 0;
    goto LABEL_10;
  }

  v10 = v8;
  if (v8 < a3)
  {
    args = [objc_opt_class() name];
    [(PhotosControlCommand *)self outputError:@"command '%@' expects at most %ld non-option arguments\n", args, v10];
    goto LABEL_5;
  }

  v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a3];
  if (a3 >= 1)
  {
    v13 = a3;
    do
    {
      v14 = *a4++;
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v14];
      [(NSArray *)v12 addObject:v15];

      --v13;
    }

    while (v13);
  }

  args = self->_args;
  self->_args = v12;
  v11 = 1;
LABEL_10:

  return v11;
}

- (id)description
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [objc_opt_class() name];
  v4 = [objc_opt_class() usage];
  v5 = [v2 initWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (PhotosControlCommand)initWithArgc:(int)a3 argv:(char *)a4
{
  v29.receiver = self;
  v29.super_class = PhotosControlCommand;
  v6 = [(PhotosControlCommand *)&v29 init];
  if (!v6)
  {
    return v6;
  }

  v7 = (a3 - 1);
  if (a3 >= 1)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*a4];
    invokedName = v6->_invokedName;
    v6->_invokedName = v8;
  }

  [(PhotosControlCommand *)v6 willProcessOptions];
  v10 = [objc_opt_class() longopts];
  v11 = [objc_opt_class() optstring];
  v12 = v11;
  if (v10)
  {
    if (!v11)
    {
      v23 = *MEMORY[0x1E69E9848];
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      fprintf(v23, "command '%s' supplied longopts but not optstring\n", [v25 UTF8String]);

LABEL_28:
      return 0;
    }

    v13 = MEMORY[0x1E69E98E0];
    while (1)
    {
      v14 = getopt_long(a3, a4, v12, v10, 0);
      if (v14 == -1)
      {
        goto LABEL_25;
      }

      v15 = v14;
      if (v14 == 63)
      {
        goto LABEL_28;
      }

      if (*v13)
      {
        v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
        v17 = [(PhotosControlCommand *)v6 processOption:v15 arg:v16];

        if (!v17)
        {
          goto LABEL_13;
        }
      }

      else if (![(PhotosControlCommand *)v6 processOption:v14 arg:0])
      {
LABEL_13:
        fprintf(*MEMORY[0x1E69E9848], "unsupported option: %c\n", v15);
        goto LABEL_28;
      }
    }
  }

  if (v11)
  {
    v18 = MEMORY[0x1E69E98E0];
    while (1)
    {
      v19 = getopt(a3, a4, v12);
      if (v19 == -1)
      {
        break;
      }

      v20 = v19;
      if (v19 == 63)
      {
        goto LABEL_22;
      }

      if (*v18)
      {
        v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
        v22 = [(PhotosControlCommand *)v6 processOption:v20 arg:v21];

        if (!v22)
        {
          goto LABEL_22;
        }
      }

      else if (![(PhotosControlCommand *)v6 processOption:v19 arg:0])
      {
LABEL_22:
        fprintf(*MEMORY[0x1E69E9848], "unsupported option: %c\n", v20);
        goto LABEL_28;
      }
    }

LABEL_25:
    v26 = *MEMORY[0x1E69E98F0];
    v7 = (a3 - v26);
    v27 = &a4[v26];
    goto LABEL_27;
  }

  v27 = a4 + 1;
LABEL_27:
  if (![(PhotosControlCommand *)v6 processArgc:v7 argv:v27])
  {
    goto LABEL_28;
  }

  return v6;
}

- (PhotosControlCommand)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"use designated initializer initWithArgc:argv: when creating %@", objc_opt_class()}];

  return 0;
}

+ (id)name
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  if ([v3 hasPrefix:@"PhotosCtl"])
  {
    v4 = [@"PhotosCtl" length];
    v5 = [v3 length];
    v6 = v5 - [@"PhotosCtl" length];
    if ([v3 hasSuffix:@"Command"])
    {
      v7 = v6 - 7;
    }

    else
    {
      v7 = v6;
    }

    v8 = [v3 substringWithRange:{v4, v7}];
    v9 = [v8 lowercaseString];
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"class %@ must be named with prefix %@", v3, @"PhotosCtl"}];
    v9 = v3;
  }

  return v9;
}

@end