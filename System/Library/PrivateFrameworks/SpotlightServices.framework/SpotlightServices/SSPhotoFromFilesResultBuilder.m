@interface SSPhotoFromFilesResultBuilder
+ (BOOL)supportsResult:(id)a3;
+ (id)bundleId;
- (SSPhotoFromFilesResultBuilder)initWithResult:(id)a3;
- (id)buildCommand;
- (id)buildPreviewCommand;
- (id)buildThumbnail;
@end

@implementation SSPhotoFromFilesResultBuilder

+ (id)bundleId
{
  if (isMacOS())
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
      isImageOrVideoContentType(v5);
    }
  }

  return 0;
}

- (SSPhotoFromFilesResultBuilder)initWithResult:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SSPhotoFromFilesResultBuilder;
  v5 = [(SSPhotosResultBuilder *)&v10 initWithResult:v4];
  if (v5)
  {
    v6 = [v4 valueForAttribute:*MEMORY[0x1E6963EB0] withType:objc_opt_class()];
    [(SSResultBuilder *)v5 setFilePath:v6];

    v7 = [(SSResultBuilder *)v5 filePath];

    if (!v7)
    {
      v8 = SSGeneralLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(SSPhotoFromFilesResultBuilder *)v5 initWithResult:v8];
      }
    }
  }

  return v5;
}

- (id)buildThumbnail
{
  v3 = [(SSResultBuilder *)self filePath];

  if (v3)
  {
    v4 = objc_opt_new();
    v5 = MEMORY[0x1E695DFF8];
    v6 = [(SSResultBuilder *)self filePath];
    v7 = [v5 fileURLWithPath:v6 isDirectory:0];
    [v4 setFilePath:v7];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SSPhotoFromFilesResultBuilder;
    v4 = [(SSPhotosResultBuilder *)&v9 buildThumbnail];
  }

  return v4;
}

- (id)buildPreviewCommand
{
  v3 = [(SSResultBuilder *)self filePath];

  if (v3)
  {
    v4 = objc_opt_new();
    v5 = MEMORY[0x1E69CA320];
    v6 = MEMORY[0x1E695DFF8];
    v7 = [(SSResultBuilder *)self filePath];
    v8 = [v6 fileURLWithPath:v7 isDirectory:0];
    v9 = [v5 punchoutWithURL:v8];
    [v4 setPhotoFilePunchout:v9];

    v10 = [(SSPhotosResultBuilder *)self scenes];
    [v4 setMatchedScenes:v10];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SSPhotoFromFilesResultBuilder;
    v4 = [(SSResultBuilder *)&v12 buildPreviewCommand];
  }

  return v4;
}

- (id)buildCommand
{
  v3 = [(SSResultBuilder *)self result];
  v4 = [v3 url];

  v5 = objc_opt_new();
  v6 = [MEMORY[0x1E69CA320] punchoutWithURL:v4];
  [v5 setPhotoFilePunchout:v6];

  v7 = [(SSPhotosResultBuilder *)self scenes];
  [v5 setMatchedScenes:v7];

  return v5;
}

@end