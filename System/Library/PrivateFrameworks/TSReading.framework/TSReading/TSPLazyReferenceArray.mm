@interface TSPLazyReferenceArray
- (TSPLazyReferenceArray)init;
- (TSPLazyReferenceArray)initWithArray:(id)array;
- (TSPLazyReferenceArray)initWithCapacity:(unint64_t)capacity;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)objectAtIndex:(unint64_t)index;
- (id)objectsAtIndexes:(id)indexes;
- (id)subarrayWithRange:(_NSRange)range;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)addObject:(id)object;
- (void)addObjectsFromArray:(id)array;
- (void)insertObject:(id)object atIndex:(unint64_t)index;
- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object;
- (void)replaceObjectsInRange:(_NSRange)range withObjectsFromArray:(id)array;
- (void)replaceObjectsInRange:(_NSRange)range withObjectsFromArray:(id)array range:(_NSRange)a5;
@end

@implementation TSPLazyReferenceArray

- (TSPLazyReferenceArray)init
{
  v6.receiver = self;
  v6.super_class = TSPLazyReferenceArray;
  v2 = [(TSPLazyReferenceArray *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    references = v2->_references;
    v2->_references = v3;
  }

  return v2;
}

- (TSPLazyReferenceArray)initWithCapacity:(unint64_t)capacity
{
  v8.receiver = self;
  v8.super_class = TSPLazyReferenceArray;
  v4 = [(TSPLazyReferenceArray *)&v8 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:capacity];
    references = v4->_references;
    v4->_references = v5;
  }

  return v4;
}

- (TSPLazyReferenceArray)initWithArray:(id)array
{
  arrayCopy = array;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10.receiver = self;
    v10.super_class = TSPLazyReferenceArray;
    v5 = [(TSPLazyReferenceArray *)&v10 init];
    if (v5)
    {
      v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:arrayCopy[1]];
      references = v5->_references;
      v5->_references = v6;
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = TSPLazyReferenceArray;
    v5 = [(TSPLazyReferenceArray *)&v9 initWithArray:arrayCopy];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPLazyReferenceArray copyWithZone:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPLazyReferenceArray.mm"];
  [currentHandler handleFailureInFunction:v4 file:v5 lineNumber:63 description:@"Use -mutableCopy instead of -copy"];

  return 0;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPLazyReferenceArray mutableCopyWithZone:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPLazyReferenceArray.mm"];
  [currentHandler handleFailureInFunction:v4 file:v5 lineNumber:70 description:@"Implement copying for TSPLazyReferenceArray"];

  return 0;
}

- (id)objectAtIndex:(unint64_t)index
{
  v3 = [(NSMutableArray *)self->_references objectAtIndex:index];
  object = [v3 object];

  return object;
}

- (id)objectsAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  v5 = [TSPLazyReferenceArray alloc];
  v6 = [(NSMutableArray *)self->_references objectsAtIndexes:indexesCopy];
  v7 = [(TSPLazyReferenceArray *)v5 initWithArray:v6];

  return v7;
}

- (id)subarrayWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = [TSPLazyReferenceArray alloc];
  v7 = [(NSMutableArray *)self->_references subarrayWithRange:location, length];
  v8 = [(TSPLazyReferenceArray *)v6 initWithArray:v7];

  return v8;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  var0 = state->var0;
  if (!state->var0)
  {
    state->var2 = &self->_mutations;
  }

  v10 = [(NSMutableArray *)self->_references count];
  if (v10 <= var0)
  {
    return 0;
  }

  if (v10 - var0 < count)
  {
    count = v10 - var0;
  }

  if (count)
  {
    v11 = var0;
    objectsCopy = objects;
    countCopy = count;
    do
    {
      v14 = [(NSMutableArray *)self->_references objectAtIndex:v11];
      object = [v14 object];
      *objectsCopy++ = object;

      ++v11;
      --countCopy;
    }

    while (countCopy);
  }

  state->var0 = count + var0;
  state->var1 = objects;
  return count;
}

- (void)addObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NSMutableArray *)self->_references addObject:objectCopy];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPLazyReferenceArray addObject:]"];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPLazyReferenceArray.mm"];
      [currentHandler handleFailureInFunction:v5 file:v6 lineNumber:131 description:@"Don't put non-TSPObjects in TSPLazyReferenceArray"];
    }

    references = self->_references;
    v8 = [TSPLazyReference referenceForObject:objectCopy];
    [(NSMutableArray *)references addObject:v8];
  }

  ++self->_mutations;
}

- (void)addObjectsFromArray:(id)array
{
  arrayCopy = array;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NSMutableArray *)self->_references addObjectsFromArray:arrayCopy[1]];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = TSPLazyReferenceArray;
    [(TSPLazyReferenceArray *)&v5 addObjectsFromArray:arrayCopy];
  }

  ++self->_mutations;
}

- (void)insertObject:(id)object atIndex:(unint64_t)index
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NSMutableArray *)self->_references insertObject:objectCopy atIndex:index];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPLazyReferenceArray insertObject:atIndex:]"];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPLazyReferenceArray.mm"];
      [currentHandler handleFailureInFunction:v7 file:v8 lineNumber:164 description:@"Don't put non-TSPObjects in TSPLazyReferenceArray"];
    }

    references = self->_references;
    v10 = [TSPLazyReference referenceForObject:objectCopy];
    [(NSMutableArray *)references insertObject:v10 atIndex:index];
  }

  ++self->_mutations;
}

- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NSMutableArray *)self->_references replaceObjectAtIndex:index withObject:objectCopy];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPLazyReferenceArray replaceObjectAtIndex:withObject:]"];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPLazyReferenceArray.mm"];
      [currentHandler handleFailureInFunction:v7 file:v8 lineNumber:199 description:@"Don't put non-TSPObjects in TSPLazyReferenceArray"];
    }

    references = self->_references;
    v10 = [TSPLazyReference referenceForObject:objectCopy];
    [(NSMutableArray *)references replaceObjectAtIndex:index withObject:v10];
  }

  ++self->_mutations;
}

- (void)replaceObjectsInRange:(_NSRange)range withObjectsFromArray:(id)array
{
  length = range.length;
  location = range.location;
  arrayCopy = array;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NSMutableArray *)self->_references replaceObjectsInRange:location withObjectsFromArray:length, arrayCopy[1]];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = TSPLazyReferenceArray;
    [(TSPLazyReferenceArray *)&v8 replaceObjectsInRange:location withObjectsFromArray:length, arrayCopy];
  }

  ++self->_mutations;
}

- (void)replaceObjectsInRange:(_NSRange)range withObjectsFromArray:(id)array range:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v7 = range.length;
  v8 = range.location;
  arrayCopy = array;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NSMutableArray *)self->_references replaceObjectsInRange:v8 withObjectsFromArray:v7 range:arrayCopy[1], location, length];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = TSPLazyReferenceArray;
    [(TSPLazyReferenceArray *)&v11 replaceObjectsInRange:v8 withObjectsFromArray:v7 range:arrayCopy, location, length];
  }

  ++self->_mutations;
}

@end