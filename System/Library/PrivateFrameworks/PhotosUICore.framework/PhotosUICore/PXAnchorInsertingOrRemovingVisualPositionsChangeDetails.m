@interface PXAnchorInsertingOrRemovingVisualPositionsChangeDetails
- ($5E4061BE7C3C8BB942C4587960135C41)bodyVisualPositionAfterApplyingChangesToBodyIndex:(SEL)a3;
- ($5E4061BE7C3C8BB942C4587960135C41)bodyVisualPositionAfterRevertingChangesFromBodyIndex:(SEL)a3;
- (PXAnchorInsertingOrRemovingVisualPositionsChangeDetails)initWithCountBeforeChanges:(int64_t)a3 anchorIndexBeforeChanges:(int64_t)a4 headerIndexesBeforeChanges:(id)a5 countAfterChanges:(int64_t)a6 anchorIndexAfterChanges:(int64_t)a7 headerIndexesAfterChanges:(id)a8 anchorInserted:(BOOL)a9 relativePosition:(int64_t)a10;
@end

@implementation PXAnchorInsertingOrRemovingVisualPositionsChangeDetails

- ($5E4061BE7C3C8BB942C4587960135C41)bodyVisualPositionAfterRevertingChangesFromBodyIndex:(SEL)a3
{
  retstr->var1 = 0;
  *&retstr->var2 = 0;
  retstr->var2 = 1;
  v7 = [(PXVisualPositionsChangeDetails *)self anchorBodyIndexAfterChanges];
  result = [(PXVisualPositionsChangeDetails *)self anchorBodyIndexBeforeChanges];
  v9 = result + a4 - v7;
  anchorRelativePosition = self->_anchorRelativePosition;
  retstr->var0 = v9;
  anchorInserted = self->_anchorInserted;
  if (anchorRelativePosition == 1)
  {
    if (self->_anchorInserted)
    {
      ++v9;
    }

    else
    {
      --v9;
    }

    retstr->var0 = v9;
    if (anchorInserted)
    {
      if (a4 == v7)
      {
        retstr->var0 = (v9 - 1);
LABEL_10:
        retstr->var1 = 1;
        retstr->var2 = 0;
        return result;
      }

      goto LABEL_17;
    }

    v12 = v7 + 1;
LABEL_15:
    if (v12 > a4)
    {
      return result;
    }

    v13 = (v9 + 1);
    goto LABEL_19;
  }

  if (!self->_anchorInserted)
  {
    if (anchorRelativePosition)
    {
      v12 = 0;
    }

    else
    {
      v12 = v7;
    }

    goto LABEL_15;
  }

  if (a4 == v7)
  {
    goto LABEL_10;
  }

LABEL_17:
  if (a4 < v7)
  {
    return result;
  }

  v13 = (v9 - 1);
LABEL_19:
  retstr->var0 = v13;
  return result;
}

- ($5E4061BE7C3C8BB942C4587960135C41)bodyVisualPositionAfterApplyingChangesToBodyIndex:(SEL)a3
{
  retstr->var1 = 0;
  *&retstr->var2 = 0;
  retstr->var2 = 1;
  v7 = [(PXVisualPositionsChangeDetails *)self anchorBodyIndexBeforeChanges];
  result = [(PXVisualPositionsChangeDetails *)self anchorBodyIndexAfterChanges];
  v9 = result + a4 - v7;
  anchorRelativePosition = self->_anchorRelativePosition;
  retstr->var0 = v9;
  if (anchorRelativePosition == 1)
  {
    anchorInserted = self->_anchorInserted;
    if (self->_anchorInserted)
    {
      --v9;
    }

    else
    {
      ++v9;
    }

    retstr->var0 = v9;
    if (anchorInserted)
    {
      v12 = v7 + 1;
LABEL_11:
      if (v12 > a4)
      {
        return result;
      }

      v13 = (v9 + 1);
      goto LABEL_19;
    }

    if (a4 == v7)
    {
      retstr->var0 = (v9 - 1);
      goto LABEL_16;
    }
  }

  else
  {
    if (self->_anchorInserted)
    {
      if (anchorRelativePosition)
      {
        v12 = 0;
      }

      else
      {
        v12 = v7;
      }

      goto LABEL_11;
    }

    if (a4 == v7)
    {
LABEL_16:
      retstr->var1 = 1;
      retstr->var2 = 0;
      return result;
    }
  }

  if (a4 < v7)
  {
    return result;
  }

  v13 = (v9 - 1);
LABEL_19:
  retstr->var0 = v13;
  return result;
}

- (PXAnchorInsertingOrRemovingVisualPositionsChangeDetails)initWithCountBeforeChanges:(int64_t)a3 anchorIndexBeforeChanges:(int64_t)a4 headerIndexesBeforeChanges:(id)a5 countAfterChanges:(int64_t)a6 anchorIndexAfterChanges:(int64_t)a7 headerIndexesAfterChanges:(id)a8 anchorInserted:(BOOL)a9 relativePosition:(int64_t)a10
{
  v11.receiver = self;
  v11.super_class = PXAnchorInsertingOrRemovingVisualPositionsChangeDetails;
  result = [(PXVisualPositionsChangeDetails *)&v11 initWithCountBeforeChanges:a3 anchorIndexBeforeChanges:a4 headerIndexesBeforeChanges:a5 countAfterChanges:a6 anchorIndexAfterChanges:a7 headerIndexesAfterChanges:a8];
  if (result)
  {
    result->_anchorInserted = a9;
    result->_anchorRelativePosition = a10;
  }

  return result;
}

@end