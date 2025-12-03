@interface PXPhotosResultRecordChangeDetails
+ (id)resultRecordChangeDetailsFor:(id)for withChange:(id)change;
- (PXPhotosResultRecordChangeDetails)initWithResultRecordBeforeChanges:(id)changes resultRecordAfterChanges:(id)afterChanges exposedFetchResultChangeDetails:(id)details keyAssetsFetchResultChangeDetails:(id)changeDetails;
- (id)description;
@end

@implementation PXPhotosResultRecordChangeDetails

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = PXPhotosResultRecordChangeDetails;
  v4 = [(PXPhotosResultRecordChangeDetails *)&v11 description];
  resultRecordBeforeChanges = [(PXPhotosResultRecordChangeDetails *)self resultRecordBeforeChanges];
  resultRecordAfterChanges = [(PXPhotosResultRecordChangeDetails *)self resultRecordAfterChanges];
  exposedFetchResultChangeDetails = [(PXPhotosResultRecordChangeDetails *)self exposedFetchResultChangeDetails];
  keyAssetsFetchResultChangeDetails = [(PXPhotosResultRecordChangeDetails *)self keyAssetsFetchResultChangeDetails];
  v9 = [v3 stringWithFormat:@"<%@ beforeChanges:%@ afterChanges:%@ exposedFetchResultChangeDetails:%@ keyAssetsFetchResultChangeDetails:%@>", v4, resultRecordBeforeChanges, resultRecordAfterChanges, exposedFetchResultChangeDetails, keyAssetsFetchResultChangeDetails];

  return v9;
}

- (PXPhotosResultRecordChangeDetails)initWithResultRecordBeforeChanges:(id)changes resultRecordAfterChanges:(id)afterChanges exposedFetchResultChangeDetails:(id)details keyAssetsFetchResultChangeDetails:(id)changeDetails
{
  changesCopy = changes;
  afterChangesCopy = afterChanges;
  detailsCopy = details;
  changeDetailsCopy = changeDetails;
  v18.receiver = self;
  v18.super_class = PXPhotosResultRecordChangeDetails;
  v15 = [(PXPhotosResultRecordChangeDetails *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_resultRecordBeforeChanges, changes);
    objc_storeStrong(&v16->_resultRecordAfterChanges, afterChanges);
    objc_storeStrong(&v16->_exposedFetchResultChangeDetails, details);
    objc_storeStrong(&v16->_keyAssetsFetchResultChangeDetails, changeDetails);
  }

  return v16;
}

