@interface NSFileWrapper(SBFFileSizeCalculation)
- (uint64_t)sb_fileSize;
@end

@implementation NSFileWrapper(SBFFileSizeCalculation)

- (uint64_t)sb_fileSize
{
  if ([self isDirectory])
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    fileWrappers = [self fileWrappers];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __52__NSFileWrapper_SBFFileSizeCalculation__sb_fileSize__block_invoke;
    v7[3] = &unk_1E807FC08;
    v7[4] = &v8;
    [fileWrappers enumerateKeysAndObjectsUsingBlock:v7];

    v3 = v9[3];
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    if ([self isRegularFile])
    {
      regularFileContents = [self regularFileContents];
      v5 = [regularFileContents length];

      return v5;
    }

    return 0;
  }

  return v3;
}

@end