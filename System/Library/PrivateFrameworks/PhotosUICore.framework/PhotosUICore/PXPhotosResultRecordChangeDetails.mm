@interface PXPhotosResultRecordChangeDetails
+ (id)resultRecordChangeDetailsFor:(id)a3 withChange:(id)a4;
- (PXPhotosResultRecordChangeDetails)initWithResultRecordBeforeChanges:(id)a3 resultRecordAfterChanges:(id)a4 exposedFetchResultChangeDetails:(id)a5 keyAssetsFetchResultChangeDetails:(id)a6;
- (id)description;
@end

@implementation PXPhotosResultRecordChangeDetails

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = PXPhotosResultRecordChangeDetails;
  v4 = [(PXPhotosResultRecordChangeDetails *)&v11 description];
  v5 = [(PXPhotosResultRecordChangeDetails *)self resultRecordBeforeChanges];
  v6 = [(PXPhotosResultRecordChangeDetails *)self resultRecordAfterChanges];
  v7 = [(PXPhotosResultRecordChangeDetails *)self exposedFetchResultChangeDetails];
  v8 = [(PXPhotosResultRecordChangeDetails *)self keyAssetsFetchResultChangeDetails];
  v9 = [v3 stringWithFormat:@"<%@ beforeChanges:%@ afterChanges:%@ exposedFetchResultChangeDetails:%@ keyAssetsFetchResultChangeDetails:%@>", v4, v5, v6, v7, v8];

  return v9;
}

- (PXPhotosResultRecordChangeDetails)initWithResultRecordBeforeChanges:(id)a3 resultRecordAfterChanges:(id)a4 exposedFetchResultChangeDetails:(id)a5 keyAssetsFetchResultChangeDetails:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = PXPhotosResultRecordChangeDetails;
  v15 = [(PXPhotosResultRecordChangeDetails *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_resultRecordBeforeChanges, a3);
    objc_storeStrong(&v16->_resultRecordAfterChanges, a4);
    objc_storeStrong(&v16->_exposedFetchResultChangeDetails, a5);
    objc_storeStrong(&v16->_keyAssetsFetchResultChangeDetails, a6);
  }

  return v16;
}

+ (id)resultRecordChangeDetailsFor:(id)a3 withChange:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 fetchResult];
  v8 = [v6 changeDetailsForFetchResult:v7];

  v9 = [v8 fetchResultAfterChanges];
  v10 = [v5 keyAssetsFetchResult];
  v11 = [v6 changeDetailsForFetchResult:v10];

  v46 = v11;
  v12 = [v11 fetchResultAfterChanges];
  v48 = 0;
  v13 = [v5 curatedRefetchCondition];

  v45 = v12;
  if (v13)
  {
    v14 = [v5 curatedRefetchCondition];
    v15 = (v14)[2](v14, v6, &v48);

    if (v15)
    {
      v16 = v12 != 0;
      v17 = [v5 copy];
      v47 = 0;
      if (!v9)
      {
        goto LABEL_16;
      }

      v18 = 1;
      goto LABEL_11;
    }
  }

  v19 = [v5 curatedFetchResult];
  v20 = [v6 changeDetailsForFetchResult:v19];

  v47 = v20;
  v21 = [v20 fetchResultAfterChanges];
  v15 = v21;
  v18 = v21 != 0;
  v16 = v12 != 0;
  if (v9 || v21 || v12)
  {
    v17 = [v5 copy];
    if (!v9)
    {
      if (!v15)
      {
LABEL_12:
        if (!v16)
        {
          goto LABEL_18;
        }

LABEL_17:
        [v17 setKeyAssetsFetchResult:v12];
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
    [v17 setFetchResult:v9 reverseSortOrder:{objc_msgSend(v17, "reverseSortOrder")}];
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
    v17 = v5;
    goto LABEL_22;
  }

  v17 = [v5 copy];
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
  v22 = [v5 exposedFetchResult];
  v23 = [v17 exposedFetchResult];

  v24 = v8;
  if (v22 == v23)
  {
    v29 = 0;
    goto LABEL_39;
  }

  v44 = v9;
  v25 = [v5 exposedFetchResult];
  v26 = [v17 exposedFetchResult];
  if (v8)
  {
    v27 = [v8 fetchResultBeforeChanges];
    v28 = v27;
    if (v27 == v25)
    {
      v30 = [v8 fetchResultAfterChanges];

      v31 = v30 == v26;
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
    v35 = [v8 changedObjects];
    v36 = v35;
    if (v35)
    {
      v37 = v35;
    }

    else
    {
      v38 = [v47 changedObjects];
      v39 = v38;
      v40 = MEMORY[0x1E695E0F0];
      if (v38)
      {
        v40 = v38;
      }

      v37 = v40;
    }

    v29 = [MEMORY[0x1E6978848] changeDetailsFromFetchResult:v25 toFetchResult:v26 changedObjects:v37];

    goto LABEL_38;
  }

  v32 = [v47 fetchResultBeforeChanges];
  v33 = v32;
  if (v32 != v25)
  {

    goto LABEL_32;
  }

  v34 = [v47 fetchResultAfterChanges];

  v31 = v34 == v26;
  v8 = v24;
  if (!v31)
  {
    goto LABEL_32;
  }

  v43 = v47;
LABEL_44:
  v29 = v43;
LABEL_38:

  v9 = v44;
LABEL_39:
  v41 = [[PXPhotosResultRecordChangeDetails alloc] initWithResultRecordBeforeChanges:v5 resultRecordAfterChanges:v17 exposedFetchResultChangeDetails:v29 keyAssetsFetchResultChangeDetails:v46];

  return v41;
}

@end