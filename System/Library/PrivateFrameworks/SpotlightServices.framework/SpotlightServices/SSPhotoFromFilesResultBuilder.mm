@interface SSPhotoFromFilesResultBuilder
+ (BOOL)supportsResult:(id)result;
+ (id)bundleId;
- (SSPhotoFromFilesResultBuilder)initWithResult:(id)result;
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

+ (BOOL)supportsResult:(id)result
{
  resultCopy = result;
  if ((SSSpotlightUIPlusEnabled() & 1) == 0)
  {
    contentType = [resultCopy contentType];
    if (contentType)
    {
      contentType2 = [resultCopy contentType];
      isImageOrVideoContentType(contentType2);
    }
  }

  return 0;
}

- (SSPhotoFromFilesResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v10.receiver = self;
  v10.super_class = SSPhotoFromFilesResultBuilder;
  v5 = [(SSPhotosResultBuilder *)&v10 initWithResult:resultCopy];
  if (v5)
  {
    v6 = [resultCopy valueForAttribute:*MEMORY[0x1E6963EB0] withType:objc_opt_class()];
    [(SSResultBuilder *)v5 setFilePath:v6];

    filePath = [(SSResultBuilder *)v5 filePath];

    if (!filePath)
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
  filePath = [(SSResultBuilder *)self filePath];

  if (filePath)
  {
    buildThumbnail = objc_opt_new();
    v5 = MEMORY[0x1E695DFF8];
    filePath2 = [(SSResultBuilder *)self filePath];
    v7 = [v5 fileURLWithPath:filePath2 isDirectory:0];
    [buildThumbnail setFilePath:v7];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SSPhotoFromFilesResultBuilder;
    buildThumbnail = [(SSPhotosResultBuilder *)&v9 buildThumbnail];
  }

  return buildThumbnail;
}

- (id)buildPreviewCommand
{
  filePath = [(SSResultBuilder *)self filePath];

  if (filePath)
  {
    buildPreviewCommand = objc_opt_new();
    v5 = MEMORY[0x1E69CA320];
    v6 = MEMORY[0x1E695DFF8];
    filePath2 = [(SSResultBuilder *)self filePath];
    v8 = [v6 fileURLWithPath:filePath2 isDirectory:0];
    v9 = [v5 punchoutWithURL:v8];
    [buildPreviewCommand setPhotoFilePunchout:v9];

    scenes = [(SSPhotosResultBuilder *)self scenes];
    [buildPreviewCommand setMatchedScenes:scenes];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SSPhotoFromFilesResultBuilder;
    buildPreviewCommand = [(SSResultBuilder *)&v12 buildPreviewCommand];
  }

  return buildPreviewCommand;
}

- (id)buildCommand
{
  result = [(SSResultBuilder *)self result];
  v4 = [result url];

  v5 = objc_opt_new();
  v6 = [MEMORY[0x1E69CA320] punchoutWithURL:v4];
  [v5 setPhotoFilePunchout:v6];

  scenes = [(SSPhotosResultBuilder *)self scenes];
  [v5 setMatchedScenes:scenes];

  return v5;
}

@end