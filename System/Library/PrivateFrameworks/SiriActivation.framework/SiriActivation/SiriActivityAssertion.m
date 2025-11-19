@interface SiriActivityAssertion
- (SiriActivityAssertion)initWithIdentifier:(id)a3 reference:(id)a4 reason:(id)a5 timestamp:(double)a6 invalidationBlock:(id)a7;
- (void)dealloc;
- (void)invalidate;
- (void)invalidatedAtTimestamp:(double)a3;
@end

@implementation SiriActivityAssertion

- (SiriActivityAssertion)initWithIdentifier:(id)a3 reference:(id)a4 reason:(id)a5 timestamp:(double)a6 invalidationBlock:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v26.receiver = self;
  v26.super_class = SiriActivityAssertion;
  v16 = [(SiriActivityAssertion *)&v26 init];
  if (v16)
  {
    v17 = [v12 copy];
    identifier = v16->_identifier;
    v16->_identifier = v17;

    v19 = [v14 copy];
    reason = v16->_reason;
    v16->_reason = v19;

    v21 = [v13 copy];
    reference = v16->_reference;
    v16->_reference = v21;

    v16->_timestamp = a6;
    v23 = [v15 copy];
    invalidationBlock = v16->_invalidationBlock;
    v16->_invalidationBlock = v23;
  }

  return v16;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_invalidationBlock)
  {
    v3 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      identifier = self->_identifier;
      reason = self->_reason;
      *buf = 136315650;
      v9 = "[SiriActivityAssertion dealloc]";
      v10 = 2112;
      v11 = identifier;
      v12 = 2112;
      v13 = reason;
      _os_log_impl(&dword_1C8137000, v3, OS_LOG_TYPE_DEFAULT, "%s Deallocated SiriActivityAssertion (identifier=%@, reason=%@) before it was properly invalidated.", buf, 0x20u);
    }
  }

  v7.receiver = self;
  v7.super_class = SiriActivityAssertion;
  [(SiriActivityAssertion *)&v7 dealloc];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  Current = CFAbsoluteTimeGetCurrent();

  [(SiriActivityAssertion *)self invalidatedAtTimestamp:Current];
}

- (void)invalidatedAtTimestamp:(double)a3
{
  invalidationBlock = self->_invalidationBlock;
  if (invalidationBlock)
  {
    v8 = _Block_copy(invalidationBlock);
    v6 = self->_invalidationBlock;
    self->_invalidationBlock = 0;

    v7 = SiriSystemUpTimeFromCFAbsoluteCurrentTime(a3);
    v8[2](v8, self, v7);
  }
}

@end