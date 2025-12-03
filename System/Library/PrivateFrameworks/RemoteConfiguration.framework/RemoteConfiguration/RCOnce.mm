@interface RCOnce
- (BOOL)hasBeenTriggered;
- (BOOL)trigger;
- (RCOnce)initWithOptions:(unint64_t)options;
- (void)executeOnce:(id)once;
@end

@implementation RCOnce

- (RCOnce)initWithOptions:(unint64_t)options
{
  optionsCopy = options;
  v9.receiver = self;
  v9.super_class = RCOnce;
  v4 = [(RCOnce *)&v9 init];
  v5 = v4;
  if ((optionsCopy & 1) != 0 && v4)
  {
    v6 = objc_alloc_init(RCMutexLock);
    lock = v5->_lock;
    v5->_lock = v6;
  }

  return v5;
}

- (void)executeOnce:(id)once
{
  onceCopy = once;
  [(RCMutexLock *)self->_lock lock];
  if (![(RCOnce *)self finished])
  {
    if (onceCopy)
    {
      onceCopy[2]();
    }

    [(RCOnce *)self setFinished:1];
  }

  [(RCMutexLock *)self->_lock unlock];
}

- (BOOL)trigger
{
  [(RCMutexLock *)self->_lock lock];
  finished = [(RCOnce *)self finished];
  [(RCOnce *)self setFinished:1];
  [(RCMutexLock *)self->_lock unlock];
  return !finished;
}

- (BOOL)hasBeenTriggered
{
  [(RCMutexLock *)self->_lock lock];
  finished = [(RCOnce *)self finished];
  [(RCMutexLock *)self->_lock unlock];
  return finished;
}

@end