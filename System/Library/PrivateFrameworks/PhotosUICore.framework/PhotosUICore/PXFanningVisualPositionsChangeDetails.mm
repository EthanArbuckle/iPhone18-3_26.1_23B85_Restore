@interface PXFanningVisualPositionsChangeDetails
- ($5E4061BE7C3C8BB942C4587960135C41)bodyVisualPositionAfterApplyingChangesToBodyIndex:(SEL)index;
- ($5E4061BE7C3C8BB942C4587960135C41)bodyVisualPositionAfterRevertingChangesFromBodyIndex:(SEL)index;
- (PXFanningVisualPositionsChangeDetails)initWithCountBeforeChanges:(int64_t)changes anchorIndexBeforeChanges:(int64_t)beforeChanges headerIndexesBeforeChanges:(id)indexesBeforeChanges countAfterChanges:(int64_t)afterChanges anchorIndexAfterChanges:(int64_t)indexAfterChanges headerIndexesAfterChanges:(id)indexesAfterChanges anchorFan:(int64_t)fan anchorReload:(int64_t)self0;
@end

@implementation PXFanningVisualPositionsChangeDetails

- ($5E4061BE7C3C8BB942C4587960135C41)bodyVisualPositionAfterRevertingChangesFromBodyIndex:(SEL)index
{
  retstr->var1 = 0;
  *&retstr->var2 = 0;
  retstr->var0 = 0;
  retstr->var2 = 1;
  anchorBodyIndexBeforeChanges = [(PXVisualPositionsChangeDetails *)self anchorBodyIndexBeforeChanges];
  result = [(PXVisualPositionsChangeDetails *)self anchorBodyIndexAfterChanges];
  if (result == a4)
  {
    retstr->var0 = anchorBodyIndexBeforeChanges;
    return result;
  }

  anchorFan = self->_anchorFan;
  if (anchorFan < 0)
  {
    v10 = anchorBodyIndexBeforeChanges + a4;
    if (result <= a4)
    {
      v11 = v10 - (result + anchorFan);
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  if (result - anchorFan > a4)
  {
    v10 = anchorBodyIndexBeforeChanges + a4;
LABEL_7:
    v11 = v10 - result + anchorFan;
LABEL_11:
    retstr->var0 = v11;
    v12 = 1;
    goto LABEL_12;
  }

  if (result + anchorFan < a4)
  {
    v11 = anchorBodyIndexBeforeChanges + a4 - (result + anchorFan);
    goto LABEL_11;
  }

  v12 = 0;
  retstr->var0 = anchorBodyIndexBeforeChanges;
  retstr->var1 = 1;
  retstr->var2 = 0;
  v11 = anchorBodyIndexBeforeChanges;
LABEL_12:
  anchorReload = self->_anchorReload;
  if (anchorReload >= 1)
  {
    v14 = anchorFan & (anchorFan >> 63);
    if (v14 - anchorBodyIndexBeforeChanges + v11 <= anchorReload && v14 + anchorBodyIndexBeforeChanges - v11 <= anchorReload)
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

- ($5E4061BE7C3C8BB942C4587960135C41)bodyVisualPositionAfterApplyingChangesToBodyIndex:(SEL)index
{
  retstr->var1 = 0;
  *&retstr->var2 = 0;
  retstr->var0 = 0;
  retstr->var2 = 1;
  anchorBodyIndexBeforeChanges = [(PXVisualPositionsChangeDetails *)self anchorBodyIndexBeforeChanges];
  result = [(PXVisualPositionsChangeDetails *)self anchorBodyIndexAfterChanges];
  if (a4 == anchorBodyIndexBeforeChanges)
  {
    retstr->var0 = result;
    return result;
  }

  anchorFan = self->_anchorFan;
  if ((anchorFan & 0x8000000000000000) == 0)
  {
    v10 = result + a4;
    if (a4 < anchorBodyIndexBeforeChanges)
    {
      v11 = anchorBodyIndexBeforeChanges + anchorFan;
LABEL_8:
      v12 = &v10[-v11];
LABEL_13:
      retstr->var0 = v12;
      v14 = 1;
      goto LABEL_14;
    }

    v13 = &v10[-anchorBodyIndexBeforeChanges];
LABEL_12:
    v12 = &v13[anchorFan];
    goto LABEL_13;
  }

  v11 = anchorFan + anchorBodyIndexBeforeChanges;
  if (anchorFan + anchorBodyIndexBeforeChanges > a4)
  {
    v10 = result + a4;
    goto LABEL_8;
  }

  if (anchorBodyIndexBeforeChanges - anchorFan < a4)
  {
    v13 = result + a4 - anchorBodyIndexBeforeChanges;
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

- (PXFanningVisualPositionsChangeDetails)initWithCountBeforeChanges:(int64_t)changes anchorIndexBeforeChanges:(int64_t)beforeChanges headerIndexesBeforeChanges:(id)indexesBeforeChanges countAfterChanges:(int64_t)afterChanges anchorIndexAfterChanges:(int64_t)indexAfterChanges headerIndexesAfterChanges:(id)indexesAfterChanges anchorFan:(int64_t)fan anchorReload:(int64_t)self0
{
  v11.receiver = self;
  v11.super_class = PXFanningVisualPositionsChangeDetails;
  result = [(PXVisualPositionsChangeDetails *)&v11 initWithCountBeforeChanges:changes anchorIndexBeforeChanges:beforeChanges headerIndexesBeforeChanges:indexesBeforeChanges countAfterChanges:afterChanges anchorIndexAfterChanges:indexAfterChanges headerIndexesAfterChanges:indexesAfterChanges];
  if (result)
  {
    result->_anchorFan = fan;
    result->_anchorReload = reload;
  }

  return result;
}

@end