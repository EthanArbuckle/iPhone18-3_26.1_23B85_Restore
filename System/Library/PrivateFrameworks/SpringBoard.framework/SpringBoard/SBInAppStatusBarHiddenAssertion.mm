@interface SBInAppStatusBarHiddenAssertion
- (SBInAppStatusBarHiddenAssertion)initWithIdentifier:(id)identifier forReason:(id)reason invalidationBlock:(id)block;
- (void)dealloc;
- (void)invalidateWithAnimation:(BOOL)animation;
@end

@implementation SBInAppStatusBarHiddenAssertion

- (SBInAppStatusBarHiddenAssertion)initWithIdentifier:(id)identifier forReason:(id)reason invalidationBlock:(id)block
{
  identifierCopy = identifier;
  reasonCopy = reason;
  blockCopy = block;
  if (identifierCopy)
  {
    if (reasonCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    [SBInAppStatusBarHiddenAssertion initWithIdentifier:a2 forReason:self invalidationBlock:?];
    if (blockCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [SBInAppStatusBarHiddenAssertion initWithIdentifier:a2 forReason:self invalidationBlock:?];
  if (!reasonCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (blockCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  [SBInAppStatusBarHiddenAssertion initWithIdentifier:a2 forReason:self invalidationBlock:?];
LABEL_4:
  v20.receiver = self;
  v20.super_class = SBInAppStatusBarHiddenAssertion;
  v12 = [(SBInAppStatusBarHiddenAssertion *)&v20 init];
  if (v12)
  {
    v13 = [identifierCopy copy];
    identifier = v12->_identifier;
    v12->_identifier = v13;

    v15 = [reasonCopy copy];
    reason = v12->_reason;
    v12->_reason = v15;

    v17 = [blockCopy copy];
    invalidationBlock = v12->_invalidationBlock;
    v12->_invalidationBlock = v17;
  }

  return v12;
}

- (void)dealloc
{
  [(SBInAppStatusBarHiddenAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = SBInAppStatusBarHiddenAssertion;
  [(SBInAppStatusBarHiddenAssertion *)&v3 dealloc];
}

- (void)invalidateWithAnimation:(BOOL)animation
{
  invalidationBlock = self->_invalidationBlock;
  if (invalidationBlock)
  {
    invalidationBlock[2](invalidationBlock, self, animation);
    v5 = self->_invalidationBlock;
    self->_invalidationBlock = 0;
  }
}

- (void)initWithIdentifier:(uint64_t)a1 forReason:(uint64_t)a2 invalidationBlock:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBInAppStatusBarHiddenAssertion.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
}

- (void)initWithIdentifier:(uint64_t)a1 forReason:(uint64_t)a2 invalidationBlock:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBInAppStatusBarHiddenAssertion.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
}

- (void)initWithIdentifier:(uint64_t)a1 forReason:(uint64_t)a2 invalidationBlock:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBInAppStatusBarHiddenAssertion.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"invalidationBlock"}];
}

@end