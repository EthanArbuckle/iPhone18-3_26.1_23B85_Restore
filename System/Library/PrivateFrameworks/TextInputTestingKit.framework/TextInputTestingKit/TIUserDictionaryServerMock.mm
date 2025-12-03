@interface TIUserDictionaryServerMock
- (TIUserDictionaryServerMock)init;
- (id)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
@end

@implementation TIUserDictionaryServerMock

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  observers = selfCopy->_observers;
  v6 = MEMORY[0x26D6C0D70](observerCopy);
  [(NSMutableArray *)observers removeObject:v6];

  objc_sync_exit(selfCopy);
}

- (id)addObserver:(id)observer
{
  observerCopy = observer;
  v5 = [observerCopy copy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  observers = selfCopy->_observers;
  v8 = MEMORY[0x26D6C0D70](v5);
  [(NSMutableArray *)observers addObject:v8];

  (v5)[2](v5, selfCopy->_pairs);
  objc_sync_exit(selfCopy);

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