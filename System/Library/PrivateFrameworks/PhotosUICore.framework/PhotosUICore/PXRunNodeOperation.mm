@interface PXRunNodeOperation
- (BOOL)_transitionToState:(unint64_t)state;
- (BOOL)cancelIfAble;
- (BOOL)isReady;
- (PXRunNodeOperation)initWithRunNode:(id)node;
- (unint64_t)state;
- (void)start;
@end

@implementation PXRunNodeOperation

- (BOOL)cancelIfAble
{
  [(PXRunNodeOperation *)self cancel];

  return [(PXRunNodeOperation *)self _transitionToState:2];
}

- (BOOL)_transitionToState:(unint64_t)state
{
  [(PXRunNodeOperation *)self willChangeValueForKey:@"state"];
  _stateLock = [(PXRunNodeOperation *)self _stateLock];
  [_stateLock lock];

  state = self->_state;
  if (state == 3)
  {
    if (state == 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (state != 2)
    {
      if (state != 1 || state)
      {
        goto LABEL_5;
      }

LABEL_7:
      self->_state = state;
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
  _stateLock2 = [(PXRunNodeOperation *)self _stateLock];
  [_stateLock2 unlock];

  [(PXRunNodeOperation *)self didChangeValueForKey:@"state"];
  return v7;
}

- (unint64_t)state
{
  _stateLock = [(PXRunNodeOperation *)self _stateLock];
  [_stateLock lock];

  state = self->_state;
  _stateLock2 = [(PXRunNodeOperation *)self _stateLock];
  [_stateLock2 unlock];

  return state;
}

- (BOOL)isReady
{
  state = [(PXRunNodeOperation *)self state];
  v5.receiver = self;
  v5.super_class = PXRunNodeOperation;
  result = [(PXRunNodeOperation *)&v5 isReady];
  if (state)
  {
    return 0;
  }

  return result;
}

- (void)start
{
  runNode = [(PXRunNodeOperation *)self runNode];
  if ([(PXRunNodeOperation *)self _transitionToState:1])
  {
    delegate = [runNode delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate runNodeWillStartRunning:runNode];
    }

    [runNode run];
  }
}

- (PXRunNodeOperation)initWithRunNode:(id)node
{
  nodeCopy = node;
  v12.receiver = self;
  v12.super_class = PXRunNodeOperation;
  v7 = [(PXRunNodeOperation *)&v12 init];
  if (v7)
  {
    if (!nodeCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v7 file:@"PXRunNodeOperation.m" lineNumber:80 description:{@"Invalid parameter not satisfying: %@", @"runNode"}];
    }

    objc_storeStrong(&v7->_runNode, node);
    v8 = objc_alloc_init(MEMORY[0x1E696AD10]);
    stateLock = v7->__stateLock;
    v7->__stateLock = v8;
  }

  return v7;
}

@end