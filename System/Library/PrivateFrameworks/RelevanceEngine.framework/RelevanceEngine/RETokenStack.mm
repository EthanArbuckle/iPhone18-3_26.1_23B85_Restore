@interface RETokenStack
- (BOOL)isEmpty;
- (RETokenStack)initWithTokenBuffer:(id)buffer;
- (void)consume;
- (void)next;
- (void)pop;
- (void)push;
@end

@implementation RETokenStack

- (RETokenStack)initWithTokenBuffer:(id)buffer
{
  bufferCopy = buffer;
  v15.receiver = self;
  v15.super_class = RETokenStack;
  v6 = [(RETokenStack *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_buffer, buffer);
    v7->_position = 0;
    array = [MEMORY[0x277CBEB18] array];
    tokenStack = v7->_tokenStack;
    v7->_tokenStack = array;

    array2 = [MEMORY[0x277CBEB18] array];
    positionStack = v7->_positionStack;
    v7->_positionStack = array2;

    if (([(RETokenBuffer *)v7->_buffer isEmpty]& 1) == 0)
    {
      v12 = v7->_tokenStack;
      currentToken = [(RETokenBuffer *)v7->_buffer currentToken];
      [(NSMutableArray *)v12 addObject:currentToken];
    }
  }

  return v7;
}

- (BOOL)isEmpty
{
  if ([(NSMutableArray *)self->_tokenStack count]- 1 > self->_position)
  {
    return 0;
  }

  buffer = self->_buffer;

  return [(RETokenBuffer *)buffer isEmpty];
}

- (void)next
{
  if (![(RETokenStack *)self isEmpty])
  {
    position = self->_position;
    if (position >= [(NSMutableArray *)self->_tokenStack count]- 1)
    {
      [(RETokenBuffer *)self->_buffer next];
      tokenStack = self->_tokenStack;
      currentToken = [(RETokenBuffer *)self->_buffer currentToken];
      [(NSMutableArray *)tokenStack addObject:currentToken];
    }

    ++self->_position;
  }
}

- (void)consume
{
  if ([(NSMutableArray *)self->_positionStack count])
  {
    positionStack = self->_positionStack;

    [(NSMutableArray *)positionStack removeLastObject];
  }
}

- (void)pop
{
  if ([(NSMutableArray *)self->_positionStack count])
  {
    lastObject = [(NSMutableArray *)self->_positionStack lastObject];
    self->_position = [lastObject unsignedIntegerValue];

    positionStack = self->_positionStack;

    [(NSMutableArray *)positionStack removeLastObject];
  }
}

- (void)push
{
  positionStack = self->_positionStack;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_position];
  [(NSMutableArray *)positionStack addObject:v3];
}

@end