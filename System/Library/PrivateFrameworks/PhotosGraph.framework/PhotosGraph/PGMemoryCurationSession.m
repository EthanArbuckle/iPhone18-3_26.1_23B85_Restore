@interface PGMemoryCurationSession
- (PGMemoryCurationSession)initWithCurationManager:(id)a3 photoLibrary:(id)a4 curationContext:(id)a5 locationHelper:(id)a6;
- (PHPhotoLibrary)photoLibrary;
@end

@implementation PGMemoryCurationSession

- (PHPhotoLibrary)photoLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_photoLibrary);

  return WeakRetained;
}

- (PGMemoryCurationSession)initWithCurationManager:(id)a3 photoLibrary:(id)a4 curationContext:(id)a5 locationHelper:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = PGMemoryCurationSession;
  v15 = [(PGMemoryCurationSession *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_curationManager, a3);
    objc_storeWeak(&v16->_photoLibrary, v12);
    objc_storeStrong(&v16->_curationContext, a5);
    objc_storeStrong(&v16->_locationHelper, a6);
  }

  return v16;
}

@end