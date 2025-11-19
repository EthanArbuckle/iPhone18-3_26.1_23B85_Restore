@interface NSURL(VisionCore)
- (id)VisionCoreFileSystemPathAndReturnError:()VisionCore;
@end

@implementation NSURL(VisionCore)

- (id)VisionCoreFileSystemPathAndReturnError:()VisionCore
{
  v4 = [a1 filePathURL];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 fileSystemRepresentation];
    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v6];
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