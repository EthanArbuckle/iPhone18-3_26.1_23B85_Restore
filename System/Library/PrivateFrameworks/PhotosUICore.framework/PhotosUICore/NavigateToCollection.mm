@interface NavigateToCollection
@end

@implementation NavigateToCollection

void ___NavigateToCollection_block_invoke(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v8 = v6;
  if (a2)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.photos.CPAnalytics.navigateTo%@Succeeded", v7];
    v10 = PLUserStatusUIGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v7;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEFAULT, "Did navigate to: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v11 = PLUserStatusUIGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = v7;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_ERROR, "Failed to navigate to: %{public}@, error: %@", buf, 0x16u);
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.photos.CPAnalytics.navigateTo%@Failed", v7];
  }

  v12 = MEMORY[0x1E6991F28];
  v14 = *MEMORY[0x1E6991E20];
  *buf = v8;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:&v14 count:1];
  [v12 sendEvent:v9 withPayload:v13];
}

@end