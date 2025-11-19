@interface UIApplication
@end

@implementation UIApplication

void __72__UIApplication_PhotosUICore__px_navigateToPhotosURL_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2 != 1)
  {
    v6 = PLUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v9 = 138412802;
      v10 = v7;
      v11 = 2048;
      v12 = a2;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "Failed to navigate to URL: %@ with result: %li error: %@", &v9, 0x20u);
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, a2 == 1, v5);
  }
}

void __72__UIApplication_PhotosUICore__px_navigateToPhotosURL_completionHandler___block_invoke_415(uint64_t a1)
{
  v21[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6963608] defaultWorkspace];
  v3 = *(a1 + 32);
  v4 = *MEMORY[0x1E699F970];
  v20[0] = *MEMORY[0x1E699F990];
  v20[1] = v4;
  v21[0] = MEMORY[0x1E695E118];
  v21[1] = MEMORY[0x1E695E118];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v15 = 0;
  v6 = [v2 openSensitiveURL:v3 withOptions:v5 error:&v15];
  v7 = v15;

  if ((v6 & 1) == 0)
  {
    v8 = PLUIGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 138412546;
      v17 = v9;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_ERROR, "Failed to navigate to URL: %@ with error: %@", buf, 0x16u);
    }
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __72__UIApplication_PhotosUICore__px_navigateToPhotosURL_completionHandler___block_invoke_417;
    v11[3] = &unk_1E774A940;
    v13 = v10;
    v14 = v6;
    v12 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], v11);
  }
}

void __80__UIApplication_PhotosUICore__px_navigateToOneUpShowingAsset_completionHandler___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E696A578];
  v5[0] = @"Cannot navigate to an asset without a UUID";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PXUIApplicationErrorDomain" code:-1 userInfo:v2];
  (*(*(a1 + 32) + 16))();
}

@end