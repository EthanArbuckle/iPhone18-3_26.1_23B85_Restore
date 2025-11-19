@interface TACircularBuffer
- (BOOL)isEqual:(id)a3;
- (TACircularBuffer)initWithCapacity:(unint64_t)a3;
- (TACircularBuffer)initWithCoder:(id)a3;
- (id)add:(id)a3;
- (id)bufferCopy;
- (id)description;
- (id)dropOldestElement;
- (id)firstObject;
- (id)firstObjectMatchingTest:(id)a3 withOptions:(unint64_t)a4;
- (id)getObjectAtIndex:(unint64_t)a3;
- (id)insert:(id)a3 at:(unint64_t)a4;
- (id)lastObject;
- (id)removeLastObject;
- (id)removeUntilFirstPredicateFail:(id)a3;
- (id)removeWithPredicate:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TACircularBuffer

- (id)lastObject
{
  v3 = [(NSMutableArray *)self->_buffer count];
  if (v3)
  {
    v3 = [(NSMutableArray *)self->_buffer lastObject];
  }

  return v3;
}

- (id)firstObject
{
  v3 = [(NSMutableArray *)self->_buffer count];
  if (v3)
  {
    v3 = [(NSMutableArray *)self->_buffer firstObject];
  }

  return v3;
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

- (TACircularBuffer)initWithCapacity:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = TACircularBuffer;
  v4 = [(TACircularBuffer *)&v8 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    buffer = v4->_buffer;
    v4->_buffer = v5;

    v4->_capacity = a3;
  }

  return v4;
}

- (id)add:(id)a3
{
  v4 = a3;
  if (self->_capacity && ([(NSMutableArray *)self->_buffer addObject:v4], [(NSMutableArray *)self->_buffer count]> self->_capacity))
  {
    v5 = [(TACircularBuffer *)self dropOldestElement];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)insert:(id)a3 at:(unint64_t)a4
{
  if (self->_capacity <= a4)
  {
    v6 = 0;
  }

  else
  {
    [(NSMutableArray *)self->_buffer insertObject:a3 atIndex:?];
    if ([(NSMutableArray *)self->_buffer count]<= self->_capacity)
    {
      v6 = 0;
    }

    else
    {
      v6 = [(TACircularBuffer *)self dropOldestElement];
    }
  }

  return v6;
}

- (id)firstObjectMatchingTest:(id)a3 withOptions:(unint64_t)a4
{
  v5 = [(NSMutableArray *)self->_buffer indexOfObjectWithOptions:a4 passingTest:a3];
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

- (id)removeWithPredicate:(id)a3
{
  v4 = a3;
  buffer = self->_buffer;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __40__TACircularBuffer_removeWithPredicate___block_invoke;
  v15[3] = &unk_279DD1F00;
  v16 = v4;
  v6 = v4;
  v7 = [(NSMutableArray *)buffer indexesOfObjectsPassingTest:v15];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __40__TACircularBuffer_removeWithPredicate___block_invoke_2;
  v12[3] = &unk_279DD1F28;
  v13 = v8;
  v14 = self;
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

- (id)removeUntilFirstPredicateFail:(id)a3
{
  v4 = a3;
  buffer = self->_buffer;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50__TACircularBuffer_removeUntilFirstPredicateFail___block_invoke;
  v12[3] = &unk_279DD1F00;
  v6 = v4;
  v13 = v6;
  v7 = [(NSMutableArray *)buffer indexOfObjectPassingTest:v12];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(NSMutableArray *)self->_buffer count];
  }

  for (i = objc_alloc_init(MEMORY[0x277CBEB18]); v7; --v7)
  {
    v9 = [(TACircularBuffer *)self dropOldestElement];
    if (v9)
    {
      [i addObject:v9];
    }
  }

  v10 = [i copy];

  return v10;
}

- (id)removeLastObject
{
  if ([(NSMutableArray *)self->_buffer count])
  {
    v3 = [(NSMutableArray *)self->_buffer lastObject];
    [(NSMutableArray *)self->_buffer removeLastObject];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)getObjectAtIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_buffer count]<= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_buffer objectAtIndexedSubscript:a3];
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(TACircularBuffer *)self buffer];
  v4 = [v3 hash];
  v5 = [(TACircularBuffer *)self capacity];

  return v5 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [(TACircularBuffer *)self buffer];
    v9 = [v7 buffer];
    if (v8 == v9 || (-[TACircularBuffer buffer](self, "buffer"), v3 = objc_claimAutoreleasedReturnValue(), [v7 buffer], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqual:", v4)))
    {
      v11 = [(TACircularBuffer *)self capacity];
      v10 = v11 == [v7 capacity];
      if (v8 == v9)
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
  v5 = [(TACircularBuffer *)self buffer];
  v6 = [v3 stringWithFormat:@"<%@: %p buffer: '%@'; capacity: '%lu'>", v4, self, v5, -[TACircularBuffer capacity](self, "capacity")];;

  return v6;
}

- (TACircularBuffer)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TACircularBuffer;
  v5 = [(TACircularBuffer *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"Buffer"];
    buffer = v5->_buffer;
    v5->_buffer = v6;

    v5->_capacity = [v4 decodeIntegerForKey:@"Capacity"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  buffer = self->_buffer;
  v5 = a3;
  [v5 encodeObject:buffer forKey:@"Buffer"];
  [v5 encodeInteger:self->_capacity forKey:@"Capacity"];
}

@end