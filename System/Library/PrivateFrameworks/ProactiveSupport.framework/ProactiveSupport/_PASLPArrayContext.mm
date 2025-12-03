@interface _PASLPArrayContext
- (BOOL)isEqual:(id)equal;
- (_PASLPArrayContext)initWithStorage:(const unsigned int *)storage count:(unint64_t)count;
@end

@implementation _PASLPArrayContext

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    LOBYTE(self) = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    if (self)
    {
      LOBYTE(self) = self->_storage == v6->_storage && self->_count == v6->_count;
    }
  }

  else
  {
    LOBYTE(self) = 0;
  }

  return self;
}

- (_PASLPArrayContext)initWithStorage:(const unsigned int *)storage count:(unint64_t)count
{
  if (!storage)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASLPReaderCommon.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"storage"}];
  }

  v10.receiver = self;
  v10.super_class = _PASLPArrayContext;
  result = [(_PASLPArrayContext *)&v10 init];
  if (result)
  {
    result->_storage = storage;
    result->_count = count;
  }

  return result;
}

@end