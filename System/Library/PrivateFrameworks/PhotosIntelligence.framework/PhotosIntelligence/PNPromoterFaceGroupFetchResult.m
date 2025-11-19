@interface PNPromoterFaceGroupFetchResult
- (NSArray)fetchedObjectIDs;
- (PHPhotoLibrary)photoLibrary;
- (PNPromoterFaceGroupFetchResult)initWithFaceGroups:(id)a3;
@end

@implementation PNPromoterFaceGroupFetchResult

- (PHPhotoLibrary)photoLibrary
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PNPromoterFaceGroup.m" lineNumber:73 description:{@"%s not implemented", "-[PNPromoterFaceGroupFetchResult photoLibrary]"}];

  abort();
}

- (NSArray)fetchedObjectIDs
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PNPromoterFaceGroup.m" lineNumber:66 description:{@"%s not implemented", "-[PNPromoterFaceGroupFetchResult fetchedObjectIDs]"}];

  abort();
}

- (PNPromoterFaceGroupFetchResult)initWithFaceGroups:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PNPromoterFaceGroupFetchResult;
  v6 = [(PNPromoterFaceGroupFetchResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_faceGroups, a3);
  }

  return v7;
}

@end