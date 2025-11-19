@interface NSURL(VisionCoreE5RT)
- (uint64_t)VisionCoreE5RTPathAndReturnError:()VisionCoreE5RT;
@end

@implementation NSURL(VisionCoreE5RT)

- (uint64_t)VisionCoreE5RTPathAndReturnError:()VisionCoreE5RT
{
  v5 = [a1 fileSystemRepresentation];
  v6 = v5;
  if (a3 && !v5)
  {
    v7 = [a1 isFileURL];
    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (v7)
    {
      v9 = [v8 initWithFormat:@"%@ cannot be resolved into a file system pathname", a1];
      [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:v9];
    }

    else
    {
      v9 = [v8 initWithFormat:@"%@ does not specify a file", a1];
      [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableResourceWithLocalizedDescription:v9];
    }
    *a3 = ;
  }

  return v6;
}

@end