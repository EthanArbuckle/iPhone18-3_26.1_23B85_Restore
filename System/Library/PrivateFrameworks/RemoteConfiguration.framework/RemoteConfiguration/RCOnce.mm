@interface RCOnce
- (BOOL)hasBeenTriggered;
- (BOOL)trigger;
- (RCOnce)initWithOptions:(unint64_t)a3;
- (void)executeOnce:(id)a3;
@end

@implementation RCOnce

- (RCOnce)initWithOptions:(unint64_t)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = RCOnce;
  v4 = [(RCOnce *)&v9 init];
  v5 = v4;
  if ((v3 & 1) != 0 && v4)
  {
    v6 = objc_alloc_init(RCMutexLock);
    lock = v5->_lock;
    v5->_lock = v6;
  }

  return v5;
}

- (void)executeOnce:(id)a3
{
  v4 = a3;
  [(RCMutexLock *)self->_lock lock];
  if (![(RCOnce *)self finished])
  {
    if (v4)
    {
      v4[2]();
    }

    [(RCOnce *)self setFinished:1];
  }

  [(RCMutexLock *)self->_lock unlock];
}

- (BOOL)trigger
{
  [(RCMutexLock *)self->_lock lock];
  v3 = [(RCOnce *)self finished];
  [(RCOnce *)self setFinished:1];
  [(RCMutexLock *)self->_lock unlock];
  return !v3;
}

- (BOOL)hasBeenTriggered
{
  [(RCMutexLock *)self->_lock lock];
  v3 = [(RCOnce *)self finished];
  [(RCMutexLock *)self->_lock unlock];
  return v3;
}

@end