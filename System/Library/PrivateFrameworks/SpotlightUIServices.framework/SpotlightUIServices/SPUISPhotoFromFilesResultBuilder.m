@interface SPUISPhotoFromFilesResultBuilder
+ (BOOL)supportsResult:(id)a3;
+ (id)bundleId;
- (SPUISPhotoFromFilesResultBuilder)initWithResult:(id)a3;
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

+ (BOOL)supportsResult:(id)a3
{
  v3 = a3;
  if ((SSSpotlightUIPlusEnabled() & 1) == 0)
  {
    v4 = [v3 contentType];
    if (v4)
    {
      v5 = [v3 contentType];
      isImageOrVideoContentType();
    }
  }

  return 0;
}

- (SPUISPhotoFromFilesResultBuilder)initWithResult:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SPUISPhotoFromFilesResultBuilder;
  v5 = [(SPUISPhotosResultBuilder *)&v10 initWithResult:v4];
  if (v5)
  {
    v6 = [v4 valueForAttribute:*MEMORY[0x277CC2688] withType:objc_opt_class()];
    [(SPUISResultBuilder *)v5 setFilePath:v6];

    v7 = [(SPUISResultBuilder *)v5 filePath];

    if (!v7)
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
  v3 = [(SPUISResultBuilder *)self filePath];

  if (v3)
  {
    v4 = objc_opt_new();
    v5 = MEMORY[0x277CBEBC0];
    v6 = [(SPUISResultBuilder *)self filePath];
    v7 = [v5 fileURLWithPath:v6 isDirectory:0];
    [v4 setFilePath:v7];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SPUISPhotoFromFilesResultBuilder;
    v4 = [(SPUISPhotosResultBuilder *)&v9 buildThumbnail];
  }

  return v4;
}

- (id)buildPreviewCommand
{
  v3 = [(SPUISResultBuilder *)self filePath];

  if (v3)
  {
    v4 = objc_opt_new();
    v5 = MEMORY[0x277D4C550];
    v6 = MEMORY[0x277CBEBC0];
    v7 = [(SPUISResultBuilder *)self filePath];
    v8 = [v6 fileURLWithPath:v7 isDirectory:0];
    v9 = [v5 punchoutWithURL:v8];
    [v4 setPhotoFilePunchout:v9];

    v10 = [(SPUISPhotosResultBuilder *)self scenes];
    [v4 setMatchedScenes:v10];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SPUISPhotoFromFilesResultBuilder;
    v4 = [(SPUISResultBuilder *)&v12 buildPreviewCommand];
  }

  return v4;
}

- (id)buildCommand
{
  v3 = [(SPUISResultBuilder *)self result];
  v4 = [v3 url];

  v5 = objc_opt_new();
  v6 = [MEMORY[0x277D4C550] punchoutWithURL:v4];
  [v5 setPhotoFilePunchout:v6];

  v7 = [(SPUISPhotosResultBuilder *)self scenes];
  [v5 setMatchedScenes:v7];

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