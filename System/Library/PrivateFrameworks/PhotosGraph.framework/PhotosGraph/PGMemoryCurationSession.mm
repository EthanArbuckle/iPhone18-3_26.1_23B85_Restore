@interface PGMemoryCurationSession
- (PGMemoryCurationSession)initWithCurationManager:(id)manager photoLibrary:(id)library curationContext:(id)context locationHelper:(id)helper;
- (PHPhotoLibrary)photoLibrary;
@end

@implementation PGMemoryCurationSession

- (PHPhotoLibrary)photoLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_photoLibrary);

  return WeakRetained;
}

- (PGMemoryCurationSession)initWithCurationManager:(id)manager photoLibrary:(id)library curationContext:(id)context locationHelper:(id)helper
{
  managerCopy = manager;
  libraryCopy = library;
  contextCopy = context;
  helperCopy = helper;
  v18.receiver = self;
  v18.super_class = PGMemoryCurationSession;
  v15 = [(PGMemoryCurationSession *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_curationManager, manager);
    objc_storeWeak(&v16->_photoLibrary, libraryCopy);
    objc_storeStrong(&v16->_curationContext, context);
    objc_storeStrong(&v16->_locationHelper, helper);
  }

  return v16;
}

@end