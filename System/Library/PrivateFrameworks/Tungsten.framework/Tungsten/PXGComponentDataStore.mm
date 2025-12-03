@interface PXGComponentDataStore
- (BOOL)isEqual:(id)equal;
- (PXGComponentDataStore)init;
- (PXGComponentDataStore)initWithElementSize:(unint64_t)size;
- (id)mutableCopy;
- (void)dealloc;
- (void)setCapacity:(int64_t)capacity;
@end

@implementation PXGComponentDataStore

- (id)mutableCopy
{
  v3 = [(PXGComponentDataStore *)[PXGMutableComponentDataStore alloc] initWithElementSize:[(PXGComponentDataStore *)self elementSize]];
  [(PXGMutableComponentDataStore *)v3 setContentsFrom:self];
  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    capacity = [v5 capacity];
    v7 = capacity == -[PXGComponentDataStore capacity](self, "capacity") && memcmp(-[PXGComponentDataStore contents](self, "contents"), [v5 contents], -[PXGComponentDataStore byteSize](self, "byteSize")) == 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PXGComponentDataStore;
    v7 = [(PXGComponentDataStore *)&v9 isEqual:equalCopy];
  }

  return v7;
}

- (void)setCapacity:(int64_t)capacity
{
  capacity = self->_capacity;
  if (capacity != capacity)
  {
    if (capacity >= capacity)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXGComponentDataStore.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"capacity > _capacity"}];
    }

    elementSize = [(PXGComponentDataStore *)self elementSize];
    v7 = self->_capacity * elementSize;
    v8 = elementSize * capacity;
    self->_capacity = capacity;
    v9 = malloc_type_realloc(self->_data, elementSize * capacity, 0x42760281uLL);
    self->_data = v9;
    v10 = &v9[v7];

    bzero(v10, v8 - v7);
  }
}

- (void)dealloc
{
  data = self->_data;
  if (data)
  {
    free(data);
  }

  v4.receiver = self;
  v4.super_class = PXGComponentDataStore;
  [(PXGComponentDataStore *)&v4 dealloc];
}

- (PXGComponentDataStore)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGComponentDataStore.m" lineNumber:27 description:{@"%s is not available as initializer", "-[PXGComponentDataStore init]"}];

  abort();
}

- (PXGComponentDataStore)initWithElementSize:(unint64_t)size
{
  v5.receiver = self;
  v5.super_class = PXGComponentDataStore;
  result = [(PXGComponentDataStore *)&v5 init];
  if (result)
  {
    result->_elementSize = size;
  }

  return result;
}

@end