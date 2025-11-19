@interface NSStorage
+ (void)initialize;
- (NSStorage)initWithElementSize:(unint64_t)a3 capacity:(unint64_t)a4;
- (id)description;
- (void)addElement:(void *)a3;
- (void)dealloc;
- (void)enumerateElementsUsingBlock:(id)a3;
- (void)insertElements:(void *)a3 count:(unint64_t)a4 atIndex:(unint64_t)a5;
@end

@implementation NSStorage

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    [a1 setVersion:1];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSStorage;
  [(NSStorage *)&v3 dealloc];
}

- (NSStorage)initWithElementSize:(unint64_t)a3 capacity:(unint64_t)a4
{
  v6.receiver = self;
  v6.super_class = NSStorage;
  v4 = [(NSStorage *)&v6 init];
  v4->_storage = CFStorageCreate();
  return v4;
}

- (void)insertElements:(void *)a3 count:(unint64_t)a4 atIndex:(unint64_t)a5
{
  CFStorageInsertValues();
  if (a3)
  {
    storage = self->_storage;

    MEMORY[0x1EEDB77D0](storage, a5, a4, a3);
  }
}

- (void)addElement:(void *)a3
{
  v5 = [(NSStorage *)self count];

  [(NSStorage *)self insertElements:a3 count:1 atIndex:v5];
}

- (id)description
{
  v2 = CFCopyDescription(self->_storage);
  v3 = CFMakeCollectable(v2);

  return v3;
}

- (void)enumerateElementsUsingBlock:(id)a3
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
      (*(a3 + 2))(a3, ValueAtIndex, v5, &v9);
      if (v9)
      {
        break;
      }
    }

    while (v6 != v5++);
  }
}

@end