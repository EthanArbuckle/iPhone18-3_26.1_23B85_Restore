@interface NSArray(MyersDiff)
- (void)sf_differencesFromArray:()MyersDiff usingComparator:removedIndexes:insertedIndexes:;
@end

@implementation NSArray(MyersDiff)

- (void)sf_differencesFromArray:()MyersDiff usingComparator:removedIndexes:insertedIndexes:
{
  v28 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  indexSet2 = [MEMORY[0x1E696AD50] indexSet];
  v14 = [self count];
  v15 = [v10 count];
  v16 = v15;
  if (v14 >> 15 || v15 >= 0x8000)
  {
    [indexSet addIndexesInRange:{0, v14}];
    [indexSet2 addIndexesInRange:{0, v16}];
    if (!a5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v26[1] = v26;
  MEMORY[0x1EEE9AC00](v15);
  v27 = v11;
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v18, v17);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v21, v20);
  [self getObjects:v18 range:{0, v14}];
  [v10 getObjects:v21 range:{0, v16}];
  v22 = v18;
  v11 = v27;
  _SF_MyersDiff(v22, v21, 0, 0, v14, v16, v27, indexSet, indexSet2);
  if (a5)
  {
LABEL_6:
    v23 = indexSet;
    *a5 = indexSet;
  }

LABEL_7:
  if (a6)
  {
    v24 = indexSet2;
    *a6 = indexSet2;
  }

  v25 = *MEMORY[0x1E69E9840];
}

@end