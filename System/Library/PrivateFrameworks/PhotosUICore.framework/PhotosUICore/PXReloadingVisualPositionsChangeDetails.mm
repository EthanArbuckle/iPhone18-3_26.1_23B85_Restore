@interface PXReloadingVisualPositionsChangeDetails
- ($5E4061BE7C3C8BB942C4587960135C41)bodyVisualPositionAfterApplyingChangesToBodyIndex:(SEL)index;
- ($5E4061BE7C3C8BB942C4587960135C41)bodyVisualPositionAfterRevertingChangesFromBodyIndex:(SEL)index;
- (PXReloadingVisualPositionsChangeDetails)initWithCountBeforeChanges:(int64_t)changes anchorIndexBeforeChanges:(int64_t)beforeChanges headerIndexesBeforeChanges:(id)indexesBeforeChanges countAfterChanges:(int64_t)afterChanges anchorIndexAfterChanges:(int64_t)indexAfterChanges headerIndexesAfterChanges:(id)indexesAfterChanges reloadAllIncludingAnchor:(BOOL)anchor;
@end

@implementation PXReloadingVisualPositionsChangeDetails

- ($5E4061BE7C3C8BB942C4587960135C41)bodyVisualPositionAfterRevertingChangesFromBodyIndex:(SEL)index
{
  *&retstr->var2 = 0;
  anchorBodyIndexAfterChanges = [(PXVisualPositionsChangeDetails *)self anchorBodyIndexAfterChanges];
  result = [(PXVisualPositionsChangeDetails *)self anchorBodyIndexBeforeChanges];
  v9 = self->_reloadAnchor || a4 != anchorBodyIndexAfterChanges;
  retstr->var0 = result + a4 - anchorBodyIndexAfterChanges;
  retstr->var1 = v9;
  retstr->var2 = !v9;
  return result;
}

- ($5E4061BE7C3C8BB942C4587960135C41)bodyVisualPositionAfterApplyingChangesToBodyIndex:(SEL)index
{
  *&retstr->var2 = 0;
  anchorBodyIndexBeforeChanges = [(PXVisualPositionsChangeDetails *)self anchorBodyIndexBeforeChanges];
  result = [(PXVisualPositionsChangeDetails *)self anchorBodyIndexAfterChanges];
  v9 = self->_reloadAnchor || a4 != anchorBodyIndexBeforeChanges;
  retstr->var0 = result + a4 - anchorBodyIndexBeforeChanges;
  retstr->var1 = v9;
  retstr->var2 = !v9;
  return result;
}

- (PXReloadingVisualPositionsChangeDetails)initWithCountBeforeChanges:(int64_t)changes anchorIndexBeforeChanges:(int64_t)beforeChanges headerIndexesBeforeChanges:(id)indexesBeforeChanges countAfterChanges:(int64_t)afterChanges anchorIndexAfterChanges:(int64_t)indexAfterChanges headerIndexesAfterChanges:(id)indexesAfterChanges reloadAllIncludingAnchor:(BOOL)anchor
{
  v10.receiver = self;
  v10.super_class = PXReloadingVisualPositionsChangeDetails;
  result = [(PXVisualPositionsChangeDetails *)&v10 initWithCountBeforeChanges:changes anchorIndexBeforeChanges:beforeChanges headerIndexesBeforeChanges:indexesBeforeChanges countAfterChanges:afterChanges anchorIndexAfterChanges:indexAfterChanges headerIndexesAfterChanges:indexesAfterChanges];
  if (result)
  {
    result->_reloadAnchor = anchor;
  }

  return result;
}

@end