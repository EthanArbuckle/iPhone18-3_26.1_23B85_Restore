@interface SBFFrameRateAssertion
- (SBFFrameRateAssertion)initWithFrameRateRange:(CAFrameRateRange)a3 highFrameRateReason:(unsigned int)a4;
@end

@implementation SBFFrameRateAssertion

- (SBFFrameRateAssertion)initWithFrameRateRange:(CAFrameRateRange)a3 highFrameRateReason:(unsigned int)a4
{
  v4 = *&a4;
  preferred = a3.preferred;
  maximum = a3.maximum;
  minimum = a3.minimum;
  v19.receiver = self;
  v19.super_class = SBFFrameRateAssertion;
  v8 = [(SBFFrameRateAssertion *)&v19 init];
  v9 = v8;
  if (v8)
  {
    v8->_updateRequest.flags = 0;
    v8->_updateRequest.minRate = minimum;
    v8->_updateRequest.preferredRate = preferred;
    v8->_updateRequest.maxRate = maximum;
    _UIUpdateRequestActivate();
    v10 = objc_alloc(MEMORY[0x1E698E778]);
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SBFFrameRateReason-%d", v4];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __68__SBFFrameRateAssertion_initWithFrameRateRange_highFrameRateReason___block_invoke;
    v16[3] = &unk_1E8080690;
    v12 = v9;
    v17 = v12;
    v18 = v4;
    v13 = [v10 initWithIdentifier:@"SBFFrameRateAssertion" forReason:v11 invalidationBlock:v16];
    assertion = v12->_assertion;
    v12->_assertion = v13;
  }

  return v9;
}

@end