@interface PLDisconnectedManagedObjectContext
- (void)setPhotoLibrary:(id)a3;
@end

@implementation PLDisconnectedManagedObjectContext

- (void)setPhotoLibrary:(id)a3
{
  if (a3)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PLManagedObjectContext.m" lineNumber:1847 description:@"PLDisconnectedManagedObjectContext can't be associated with a photoLibrary"];
  }
}

@end