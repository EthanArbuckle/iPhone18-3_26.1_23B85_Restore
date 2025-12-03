@interface PhotosControlArbitraryPersistentContainer
+ (void)setDefaultDirectoryURL:(id)l;
@end

@implementation PhotosControlArbitraryPersistentContainer

+ (void)setDefaultDirectoryURL:(id)l
{
  lCopy = l;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PhotosControlPhotoLibraryCommand.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"url"}];
  }

  v6 = s_directoryURL;
  s_directoryURL = lCopy;
}

@end