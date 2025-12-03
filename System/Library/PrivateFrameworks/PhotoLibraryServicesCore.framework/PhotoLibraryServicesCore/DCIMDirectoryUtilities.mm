@interface DCIMDirectoryUtilities
+ (id)nebuladkeepalivepath;
+ (id)takingPhotoIndicatorFilePath;
+ (id)takingVideoIndicatorFilePath;
@end

@implementation DCIMDirectoryUtilities

+ (id)takingVideoIndicatorFilePath
{
  photoDataDirectory = [self photoDataDirectory];
  v3 = [photoDataDirectory stringByAppendingPathComponent:@"takingvideo"];

  return v3;
}

+ (id)takingPhotoIndicatorFilePath
{
  photoDataDirectory = [self photoDataDirectory];
  v3 = [photoDataDirectory stringByAppendingPathComponent:@"takingphoto"];

  return v3;
}

+ (id)nebuladkeepalivepath
{
  photoDCIMDirectory = [self photoDCIMDirectory];
  v3 = [photoDCIMDirectory stringByAppendingPathComponent:@".MISC"];
  v4 = [v3 stringByAppendingPathComponent:@"nebuladkeepalive"];

  return v4;
}

@end