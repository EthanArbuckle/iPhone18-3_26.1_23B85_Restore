@interface NSURL(VisionCore)
- (id)VisionCoreFileSystemPathAndReturnError:()VisionCore;
@end

@implementation NSURL(VisionCore)

- (id)VisionCoreFileSystemPathAndReturnError:()VisionCore
{
  filePathURL = [self filePathURL];
  v5 = filePathURL;
  if (filePathURL)
  {
    fileSystemRepresentation = [filePathURL fileSystemRepresentation];
    if (fileSystemRepresentation)
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:fileSystemRepresentation];
      goto LABEL_9;
    }

    if (a3)
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"could not obtain file system representation for %@", v5];
      *a3 = [MEMORY[0x1E696ABC0] VisionCoreErrorForInternalErrorWithLocalizedDescription:v8];
    }
  }

  else if (a3)
  {
    [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:@"file URL was not provided"];
    *a3 = v7 = 0;
    goto LABEL_9;
  }

  v7 = 0;
LABEL_9:

  return v7;
}

@end