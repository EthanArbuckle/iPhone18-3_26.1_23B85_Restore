@interface PXCArrayStore
- (PXCArrayStore)init;
- (PXCArrayStore)initWithElementSize:(unint64_t)a3;
- (void)_sharedArrayWithElementsCount:(unint64_t)a3;
- (void)accessArrayWithElementsCount:(unint64_t)a3 accessBlock:(id)a4;
- (void)dealloc;
@end

@implementation PXCArrayStore

- (void)_sharedArrayWithElementsCount:(unint64_t)a3
{
  sharedArrayCapacity = self->_sharedArrayCapacity;
  if (sharedArrayCapacity >= a3)
  {
    return self->_sharedArray;
  }

  if (!sharedArrayCapacity)
  {
    sharedArrayCapacity = 8;
    self->_sharedArrayCapacity = 8;
  }

  if (sharedArrayCapacity < a3)
  {
    do
    {
      sharedArrayCapacity *= 2;
    }

    while (sharedArrayCapacity < a3);
    self->_sharedArrayCapacity = sharedArrayCapacity;
  }

  result = malloc_type_realloc(self->_sharedArray, self->_elementSize * sharedArrayCapacity, 0x203C9E10uLL);
  self->_sharedArray = result;
  return result;
}

- (void)accessArrayWithElementsCount:(unint64_t)a3 accessBlock:(id)a4
{
  v8 = a4;
  if ([MEMORY[0x1E696AF00] isMainThread] && !self->_isSharedArrayInUse)
  {
    v7 = [(PXCArrayStore *)self _sharedArrayWithElementsCount:a3];
    self->_isSharedArrayInUse = 1;
    v8[2](v8, v7);
    self->_isSharedArrayInUse = 0;
  }

  else
  {
    v6 = malloc_type_calloc(a3, self->_elementSize, 0x3FE9A7B8uLL);
    v8[2](v8, v6);
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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXCArrayStore.m" lineNumber:29 description:{@"%s is not available as initializer", "-[PXCArrayStore init]"}];

  abort();
}

- (PXCArrayStore)initWithElementSize:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = PXCArrayStore;
  result = [(PXCArrayStore *)&v5 init];
  if (result)
  {
    result->_elementSize = a3;
  }

  return result;
}

@end