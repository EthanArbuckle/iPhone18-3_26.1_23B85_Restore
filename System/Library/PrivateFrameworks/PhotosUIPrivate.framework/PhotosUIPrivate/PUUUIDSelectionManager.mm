@interface PUUUIDSelectionManager
- (BOOL)isSelectedUUID:(id)a3;
- (BOOL)pu_isAssetReferenceSelected:(id)a3;
- (NSSet)selectedUUIDs;
- (PUUUIDSelectionManager)initWithSelectedUUIDs:(id)a3;
- (void)addSelectedUUID:(id)a3;
- (void)deselectAllUUIDs;
- (void)performChanges:(id)a3;
- (void)removeSelectedUUID:(id)a3;
- (void)setSelectedUUIDs:(id)a3;
@end

@implementation PUUUIDSelectionManager

- (BOOL)pu_isAssetReferenceSelected:(id)a3
{
  v4 = [a3 asset];
  v5 = [v4 uuid];

  LOBYTE(self) = [(PUUUIDSelectionManager *)self isSelectedUUID:v5];
  return self;
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PUUUIDSelectionManager;
  [(PUUUIDSelectionManager *)&v3 performChanges:a3];
}

- (void)deselectAllUUIDs
{
  if ([(NSMutableSet *)self->__mutableSelectedUUIDs count])
  {
    [(NSMutableSet *)self->__mutableSelectedUUIDs removeAllObjects];

    [(PUUUIDSelectionManager *)self signalChange:1];
  }
}

- (void)setSelectedUUIDs:(id)a3
{
  v4 = a3;
  if (([(NSMutableSet *)self->__mutableSelectedUUIDs isEqualToSet:?]& 1) == 0)
  {
    [(NSMutableSet *)self->__mutableSelectedUUIDs setSet:v4];
    [(PUUUIDSelectionManager *)self signalChange:1];
  }
}

- (NSSet)selectedUUIDs
{
  v2 = [(NSMutableSet *)self->__mutableSelectedUUIDs copy];

  return v2;
}

- (void)removeSelectedUUID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v4 = [(PUUUIDSelectionManager *)self isSelectedUUID:v4];
    v5 = v6;
    if (v4)
    {
      [(NSMutableSet *)self->__mutableSelectedUUIDs removeObject:v6];
      v4 = [(PUUUIDSelectionManager *)self signalChange:1];
      v5 = v6;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)addSelectedUUID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v4 = [(PUUUIDSelectionManager *)self isSelectedUUID:v4];
    v5 = v6;
    if ((v4 & 1) == 0)
    {
      [(NSMutableSet *)self->__mutableSelectedUUIDs addObject:v6];
      v4 = [(PUUUIDSelectionManager *)self signalChange:1];
      v5 = v6;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (BOOL)isSelectedUUID:(id)a3
{
  if (a3)
  {
    return [(NSMutableSet *)self->__mutableSelectedUUIDs containsObject:?];
  }

  else
  {
    return 0;
  }
}

- (PUUUIDSelectionManager)initWithSelectedUUIDs:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PUUUIDSelectionManager;
  v5 = [(PUUUIDSelectionManager *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFA8] setWithSet:v4];
    mutableSelectedUUIDs = v5->__mutableSelectedUUIDs;
    v5->__mutableSelectedUUIDs = v6;
  }

  return v5;
}

@end