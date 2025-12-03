@interface WBSMutableOrderedDictionary
- (NSArray)orderedValues;
- (WBSMutableOrderedDictionary)initWithMaximumCount:(unint64_t)count;
- (id)objectForKey:(id)key;
- (void)removeObjectForKey:(id)key;
- (void)removeObjectsForKeys:(id)keys;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation WBSMutableOrderedDictionary

- (WBSMutableOrderedDictionary)initWithMaximumCount:(unint64_t)count
{
  v8.receiver = self;
  v8.super_class = WBSMutableOrderedDictionary;
  v4 = [(WBSMutableOrderedDictionary *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_maximumCount = count;
    v6 = v4;
  }

  return v5;
}

- (id)objectForKey:(id)key
{
  mutableOrderedSetOfKeys = self->_mutableOrderedSetOfKeys;
  keyCopy = key;
  [(WBSMutableOrderedSet *)mutableOrderedSetOfKeys markObjectAsRecentlyUsed:keyCopy];
  v6 = [(NSMutableDictionary *)self->_mutableDictionary objectForKeyedSubscript:keyCopy];

  return v6;
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if (!self->_mutableOrderedSetOfKeys)
  {
    v7 = [[WBSMutableOrderedSet alloc] initWithMaximumCount:self->_maximumCount];
    mutableOrderedSetOfKeys = self->_mutableOrderedSetOfKeys;
    self->_mutableOrderedSetOfKeys = v7;
  }

  if (!self->_mutableDictionary)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    mutableDictionary = self->_mutableDictionary;
    self->_mutableDictionary = v9;
  }

  if (self->_maximumCount)
  {
    if ([(NSMutableDictionary *)self->_mutableDictionary count]>= self->_maximumCount)
    {
      v11 = [(NSMutableDictionary *)self->_mutableDictionary objectForKeyedSubscript:keyCopy];

      if (!v11)
      {
        v12 = [(WBSMutableOrderedSet *)self->_mutableOrderedSetOfKeys objectAtIndexWithoutAffectingRecency:0];
        [(NSMutableDictionary *)self->_mutableDictionary removeObjectForKey:v12];
        [(WBSMutableOrderedSet *)self->_mutableOrderedSetOfKeys removeObject:v12];
      }
    }
  }

  [(WBSMutableOrderedSet *)self->_mutableOrderedSetOfKeys addObject:keyCopy];
  [(NSMutableDictionary *)self->_mutableDictionary setObject:objectCopy forKeyedSubscript:keyCopy];
}

- (void)removeObjectForKey:(id)key
{
  mutableOrderedSetOfKeys = self->_mutableOrderedSetOfKeys;
  keyCopy = key;
  [(WBSMutableOrderedSet *)mutableOrderedSetOfKeys removeObject:keyCopy];
  [(NSMutableDictionary *)self->_mutableDictionary removeObjectForKey:keyCopy];
}

- (void)removeObjectsForKeys:(id)keys
{
  mutableOrderedSetOfKeys = self->_mutableOrderedSetOfKeys;
  keysCopy = keys;
  [(WBSMutableOrderedSet *)mutableOrderedSetOfKeys removeObjectsInArray:keysCopy];
  [(NSMutableDictionary *)self->_mutableDictionary removeObjectsForKeys:keysCopy];
}

- (NSArray)orderedValues
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  array = [(WBSMutableOrderedSet *)self->_mutableOrderedSetOfKeys array];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__WBSMutableOrderedDictionary_orderedValues__block_invoke;
  v8[3] = &unk_1E7CF2450;
  v5 = v3;
  v9 = v5;
  selfCopy = self;
  [array enumerateObjectsUsingBlock:v8];

  v6 = v5;
  return v5;
}

void __44__WBSMutableOrderedDictionary_orderedValues__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 16) objectForKeyedSubscript:a2];
  [v2 addObject:v3];
}

@end