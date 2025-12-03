@interface PUUUIDSelectionManager
- (BOOL)isSelectedUUID:(id)d;
- (BOOL)pu_isAssetReferenceSelected:(id)selected;
- (NSSet)selectedUUIDs;
- (PUUUIDSelectionManager)initWithSelectedUUIDs:(id)ds;
- (void)addSelectedUUID:(id)d;
- (void)deselectAllUUIDs;
- (void)performChanges:(id)changes;
- (void)removeSelectedUUID:(id)d;
- (void)setSelectedUUIDs:(id)ds;
@end

@implementation PUUUIDSelectionManager

- (BOOL)pu_isAssetReferenceSelected:(id)selected
{
  asset = [selected asset];
  uuid = [asset uuid];

  LOBYTE(self) = [(PUUUIDSelectionManager *)self isSelectedUUID:uuid];
  return self;
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PUUUIDSelectionManager;
  [(PUUUIDSelectionManager *)&v3 performChanges:changes];
}

- (void)deselectAllUUIDs
{
  if ([(NSMutableSet *)self->__mutableSelectedUUIDs count])
  {
    [(NSMutableSet *)self->__mutableSelectedUUIDs removeAllObjects];

    [(PUUUIDSelectionManager *)self signalChange:1];
  }
}

- (void)setSelectedUUIDs:(id)ds
{
  dsCopy = ds;
  if (([(NSMutableSet *)self->__mutableSelectedUUIDs isEqualToSet:?]& 1) == 0)
  {
    [(NSMutableSet *)self->__mutableSelectedUUIDs setSet:dsCopy];
    [(PUUUIDSelectionManager *)self signalChange:1];
  }
}

- (NSSet)selectedUUIDs
{
  v2 = [(NSMutableSet *)self->__mutableSelectedUUIDs copy];

  return v2;
}

- (void)removeSelectedUUID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
  {
    v6 = dCopy;
    dCopy = [(PUUUIDSelectionManager *)self isSelectedUUID:dCopy];
    v5 = v6;
    if (dCopy)
    {
      [(NSMutableSet *)self->__mutableSelectedUUIDs removeObject:v6];
      dCopy = [(PUUUIDSelectionManager *)self signalChange:1];
      v5 = v6;
    }
  }

  MEMORY[0x1EEE66BB8](dCopy, v5);
}

- (void)addSelectedUUID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
  {
    v6 = dCopy;
    dCopy = [(PUUUIDSelectionManager *)self isSelectedUUID:dCopy];
    v5 = v6;
    if ((dCopy & 1) == 0)
    {
      [(NSMutableSet *)self->__mutableSelectedUUIDs addObject:v6];
      dCopy = [(PUUUIDSelectionManager *)self signalChange:1];
      v5 = v6;
    }
  }

  MEMORY[0x1EEE66BB8](dCopy, v5);
}

- (BOOL)isSelectedUUID:(id)d
{
  if (d)
  {
    return [(NSMutableSet *)self->__mutableSelectedUUIDs containsObject:?];
  }

  else
  {
    return 0;
  }
}

- (PUUUIDSelectionManager)initWithSelectedUUIDs:(id)ds
{
  dsCopy = ds;
  v9.receiver = self;
  v9.super_class = PUUUIDSelectionManager;
  v5 = [(PUUUIDSelectionManager *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFA8] setWithSet:dsCopy];
    mutableSelectedUUIDs = v5->__mutableSelectedUUIDs;
    v5->__mutableSelectedUUIDs = v6;
  }

  return v5;
}

@end