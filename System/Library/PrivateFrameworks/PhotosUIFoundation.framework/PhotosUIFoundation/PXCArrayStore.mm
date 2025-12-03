@interface PXCArrayStore
- (PXCArrayStore)init;
- (PXCArrayStore)initWithElementSize:(unint64_t)size;
- (void)_sharedArrayWithElementsCount:(unint64_t)count;
- (void)accessArrayWithElementsCount:(unint64_t)count accessBlock:(id)block;
- (void)dealloc;
@end

@implementation PXCArrayStore

- (void)_sharedArrayWithElementsCount:(unint64_t)count
{
  sharedArrayCapacity = self->_sharedArrayCapacity;
  if (sharedArrayCapacity >= count)
  {
    return self->_sharedArray;
  }

  if (!sharedArrayCapacity)
  {
    sharedArrayCapacity = 8;
    self->_sharedArrayCapacity = 8;
  }

  if (sharedArrayCapacity < count)
  {
    do
    {
      sharedArrayCapacity *= 2;
    }

    while (sharedArrayCapacity < count);
    self->_sharedArrayCapacity = sharedArrayCapacity;
  }

  result = malloc_type_realloc(self->_sharedArray, self->_elementSize * sharedArrayCapacity, 0x203C9E10uLL);
  self->_sharedArray = result;
  return result;
}

- (void)accessArrayWithElementsCount:(unint64_t)count accessBlock:(id)block
{
  blockCopy = block;
  if ([MEMORY[0x1E696AF00] isMainThread] && !self->_isSharedArrayInUse)
  {
    v7 = [(PXCArrayStore *)self _sharedArrayWithElementsCount:count];
    self->_isSharedArrayInUse = 1;
    blockCopy[2](blockCopy, v7);
    self->_isSharedArrayInUse = 0;
  }

  else
  {
    v6 = malloc_type_calloc(count, self->_elementSize, 0x3FE9A7B8uLL);
    blockCopy[2](blockCopy, v6);
    free(v6);
  }
}

- (void)dealloc
{
  free(self->_sharedArray);
  v3.receiver = self;
  v3.super_class = PXCArrayStore;
  [(PXCArrayStore *)&v3 dealloc];
}

- (PXCArrayStore)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCArrayStore.m" lineNumber:29 description:{@"%s is not available as initializer", "-[PXCArrayStore init]"}];

  abort();
}

- (PXCArrayStore)initWithElementSize:(unint64_t)size
{
  v5.receiver = self;
  v5.super_class = PXCArrayStore;
  result = [(PXCArrayStore *)&v5 init];
  if (result)
  {
    result->_elementSize = size;
  }

  return result;
}

@end