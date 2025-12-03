@interface SCDASafetyBlock
- (BOOL)invokeWithSignal:(int64_t)signal;
- (SCDASafetyBlock)initWithBlock:(id)block;
- (void)dealloc;
@end

@implementation SCDASafetyBlock

- (void)dealloc
{
  [(SCDASafetyBlock *)self invokeWithSignal:-1];
  v3.receiver = self;
  v3.super_class = SCDASafetyBlock;
  [(SCDASafetyBlock *)&v3 dealloc];
}

- (BOOL)invokeWithSignal:(int64_t)signal
{
  v3 = atomic_exchange(&self->_hasInvoked._Value, 1u);
  if ((v3 & 1) == 0)
  {
    block = self->_block;
    if (block)
    {
      block[2](block, signal);
      v6 = self->_block;
      self->_block = 0;
    }
  }

  return (v3 & 1) == 0;
}

- (SCDASafetyBlock)initWithBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = SCDASafetyBlock;
  v5 = [(SCDASafetyBlock *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x1E1270630](blockCopy);
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

@end