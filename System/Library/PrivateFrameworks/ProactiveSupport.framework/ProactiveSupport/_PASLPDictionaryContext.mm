@interface _PASLPDictionaryContext
- (BOOL)isEqual:(id)a3;
- (NSCache)enumerationCache;
- (_PASLPDictionaryContext)initWithStorage:(const unsigned int *)a3 count:(unint64_t)a4;
@end

@implementation _PASLPDictionaryContext

- (NSCache)enumerationCache
{
  WeakRetained = objc_loadWeakRetained(&self->_enumerationCache);

  return WeakRetained;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    LOBYTE(self) = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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

- (_PASLPDictionaryContext)initWithStorage:(const unsigned int *)a3 count:(unint64_t)a4
{
  if (!a3)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_PASLPReaderCommon.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"storage"}];
  }

  v10.receiver = self;
  v10.super_class = _PASLPDictionaryContext;
  result = [(_PASLPDictionaryContext *)&v10 init];
  if (result)
  {
    result->_storage = a3;
    result->_count = a4;
  }

  return result;
}

@end