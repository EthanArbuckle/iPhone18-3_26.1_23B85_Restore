@interface NSURL(VisionCoreE5RT)
- (uint64_t)VisionCoreE5RTPathAndReturnError:()VisionCoreE5RT;
@end

@implementation NSURL(VisionCoreE5RT)

- (uint64_t)VisionCoreE5RTPathAndReturnError:()VisionCoreE5RT
{
  fileSystemRepresentation = [self fileSystemRepresentation];
  v6 = fileSystemRepresentation;
  if (a3 && !fileSystemRepresentation)
  {
    isFileURL = [self isFileURL];
    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (isFileURL)
    {
      v9 = [v8 initWithFormat:@"%@ cannot be resolved into a file system pathname", self];
      [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:v9];
    }

    else
    {
      v9 = [v8 initWithFormat:@"%@ does not specify a file", self];
      [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableResourceWithLocalizedDescription:v9];
    }
    *a3 = ;
  }

  return v6;
}

@end