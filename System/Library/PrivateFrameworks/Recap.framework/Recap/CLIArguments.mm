@interface CLIArguments
- (id)consumeUpToIndex:(int64_t)index;
- (id)objectAtIndexedSubscript:(unint64_t)subscript;
@end

@implementation CLIArguments

- (id)objectAtIndexedSubscript:(unint64_t)subscript
{
  if ([(NSArray *)self->_arguments count]<= subscript)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_arguments objectAtIndexedSubscript:subscript];
  }

  return v5;
}

- (id)consumeUpToIndex:(int64_t)index
{
  v5 = [(NSArray *)self->_arguments count];
  if (v5 <= index)
  {
    index = MEMORY[0x277CBEBF8];
  }

  else
  {
    index = [(NSArray *)self->_arguments subarrayWithRange:index, v5 - index];
  }

  return index;
}

@end