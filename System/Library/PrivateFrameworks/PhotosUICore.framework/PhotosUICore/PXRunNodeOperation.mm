@interface PXRunNodeOperation
- (BOOL)_transitionToState:(unint64_t)a3;
- (BOOL)cancelIfAble;
- (BOOL)isReady;
- (PXRunNodeOperation)initWithRunNode:(id)a3;
- (unint64_t)state;
- (void)start;
@end

@implementation PXRunNodeOperation

- (BOOL)cancelIfAble
{
  [(PXRunNodeOperation *)self cancel];

  return [(PXRunNodeOperation *)self _transitionToState:2];
}

- (BOOL)_transitionToState:(unint64_t)a3
{
  [(PXRunNodeOperation *)self willChangeValueForKey:@"state"];
  v5 = [(PXRunNodeOperation *)self _stateLock];
  [v5 lock];

  state = self->_state;
  if (a3 == 3)
  {
    if (state == 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (a3 != 2)
    {
      if (a3 != 1 || state)
      {
        goto LABEL_5;
      }

LABEL_7:
      self->_state = a3;
      v7 = 1;
      goto LABEL_8;
    }

    if ((state & 0xFFFFFFFFFFFFFFFELL) != 2)
    {
      goto LABEL_7;
    }
  }

LABEL_5:
  v7 = 0;
LABEL_8:
  v8 = [(PXRunNodeOperation *)self _stateLock];
  [v8 unlock];

  [(PXRunNodeOperation *)self didChangeValueForKey:@"state"];
  return v7;
}

- (unint64_t)state
{
  v3 = [(PXRunNodeOperation *)self _stateLock];
  [v3 lock];

  state = self->_state;
  v5 = [(PXRunNodeOperation *)self _stateLock];
  [v5 unlock];

  return state;
}

- (BOOL)isReady
{
  v3 = [(PXRunNodeOperation *)self state];
  v5.receiver = self;
  v5.super_class = PXRunNodeOperation;
  result = [(PXRunNodeOperation *)&v5 isReady];
  if (v3)
  {
    return 0;
  }

  return result;
}

- (void)start
{
  v4 = [(PXRunNodeOperation *)self runNode];
  if ([(PXRunNodeOperation *)self _transitionToState:1])
  {
    v3 = [v4 delegate];
    if (objc_opt_respondsToSelector())
    {
      [v3 runNodeWillStartRunning:v4];
    }

    [v4 run];
  }
}

- (PXRunNodeOperation)initWithRunNode:(id)a3
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = PXRunNodeOperation;
  v7 = [(PXRunNodeOperation *)&v12 init];
  if (v7)
  {
    if (!v6)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:v7 file:@"PXRunNodeOperation.m" lineNumber:80 description:{@"Invalid parameter not satisfying: %@", @"runNode"}];
    }

    objc_storeStrong(&v7->_runNode, a3);
    v8 = objc_alloc_init(MEMORY[0x1E696AD10]);
    stateLock = v7->__stateLock;
    v7->__stateLock = v8;
  }

  return v7;
}

@end