@interface REBlockSentinel
- (REBlockSentinel)initWithFailureBlock:(id)block;
- (void)dealloc;
@end

@implementation REBlockSentinel

- (REBlockSentinel)initWithFailureBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = REBlockSentinel;
  v5 = [(REBlockSentinel *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x22AABC5E0](blockCopy);
    failureBlock = v5->_failureBlock;
    v5->_failureBlock = v6;

    [(REBlockSentinel *)v5 setCompleted:0];
  }

  return v5;
}

- (void)dealloc
{
  if (![(REBlockSentinel *)self isCompleted])
  {
    failureBlock = self->_failureBlock;
    if (failureBlock)
    {
      failureBlock[2]();
    }
  }

  v4.receiver = self;
  v4.super_class = REBlockSentinel;
  [(REBlockSentinel *)&v4 dealloc];
}

@end