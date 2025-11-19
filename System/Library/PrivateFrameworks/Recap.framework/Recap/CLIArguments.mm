@interface CLIArguments
- (id)consumeUpToIndex:(int64_t)a3;
- (id)objectAtIndexedSubscript:(unint64_t)a3;
@end

@implementation CLIArguments

- (id)objectAtIndexedSubscript:(unint64_t)a3
{
  if ([(NSArray *)self->_arguments count]<= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_arguments objectAtIndexedSubscript:a3];
  }

  return v5;
}

- (id)consumeUpToIndex:(int64_t)a3
{
  v5 = [(NSArray *)self->_arguments count];
  if (v5 <= a3)
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v6 = [(NSArray *)self->_arguments subarrayWithRange:a3, v5 - a3];
  }

  return v6;
}

@end