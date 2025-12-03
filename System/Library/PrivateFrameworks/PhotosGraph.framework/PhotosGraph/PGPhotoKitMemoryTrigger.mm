@interface PGPhotoKitMemoryTrigger
- (PGPhotoKitMemoryTrigger)initWithLoggingConnection:(id)connection photoLibrary:(id)library;
@end

@implementation PGPhotoKitMemoryTrigger

- (PGPhotoKitMemoryTrigger)initWithLoggingConnection:(id)connection photoLibrary:(id)library
{
  libraryCopy = library;
  v11.receiver = self;
  v11.super_class = PGPhotoKitMemoryTrigger;
  v8 = [(PGMemoryTrigger *)&v11 initWithLoggingConnection:connection];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_photoLibrary, library);
  }

  return v9;
}

@end