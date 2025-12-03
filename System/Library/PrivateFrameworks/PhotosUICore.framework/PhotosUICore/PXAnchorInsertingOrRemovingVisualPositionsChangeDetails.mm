@interface PXAnchorInsertingOrRemovingVisualPositionsChangeDetails
- ($5E4061BE7C3C8BB942C4587960135C41)bodyVisualPositionAfterApplyingChangesToBodyIndex:(SEL)index;
- ($5E4061BE7C3C8BB942C4587960135C41)bodyVisualPositionAfterRevertingChangesFromBodyIndex:(SEL)index;
- (PXAnchorInsertingOrRemovingVisualPositionsChangeDetails)initWithCountBeforeChanges:(int64_t)changes anchorIndexBeforeChanges:(int64_t)beforeChanges headerIndexesBeforeChanges:(id)indexesBeforeChanges countAfterChanges:(int64_t)afterChanges anchorIndexAfterChanges:(int64_t)indexAfterChanges headerIndexesAfterChanges:(id)indexesAfterChanges anchorInserted:(BOOL)inserted relativePosition:(int64_t)self0;
@end

@implementation PXAnchorInsertingOrRemovingVisualPositionsChangeDetails

- ($5E4061BE7C3C8BB942C4587960135C41)bodyVisualPositionAfterRevertingChangesFromBodyIndex:(SEL)index
{
  retstr->var1 = 0;
  *&retstr->var2 = 0;
  retstr->var2 = 1;
  anchorBodyIndexAfterChanges = [(PXVisualPositionsChangeDetails *)self anchorBodyIndexAfterChanges];
  result = [(PXVisualPositionsChangeDetails *)self anchorBodyIndexBeforeChanges];
  v9 = result + a4 - anchorBodyIndexAfterChanges;
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
      if (a4 == anchorBodyIndexAfterChanges)
      {
        retstr->var0 = (v9 - 1);
LABEL_10:
        retstr->var1 = 1;
        retstr->var2 = 0;
        return result;
      }

      goto LABEL_17;
    }

    v12 = anchorBodyIndexAfterChanges + 1;
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
      v12 = anchorBodyIndexAfterChanges;
    }

    goto LABEL_15;
  }

  if (a4 == anchorBodyIndexAfterChanges)
  {
    goto LABEL_10;
  }

LABEL_17:
  if (a4 < anchorBodyIndexAfterChanges)
  {
    return result;
  }

  v13 = (v9 - 1);
LABEL_19:
  retstr->var0 = v13;
  return result;
}

- ($5E4061BE7C3C8BB942C4587960135C41)bodyVisualPositionAfterApplyingChangesToBodyIndex:(SEL)index
{
  retstr->var1 = 0;
  *&retstr->var2 = 0;
  retstr->var2 = 1;
  anchorBodyIndexBeforeChanges = [(PXVisualPositionsChangeDetails *)self anchorBodyIndexBeforeChanges];
  result = [(PXVisualPositionsChangeDetails *)self anchorBodyIndexAfterChanges];
  v9 = result + a4 - anchorBodyIndexBeforeChanges;
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
      v12 = anchorBodyIndexBeforeChanges + 1;
LABEL_11:
      if (v12 > a4)
      {
        return result;
      }

      v13 = (v9 + 1);
      goto LABEL_19;
    }

    if (a4 == anchorBodyIndexBeforeChanges)
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
        v12 = anchorBodyIndexBeforeChanges;
      }

      goto LABEL_11;
    }

    if (a4 == anchorBodyIndexBeforeChanges)
    {
LABEL_16:
      retstr->var1 = 1;
      retstr->var2 = 0;
      return result;
    }
  }

  if (a4 < anchorBodyIndexBeforeChanges)
  {
    return result;
  }

  v13 = (v9 - 1);
LABEL_19:
  retstr->var0 = v13;
  return result;
}

- (PXAnchorInsertingOrRemovingVisualPositionsChangeDetails)initWithCountBeforeChanges:(int64_t)changes anchorIndexBeforeChanges:(int64_t)beforeChanges headerIndexesBeforeChanges:(id)indexesBeforeChanges countAfterChanges:(int64_t)afterChanges anchorIndexAfterChanges:(int64_t)indexAfterChanges headerIndexesAfterChanges:(id)indexesAfterChanges anchorInserted:(BOOL)inserted relativePosition:(int64_t)self0
{
  v11.receiver = self;
  v11.super_class = PXAnchorInsertingOrRemovingVisualPositionsChangeDetails;
  result = [(PXVisualPositionsChangeDetails *)&v11 initWithCountBeforeChanges:changes anchorIndexBeforeChanges:beforeChanges headerIndexesBeforeChanges:indexesBeforeChanges countAfterChanges:afterChanges anchorIndexAfterChanges:indexAfterChanges headerIndexesAfterChanges:indexesAfterChanges];
  if (result)
  {
    result->_anchorInserted = inserted;
    result->_anchorRelativePosition = position;
  }

  return result;
}

@end