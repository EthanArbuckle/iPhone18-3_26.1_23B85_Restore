@interface DCIMImageWellUtilities
+ (id)cameraPreviewWellImage;
+ (id)cameraPreviewWellImageFileURL;
@end

@implementation DCIMImageWellUtilities

+ (id)cameraPreviewWellImage
{
  v2 = [a1 cameraPreviewWellImageFileURL];
  v3 = [v2 path];
  v4 = DCIM_newPLImageWithContentsOfFile(v3);

  return v4;
}

+ (id)cameraPreviewWellImageFileURL
{
  v2 = +[DCIMDirectoryUtilities photoDataMiscDirectory];
  v3 = MEMORY[0x1E695DFF8];
  v4 = [v2 stringByAppendingPathComponent:@"PreviewWellImage.jpg"];
  v5 = [v3 fileURLWithPath:v4 isDirectory:0];

  return v5;
}

@end