@interface PFAppleArchiveLogger
+ (BOOL)encodeFile:(id)a3 destination:(id)a4 error:(id *)a5;
- (BOOL)encodeBuffer:(const void *)a3 size:(unint64_t)a4 error:(id *)a5;
- (BOOL)flush:(id *)a3;
- (PFAppleArchiveLogger)initWithArchiveURL:(id)a3;
@end

@implementation PFAppleArchiveLogger

- (BOOL)encodeBuffer:(const void *)a3 size:(unint64_t)a4 error:(id *)a5
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    _PFAssertFailHandler();
    goto LABEL_10;
  }

  if (!a4)
  {
LABEL_10:
    _PFAssertFailHandler();
    goto LABEL_11;
  }

  if (!self->super._outputStream)
  {
LABEL_11:
    _PFAssertFailHandler();
LABEL_12:
    _PFAssertFailHandler();
  }

  compressionStream = self->super._compressionStream;
  if (!compressionStream)
  {
    goto LABEL_12;
  }

  v8 = AAByteStreamWrite(compressionStream, a3, a4);
  v9 = v8;
  if (a5 && v8 != a4)
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", @"Failed to write to stream", *MEMORY[0x1E696A278]];
    v15[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    *a5 = [v10 errorWithDomain:@"com.apple.PhotosFormats" code:8 userInfo:v12];
  }

  return v9 == a4;
}

- (BOOL)flush:(id *)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (self->super._compressionStream)
  {
    v4 = AAByteStreamFlush();
    if (a3 && v4)
    {
      v5 = MEMORY[0x1E696ABC0];
      v6 = v4;
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", @"Failed to flush compression stream", *MEMORY[0x1E696A278]];
      v11[0] = v7;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      *a3 = [v5 errorWithDomain:@"com.apple.PhotosFormats" code:v6 userInfo:v8];

      return 0;
    }

    if (v4)
    {
      return 0;
    }
  }

  return 1;
}

- (PFAppleArchiveLogger)initWithArchiveURL:(id)a3
{
  v6.receiver = self;
  v6.super_class = PFAppleArchiveLogger;
  v3 = [(PFAppleArchiveStream *)&v6 initWithArchiveURL:a3];
  v4 = v3;
  if (v3)
  {
    [(PFAppleArchiveStream *)v3 setAppendToExistingArchive:1];
    [(PFAppleArchiveStream *)v4 setBlockSize:0x10000];
  }

  return v4;
}

+ (BOOL)encodeFile:(id)a3 destination:(id)a4 error:(id *)a5
{
  v35[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = [a3 path];
  v9 = open([v8 fileSystemRepresentation], 0, 0);

  if (v9 < 0)
  {
    if (!a5)
    {
      v24 = 0;
      goto LABEL_23;
    }

    v19 = MEMORY[0x1E696ABC0];
    v34 = *MEMORY[0x1E696A278];
    p_isa = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", @"failed to open encode source"];
    v35[0] = p_isa;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    *a5 = [v19 errorWithDomain:@"com.apple.PhotosFormats" code:8 userInfo:v20];
  }

  else
  {
    v10 = [[PFAppleArchiveLogger alloc] initWithArchiveURL:v7];
    if (v10)
    {
      p_isa = &v10->super.super.isa;
      [(PFAppleArchiveStream *)v10 setAppendToExistingArchive:0];
      if ([p_isa openForWriting:a5])
      {
        v12 = p_isa[3];
        while (1)
        {
          v13 = read(v9, buf, 0x1000uLL);
          if (v13 < 1)
          {
            break;
          }

          if (AAByteStreamWrite(v12, buf, v13) != v13)
          {
            if (!a5)
            {
              goto LABEL_20;
            }

            v14 = MEMORY[0x1E696ABC0];
            v29 = *MEMORY[0x1E696A278];
            v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", @"Failed to write to stream"];
            v30 = v15;
            v16 = MEMORY[0x1E695DF20];
            v17 = &v30;
            v18 = &v29;
            goto LABEL_19;
          }
        }

        if ((v13 & 0x8000000000000000) == 0)
        {
          close(v9);
          v24 = [p_isa close:a5];
          goto LABEL_22;
        }

        if (a5)
        {
          v14 = MEMORY[0x1E696ABC0];
          v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", @"Failed to write to stream", *MEMORY[0x1E696A278]];
          v28 = v15;
          v16 = MEMORY[0x1E695DF20];
          v17 = &v28;
          v18 = &v27;
LABEL_19:
          v25 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:1];
          *a5 = [v14 errorWithDomain:@"com.apple.PhotosFormats" code:8 userInfo:v25];
        }

LABEL_20:
        close(v9);
      }
    }

    else
    {
      if (a5)
      {
        v21 = MEMORY[0x1E696ABC0];
        v32 = *MEMORY[0x1E696A278];
        v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", @"failed to make archive logger"];
        v33 = v22;
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
        *a5 = [v21 errorWithDomain:@"com.apple.PhotosFormats" code:8 userInfo:v23];
      }

      p_isa = 0;
    }
  }

  v24 = 0;
LABEL_22:

LABEL_23:
  return v24;
}

@end