@interface SPUISPhotoFromFilesResultBuilder
+ (BOOL)supportsResult:(id)result;
+ (id)bundleId;
- (SPUISPhotoFromFilesResultBuilder)initWithResult:(id)result;
- (id)buildCommand;
- (id)buildPreviewCommand;
- (id)buildThumbnail;
@end

@implementation SPUISPhotoFromFilesResultBuilder

+ (id)bundleId
{
  if (+[SPUISUtilities isMacOS])
  {
    v2 = @"com.apple.spotlight.syndicatedPhotos.fileProvider";
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (BOOL)supportsResult:(id)result
{
  resultCopy = result;
  if ((SSSpotlightUIPlusEnabled() & 1) == 0)
  {
    contentType = [resultCopy contentType];
    if (contentType)
    {
      contentType2 = [resultCopy contentType];
      isImageOrVideoContentType();
    }
  }

  return 0;
}

- (SPUISPhotoFromFilesResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v10.receiver = self;
  v10.super_class = SPUISPhotoFromFilesResultBuilder;
  v5 = [(SPUISPhotosResultBuilder *)&v10 initWithResult:resultCopy];
  if (v5)
  {
    v6 = [resultCopy valueForAttribute:*MEMORY[0x277CC2688] withType:objc_opt_class()];
    [(SPUISResultBuilder *)v5 setFilePath:v6];

    filePath = [(SPUISResultBuilder *)v5 filePath];

    if (!filePath)
    {
      v8 = SPUISGeneralLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(SPUISPhotoFromFilesResultBuilder *)v5 initWithResult:v8];
      }
    }
  }

  return v5;
}

- (id)buildThumbnail
{
  filePath = [(SPUISResultBuilder *)self filePath];

  if (filePath)
  {
    buildThumbnail = objc_opt_new();
    v5 = MEMORY[0x277CBEBC0];
    filePath2 = [(SPUISResultBuilder *)self filePath];
    v7 = [v5 fileURLWithPath:filePath2 isDirectory:0];
    [buildThumbnail setFilePath:v7];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SPUISPhotoFromFilesResultBuilder;
    buildThumbnail = [(SPUISPhotosResultBuilder *)&v9 buildThumbnail];
  }

  return buildThumbnail;
}

- (id)buildPreviewCommand
{
  filePath = [(SPUISResultBuilder *)self filePath];

  if (filePath)
  {
    buildPreviewCommand = objc_opt_new();
    v5 = MEMORY[0x277D4C550];
    v6 = MEMORY[0x277CBEBC0];
    filePath2 = [(SPUISResultBuilder *)self filePath];
    v8 = [v6 fileURLWithPath:filePath2 isDirectory:0];
    v9 = [v5 punchoutWithURL:v8];
    [buildPreviewCommand setPhotoFilePunchout:v9];

    scenes = [(SPUISPhotosResultBuilder *)self scenes];
    [buildPreviewCommand setMatchedScenes:scenes];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SPUISPhotoFromFilesResultBuilder;
    buildPreviewCommand = [(SPUISResultBuilder *)&v12 buildPreviewCommand];
  }

  return buildPreviewCommand;
}

- (id)buildCommand
{
  result = [(SPUISResultBuilder *)self result];
  v4 = [result url];

  v5 = objc_opt_new();
  v6 = [MEMORY[0x277D4C550] punchoutWithURL:v4];
  [v5 setPhotoFilePunchout:v6];

  scenes = [(SPUISPhotosResultBuilder *)self scenes];
  [v5 setMatchedScenes:scenes];

  return v5;
}

- (void)initWithResult:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 result];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_26B882000, a2, OS_LOG_TYPE_ERROR, "SPUISPhotoFromFilesResultBuilder: missing filePath for result:%@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end