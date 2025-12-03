@interface TSUConcurrentMutableDictionaryCache
- (TSUConcurrentMutableDictionaryCache)initWithName:(id)name;
- (id)description;
- (id)objectForKey:(id)key;
- (id)objectsForKeys:(id)keys notFoundMarker:(id)marker;
- (void)addEntriesFromDictionary:(id)dictionary;
- (void)enumerateKeysAndObjectsUsingBlock:(id)block;
- (void)performSyncWriteWithUnderlyingDictionary:(id)dictionary;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)key;
- (void)removeObjectForKey:(id)key andWait:(BOOL)wait;
- (void)removeObjectsForKeys:(id)keys;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation TSUConcurrentMutableDictionaryCache

- (TSUConcurrentMutableDictionaryCache)initWithName:(id)name
{
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = TSUConcurrentMutableDictionaryCache;
  v5 = [(TSUConcurrentMutableDictionaryCache *)&v17 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    name = v5->_name;
    v5->_name = v6;

    v8 = [TSUReadWriteQueue alloc];
    nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"TSUConcurrentMutableDictionaryCache:%@", nameCopy];
    v10 = [(TSUReadWriteQueue *)v8 initWithIdentifier:nameCopy];
    readWriteQueue = v5->_readWriteQueue;
    v5->_readWriteQueue = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cache = v5->_cache;
    v5->_cache = v12;

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_2770FAAF8;
    v15[3] = &unk_27A7026E0;
    v16 = v5;
    [TSUExecutionContext performWithApplication:v15];
  }

  return v5;
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  readWriteQueue = [(TSUConcurrentMutableDictionaryCache *)self readWriteQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2770FAC60;
  v7[3] = &unk_27A702450;
  v7[4] = self;
  v8 = keyCopy;
  v6 = keyCopy;
  [readWriteQueue performAsyncWrite:v7];
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  readWriteQueue = [(TSUConcurrentMutableDictionaryCache *)self readWriteQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2770FAD44;
  v11[3] = &unk_27A703AA0;
  v11[4] = self;
  v12 = objectCopy;
  v13 = keyCopy;
  v9 = keyCopy;
  v10 = objectCopy;
  [readWriteQueue performAsyncWrite:v11];
}

- (void)addEntriesFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if ([dictionaryCopy count])
  {
    readWriteQueue = [(TSUConcurrentMutableDictionaryCache *)self readWriteQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_2770FAE14;
    v6[3] = &unk_27A702450;
    v6[4] = self;
    v7 = dictionaryCopy;
    [readWriteQueue performAsyncWrite:v6];
  }
}

- (void)removeAllObjects
{
  readWriteQueue = [(TSUConcurrentMutableDictionaryCache *)self readWriteQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2770FAEA8;
  v4[3] = &unk_27A7023D8;
  v4[4] = self;
  [readWriteQueue performAsyncWrite:v4];
}

- (void)removeObjectsForKeys:(id)keys
{
  keysCopy = keys;
  readWriteQueue = [(TSUConcurrentMutableDictionaryCache *)self readWriteQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2770FAF68;
  v7[3] = &unk_27A702450;
  v7[4] = self;
  v8 = keysCopy;
  v6 = keysCopy;
  [readWriteQueue performAsyncWrite:v7];
}

- (void)removeObjectForKey:(id)key andWait:(BOOL)wait
{
  waitCopy = wait;
  keyCopy = key;
  readWriteQueue = [(TSUConcurrentMutableDictionaryCache *)self readWriteQueue];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = sub_2770FB048;
  v13 = &unk_27A702450;
  selfCopy = self;
  v15 = keyCopy;
  v8 = keyCopy;
  [readWriteQueue performAsyncWrite:&v10];

  if (waitCopy)
  {
    v9 = [(TSUConcurrentMutableDictionaryCache *)self readWriteQueue:v10];
    [v9 waitOnInFlightWriters];
  }
}

- (id)description
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_2770FB170;
  v11 = sub_2770FB180;
  v12 = 0;
  readWriteQueue = [(TSUConcurrentMutableDictionaryCache *)self readWriteQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2770FB188;
  v6[3] = &unk_27A702428;
  v6[4] = self;
  v6[5] = &v7;
  [readWriteQueue performSyncRead:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_2770FB170;
  v16 = sub_2770FB180;
  v17 = 0;
  readWriteQueue = [(TSUConcurrentMutableDictionaryCache *)self readWriteQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2770FB320;
  v9[3] = &unk_27A7019E0;
  v11 = &v12;
  v9[4] = self;
  v6 = keyCopy;
  v10 = v6;
  [readWriteQueue performSyncRead:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)objectsForKeys:(id)keys notFoundMarker:(id)marker
{
  keysCopy = keys;
  markerCopy = marker;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_2770FB170;
  v21 = sub_2770FB180;
  v22 = 0;
  readWriteQueue = [(TSUConcurrentMutableDictionaryCache *)self readWriteQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2770FB4E4;
  v13[3] = &unk_27A703AC8;
  v16 = &v17;
  v13[4] = self;
  v9 = keysCopy;
  v14 = v9;
  v10 = markerCopy;
  v15 = v10;
  [readWriteQueue performSyncRead:v13];

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

- (void)enumerateKeysAndObjectsUsingBlock:(id)block
{
  blockCopy = block;
  readWriteQueue = [(TSUConcurrentMutableDictionaryCache *)self readWriteQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2770FB5EC;
  v7[3] = &unk_27A702858;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [readWriteQueue performSyncRead:v7];
}

- (void)performSyncWriteWithUnderlyingDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  readWriteQueue = [(TSUConcurrentMutableDictionaryCache *)self readWriteQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2770FB6AC;
  v7[3] = &unk_27A702378;
  v7[4] = self;
  v8 = dictionaryCopy;
  v6 = dictionaryCopy;
  [readWriteQueue performSyncWrite:v7];
}

@end