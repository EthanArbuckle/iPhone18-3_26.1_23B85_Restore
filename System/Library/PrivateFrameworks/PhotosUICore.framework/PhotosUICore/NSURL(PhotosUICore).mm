@interface NSURL(PhotosUICore)
+ (id)px_tempDirectoryFileURLWithFileName:()PhotosUICore subdirectory:fileExtension:;
+ (id)px_tempDirectoryFileURLWithSubdirectory:()PhotosUICore fileExtension:;
- (id)px_URLByAppendingPathComponentFollowedByCurrentDateAndTime:()PhotosUICore;
@end

@implementation NSURL(PhotosUICore)

- (id)px_URLByAppendingPathComponentFollowedByCurrentDateAndTime:()PhotosUICore
{
  v4 = MEMORY[0x1E696AB78];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setDateFormat:@"yyyy-MM-dd-HHmmss"];
  v7 = [MEMORY[0x1E695DF00] date];
  v8 = [v6 stringFromDate:v7];

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v5, v8];

  v10 = [a1 URLByAppendingPathComponent:v9];

  return v10;
}

+ (id)px_tempDirectoryFileURLWithFileName:()PhotosUICore subdirectory:fileExtension:
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = NSTemporaryDirectory();
  v11 = [v10 stringByAppendingPathComponent:v9];

  v12 = [MEMORY[0x1E696AC08] defaultManager];
  LOBYTE(v10) = [v12 fileExistsAtPath:v11 isDirectory:0];

  if ((v10 & 1) == 0)
  {
    v13 = [MEMORY[0x1E696AC08] defaultManager];
    [v13 createDirectoryAtPath:v11 withIntermediateDirectories:1 attributes:0 error:0];
  }

  v14 = [v11 stringByAppendingPathComponent:v7];
  v15 = [v14 stringByAppendingPathExtension:v8];

  v16 = [MEMORY[0x1E695DFF8] fileURLWithPath:v15];

  return v16;
}

+ (id)px_tempDirectoryFileURLWithSubdirectory:()PhotosUICore fileExtension:
{
  v6 = MEMORY[0x1E696AFB0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 UUID];
  v10 = [v9 UUIDString];

  v11 = [a1 px_tempDirectoryFileURLWithFileName:v10 subdirectory:v8 fileExtension:v7];

  return v11;
}

@end