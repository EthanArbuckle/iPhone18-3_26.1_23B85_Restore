@interface PLStreamShareSource
- (PLStreamShareSource)initWithDictionary:(id)a3;
- (id)serializedDictionary;
- (void)_cleanupIfNeededMediaAtURL:(id)a3;
- (void)setMediaURL:(id)a3;
@end

@implementation PLStreamShareSource

- (void)_cleanupIfNeededMediaAtURL:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [a3 path];
  v5 = [MEMORY[0x1E69BF2A0] systemLibraryPathManager];
  v6 = [v5 temporaryDragAndDropDirectoryCreateIfNeeded:0 error:0];
  v7 = [v4 hasPrefix:v6];

  if (v7)
  {
    v8 = [MEMORY[0x1E696AC08] defaultManager];
    mediaURL = self->_mediaURL;
    v13 = 0;
    v10 = [v8 removeItemAtURL:mediaURL error:&v13];
    v11 = v13;

    if ((v10 & 1) == 0)
    {
      v12 = PLBackendGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v15 = v11;
        _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Cleanup failed with error %@.", buf, 0xCu);
      }
    }
  }
}

- (void)setMediaURL:(id)a3
{
  v5 = a3;
  mediaURL = self->_mediaURL;
  if (mediaURL != v5)
  {
    v13 = v5;
    v7 = mediaURL;
    objc_storeStrong(&self->_mediaURL, a3);
    v8 = [(NSURL *)v7 path];
    if (v8)
    {
      v9 = v8;
      v10 = [(NSURL *)v7 path];
      v11 = [(NSURL *)v13 path];
      v12 = [v10 isEqualToString:v11];

      if ((v12 & 1) == 0)
      {
        [(PLStreamShareSource *)self _cleanupIfNeededMediaAtURL:v7];
      }
    }

    v5 = v13;
  }
}

- (PLStreamShareSource)initWithDictionary:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = PLStreamShareSource;
  v5 = [(PLStreamShareSource *)&v30 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"SerializedFileExtensionKey"];
    [(PLStreamShareSource *)v5 setFileExtension:v6];

    v7 = [v4 objectForKeyedSubscript:@"SerializedDataKey"];
    [(PLStreamShareSource *)v5 setMediaData:v7];

    v8 = [v4 objectForKeyedSubscript:@"SerializedMediaTypeKey"];
    -[PLStreamShareSource setMediaType:](v5, "setMediaType:", [v8 integerValue]);

    v9 = [v4 objectForKeyedSubscript:@"SerializedVideoComplementKey"];
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x1E69C0918]) initWithPropertyList:v9];
      [(PLStreamShareSource *)v5 setVideoComplement:v10];
      v11 = objc_alloc(MEMORY[0x1E69BF2E8]);
      v12 = [v10 imagePath];
      v13 = [v4 objectForKeyedSubscript:@"SerializedVideoComplementImageSandboxExtensionTokenKey"];
      v14 = [v11 initFileURLWithPath:v12 sandboxExtensionToken:v13 consume:1];
      sandboxedVideoComplementImageURL = v5->_sandboxedVideoComplementImageURL;
      v5->_sandboxedVideoComplementImageURL = v14;

      v16 = objc_alloc(MEMORY[0x1E69BF2E8]);
      v17 = [v10 videoPath];
      v18 = [v4 objectForKeyedSubscript:@"SerializedVideoComplementVideoSandboxExtensionTokenKey"];
      v19 = [v16 initFileURLWithPath:v17 sandboxExtensionToken:v18 consume:1];
      sandboxedVideoComplementVideoURL = v5->_sandboxedVideoComplementVideoURL;
      v5->_sandboxedVideoComplementVideoURL = v19;
    }

    v21 = [v4 objectForKeyedSubscript:@"SerializedURLKey"];
    if (v21)
    {
      v22 = [MEMORY[0x1E695DFF8] URLWithString:v21];
      [(PLStreamShareSource *)v5 setMediaURL:v22];

      v23 = objc_alloc(MEMORY[0x1E69BF2E8]);
      v24 = [(PLStreamShareSource *)v5 mediaURL];
      v25 = [v4 objectForKeyedSubscript:@"SerializedSandboxExtensionTokenKey"];
      v26 = [v23 initWithURL:v24 sandboxExtensionToken:v25 consume:1];
      sandboxedMediaURL = v5->_sandboxedMediaURL;
      v5->_sandboxedMediaURL = v26;
    }

    v28 = v5;
  }

  return v5;
}

- (id)serializedDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(PLStreamShareSource *)self mediaData];

  if (v4)
  {
    v5 = [(PLStreamShareSource *)self mediaData];
    [v3 setObject:v5 forKey:@"SerializedDataKey"];
  }

  v6 = [(PLStreamShareSource *)self mediaURL];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 absoluteString];
    [v3 setObject:v8 forKey:@"SerializedURLKey"];

    v9 = [v7 path];
    v10 = PLGetSandboxExtensionToken();

    if (v10)
    {
      [v3 setObject:v10 forKey:@"SerializedSandboxExtensionTokenKey"];
    }
  }

  v11 = [(PLStreamShareSource *)self fileExtension];

  if (v11)
  {
    v12 = [(PLStreamShareSource *)self fileExtension];
    [v3 setObject:v12 forKey:@"SerializedFileExtensionKey"];
  }

  v13 = [(PLStreamShareSource *)self videoComplement];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 propertyListRepresentation];
    [v3 setObject:v15 forKeyedSubscript:@"SerializedVideoComplementKey"];
    v16 = [v14 imagePath];
    v17 = PLGetSandboxExtensionToken();
    [v3 setObject:v17 forKeyedSubscript:@"SerializedVideoComplementImageSandboxExtensionTokenKey"];

    v18 = [v14 videoPath];
    v19 = PLGetSandboxExtensionToken();
    [v3 setObject:v19 forKeyedSubscript:@"SerializedVideoComplementVideoSandboxExtensionTokenKey"];
  }

  v20 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PLStreamShareSource mediaType](self, "mediaType")}];
  [v3 setObject:v20 forKey:@"SerializedMediaTypeKey"];

  return v3;
}

@end