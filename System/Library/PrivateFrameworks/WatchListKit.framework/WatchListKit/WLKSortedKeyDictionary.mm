@interface WLKSortedKeyDictionary
- (WLKSortedKeyDictionary)initWithObjects:(const void *)objects forKeys:(const void *)keys count:(unint64_t)count;
- (id)keyEnumerator;
- (id)objectForKey:(id)key;
- (unint64_t)count;
@end

@implementation WLKSortedKeyDictionary

- (unint64_t)count
{
  underlyingDictionary = [(WLKSortedKeyDictionary *)self underlyingDictionary];
  v3 = [underlyingDictionary count];

  return v3;
}

- (id)keyEnumerator
{
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[WLKSortedKeyDictionary count](self, "count")}];
  underlyingDictionary = [(WLKSortedKeyDictionary *)self underlyingDictionary];
  keyEnumerator = [underlyingDictionary keyEnumerator];

  nextObject = [keyEnumerator nextObject];
  if (nextObject)
  {
    v7 = nextObject;
    do
    {
      [v3 addObject:v7];
      nextObject2 = [keyEnumerator nextObject];

      v7 = nextObject2;
    }

    while (nextObject2);
  }

  [v3 sortUsingSelector:sel_compare_];
  objectEnumerator = [v3 objectEnumerator];

  return objectEnumerator;
}

- (WLKSortedKeyDictionary)initWithObjects:(const void *)objects forKeys:(const void *)keys count:(unint64_t)count
{
  v12.receiver = self;
  v12.super_class = WLKSortedKeyDictionary;
  v8 = [(WLKSortedKeyDictionary *)&v12 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjects:objects forKeys:keys count:count];
    underlyingDictionary = v8->_underlyingDictionary;
    v8->_underlyingDictionary = v9;
  }

  return v8;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  underlyingDictionary = [(WLKSortedKeyDictionary *)self underlyingDictionary];
  v6 = [underlyingDictionary objectForKey:keyCopy];

  return v6;
}

@end