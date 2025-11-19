@interface PXPlacesMapLayoutDiffer
- (PXPlacesMapLayoutDiffer)initWithSourceLayoutResult:(id)a3 targetLayoutResult:(id)a4;
- (id)computeChanges;
- (void)_addTargetLayoutItem:(id)a3;
- (void)_computeChanges;
- (void)_relateSourceLayoutItem:(id)a3 withTargetLayoutItem:(id)a4;
- (void)_removeSourceLayoutItem:(id)a3;
@end

@implementation PXPlacesMapLayoutDiffer

- (void)_relateSourceLayoutItem:(id)a3 withTargetLayoutItem:(id)a4
{
  v12 = a3;
  v7 = a4;
  if (v12)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXPlacesMapLayoutDiffer.m" lineNumber:92 description:@"source layout item cannot be nil"];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v11 = [MEMORY[0x1E696AAA8] currentHandler];
  [v11 handleFailureInMethod:a2 object:self file:@"PXPlacesMapLayoutDiffer.m" lineNumber:93 description:@"target layout item cannot be nil"];

LABEL_3:
  changes = self->_changes;
  v9 = [[PXPlacesMapLayoutChange alloc] initWithSourceLayoutItem:v12 targetLayoutItem:v7 type:2];
  [(NSMutableArray *)changes addObject:v9];
}

- (void)_removeSourceLayoutItem:(id)a3
{
  v8 = a3;
  if (!v8)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PXPlacesMapLayoutDiffer.m" lineNumber:86 description:@"source layout item cannot be nil"];
  }

  changes = self->_changes;
  v6 = [[PXPlacesMapLayoutChange alloc] initWithSourceLayoutItem:v8 targetLayoutItem:0 type:1];
  [(NSMutableArray *)changes addObject:v6];
}

- (void)_addTargetLayoutItem:(id)a3
{
  v8 = a3;
  if (!v8)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PXPlacesMapLayoutDiffer.m" lineNumber:80 description:@"target layout item cannot be nil"];
  }

  changes = self->_changes;
  v6 = [[PXPlacesMapLayoutChange alloc] initWithSourceLayoutItem:0 targetLayoutItem:v8 type:0];
  [(NSMutableArray *)changes addObject:v6];
}

- (void)_computeChanges
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXPlacesMapLayoutDiffer.m" lineNumber:75 description:@"Cannot use PXPlacesMapLayoutDiffer directly. Need to use subclass!"];
}

- (id)computeChanges
{
  changes = self->_changes;
  if (!changes)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = self->_changes;
    self->_changes = v4;

    [(PXPlacesMapLayoutDiffer *)self _computeChanges];
    changes = self->_changes;
  }

  return changes;
}

- (PXPlacesMapLayoutDiffer)initWithSourceLayoutResult:(id)a3 targetLayoutResult:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PXPlacesMapLayoutDiffer;
  v9 = [(PXPlacesMapLayoutDiffer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sourceLayoutResult, a3);
    objc_storeStrong(&v10->_targetLayoutResult, a4);
  }

  return v10;
}

@end