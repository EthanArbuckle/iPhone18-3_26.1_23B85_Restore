@interface ImageFileLoader
- (BOOL)canLoadImage:(id)a3 context:(id)a4;
- (id)urlForImage:(id)a3 context:(id)a4;
- (void)loadImage:(id)a3 context:(id)a4 completionHandler:(id)a5;
@end

@implementation ImageFileLoader

- (id)urlForImage:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 darkUrlValue];
  v8 = [v6 hasDarkAppearance];

  if (v8 && v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [v5 urlValue];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v7;
    }

    v9 = v12;
  }

  return v9;
}

- (void)loadImage:(id)a3 context:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 imageData];

  if (v11)
  {
    v10[2](v10, v8, 0);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [(ImageFileLoader *)self urlForImage:v8 context:v9];
    }

    else
    {
      v12 = 0;
    }

    v13 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__ImageFileLoader_SFImageResourceLoader__loadImage_context_completionHandler___block_invoke;
    block[3] = &unk_1E7ACDD00;
    v16 = v12;
    v17 = v8;
    v18 = v10;
    v14 = v12;
    dispatch_async(v13, block);
  }
}

void __78__ImageFileLoader_SFImageResourceLoader__loadImage_context_completionHandler___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695DEF0]);
  v3 = *(a1 + 32);
  v9 = 0;
  v4 = [v2 initWithContentsOfURL:v3 options:1 error:&v9];
  v5 = v9;
  if (!v4)
  {
    if (PARLogHandleForCategory_onceToken_70631 != -1)
    {
      dispatch_once(&PARLogHandleForCategory_onceToken_70631, &__block_literal_global_114);
    }

    v6 = PARLogHandleForCategory_logHandles_1_70632;
    if (os_log_type_enabled(PARLogHandleForCategory_logHandles_1_70632, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_error_impl(&dword_1B116E000, v6, OS_LOG_TYPE_ERROR, "[ImageFileLoader loadImage:withCompletionHandler:] error: %@", buf, 0xCu);
    }
  }

  [*(a1 + 40) setImageData:v4];
  v7 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)canLoadImage:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v6 source])
  {
    v9 = [v6 imageData];

    if (v9)
    {
      v8 = 1;
      goto LABEL_5;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [(ImageFileLoader *)self urlForImage:v6 context:v7];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 scheme];
        v8 = [v13 hasPrefix:@"file"];

        goto LABEL_5;
      }
    }
  }

  v8 = 0;
LABEL_5:

  return v8;
}

@end