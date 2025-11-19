@interface TIUserDictionaryServerMock
- (TIUserDictionaryServerMock)init;
- (id)addObserver:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation TIUserDictionaryServerMock

- (void)removeObserver:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  observers = v4->_observers;
  v6 = MEMORY[0x26D6C0D70](v7);
  [(NSMutableArray *)observers removeObject:v6];

  objc_sync_exit(v4);
}

- (id)addObserver:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  v6 = self;
  objc_sync_enter(v6);
  observers = v6->_observers;
  v8 = MEMORY[0x26D6C0D70](v5);
  [(NSMutableArray *)observers addObject:v8];

  (v5)[2](v5, v6->_pairs);
  objc_sync_exit(v6);

  v9 = MEMORY[0x26D6C0D70](v5);

  return v9;
}

- (TIUserDictionaryServerMock)init
{
  v8.receiver = self;
  v8.super_class = TIUserDictionaryServerMock;
  v2 = [(TIUserDictionaryServerMock *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEA60]);
    pairs = v2->_pairs;
    v2->_pairs = v5;
  }

  return v2;
}

@end