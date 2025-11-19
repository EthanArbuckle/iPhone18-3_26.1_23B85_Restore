@interface PhotosControlArbitraryPersistentContainer
+ (void)setDefaultDirectoryURL:(id)a3;
@end

@implementation PhotosControlArbitraryPersistentContainer

+ (void)setDefaultDirectoryURL:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"PhotosControlPhotoLibraryCommand.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"url"}];
  }

  v6 = s_directoryURL;
  s_directoryURL = v5;
}

@end