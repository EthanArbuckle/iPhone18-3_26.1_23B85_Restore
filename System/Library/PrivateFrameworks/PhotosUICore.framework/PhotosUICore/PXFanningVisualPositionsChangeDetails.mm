@interface PXFanningVisualPositionsChangeDetails
- ($5E4061BE7C3C8BB942C4587960135C41)bodyVisualPositionAfterApplyingChangesToBodyIndex:(SEL)a3;
- ($5E4061BE7C3C8BB942C4587960135C41)bodyVisualPositionAfterRevertingChangesFromBodyIndex:(SEL)a3;
- (PXFanningVisualPositionsChangeDetails)initWithCountBeforeChanges:(int64_t)a3 anchorIndexBeforeChanges:(int64_t)a4 headerIndexesBeforeChanges:(id)a5 countAfterChanges:(int64_t)a6 anchorIndexAfterChanges:(int64_t)a7 headerIndexesAfterChanges:(id)a8 anchorFan:(int64_t)a9 anchorReload:(int64_t)a10;
@end

@implementation PXFanningVisualPositionsChangeDetails

- ($5E4061BE7C3C8BB942C4587960135C41)bodyVisualPositionAfterRevertingChangesFromBodyIndex:(SEL)a3
{
  retstr->var1 = 0;
  *&retstr->var2 = 0;
  retstr->var0 = 0;
  retstr->var2 = 1;
  v7 = [(PXVisualPositionsChangeDetails *)self anchorBodyIndexBeforeChanges];
  result = [(PXVisualPositionsChangeDetails *)self anchorBodyIndexAfterChanges];
  if (result == a4)
  {
    retstr->var0 = v7;
    return result;
  }

  anchorFan = self->_anchorFan;
  if (anchorFan < 0)
  {
    v10 = v7 + a4;
    if (result <= a4)
    {
      v11 = v10 - (result + anchorFan);
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  if (result - anchorFan > a4)
  {
    v10 = v7 + a4;
LABEL_7:
    v11 = v10 - result + anchorFan;
LABEL_11:
    retstr->var0 = v11;
    v12 = 1;
    goto LABEL_12;
  }

  if (result + anchorFan < a4)
  {
    v11 = v7 + a4 - (result + anchorFan);
    goto LABEL_11;
  }

  v12 = 0;
  retstr->var0 = v7;
  retstr->var1 = 1;
  retstr->var2 = 0;
  v11 = v7;
LABEL_12:
  anchorReload = self->_anchorReload;
  if (anchorReload >= 1)
  {
    v14 = anchorFan & (anchorFan >> 63);
    if (v14 - v7 + v11 <= anchorReload && v14 + v7 - v11 <= anchorReload)
    {
      v16 = 0;
    }

    else
    {
      v16 = v12;
    }

    retstr->var2 = v16;
  }

  return result;
}

- ($5E4061BE7C3C8BB942C4587960135C41)bodyVisualPositionAfterApplyingChangesToBodyIndex:(SEL)a3
{
  retstr->var1 = 0;
  *&retstr->var2 = 0;
  retstr->var0 = 0;
  retstr->var2 = 1;
  v7 = [(PXVisualPositionsChangeDetails *)self anchorBodyIndexBeforeChanges];
  result = [(PXVisualPositionsChangeDetails *)self anchorBodyIndexAfterChanges];
  if (a4 == v7)
  {
    retstr->var0 = result;
    return result;
  }

  anchorFan = self->_anchorFan;
  if ((anchorFan & 0x8000000000000000) == 0)
  {
    v10 = result + a4;
    if (a4 < v7)
    {
      v11 = v7 + anchorFan;
LABEL_8:
      v12 = &v10[-v11];
LABEL_13:
      retstr->var0 = v12;
      v14 = 1;
      goto LABEL_14;
    }

    v13 = &v10[-v7];
LABEL_12:
    v12 = &v13[anchorFan];
    goto LABEL_13;
  }

  v11 = anchorFan + v7;
  if (anchorFan + v7 > a4)
  {
    v10 = result + a4;
    goto LABEL_8;
  }

  if (v7 - anchorFan < a4)
  {
    v13 = result + a4 - v7;
    goto LABEL_12;
  }

  v14 = 0;
  retstr->var0 = result;
  retstr->var1 = 1;
  retstr->var2 = 0;
  v12 = result;
LABEL_14:
  anchorReload = self->_anchorReload;
  if (anchorReload >= 1)
  {
    v16 = anchorFan & ~(anchorFan >> 63);
    if (v12 - (result + v16) <= anchorReload && result - (v12 + v16) <= anchorReload)
    {
      v18 = 0;
    }

    else
    {
      v18 = v14;
    }

    retstr->var2 = v18;
  }

  return result;
}

- (PXFanningVisualPositionsChangeDetails)initWithCountBeforeChanges:(int64_t)a3 anchorIndexBeforeChanges:(int64_t)a4 headerIndexesBeforeChanges:(id)a5 countAfterChanges:(int64_t)a6 anchorIndexAfterChanges:(int64_t)a7 headerIndexesAfterChanges:(id)a8 anchorFan:(int64_t)a9 anchorReload:(int64_t)a10
{
  v11.receiver = self;
  v11.super_class = PXFanningVisualPositionsChangeDetails;
  result = [(PXVisualPositionsChangeDetails *)&v11 initWithCountBeforeChanges:a3 anchorIndexBeforeChanges:a4 headerIndexesBeforeChanges:a5 countAfterChanges:a6 anchorIndexAfterChanges:a7 headerIndexesAfterChanges:a8];
  if (result)
  {
    result->_anchorFan = a9;
    result->_anchorReload = a10;
  }

  return result;
}

@end