@interface ImageFileLoader
- (BOOL)canLoadImage:(id)image context:(id)context;
- (id)urlForImage:(id)image context:(id)context;
- (void)loadImage:(id)image context:(id)context completionHandler:(id)handler;
@end

@implementation ImageFileLoader

- (id)urlForImage:(id)image context:(id)context
{
  imageCopy = image;
  contextCopy = context;
  darkUrlValue = [imageCopy darkUrlValue];
  hasDarkAppearance = [contextCopy hasDarkAppearance];

  if (hasDarkAppearance && darkUrlValue)
  {
    v9 = darkUrlValue;
  }

  else
  {
    urlValue = [imageCopy urlValue];
    v11 = urlValue;
    if (urlValue)
    {
      v12 = urlValue;
    }

    else
    {
      v12 = darkUrlValue;
    }

    v9 = v12;
  }

  return v9;
}

- (void)loadImage:(id)image context:(id)context completionHandler:(id)handler
{
  imageCopy = image;
  contextCopy = context;
  handlerCopy = handler;
  imageData = [imageCopy imageData];

  if (imageData)
  {
    handlerCopy[2](handlerCopy, imageCopy, 0);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [(ImageFileLoader *)self urlForImage:imageCopy context:contextCopy];
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
    v17 = imageCopy;
    v18 = handlerCopy;
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

- (BOOL)canLoadImage:(id)image context:(id)context
{
  imageCopy = image;
  contextCopy = context;
  if (![imageCopy source])
  {
    imageData = [imageCopy imageData];

    if (imageData)
    {
      v8 = 1;
      goto LABEL_5;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [(ImageFileLoader *)self urlForImage:imageCopy context:contextCopy];
      if (v11)
      {
        v12 = v11;
        scheme = [v11 scheme];
        v8 = [scheme hasPrefix:@"file"];

        goto LABEL_5;
      }
    }
  }

  v8 = 0;
LABEL_5:

  return v8;
}

@end