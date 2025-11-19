@interface UINSURLRequestImageLoader
@end

@implementation UINSURLRequestImageLoader

void __48___UINSURLRequestImageLoader__really_loadImage___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    v9 = [UIImage imageWithData:a2];
    if (v9)
    {
      v10 = v9;
      objc_storeStrong((*(a1 + 32) + 16), v9);
    }

    else
    {
      v14 = _UIImageLoadingLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v23 = *(a1 + 32);
        v24 = 134218243;
        v25 = v23;
        v26 = 2113;
        v27 = v7;
        _os_log_error_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Image loader %p could not create image from URL response: %{private}@", &v24, 0x16u);
      }

      v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:259 userInfo:0];
      v16 = *(a1 + 32);
      v17 = *(v16 + 24);
      *(v16 + 24) = v15;

      v10 = 0;
    }
  }

  else
  {
    v11 = _UIImageLoadingLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      v19 = [v8 domain];
      v20 = [v8 code];
      v21 = [*(*(a1 + 32) + 48) HTTPMethod];
      v22 = [*(*(a1 + 32) + 48) URL];
      v24 = 134219011;
      v25 = v18;
      v26 = 2114;
      v27 = v19;
      v28 = 2048;
      v29 = v20;
      v30 = 2113;
      v31 = v21;
      v32 = 2113;
      v33 = v22;
      _os_log_error_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "Image loader %p received error: domain=%{public}@ code=%ld request=%{private}@ %{private}@", &v24, 0x34u);
    }

    v12 = *(a1 + 32);
    v13 = v8;
    v10 = *(v12 + 24);
    *(v12 + 24) = v13;
  }

  (*(*(a1 + 40) + 16))();
}

@end