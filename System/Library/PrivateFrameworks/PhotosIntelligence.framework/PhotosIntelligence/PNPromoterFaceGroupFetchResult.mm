@interface PNPromoterFaceGroupFetchResult
- (NSArray)fetchedObjectIDs;
- (PHPhotoLibrary)photoLibrary;
- (PNPromoterFaceGroupFetchResult)initWithFaceGroups:(id)groups;
@end

@implementation PNPromoterFaceGroupFetchResult

- (PHPhotoLibrary)photoLibrary
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PNPromoterFaceGroup.m" lineNumber:73 description:{@"%s not implemented", "-[PNPromoterFaceGroupFetchResult photoLibrary]"}];

  abort();
}

- (NSArray)fetchedObjectIDs
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PNPromoterFaceGroup.m" lineNumber:66 description:{@"%s not implemented", "-[PNPromoterFaceGroupFetchResult fetchedObjectIDs]"}];

  abort();
}

- (PNPromoterFaceGroupFetchResult)initWithFaceGroups:(id)groups
{
  groupsCopy = groups;
  v9.receiver = self;
  v9.super_class = PNPromoterFaceGroupFetchResult;
  v6 = [(PNPromoterFaceGroupFetchResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_faceGroups, groups);
  }

  return v7;
}

@end