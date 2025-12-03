@interface TACircularBuffer
- (BOOL)isEqual:(id)equal;
- (TACircularBuffer)initWithCapacity:(unint64_t)capacity;
- (TACircularBuffer)initWithCoder:(id)coder;
- (id)add:(id)add;
- (id)bufferCopy;
- (id)description;
- (id)dropOldestElement;
- (id)firstObject;
- (id)firstObjectMatchingTest:(id)test withOptions:(unint64_t)options;
- (id)getObjectAtIndex:(unint64_t)index;
- (id)insert:(id)insert at:(unint64_t)at;
- (id)lastObject;
- (id)removeLastObject;
- (id)removeUntilFirstPredicateFail:(id)fail;
- (id)removeWithPredicate:(id)predicate;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TACircularBuffer

- (id)lastObject
{
  lastObject = [(NSMutableArray *)self->_buffer count];
  if (lastObject)
  {
    lastObject = [(NSMutableArray *)self->_buffer lastObject];
  }

  return lastObject;
}

- (id)firstObject
{
  firstObject = [(NSMutableArray *)self->_buffer count];
  if (firstObject)
  {
    firstObject = [(NSMutableArray *)self->_buffer firstObject];
  }

  return firstObject;
}

- (id)bufferCopy
{
  v2 = [(NSMutableArray *)self->_buffer copy];

  return v2;
}

- (id)dropOldestElement
{
  if ([(NSMutableArray *)self->_buffer count])
  {
    v3 = [(NSMutableArray *)self->_buffer objectAtIndexedSubscript:0];
    [(NSMutableArray *)self->_buffer removeObjectAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (TACircularBuffer)initWithCapacity:(unint64_t)capacity
{
  v8.receiver = self;
  v8.super_class = TACircularBuffer;
  v4 = [(TACircularBuffer *)&v8 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    buffer = v4->_buffer;
    v4->_buffer = v5;

    v4->_capacity = capacity;
  }

  return v4;
}

- (id)add:(id)add
{
  addCopy = add;
  if (self->_capacity && ([(NSMutableArray *)self->_buffer addObject:addCopy], [(NSMutableArray *)self->_buffer count]> self->_capacity))
  {
    dropOldestElement = [(TACircularBuffer *)self dropOldestElement];
  }

  else
  {
    dropOldestElement = 0;
  }

  return dropOldestElement;
}

- (id)insert:(id)insert at:(unint64_t)at
{
  if (self->_capacity <= at)
  {
    dropOldestElement = 0;
  }

  else
  {
    [(NSMutableArray *)self->_buffer insertObject:insert atIndex:?];
    if ([(NSMutableArray *)self->_buffer count]<= self->_capacity)
    {
      dropOldestElement = 0;
    }

    else
    {
      dropOldestElement = [(TACircularBuffer *)self dropOldestElement];
    }
  }

  return dropOldestElement;
}

- (id)firstObjectMatchingTest:(id)test withOptions:(unint64_t)options
{
  v5 = [(NSMutableArray *)self->_buffer indexOfObjectWithOptions:options passingTest:test];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(NSMutableArray *)self->_buffer objectAtIndexedSubscript:v5];
  }

  return v6;
}

- (id)removeWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  buffer = self->_buffer;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __40__TACircularBuffer_removeWithPredicate___block_invoke;
  v15[3] = &unk_279DD1F00;
  v16 = predicateCopy;
  v6 = predicateCopy;
  v7 = [(NSMutableArray *)buffer indexesOfObjectsPassingTest:v15];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __40__TACircularBuffer_removeWithPredicate___block_invoke_2;
  v12[3] = &unk_279DD1F28;
  v13 = v8;
  selfCopy = self;
  v9 = v8;
  [v7 enumerateIndexesUsingBlock:v12];
  [(NSMutableArray *)self->_buffer removeObjectsAtIndexes:v7];
  v10 = [v9 copy];

  return v10;
}

void __40__TACircularBuffer_removeWithPredicate___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 16) objectAtIndexedSubscript:a2];
  [v2 addObject:v3];
}

- (id)removeUntilFirstPredicateFail:(id)fail
{
  failCopy = fail;
  buffer = self->_buffer;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50__TACircularBuffer_removeUntilFirstPredicateFail___block_invoke;
  v12[3] = &unk_279DD1F00;
  v6 = failCopy;
  v13 = v6;
  v7 = [(NSMutableArray *)buffer indexOfObjectPassingTest:v12];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(NSMutableArray *)self->_buffer count];
  }

  for (i = objc_alloc_init(MEMORY[0x277CBEB18]); v7; --v7)
  {
    dropOldestElement = [(TACircularBuffer *)self dropOldestElement];
    if (dropOldestElement)
    {
      [i addObject:dropOldestElement];
    }
  }

  v10 = [i copy];

  return v10;
}

- (id)removeLastObject
{
  if ([(NSMutableArray *)self->_buffer count])
  {
    lastObject = [(NSMutableArray *)self->_buffer lastObject];
    [(NSMutableArray *)self->_buffer removeLastObject];
  }

  else
  {
    lastObject = 0;
  }

  return lastObject;
}

- (id)getObjectAtIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_buffer count]<= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_buffer objectAtIndexedSubscript:index];
  }

  return v5;
}

- (unint64_t)hash
{
  buffer = [(TACircularBuffer *)self buffer];
  v4 = [buffer hash];
  capacity = [(TACircularBuffer *)self capacity];

  return capacity ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = equalCopy;
    buffer = [(TACircularBuffer *)self buffer];
    buffer2 = [v7 buffer];
    if (buffer == buffer2 || (-[TACircularBuffer buffer](self, "buffer"), v3 = objc_claimAutoreleasedReturnValue(), [v7 buffer], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqual:", v4)))
    {
      capacity = [(TACircularBuffer *)self capacity];
      v10 = capacity == [v7 capacity];
      if (buffer == buffer2)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_8;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  buffer = [(TACircularBuffer *)self buffer];
  v6 = [v3 stringWithFormat:@"<%@: %p buffer: '%@'; capacity: '%lu'>", v4, self, buffer, -[TACircularBuffer capacity](self, "capacity")];;

  return v6;
}

- (TACircularBuffer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TACircularBuffer;
  v5 = [(TACircularBuffer *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"Buffer"];
    buffer = v5->_buffer;
    v5->_buffer = v6;

    v5->_capacity = [coderCopy decodeIntegerForKey:@"Capacity"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  buffer = self->_buffer;
  coderCopy = coder;
  [coderCopy encodeObject:buffer forKey:@"Buffer"];
  [coderCopy encodeInteger:self->_capacity forKey:@"Capacity"];
}

@end