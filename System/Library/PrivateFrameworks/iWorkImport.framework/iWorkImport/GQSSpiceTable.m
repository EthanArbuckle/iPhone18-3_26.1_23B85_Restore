@interface GQSSpiceTable
- (GQSSpiceTable)init;
- (float)alongValueForVectorUid:(const char *)a3;
- (void)aboutToReadCells;
- (void)dealloc;
- (void)setAlongValue:(float)a3 forOwnedVectorUid:(char *)a4;
@end

@implementation GQSSpiceTable

- (GQSSpiceTable)init
{
  v4.receiver = self;
  v4.super_class = GQSSpiceTable;
  v2 = [(GQSSpiceTable *)&v4 init];
  if (v2)
  {
    v2->mVectorUidToAlongMap = CFDictionaryCreateMutable(0, 0, &unk_85100, &kCFTypeDictionaryValueCallBacks);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  mVectorUidToAlongMap = self->mVectorUidToAlongMap;
  if (mVectorUidToAlongMap)
  {
    CFRelease(mVectorUidToAlongMap);
  }

  mRowPositions = self->mRowPositions;
  if (mRowPositions)
  {
    v5 = *mRowPositions;
    if (*mRowPositions)
    {
      mRowPositions[1] = v5;
      operator delete(v5);
    }

    operator delete();
  }

  mColumnPositions = self->mColumnPositions;
  if (mColumnPositions)
  {
    v7 = *mColumnPositions;
    if (*mColumnPositions)
    {
      mColumnPositions[1] = v7;
      operator delete(v7);
    }

    operator delete();
  }

  v8.receiver = self;
  v8.super_class = GQSSpiceTable;
  [(GQSTable *)&v8 dealloc];
}

- (void)aboutToReadCells
{
  mRowPositions = self->mRowPositions;
  v4 = *mRowPositions;
  v5 = mRowPositions[1];
  std::__sort<std::__less<float,float> &,float *>();
  mColumnPositions = self->mColumnPositions;
  v7 = *mColumnPositions;
  v8 = mColumnPositions[1];
  std::__sort<std::__less<float,float> &,float *>();
}

- (float)alongValueForVectorUid:(const char *)a3
{
  valuePtr = 0.0;
  Value = CFDictionaryGetValue(self->mVectorUidToAlongMap, a3);
  if (!Value)
  {
    return 0.0;
  }

  CFNumberGetValue(Value, kCFNumberFloatType, &valuePtr);
  return valuePtr;
}

- (void)setAlongValue:(float)a3 forOwnedVectorUid:(char *)a4
{
  valuePtr = a3;
  v6 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  CFDictionarySetValue(self->mVectorUidToAlongMap, a4, v6);
  CFRelease(v6);
  if (self->mReadingRowVectors)
  {
    v7 = &OBJC_IVAR___GQSSpiceTable_mRowPositions;
  }

  else
  {
    v7 = &OBJC_IVAR___GQSSpiceTable_mColumnPositions;
  }

  v8 = *(&self->super.super.isa + *v7);
  v9 = *v8;
  v10 = v8[1];
  if (*v8 == v10 || vabds_f32(*(v10 - 1), valuePtr) >= 1.0)
  {
    v11 = v8[2];
    if (v10 >= v11)
    {
      v13 = v10 - v9;
      v14 = (v10 - v9) >> 2;
      v15 = v14 + 1;
      if ((v14 + 1) >> 62)
      {
        sub_9D48();
      }

      v16 = v11 - v9;
      if (v16 >> 1 > v15)
      {
        v15 = v16 >> 1;
      }

      v17 = v16 >= 0x7FFFFFFFFFFFFFFCLL;
      v18 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v17)
      {
        v18 = v15;
      }

      if (v18)
      {
        sub_A028(v8, v18);
      }

      v19 = (v10 - v9) >> 2;
      v20 = (4 * v14);
      v21 = (4 * v14 - 4 * v19);
      *v20 = valuePtr;
      v12 = (v20 + 1);
      memcpy(v21, v9, v13);
      v22 = *v8;
      *v8 = v21;
      v8[1] = v12;
      v8[2] = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v10 = valuePtr;
      v12 = v10 + 4;
    }

    v8[1] = v12;
  }
}

@end