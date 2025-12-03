@interface PXPhotosResultRecord
- (id)description;
@end

@implementation PXPhotosResultRecord

- (id)description
{
  v16 = MEMORY[0x1E696AEC0];
  v18.receiver = self;
  v18.super_class = PXPhotosResultRecord;
  v15 = [(PXPhotosResultRecord *)&v18 description];
  fetchResult = [(PXPhotosResultRecord *)self fetchResult];
  curatedFetchResult = [(PXPhotosResultRecord *)self curatedFetchResult];
  keyAssetsFetchResult = [(PXPhotosResultRecord *)self keyAssetsFetchResult];
  includedOids = [(PXPhotosResultRecord *)self includedOids];
  excludedOids = [(PXPhotosResultRecord *)self excludedOids];
  if ([(PXPhotosResultRecord *)self wantsCuration])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = v8;
  if ([(PXPhotosResultRecord *)self reverseSortOrder])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = v10;
  filteredFetchResult = [(PXPhotosResultRecord *)self filteredFetchResult];
  exposedFetchResult = [(PXPhotosResultRecord *)self exposedFetchResult];
  v17 = [v16 stringWithFormat:@"<%@ fetchResult:%@ curatedFetchResult:%@ keyAssetsFetchResult:%@ includedOids:%@ excludedOids:%@ wantsCuration:%@ reverseSortOrder:%@ filteredFetchResult:%@ exposedFetchResult:%@>", v15, fetchResult, curatedFetchResult, keyAssetsFetchResult, includedOids, excludedOids, v9, v11, filteredFetchResult, exposedFetchResult];

  return v17;
}

@end