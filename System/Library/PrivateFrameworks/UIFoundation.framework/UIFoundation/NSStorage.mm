@interface NSStorage
+ (void)initialize;
- (NSStorage)initWithElementSize:(unint64_t)size capacity:(unint64_t)capacity;
- (id)description;
- (void)addElement:(void *)element;
- (void)dealloc;
- (void)enumerateElementsUsingBlock:(id)block;
- (void)insertElements:(void *)elements count:(unint64_t)count atIndex:(unint64_t)index;
@end

@implementation NSStorage

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    [self setVersion:1];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSStorage;
  [(NSStorage *)&v3 dealloc];
}

- (NSStorage)initWithElementSize:(unint64_t)size capacity:(unint64_t)capacity
{
  v6.receiver = self;
  v6.super_class = NSStorage;
  v4 = [(NSStorage *)&v6 init];
  v4->_storage = CFStorageCreate();
  return v4;
}

- (void)insertElements:(void *)elements count:(unint64_t)count atIndex:(unint64_t)index
{
  CFStorageInsertValues();
  if (elements)
  {
    storage = self->_storage;

    MEMORY[0x1EEDB77D0](storage, index, count, elements);
  }
}

- (void)addElement:(void *)element
{
  v5 = [(NSStorage *)self count];

  [(NSStorage *)self insertElements:element count:1 atIndex:v5];
}

- (id)description
{
  v2 = CFCopyDescription(self->_storage);
  v3 = CFMakeCollectable(v2);

  return v3;
}

- (void)enumerateElementsUsingBlock:(id)block
{
  Count = CFStorageGetCount();
  if (Count)
  {
    v5 = 0;
    v6 = Count - 1;
    do
    {
      v9 = 0;
      ValueAtIndex = CFStorageGetValueAtIndex();
      (*(block + 2))(block, ValueAtIndex, v5, &v9);
      if (v9)
      {
        break;
      }
    }

    while (v6 != v5++);
  }
}

@end