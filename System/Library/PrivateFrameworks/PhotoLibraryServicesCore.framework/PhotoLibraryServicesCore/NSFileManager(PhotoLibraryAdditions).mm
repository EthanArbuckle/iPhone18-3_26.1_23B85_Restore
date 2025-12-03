@interface NSFileManager(PhotoLibraryAdditions)
- (id)tmpFileForVideoTranscodeToPhotoDataDirectory:()PhotoLibraryAdditions withExtension:;
- (uint64_t)createDirectoryIfNeededAtPath:()PhotoLibraryAdditions error:;
- (uint64_t)directoryExistsAtPath:()PhotoLibraryAdditions;
- (uint64_t)removeDirectoryAtPathIfEmpty:()PhotoLibraryAdditions ancestors:;
@end

@implementation NSFileManager(PhotoLibraryAdditions)

- (uint64_t)createDirectoryIfNeededAtPath:()PhotoLibraryAdditions error:
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v15 = 0;
    v7 = [self createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:&v15];
    v8 = v15;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v9 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A250];
    v16 = *MEMORY[0x1E696A578];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid filename: %@", 0];
    v17[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v8 = [v9 errorWithDomain:v10 code:514 userInfo:v12];

    v7 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  if ((v7 & 1) == 0)
  {
    v13 = v8;
    *a4 = v8;
  }

LABEL_7:

  return v7;
}

- (uint64_t)removeDirectoryAtPathIfEmpty:()PhotoLibraryAdditions ancestors:
{
  v6 = a3;
  stringByDeletingLastPathComponent = v6;
  if (a4 < 0 || [v6 length] < 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    v9 = a4 + 1;
    v10 = stringByDeletingLastPathComponent;
    while (1)
    {
      if (![self directoryExistsAtPath:v10] || (objc_msgSend(self, "contentsOfDirectoryAtPath:error:", v10, 0), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v11, v12) || !objc_msgSend(self, "removeItemAtPath:error:", v10, 0))
      {
        stringByDeletingLastPathComponent = v10;
        goto LABEL_13;
      }

      stringByDeletingLastPathComponent = [v10 stringByDeletingLastPathComponent];

      if (--v9 <= 0)
      {
        break;
      }

      v8 = 1;
      v10 = stringByDeletingLastPathComponent;
      if ([stringByDeletingLastPathComponent length] < 2)
      {
        goto LABEL_13;
      }
    }

    v8 = 1;
  }

LABEL_13:

  return v8 & 1;
}

- (uint64_t)directoryExistsAtPath:()PhotoLibraryAdditions
{
  v4 = 0;
  [self fileExistsAtPath:a3 isDirectory:&v4];
  return v4;
}

- (id)tmpFileForVideoTranscodeToPhotoDataDirectory:()PhotoLibraryAdditions withExtension:
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a4;
  v7 = +[PLUUIDString UUIDString];
  v8 = [v5 stringWithFormat:@"trim.%@", v7];

  if (a3)
  {
    v9 = +[PLPhotoLibraryPathManager systemLibraryPathManager];
    v10 = [v9 privateDirectoryWithSubType:2 createIfNeeded:1 error:0];
    v11 = [v10 stringByAppendingPathComponent:v8];
  }

  else
  {
    v9 = NSTemporaryDirectory();
    v11 = [v9 stringByAppendingPathComponent:v8];
  }

  v12 = [v11 stringByAppendingPathExtension:v6];

  return v12;
}

@end