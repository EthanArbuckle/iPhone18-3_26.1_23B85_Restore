@interface PXGMutableComponentDataStore
- (void)mutableContents;
- (void)setContentsFrom:(id)a3;
@end

@implementation PXGMutableComponentDataStore

- (void)mutableContents
{
  v2 = self;

  return [(PXGComponentDataStore *)v2 contents];
}

- (void)setContentsFrom:(id)a3
{
  v9 = a3;
  v5 = [(PXGComponentDataStore *)self elementSize];
  if (v5 != [v9 elementSize])
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXGComponentDataStore.m" lineNumber:92 description:{@"Invalid parameter not satisfying: %@", @"self.elementSize == dataStore.elementSize"}];
  }

  -[PXGComponentDataStore setCapacity:](self, "setCapacity:", [v9 capacity]);
  v6 = [(PXGMutableComponentDataStore *)self mutableContents];
  v7 = v9;
  memcpy(v6, [v9 contents], -[PXGComponentDataStore byteSize](self, "byteSize"));
}

@end