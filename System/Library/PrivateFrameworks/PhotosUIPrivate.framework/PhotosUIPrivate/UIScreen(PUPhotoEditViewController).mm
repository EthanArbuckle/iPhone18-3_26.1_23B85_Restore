@interface UIScreen(PUPhotoEditViewController)
- (double)pu_workImageSize;
@end

@implementation UIScreen(PUPhotoEditViewController)

- (double)pu_workImageSize
{
  v15 = *MEMORY[0x1E69E9840];
  [self bounds];
  v3 = v2;
  v5 = v4;
  [self scale];
  v7 = v3 * v6;
  v8 = v5 * v6;
  if (v7 >= v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  if (v9 <= 0.0)
  {
    v10 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v16.width = v9;
      v16.height = v9;
      v11 = NSStringFromCGSize(v16);
      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_ERROR, "Invalid work image size for photo editor: %@. Using default size.", &v13, 0xCu);
    }

    return 1200.0;
  }

  return v9;
}

@end