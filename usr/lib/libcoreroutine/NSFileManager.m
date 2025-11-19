@interface NSFileManager
@end

@implementation NSFileManager

uint64_t __47__NSFileManager_RTExtensions__sortFilesByName___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 lastPathComponent];
  v6 = [v4 lastPathComponent];

  v7 = [v5 stringByDeletingPathExtension];
  v8 = [v6 stringByDeletingPathExtension];
  v9 = [v7 compare:v8 options:64];
  if (!v9)
  {
    v9 = [v5 compare:v6 options:64];
  }

  return v9;
}

@end