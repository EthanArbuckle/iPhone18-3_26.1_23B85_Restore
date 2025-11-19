@interface PKZipArchiver
- (void)unzipStream:(id)a3 toPath:(id)a4 completionHandler:(id)a5;
- (void)unzipStream:(id)a3 toURL:(id)a4 completionHandler:(id)a5;
@end

@implementation PKZipArchiver

- (void)unzipStream:(id)a3 toPath:(id)a4 completionHandler:(id)a5
{
  v8 = MEMORY[0x1E695DFF8];
  v9 = a5;
  v10 = a3;
  v11 = [v8 fileURLWithPath:a4];
  [(PKZipArchiver *)self unzipStream:v10 toURL:v11 completionHandler:v9];
}

- (void)unzipStream:(id)a3 toURL:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v7)
  {
    v11 = dispatch_get_global_queue(0, 0);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __53__PKZipArchiver_unzipStream_toURL_completionHandler___block_invoke;
    v13[3] = &unk_1E79C4D60;
    v14 = v7;
    v15 = v8;
    v16 = v10;
    v12 = v13;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __dispatch_async_ar_block_invoke_1;
    block[3] = &unk_1E79C4428;
    v18 = v12;
    dispatch_async(v11, block);
  }

  else if (v9)
  {
    (*(v9 + 2))(v9, 0);
  }
}

uint64_t __53__PKZipArchiver_unzipStream_toURL_completionHandler___block_invoke(uint64_t a1)
{
  v2 = NSPageSize();
  v3 = malloc_type_malloc(v2, 0x348EB49CuLL);
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF88]);
    if (v4)
    {
      v5 = v4;
      v6 = [*(a1 + 32) read:v3 maxLength:v2];
      if (!v6)
      {
LABEL_7:
        free(v3);
        PKUnarchiverZip(v5, *(a1 + 40));

        goto LABEL_10;
      }

      v7 = v6;
      while ((v7 & 0x8000000000000000) == 0)
      {
        [(NSData *)v5 appendBytes:v3 length:?];
        v7 = [*(a1 + 32) read:v3 maxLength:v2];
        if (!v7)
        {
          goto LABEL_7;
        }
      }
    }

    free(v3);
  }

LABEL_10:
  result = *(a1 + 48);
  if (result)
  {
    v9 = *(result + 16);

    return v9();
  }

  return result;
}

@end