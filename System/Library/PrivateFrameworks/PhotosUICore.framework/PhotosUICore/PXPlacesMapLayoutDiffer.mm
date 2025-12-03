@interface PXPlacesMapLayoutDiffer
- (PXPlacesMapLayoutDiffer)initWithSourceLayoutResult:(id)result targetLayoutResult:(id)layoutResult;
- (id)computeChanges;
- (void)_addTargetLayoutItem:(id)item;
- (void)_computeChanges;
- (void)_relateSourceLayoutItem:(id)item withTargetLayoutItem:(id)layoutItem;
- (void)_removeSourceLayoutItem:(id)item;
@end

@implementation PXPlacesMapLayoutDiffer

- (void)_relateSourceLayoutItem:(id)item withTargetLayoutItem:(id)layoutItem
{
  itemCopy = item;
  layoutItemCopy = layoutItem;
  if (itemCopy)
  {
    if (layoutItemCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPlacesMapLayoutDiffer.m" lineNumber:92 description:@"source layout item cannot be nil"];

    if (layoutItemCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPlacesMapLayoutDiffer.m" lineNumber:93 description:@"target layout item cannot be nil"];

LABEL_3:
  changes = self->_changes;
  v9 = [[PXPlacesMapLayoutChange alloc] initWithSourceLayoutItem:itemCopy targetLayoutItem:layoutItemCopy type:2];
  [(NSMutableArray *)changes addObject:v9];
}

- (void)_removeSourceLayoutItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPlacesMapLayoutDiffer.m" lineNumber:86 description:@"source layout item cannot be nil"];
  }

  changes = self->_changes;
  v6 = [[PXPlacesMapLayoutChange alloc] initWithSourceLayoutItem:itemCopy targetLayoutItem:0 type:1];
  [(NSMutableArray *)changes addObject:v6];
}

- (void)_addTargetLayoutItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPlacesMapLayoutDiffer.m" lineNumber:80 description:@"target layout item cannot be nil"];
  }

  changes = self->_changes;
  v6 = [[PXPlacesMapLayoutChange alloc] initWithSourceLayoutItem:0 targetLayoutItem:itemCopy type:0];
  [(NSMutableArray *)changes addObject:v6];
}

- (void)_computeChanges
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPlacesMapLayoutDiffer.m" lineNumber:75 description:@"Cannot use PXPlacesMapLayoutDiffer directly. Need to use subclass!"];
}

- (id)computeChanges
{
  changes = self->_changes;
  if (!changes)
  {
    array = [MEMORY[0x1E695DF70] array];
    v5 = self->_changes;
    self->_changes = array;

    [(PXPlacesMapLayoutDiffer *)self _computeChanges];
    changes = self->_changes;
  }

  return changes;
}

- (PXPlacesMapLayoutDiffer)initWithSourceLayoutResult:(id)result targetLayoutResult:(id)layoutResult
{
  resultCopy = result;
  layoutResultCopy = layoutResult;
  v12.receiver = self;
  v12.super_class = PXPlacesMapLayoutDiffer;
  v9 = [(PXPlacesMapLayoutDiffer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sourceLayoutResult, result);
    objc_storeStrong(&v10->_targetLayoutResult, layoutResult);
  }

  return v10;
}

@end