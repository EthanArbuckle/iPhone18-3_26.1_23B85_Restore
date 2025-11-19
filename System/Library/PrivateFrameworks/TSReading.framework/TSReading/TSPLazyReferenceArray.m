@interface TSPLazyReferenceArray
- (TSPLazyReferenceArray)init;
- (TSPLazyReferenceArray)initWithArray:(id)a3;
- (TSPLazyReferenceArray)initWithCapacity:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)objectAtIndex:(unint64_t)a3;
- (id)objectsAtIndexes:(id)a3;
- (id)subarrayWithRange:(_NSRange)a3;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)addObject:(id)a3;
- (void)addObjectsFromArray:(id)a3;
- (void)insertObject:(id)a3 atIndex:(unint64_t)a4;
- (void)replaceObjectAtIndex:(unint64_t)a3 withObject:(id)a4;
- (void)replaceObjectsInRange:(_NSRange)a3 withObjectsFromArray:(id)a4;
- (void)replaceObjectsInRange:(_NSRange)a3 withObjectsFromArray:(id)a4 range:(_NSRange)a5;
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

- (TSPLazyReferenceArray)initWithCapacity:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = TSPLazyReferenceArray;
  v4 = [(TSPLazyReferenceArray *)&v8 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a3];
    references = v4->_references;
    v4->_references = v5;
  }

  return v4;
}

- (TSPLazyReferenceArray)initWithArray:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10.receiver = self;
    v10.super_class = TSPLazyReferenceArray;
    v5 = [(TSPLazyReferenceArray *)&v10 init];
    if (v5)
    {
      v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v4[1]];
      references = v5->_references;
      v5->_references = v6;
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = TSPLazyReferenceArray;
    v5 = [(TSPLazyReferenceArray *)&v9 initWithArray:v4];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPLazyReferenceArray copyWithZone:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPLazyReferenceArray.mm"];
  [v3 handleFailureInFunction:v4 file:v5 lineNumber:63 description:@"Use -mutableCopy instead of -copy"];

  return 0;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPLazyReferenceArray mutableCopyWithZone:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPLazyReferenceArray.mm"];
  [v3 handleFailureInFunction:v4 file:v5 lineNumber:70 description:@"Implement copying for TSPLazyReferenceArray"];

  return 0;
}

- (id)objectAtIndex:(unint64_t)a3
{
  v3 = [(NSMutableArray *)self->_references objectAtIndex:a3];
  v4 = [v3 object];

  return v4;
}

- (id)objectsAtIndexes:(id)a3
{
  v4 = a3;
  v5 = [TSPLazyReferenceArray alloc];
  v6 = [(NSMutableArray *)self->_references objectsAtIndexes:v4];
  v7 = [(TSPLazyReferenceArray *)v5 initWithArray:v6];

  return v7;
}

- (id)subarrayWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [TSPLazyReferenceArray alloc];
  v7 = [(NSMutableArray *)self->_references subarrayWithRange:location, length];
  v8 = [(TSPLazyReferenceArray *)v6 initWithArray:v7];

  return v8;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  var0 = a3->var0;
  if (!a3->var0)
  {
    a3->var2 = &self->_mutations;
  }

  v10 = [(NSMutableArray *)self->_references count];
  if (v10 <= var0)
  {
    return 0;
  }

  if (v10 - var0 < a5)
  {
    a5 = v10 - var0;
  }

  if (a5)
  {
    v11 = var0;
    v12 = a4;
    v13 = a5;
    do
    {
      v14 = [(NSMutableArray *)self->_references objectAtIndex:v11];
      v15 = [v14 object];
      *v12++ = v15;

      ++v11;
      --v13;
    }

    while (v13);
  }

  a3->var0 = a5 + var0;
  a3->var1 = a4;
  return a5;
}

- (void)addObject:(id)a3
{
  v9 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NSMutableArray *)self->_references addObject:v9];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v4 = [MEMORY[0x277D6C290] currentHandler];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPLazyReferenceArray addObject:]"];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPLazyReferenceArray.mm"];
      [v4 handleFailureInFunction:v5 file:v6 lineNumber:131 description:@"Don't put non-TSPObjects in TSPLazyReferenceArray"];
    }

    references = self->_references;
    v8 = [TSPLazyReference referenceForObject:v9];
    [(NSMutableArray *)references addObject:v8];
  }

  ++self->_mutations;
}

- (void)addObjectsFromArray:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NSMutableArray *)self->_references addObjectsFromArray:v4[1]];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = TSPLazyReferenceArray;
    [(TSPLazyReferenceArray *)&v5 addObjectsFromArray:v4];
  }

  ++self->_mutations;
}

- (void)insertObject:(id)a3 atIndex:(unint64_t)a4
{
  v11 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NSMutableArray *)self->_references insertObject:v11 atIndex:a4];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = [MEMORY[0x277D6C290] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPLazyReferenceArray insertObject:atIndex:]"];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPLazyReferenceArray.mm"];
      [v6 handleFailureInFunction:v7 file:v8 lineNumber:164 description:@"Don't put non-TSPObjects in TSPLazyReferenceArray"];
    }

    references = self->_references;
    v10 = [TSPLazyReference referenceForObject:v11];
    [(NSMutableArray *)references insertObject:v10 atIndex:a4];
  }

  ++self->_mutations;
}

- (void)replaceObjectAtIndex:(unint64_t)a3 withObject:(id)a4
{
  v11 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NSMutableArray *)self->_references replaceObjectAtIndex:a3 withObject:v11];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = [MEMORY[0x277D6C290] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPLazyReferenceArray replaceObjectAtIndex:withObject:]"];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPLazyReferenceArray.mm"];
      [v6 handleFailureInFunction:v7 file:v8 lineNumber:199 description:@"Don't put non-TSPObjects in TSPLazyReferenceArray"];
    }

    references = self->_references;
    v10 = [TSPLazyReference referenceForObject:v11];
    [(NSMutableArray *)references replaceObjectAtIndex:a3 withObject:v10];
  }

  ++self->_mutations;
}

- (void)replaceObjectsInRange:(_NSRange)a3 withObjectsFromArray:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NSMutableArray *)self->_references replaceObjectsInRange:location withObjectsFromArray:length, v7[1]];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = TSPLazyReferenceArray;
    [(TSPLazyReferenceArray *)&v8 replaceObjectsInRange:location withObjectsFromArray:length, v7];
  }

  ++self->_mutations;
}

- (void)replaceObjectsInRange:(_NSRange)a3 withObjectsFromArray:(id)a4 range:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v7 = a3.length;
  v8 = a3.location;
  v10 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NSMutableArray *)self->_references replaceObjectsInRange:v8 withObjectsFromArray:v7 range:v10[1], location, length];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = TSPLazyReferenceArray;
    [(TSPLazyReferenceArray *)&v11 replaceObjectsInRange:v8 withObjectsFromArray:v7 range:v10, location, length];
  }

  ++self->_mutations;
}

@end