+ (id)resultRecordChangeDetailsFor:(id)for withChange:(id)change
{
  forCopy = for;
  changeCopy = change;
  fetchResult = [forCopy fetchResult];
  v8 = [changeCopy changeDetailsForFetchResult:fetchResult];

  fetchResultAfterChanges = [v8 fetchResultAfterChanges];
  keyAssetsFetchResult = [forCopy keyAssetsFetchResult];
  v11 = [changeCopy changeDetailsForFetchResult:keyAssetsFetchResult];

  v46 = v11;
  fetchResultAfterChanges2 = [v11 fetchResultAfterChanges];
  v48 = 0;
  curatedRefetchCondition = [forCopy curatedRefetchCondition];

  v45 = fetchResultAfterChanges2;
  if (curatedRefetchCondition)
  {
    curatedRefetchCondition2 = [forCopy curatedRefetchCondition];
    v15 = (curatedRefetchCondition2)[2](curatedRefetchCondition2, changeCopy, &v48);

    if (v15)
    {
      v16 = fetchResultAfterChanges2 != 0;
      v17 = [forCopy copy];
      v47 = 0;
      if (!fetchResultAfterChanges)
      {
        goto LABEL_16;
      }

      v18 = 1;
      goto LABEL_11;
    }
  }

  curatedFetchResult = [forCopy curatedFetchResult];
  v20 = [changeCopy changeDetailsForFetchResult:curatedFetchResult];

  v47 = v20;
  fetchResultAfterChanges3 = [v20 fetchResultAfterChanges];
  v15 = fetchResultAfterChanges3;
  v18 = fetchResultAfterChanges3 != 0;
  v16 = fetchResultAfterChanges2 != 0;
  if (fetchResultAfterChanges || fetchResultAfterChanges3 || fetchResultAfterChanges2)
  {
    v17 = [forCopy copy];
    if (!fetchResultAfterChanges)
    {
      if (!v15)
      {
LABEL_12:
        if (!v16)
        {
          goto LABEL_18;
        }

LABEL_17:
        [v17 setKeyAssetsFetchResult:fetchResultAfterChanges2];
        goto LABEL_18;
      }

LABEL_16:
      [v17 setCuratedFetchResult:v15];
      if (!v16)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

LABEL_11:
    [v17 setFetchResult:fetchResultAfterChanges reverseSortOrder:{objc_msgSend(v17, "reverseSortOrder")}];
    if (!v18)
    {
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  if (v48 != 1)
  {
    v15 = 0;
LABEL_21:
    v17 = forCopy;
    goto LABEL_22;
  }

  v17 = [forCopy copy];
  v15 = 0;
LABEL_18:
  if (v48 == 1)
  {
    [v17 setCuratedRefetchCondition:0];
  }

  if (!v17)
  {
    goto LABEL_21;
  }

LABEL_22:
  exposedFetchResult = [forCopy exposedFetchResult];
  exposedFetchResult2 = [v17 exposedFetchResult];

  v24 = v8;
  if (exposedFetchResult == exposedFetchResult2)
  {
    v29 = 0;
    goto LABEL_39;
  }

  v44 = fetchResultAfterChanges;
  exposedFetchResult3 = [forCopy exposedFetchResult];
  exposedFetchResult4 = [v17 exposedFetchResult];
  if (v8)
  {
    fetchResultBeforeChanges = [v8 fetchResultBeforeChanges];
    v28 = fetchResultBeforeChanges;
    if (fetchResultBeforeChanges == exposedFetchResult3)
    {
      fetchResultAfterChanges4 = [v8 fetchResultAfterChanges];

      v31 = fetchResultAfterChanges4 == exposedFetchResult4;
      v8 = v24;
      if (v31)
      {
        v43 = v24;
        goto LABEL_44;
      }
    }

    else
    {
    }
  }

  if (!v47)
  {
LABEL_32:
    changedObjects = [v8 changedObjects];
    v36 = changedObjects;
    if (changedObjects)
    {
      v37 = changedObjects;
    }

    else
    {
      changedObjects2 = [v47 changedObjects];
      v39 = changedObjects2;
      v40 = MEMORY[0x1E695E0F0];
      if (changedObjects2)
      {
        v40 = changedObjects2;
      }

      v37 = v40;
    }

    v29 = [MEMORY[0x1E6978848] changeDetailsFromFetchResult:exposedFetchResult3 toFetchResult:exposedFetchResult4 changedObjects:v37];

    goto LABEL_38;
  }

  fetchResultBeforeChanges2 = [v47 fetchResultBeforeChanges];
  v33 = fetchResultBeforeChanges2;
  if (fetchResultBeforeChanges2 != exposedFetchResult3)
  {

    goto LABEL_32;
  }

  fetchResultAfterChanges5 = [v47 fetchResultAfterChanges];

  v31 = fetchResultAfterChanges5 == exposedFetchResult4;
  v8 = v24;
  if (!v31)
  {
    goto LABEL_32;
  }

  v43 = v47;
LABEL_44:
  v29 = v43;
LABEL_38:

  fetchResultAfterChanges = v44;
LABEL_39:
  v41 = [[PXPhotosResultRecordChangeDetails alloc] initWithResultRecordBeforeChanges:forCopy resultRecordAfterChanges:v17 exposedFetchResultChangeDetails:v29 keyAssetsFetchResultChangeDetails:v46];

  return v41;
}

@end