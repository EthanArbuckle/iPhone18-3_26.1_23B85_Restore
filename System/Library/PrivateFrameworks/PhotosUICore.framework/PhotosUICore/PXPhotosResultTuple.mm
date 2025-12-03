@interface PXPhotosResultTuple
- (PXPhotosResultTuple)initWithFetchResult:(id)result fetchedWithReverseSortOrder:(BOOL)order curatedFetchResult:(id)fetchResult curatedRefetchCondition:(id)condition keyAssetsFetchResult:(id)assetsFetchResult filterPredicate:(id)predicate;
- (id)description;
- (id)resultTupleUpdatedWithChange:(id)change;
@end

@implementation PXPhotosResultTuple

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = PXPhotosResultTuple;
  v4 = [(PXPhotosResultTuple *)&v9 description];
  fetchResult = [(PXPhotosResultTuple *)self fetchResult];
  curatedFetchResult = [(PXPhotosResultTuple *)self curatedFetchResult];
  v7 = [v3 stringWithFormat:@"<%@ fetchResult:%@ curatedFetchResult:%@>", v4, fetchResult, curatedFetchResult];

  return v7;
}

- (id)resultTupleUpdatedWithChange:(id)change
{
  changeCopy = change;
  v5 = changeCopy;
  if (self->_fetchResult)
  {
    v6 = [changeCopy changeDetailsForFetchResult:?];
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
      fetchResultAfterChanges = [v6 fetchResultAfterChanges];
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

  fetchResultAfterChanges = self->_fetchResult;
LABEL_9:
  v9 = fetchResultAfterChanges;
  if (v7)
  {
    fetchResultAfterChanges2 = [v7 fetchResultAfterChanges];
  }

  else
  {
    fetchResultAfterChanges2 = self->_keyAssetsFetchResult;
  }

  v11 = fetchResultAfterChanges2;
  v30 = 0;
  curatedRefetchCondition = [(PXPhotosResultTuple *)self curatedRefetchCondition];
  if (curatedRefetchCondition)
  {
    curatedRefetchCondition2 = [(PXPhotosResultTuple *)self curatedRefetchCondition];
    fetchResultAfterChanges3 = (curatedRefetchCondition2)[2](curatedRefetchCondition2, v5, &v30);
  }

  else
  {
    fetchResultAfterChanges3 = 0;
  }

  if (v30 == 1)
  {
    curatedRefetchCondition = self->_curatedRefetchCondition;
    self->_curatedRefetchCondition = 0;
  }

  if (!fetchResultAfterChanges3)
  {
    if (self->_curatedFetchResult)
    {
      v16 = [v5 changeDetailsForFetchResult:?];
      if (v16)
      {
        v17 = v16;
        fetchResultAfterChanges3 = [v16 fetchResultAfterChanges];

        goto LABEL_24;
      }

      curatedFetchResult = self->_curatedFetchResult;
    }

    else
    {
      curatedFetchResult = 0;
    }

    fetchResultAfterChanges3 = curatedFetchResult;
  }

LABEL_24:
  if (v9 == self->_fetchResult && fetchResultAfterChanges3 == self->_curatedFetchResult && v11 == self->_keyAssetsFetchResult)
  {
    selfCopy = self;
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
    selfCopy = [(PXPhotosResultTuple *)v19 initWithFetchResult:v9 fetchedWithReverseSortOrder:fetchedWithReverseSortOrder curatedFetchResult:fetchResultAfterChanges3 curatedRefetchCondition:v27 keyAssetsFetchResult:v21 filterPredicate:v26];

    v6 = v25;
    v5 = v24;
    v7 = v23;
  }

  return selfCopy;
}

- (PXPhotosResultTuple)initWithFetchResult:(id)result fetchedWithReverseSortOrder:(BOOL)order curatedFetchResult:(id)fetchResult curatedRefetchCondition:(id)condition keyAssetsFetchResult:(id)assetsFetchResult filterPredicate:(id)predicate
{
  resultCopy = result;
  fetchResultCopy = fetchResult;
  conditionCopy = condition;
  assetsFetchResultCopy = assetsFetchResult;
  predicateCopy = predicate;
  v25.receiver = self;
  v25.super_class = PXPhotosResultTuple;
  v19 = [(PXPhotosResultTuple *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_fetchResult, result);
    v20->_fetchedWithReverseSortOrder = order;
    objc_storeStrong(&v20->_curatedFetchResult, fetchResult);
    v21 = [conditionCopy copy];
    curatedRefetchCondition = v20->_curatedRefetchCondition;
    v20->_curatedRefetchCondition = v21;

    objc_storeStrong(&v20->_keyAssetsFetchResult, assetsFetchResult);
    objc_storeStrong(&v20->_filterPredicate, predicate);
  }

  return v20;
}

@end