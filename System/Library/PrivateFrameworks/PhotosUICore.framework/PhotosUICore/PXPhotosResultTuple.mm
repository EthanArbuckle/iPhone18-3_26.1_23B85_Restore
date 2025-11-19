@interface PXPhotosResultTuple
- (PXPhotosResultTuple)initWithFetchResult:(id)a3 fetchedWithReverseSortOrder:(BOOL)a4 curatedFetchResult:(id)a5 curatedRefetchCondition:(id)a6 keyAssetsFetchResult:(id)a7 filterPredicate:(id)a8;
- (id)description;
- (id)resultTupleUpdatedWithChange:(id)a3;
@end

@implementation PXPhotosResultTuple

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = PXPhotosResultTuple;
  v4 = [(PXPhotosResultTuple *)&v9 description];
  v5 = [(PXPhotosResultTuple *)self fetchResult];
  v6 = [(PXPhotosResultTuple *)self curatedFetchResult];
  v7 = [v3 stringWithFormat:@"<%@ fetchResult:%@ curatedFetchResult:%@>", v4, v5, v6];

  return v7;
}

- (id)resultTupleUpdatedWithChange:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_fetchResult)
  {
    v6 = [v4 changeDetailsForFetchResult:?];
  }

  else
  {
    v6 = 0;
  }

  if (self->_keyAssetsFetchResult)
  {
    v7 = [v5 changeDetailsForFetchResult:?];
    if (v6)
    {
LABEL_6:
      v8 = [v6 fetchResultAfterChanges];
      goto LABEL_9;
    }
  }

  else
  {
    v7 = 0;
    if (v6)
    {
      goto LABEL_6;
    }
  }

  v8 = self->_fetchResult;
LABEL_9:
  v9 = v8;
  if (v7)
  {
    v10 = [v7 fetchResultAfterChanges];
  }

  else
  {
    v10 = self->_keyAssetsFetchResult;
  }

  v11 = v10;
  v30 = 0;
  v12 = [(PXPhotosResultTuple *)self curatedRefetchCondition];
  if (v12)
  {
    v13 = [(PXPhotosResultTuple *)self curatedRefetchCondition];
    v14 = (v13)[2](v13, v5, &v30);
  }

  else
  {
    v14 = 0;
  }

  if (v30 == 1)
  {
    curatedRefetchCondition = self->_curatedRefetchCondition;
    self->_curatedRefetchCondition = 0;
  }

  if (!v14)
  {
    if (self->_curatedFetchResult)
    {
      v16 = [v5 changeDetailsForFetchResult:?];
      if (v16)
      {
        v17 = v16;
        v14 = [v16 fetchResultAfterChanges];

        goto LABEL_24;
      }

      curatedFetchResult = self->_curatedFetchResult;
    }

    else
    {
      curatedFetchResult = 0;
    }

    v14 = curatedFetchResult;
  }

LABEL_24:
  if (v9 == self->_fetchResult && v14 == self->_curatedFetchResult && v11 == self->_keyAssetsFetchResult)
  {
    v28 = self;
  }

  else
  {
    v19 = [PXPhotosResultTuple alloc];
    fetchedWithReverseSortOrder = self->_fetchedWithReverseSortOrder;
    v21 = v11;
    v22 = self->_curatedRefetchCondition;
    [(PXPhotosResultTuple *)self filterPredicate];
    v23 = v7;
    v24 = v5;
    v26 = v25 = v6;
    v27 = v22;
    v11 = v21;
    v28 = [(PXPhotosResultTuple *)v19 initWithFetchResult:v9 fetchedWithReverseSortOrder:fetchedWithReverseSortOrder curatedFetchResult:v14 curatedRefetchCondition:v27 keyAssetsFetchResult:v21 filterPredicate:v26];

    v6 = v25;
    v5 = v24;
    v7 = v23;
  }

  return v28;
}

- (PXPhotosResultTuple)initWithFetchResult:(id)a3 fetchedWithReverseSortOrder:(BOOL)a4 curatedFetchResult:(id)a5 curatedRefetchCondition:(id)a6 keyAssetsFetchResult:(id)a7 filterPredicate:(id)a8
{
  v24 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v25.receiver = self;
  v25.super_class = PXPhotosResultTuple;
  v19 = [(PXPhotosResultTuple *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_fetchResult, a3);
    v20->_fetchedWithReverseSortOrder = a4;
    objc_storeStrong(&v20->_curatedFetchResult, a5);
    v21 = [v16 copy];
    curatedRefetchCondition = v20->_curatedRefetchCondition;
    v20->_curatedRefetchCondition = v21;

    objc_storeStrong(&v20->_keyAssetsFetchResult, a7);
    objc_storeStrong(&v20->_filterPredicate, a8);
  }

  return v20;
}

@end