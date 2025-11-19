@interface TSTEphemeralCellMap
- ($2F2D2FE54C0B9D2AA4EBD8788136C7D0)cellIDAtIndex:(unint64_t)a3;
- (BOOL)containsCellID:(id)a3;
- (TSTEphemeralCellMap)initWithCapacity:(unint64_t)a3;
- (id)cellAtIndex:(unint64_t)a3;
- (void)addCell:(id)a3 andCellID:(id)a4;
- (void)dealloc;
- (void)popLastCell;
@end

@implementation TSTEphemeralCellMap

- (TSTEphemeralCellMap)initWithCapacity:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = TSTEphemeralCellMap;
  v4 = [(TSTEphemeralCellMap *)&v6 init];
  if (v4)
  {
    v4->mCells = malloc_type_malloc(8 * a3, 0x80040B8603338uLL);
    v4->mCellIDs = malloc_type_malloc(4 * a3, 0x100004052888210uLL);
    v4->mCapacity = a3;
    v4->mCount = 0;
    v4->mMayModifyValuesReferencedByFormulas = 1;
    v4->mAppliesToHidden = 0;
  }

  return v4;
}

- (void)dealloc
{
  if (self->mCount)
  {
    v3 = 0;
    v4 = 1;
    do
    {

      v3 = v4;
    }

    while (self->mCount > v4++);
  }

  free(self->mCellIDs);
  free(self->mCells);
  self->mCellIDs = 0;
  self->mCells = 0;
  v6.receiver = self;
  v6.super_class = TSTEphemeralCellMap;
  [(TSTEphemeralCellMap *)&v6 dealloc];
}

- (BOOL)containsCellID:(id)a3
{
  mCount = self->mCount;
  if (!mCount)
  {
    return 0;
  }

  v4 = 0;
  for (i = 1; ; ++i)
  {
    v6 = &self->mCellIDs[v4];
    if (v6->var1 == a3.var1 && v6->var0 == a3.var0)
    {
      break;
    }

    v4 = i;
    if (mCount <= i)
    {
      return 0;
    }
  }

  return 1;
}

- ($2F2D2FE54C0B9D2AA4EBD8788136C7D0)cellIDAtIndex:(unint64_t)a3
{
  if ([(TSTEphemeralCellMap *)self count]<= a3)
  {
    return 0xFFFFFF;
  }

  else
  {
    return self->mCellIDs[a3];
  }
}

- (id)cellAtIndex:(unint64_t)a3
{
  if ([(TSTEphemeralCellMap *)self count]<= a3)
  {
    return 0;
  }

  else
  {
    return self->mCells[a3];
  }
}

- (void)addCell:(id)a3 andCellID:(id)a4
{
  mCapacity = self->mCapacity;
  if (mCapacity)
  {
    mCount = self->mCount;
    if (mCount == mCapacity)
    {
      self->mCapacity = 2 * mCapacity;
      self->mCells = malloc_type_realloc(self->mCells, 16 * mCapacity, 0x80040B8603338uLL);
      mCellIDs = malloc_type_realloc(self->mCellIDs, 4 * self->mCapacity, 0x100004052888210uLL);
      self->mCellIDs = mCellIDs;
      mCount = self->mCount;
    }

    else
    {
      mCellIDs = self->mCellIDs;
    }

    mCellIDs[mCount] = a4;
    if (a3)
    {
      v13 = [a3 copy];
    }

    else
    {
      v13 = 0;
    }

    self->mCells[self->mCount++] = v13;
  }

  else
  {
    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTEphemeralCellMap addCell:andCellID:]"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTEphemeralCellMap.m"];

    [v10 handleFailureInFunction:v11 file:v12 lineNumber:101 description:@"0 capacity not permitted in nonempty TSTEphemeralCellMap"];
  }
}

- (void)popLastCell
{
  mCount = self->mCount;
  if (mCount)
  {
    v3 = mCount - 1;
    self->mCount = v3;
  }
}

@end