@interface PXGComponentDataStore
- (BOOL)isEqual:(id)a3;
- (PXGComponentDataStore)init;
- (PXGComponentDataStore)initWithElementSize:(unint64_t)a3;
- (id)mutableCopy;
- (void)dealloc;
- (void)setCapacity:(int64_t)a3;
@end

@implementation PXGComponentDataStore

- (id)mutableCopy
{
  v3 = [(PXGComponentDataStore *)[PXGMutableComponentDataStore alloc] initWithElementSize:[(PXGComponentDataStore *)self elementSize]];
  [(PXGMutableComponentDataStore *)v3 setContentsFrom:self];
  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 capacity];
    v7 = v6 == -[PXGComponentDataStore capacity](self, "capacity") && memcmp(-[PXGComponentDataStore contents](self, "contents"), [v5 contents], -[PXGComponentDataStore byteSize](self, "byteSize")) == 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PXGComponentDataStore;
    v7 = [(PXGComponentDataStore *)&v9 isEqual:v4];
  }

  return v7;
}

- (void)setCapacity:(int64_t)a3
{
  capacity = self->_capacity;
  if (capacity != a3)
  {
    if (capacity >= a3)
    {
      v12 = [MEMORY[0x277CCA890] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"PXGComponentDataStore.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"capacity > _capacity"}];
    }

    v6 = [(PXGComponentDataStore *)self elementSize];
    v7 = self->_capacity * v6;
    v8 = v6 * a3;
    self->_capacity = a3;
    v9 = malloc_type_realloc(self->_data, v6 * a3, 0x42760281uLL);
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
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXGComponentDataStore.m" lineNumber:27 description:{@"%s is not available as initializer", "-[PXGComponentDataStore init]"}];

  abort();
}

- (PXGComponentDataStore)initWithElementSize:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = PXGComponentDataStore;
  result = [(PXGComponentDataStore *)&v5 init];
  if (result)
  {
    result->_elementSize = a3;
  }

  return result;
}

@end