@interface PXFlexMusicImageLoader
@end

@implementation PXFlexMusicImageLoader

void __58___PXFlexMusicImageLoader__handleDownloadCompleted_error___block_invoke(uint64_t a1)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  [*(a1 + 40) maxSize];
  v3 = v2;
  v22[0] = *MEMORY[0x1E696E0A8];
  *buf = MEMORY[0x1E695E110];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v22 count:1];
  v5 = CGImageSourceCreateWithURL(v3, v4);

  if (v5)
  {
    PXCreateCGImageFromImageSourceWithMaxPixelSize();
  }

  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"FlexMusic returned a local file URL, but we could not use it to create an image: %@", v3];
  v7 = objc_alloc(MEMORY[0x1E696ABC0]);
  v22[0] = *MEMORY[0x1E696A278];
  *buf = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v22 count:1];
  v9 = [v7 initWithDomain:@"PXAudioAssetImageProviderErrorDomain" code:3 userInfo:v8];

  v10 = v9;
  v11 = v9;
  v12 = PLAudioPlaybackGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = *(a1 + 32);
    *buf = 138412546;
    *&buf[4] = v13;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_ERROR, "Failed to decode artwork image from URL: %@. Error: %@", buf, 0x16u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58___PXFlexMusicImageLoader__handleDownloadCompleted_error___block_invoke_47;
  block[3] = &unk_1E7749FF8;
  v14 = *(a1 + 40);
  v17 = v11;
  v18 = 0;
  block[4] = v14;
  v15 = v11;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __58___PXFlexMusicImageLoader__handleDownloadCompleted_error___block_invoke_2(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) artworkAsset];
  v4 = [v2 initWithFormat:@"Finished download data from Flex Music song, but we could not use it to create an image: %@", v3];

  *(*(a1 + 32) + 40) = 0;
  v5 = objc_alloc(MEMORY[0x1E696ABC0]);
  v12 = *MEMORY[0x1E696A278];
  v13[0] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v7 = [v6 px_dictionaryBySettingObject:*(a1 + 40) forKey:*MEMORY[0x1E696AA08]];
  v8 = [v5 initWithDomain:@"PXAudioAssetImageProviderErrorDomain" code:3 userInfo:v7];
  v9 = *(a1 + 32);
  v10 = *(v9 + 48);
  *(v9 + 48) = v8;

  v11 = [*(a1 + 32) completionHandler];
  v11[2]();
}

void __58___PXFlexMusicImageLoader__handleDownloadCompleted_error___block_invoke_47(uint64_t a1)
{
  *(*(a1 + 32) + 40) = *(a1 + 48);
  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
  v2 = [*(a1 + 32) completionHandler];
  v2[2]();
}

void __47___PXFlexMusicImageLoader_startWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDownloadCompleted:a2 error:v5];
}

@end