@interface _PASLPArray
- (BOOL)isEqualToArray:(id)array;
- (_PASLPArray)initWithCoder:(id)coder;
- (_PASLPArray)initWithLazyPlistReader:(id)reader context:(id)context;
- (_PASLPArray)initWithObjects:(const void *)objects count:(unint64_t)count;
- (id)_pas_overrideUnlazyArray;
- (unint64_t)count;
- (void)getObjects:(id *)objects range:(_NSRange)range;
@end

@implementation _PASLPArray

- (unint64_t)count
{
  context = self->_context;
  if (context)
  {
    return context->_count;
  }

  else
  {
    return 0;
  }
}

- (id)_pas_overrideUnlazyArray
{
  reader = self->_reader;
  if (objc_opt_respondsToSelector())
  {
    DeepCopy = [(_PASLPReaderProtocol *)self->_reader unlazyCopyForArrayWithContext:self->_context];
  }

  else
  {
    DeepCopy = CFPropertyListCreateDeepCopy(0, self, 0);
  }

  return DeepCopy;
}

- (void)getObjects:(id *)objects range:(_NSRange)range
{
  context = self->_context;
  if (context)
  {
    context = context->_count;
  }

  if (range.location + range.length > context)
  {
    v7.receiver = self;
    v7.super_class = _PASLPArray;
    [(_PASLPArray *)&v7 getObjects:objects range:?];
    __break(1u);
  }

  else if (range.length)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __32___PASLPArray_getObjects_range___block_invoke;
    v5[3] = &unk_1E77F24F0;
    v5[4] = self;
    v5[5] = objects;
    rangeCopy = range;
    pthread_mutex_lock(&runWithGlobalPLPLock_lock);
    __32___PASLPArray_getObjects_range___block_invoke(v5);
    pthread_mutex_unlock(&runWithGlobalPLPLock_lock);
  }
}

- (BOOL)isEqualToArray:(id)array
{
  arrayCopy = array;
  if (arrayCopy == self || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_reader == arrayCopy->_reader && [(_PASLPArrayContext *)self->_context isEqual:arrayCopy->_context])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _PASLPArray;
    v5 = [(_PASLazyArrayBase *)&v7 isEqualToArray:arrayCopy];
  }

  return v5;
}

- (_PASLPArray)initWithCoder:(id)coder
{
  result = coder;
  __break(1u);
  return result;
}

- (_PASLPArray)initWithObjects:(const void *)objects count:(unint64_t)count
{
  v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:objects count:count];

  return v5;
}

- (_PASLPArray)initWithLazyPlistReader:(id)reader context:(id)context
{
  readerCopy = reader;
  contextCopy = context;
  v10 = contextCopy;
  if (readerCopy)
  {
    if (contextCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASLPArray.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"reader"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_PASLPArray.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"context"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = _PASLPArray;
  v11 = [(_PASLPArray *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_reader, reader);
    objc_storeStrong(&v12->_context, context);
  }

  return v12;
}

@end