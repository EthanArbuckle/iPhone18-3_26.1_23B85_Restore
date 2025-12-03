@interface PLDisconnectedManagedObjectContext
- (void)setPhotoLibrary:(id)library;
@end

@implementation PLDisconnectedManagedObjectContext

- (void)setPhotoLibrary:(id)library
{
  if (library)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLManagedObjectContext.m" lineNumber:1847 description:@"PLDisconnectedManagedObjectContext can't be associated with a photoLibrary"];
  }
}

@end