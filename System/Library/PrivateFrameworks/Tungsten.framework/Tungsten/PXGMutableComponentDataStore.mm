@interface PXGMutableComponentDataStore
- (void)mutableContents;
- (void)setContentsFrom:(id)from;
@end

@implementation PXGMutableComponentDataStore

- (void)mutableContents
{
  selfCopy = self;

  return [(PXGComponentDataStore *)selfCopy contents];
}

- (void)setContentsFrom:(id)from
{
  fromCopy = from;
  elementSize = [(PXGComponentDataStore *)self elementSize];
  if (elementSize != [fromCopy elementSize])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGComponentDataStore.m" lineNumber:92 description:{@"Invalid parameter not satisfying: %@", @"self.elementSize == dataStore.elementSize"}];
  }

  -[PXGComponentDataStore setCapacity:](self, "setCapacity:", [fromCopy capacity]);
  mutableContents = [(PXGMutableComponentDataStore *)self mutableContents];
  v7 = fromCopy;
  memcpy(mutableContents, [fromCopy contents], -[PXGComponentDataStore byteSize](self, "byteSize"));
}

@end