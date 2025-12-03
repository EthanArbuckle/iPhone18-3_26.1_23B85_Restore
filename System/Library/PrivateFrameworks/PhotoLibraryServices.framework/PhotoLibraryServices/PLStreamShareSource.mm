@interface PLStreamShareSource
- (PLStreamShareSource)initWithDictionary:(id)dictionary;
- (id)serializedDictionary;
- (void)_cleanupIfNeededMediaAtURL:(id)l;
- (void)setMediaURL:(id)l;
@end

@implementation PLStreamShareSource

- (void)_cleanupIfNeededMediaAtURL:(id)l
{
  v16 = *MEMORY[0x1E69E9840];
  path = [l path];
  systemLibraryPathManager = [MEMORY[0x1E69BF2A0] systemLibraryPathManager];
  v6 = [systemLibraryPathManager temporaryDragAndDropDirectoryCreateIfNeeded:0 error:0];
  v7 = [path hasPrefix:v6];

  if (v7)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    mediaURL = self->_mediaURL;
    v13 = 0;
    v10 = [defaultManager removeItemAtURL:mediaURL error:&v13];
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

- (void)setMediaURL:(id)l
{
  lCopy = l;
  mediaURL = self->_mediaURL;
  if (mediaURL != lCopy)
  {
    v13 = lCopy;
    v7 = mediaURL;
    objc_storeStrong(&self->_mediaURL, l);
    path = [(NSURL *)v7 path];
    if (path)
    {
      v9 = path;
      path2 = [(NSURL *)v7 path];
      path3 = [(NSURL *)v13 path];
      v12 = [path2 isEqualToString:path3];

      if ((v12 & 1) == 0)
      {
        [(PLStreamShareSource *)self _cleanupIfNeededMediaAtURL:v7];
      }
    }

    lCopy = v13;
  }
}

- (PLStreamShareSource)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v30.receiver = self;
  v30.super_class = PLStreamShareSource;
  v5 = [(PLStreamShareSource *)&v30 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"SerializedFileExtensionKey"];
    [(PLStreamShareSource *)v5 setFileExtension:v6];

    v7 = [dictionaryCopy objectForKeyedSubscript:@"SerializedDataKey"];
    [(PLStreamShareSource *)v5 setMediaData:v7];

    v8 = [dictionaryCopy objectForKeyedSubscript:@"SerializedMediaTypeKey"];
    -[PLStreamShareSource setMediaType:](v5, "setMediaType:", [v8 integerValue]);

    v9 = [dictionaryCopy objectForKeyedSubscript:@"SerializedVideoComplementKey"];
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x1E69C0918]) initWithPropertyList:v9];
      [(PLStreamShareSource *)v5 setVideoComplement:v10];
      v11 = objc_alloc(MEMORY[0x1E69BF2E8]);
      imagePath = [v10 imagePath];
      v13 = [dictionaryCopy objectForKeyedSubscript:@"SerializedVideoComplementImageSandboxExtensionTokenKey"];
      v14 = [v11 initFileURLWithPath:imagePath sandboxExtensionToken:v13 consume:1];
      sandboxedVideoComplementImageURL = v5->_sandboxedVideoComplementImageURL;
      v5->_sandboxedVideoComplementImageURL = v14;

      v16 = objc_alloc(MEMORY[0x1E69BF2E8]);
      videoPath = [v10 videoPath];
      v18 = [dictionaryCopy objectForKeyedSubscript:@"SerializedVideoComplementVideoSandboxExtensionTokenKey"];
      v19 = [v16 initFileURLWithPath:videoPath sandboxExtensionToken:v18 consume:1];
      sandboxedVideoComplementVideoURL = v5->_sandboxedVideoComplementVideoURL;
      v5->_sandboxedVideoComplementVideoURL = v19;
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"SerializedURLKey"];
    if (v21)
    {
      v22 = [MEMORY[0x1E695DFF8] URLWithString:v21];
      [(PLStreamShareSource *)v5 setMediaURL:v22];

      v23 = objc_alloc(MEMORY[0x1E69BF2E8]);
      mediaURL = [(PLStreamShareSource *)v5 mediaURL];
      v25 = [dictionaryCopy objectForKeyedSubscript:@"SerializedSandboxExtensionTokenKey"];
      v26 = [v23 initWithURL:mediaURL sandboxExtensionToken:v25 consume:1];
      sandboxedMediaURL = v5->_sandboxedMediaURL;
      v5->_sandboxedMediaURL = v26;
    }

    v28 = v5;
  }

  return v5;
}

- (id)serializedDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  mediaData = [(PLStreamShareSource *)self mediaData];

  if (mediaData)
  {
    mediaData2 = [(PLStreamShareSource *)self mediaData];
    [dictionary setObject:mediaData2 forKey:@"SerializedDataKey"];
  }

  mediaURL = [(PLStreamShareSource *)self mediaURL];
  v7 = mediaURL;
  if (mediaURL)
  {
    absoluteString = [mediaURL absoluteString];
    [dictionary setObject:absoluteString forKey:@"SerializedURLKey"];

    path = [v7 path];
    v10 = PLGetSandboxExtensionToken();

    if (v10)
    {
      [dictionary setObject:v10 forKey:@"SerializedSandboxExtensionTokenKey"];
    }
  }

  fileExtension = [(PLStreamShareSource *)self fileExtension];

  if (fileExtension)
  {
    fileExtension2 = [(PLStreamShareSource *)self fileExtension];
    [dictionary setObject:fileExtension2 forKey:@"SerializedFileExtensionKey"];
  }

  videoComplement = [(PLStreamShareSource *)self videoComplement];
  v14 = videoComplement;
  if (videoComplement)
  {
    propertyListRepresentation = [videoComplement propertyListRepresentation];
    [dictionary setObject:propertyListRepresentation forKeyedSubscript:@"SerializedVideoComplementKey"];
    imagePath = [v14 imagePath];
    v17 = PLGetSandboxExtensionToken();
    [dictionary setObject:v17 forKeyedSubscript:@"SerializedVideoComplementImageSandboxExtensionTokenKey"];

    videoPath = [v14 videoPath];
    v19 = PLGetSandboxExtensionToken();
    [dictionary setObject:v19 forKeyedSubscript:@"SerializedVideoComplementVideoSandboxExtensionTokenKey"];
  }

  v20 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PLStreamShareSource mediaType](self, "mediaType")}];
  [dictionary setObject:v20 forKey:@"SerializedMediaTypeKey"];

  return dictionary;
}

@end