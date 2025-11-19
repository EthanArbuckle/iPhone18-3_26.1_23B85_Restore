@interface _PASLPArray
- (BOOL)isEqualToArray:(id)a3;
- (_PASLPArray)initWithCoder:(id)a3;
- (_PASLPArray)initWithLazyPlistReader:(id)a3 context:(id)a4;
- (_PASLPArray)initWithObjects:(const void *)a3 count:(unint64_t)a4;
- (id)_pas_overrideUnlazyArray;
- (unint64_t)count;
- (void)getObjects:(id *)a3 range:(_NSRange)a4;
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

- (void)getObjects:(id *)a3 range:(_NSRange)a4
{
  context = self->_context;
  if (context)
  {
    context = context->_count;
  }

  if (a4.location + a4.length > context)
  {
    v7.receiver = self;
    v7.super_class = _PASLPArray;
    [(_PASLPArray *)&v7 getObjects:a3 range:?];
    __break(1u);
  }

  else if (a4.length)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __32___PASLPArray_getObjects_range___block_invoke;
    v5[3] = &unk_1E77F24F0;
    v5[4] = self;
    v5[5] = a3;
    v6 = a4;
    pthread_mutex_lock(&runWithGlobalPLPLock_lock);
    __32___PASLPArray_getObjects_range___block_invoke(v5);
    pthread_mutex_unlock(&runWithGlobalPLPLock_lock);
  }
}

- (BOOL)isEqualToArray:(id)a3
{
  v4 = a3;
  if (v4 == self || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_reader == v4->_reader && [(_PASLPArrayContext *)self->_context isEqual:v4->_context])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _PASLPArray;
    v5 = [(_PASLazyArrayBase *)&v7 isEqualToArray:v4];
  }

  return v5;
}

- (_PASLPArray)initWithCoder:(id)a3
{
  result = a3;
  __break(1u);
  return result;
}

- (_PASLPArray)initWithObjects:(const void *)a3 count:(unint64_t)a4
{
  v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:a3 count:a4];

  return v5;
}

- (_PASLPArray)initWithLazyPlistReader:(id)a3 context:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"_PASLPArray.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"reader"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"_PASLPArray.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"context"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = _PASLPArray;
  v11 = [(_PASLPArray *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_reader, a3);
    objc_storeStrong(&v12->_context, a4);
  }

  return v12;
}

@end