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
  v3 = [(PXPhotosResultRecord *)self fetchResult];
  v4 = [(PXPhotosResultRecord *)self curatedFetchResult];
  v5 = [(PXPhotosResultRecord *)self keyAssetsFetchResult];
  v6 = [(PXPhotosResultRecord *)self includedOids];
  v7 = [(PXPhotosResultRecord *)self excludedOids];
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
  v12 = [(PXPhotosResultRecord *)self filteredFetchResult];
  v13 = [(PXPhotosResultRecord *)self exposedFetchResult];
  v17 = [v16 stringWithFormat:@"<%@ fetchResult:%@ curatedFetchResult:%@ keyAssetsFetchResult:%@ includedOids:%@ excludedOids:%@ wantsCuration:%@ reverseSortOrder:%@ filteredFetchResult:%@ exposedFetchResult:%@>", v15, v3, v4, v5, v6, v7, v9, v11, v12, v13];

  return v17;
}

@end