@interface MTImageStoreConstants
+ (id)defaultImageStoreURL;
+ (id)deprecatedImageStoreURL;
+ (id)fileExtension;
+ (id)imagePathForPodcastUuid:(id)uuid relativeToURL:(id)l;
@end

@implementation MTImageStoreConstants

+ (id)deprecatedImageStoreURL
{
  v2 = +[MTConstants sharedContainerURL];
  v3 = [v2 URLByAppendingPathComponent:@"IMImageStore-Default" isDirectory:1];

  return v3;
}

+ (id)defaultImageStoreURL
{
  v2 = +[MTConstants sharedCacheDirectory];
  v3 = [v2 URLByAppendingPathComponent:@"IMImageStore-Default" isDirectory:1];

  return v3;
}

+ (id)imagePathForPodcastUuid:(id)uuid relativeToURL:(id)l
{
  lCopy = l;
  v6 = [uuid stringByAppendingPathComponent:@"jpg"];
  v7 = [lCopy URLByAppendingPathComponent:v6 isDirectory:0];

  return v7;
}

+ (id)fileExtension
{
  fileType = [self fileType];
  v4 = [fileType isEqual:*MEMORY[0x1E6982E58]];

  if (v4)
  {
    preferredFilenameExtension = @"jpg";
  }

  else
  {
    fileType2 = [self fileType];
    preferredFilenameExtension = [fileType2 preferredFilenameExtension];
  }

  return preferredFilenameExtension;
}

@end