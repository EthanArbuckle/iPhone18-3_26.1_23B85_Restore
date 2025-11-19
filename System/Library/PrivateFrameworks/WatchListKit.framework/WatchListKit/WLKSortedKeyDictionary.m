@interface WLKSortedKeyDictionary
- (WLKSortedKeyDictionary)initWithObjects:(const void *)a3 forKeys:(const void *)a4 count:(unint64_t)a5;
- (id)keyEnumerator;
- (id)objectForKey:(id)a3;
- (unint64_t)count;
@end

@implementation WLKSortedKeyDictionary

- (unint64_t)count
{
  v2 = [(WLKSortedKeyDictionary *)self underlyingDictionary];
  v3 = [v2 count];

  return v3;
}

- (id)keyEnumerator
{
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[WLKSortedKeyDictionary count](self, "count")}];
  v4 = [(WLKSortedKeyDictionary *)self underlyingDictionary];
  v5 = [v4 keyEnumerator];

  v6 = [v5 nextObject];
  if (v6)
  {
    v7 = v6;
    do
    {
      [v3 addObject:v7];
      v8 = [v5 nextObject];

      v7 = v8;
    }

    while (v8);
  }

  [v3 sortUsingSelector:sel_compare_];
  v9 = [v3 objectEnumerator];

  return v9;
}

- (WLKSortedKeyDictionary)initWithObjects:(const void *)a3 forKeys:(const void *)a4 count:(unint64_t)a5
{
  v12.receiver = self;
  v12.super_class = WLKSortedKeyDictionary;
  v8 = [(WLKSortedKeyDictionary *)&v12 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjects:a3 forKeys:a4 count:a5];
    underlyingDictionary = v8->_underlyingDictionary;
    v8->_underlyingDictionary = v9;
  }

  return v8;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(WLKSortedKeyDictionary *)self underlyingDictionary];
  v6 = [v5 objectForKey:v4];

  return v6;
}

@end