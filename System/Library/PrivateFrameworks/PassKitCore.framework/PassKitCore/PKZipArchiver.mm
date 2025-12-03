@interface PKZipArchiver
- (void)unzipStream:(id)stream toPath:(id)path completionHandler:(id)handler;
- (void)unzipStream:(id)stream toURL:(id)l completionHandler:(id)handler;
@end

@implementation PKZipArchiver

- (void)unzipStream:(id)stream toPath:(id)path completionHandler:(id)handler
{
  v8 = MEMORY[0x1E695DFF8];
  handlerCopy = handler;
  streamCopy = stream;
  v11 = [v8 fileURLWithPath:path];
  [(PKZipArchiver *)self unzipStream:streamCopy toURL:v11 completionHandler:handlerCopy];
}

- (void)unzipStream:(id)stream toURL:(id)l completionHandler:(id)handler
{
  streamCopy = stream;
  lCopy = l;
  handlerCopy = handler;
  v10 = handlerCopy;
  if (streamCopy)
  {
    v11 = dispatch_get_global_queue(0, 0);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __53__PKZipArchiver_unzipStream_toURL_completionHandler___block_invoke;
    v13[3] = &unk_1E79C4D60;
    v14 = streamCopy;
    v15 = lCopy;
    v16 = v10;
    v12 = v13;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __dispatch_async_ar_block_invoke_1;
    block[3] = &unk_1E79C4428;
    v18 = v12;
    dispatch_async(v11, block);
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
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