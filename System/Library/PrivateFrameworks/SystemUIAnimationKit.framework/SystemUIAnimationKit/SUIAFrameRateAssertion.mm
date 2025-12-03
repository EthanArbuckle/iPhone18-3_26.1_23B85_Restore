@interface SUIAFrameRateAssertion
- (SUIAFrameRateAssertion)initWithFrameRateRange:(CAFrameRateRange)range highFrameRateReason:(unsigned int)reason;
@end

@implementation SUIAFrameRateAssertion

- (SUIAFrameRateAssertion)initWithFrameRateRange:(CAFrameRateRange)range highFrameRateReason:(unsigned int)reason
{
  v4 = *&reason;
  preferred = range.preferred;
  maximum = range.maximum;
  minimum = range.minimum;
  v19.receiver = self;
  v19.super_class = SUIAFrameRateAssertion;
  v8 = [(SUIAFrameRateAssertion *)&v19 init];
  v9 = v8;
  if (v8)
  {
    v8->_updateRequest.flags = 0;
    v8->_updateRequest.minRate = minimum;
    v8->_updateRequest.preferredRate = preferred;
    v8->_updateRequest.maxRate = maximum;
    _UIUpdateRequestActivate();
    v10 = objc_alloc(MEMORY[0x277CF0CE8]);
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"SBFFrameRateReason-%d", v4];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __69__SUIAFrameRateAssertion_initWithFrameRateRange_highFrameRateReason___block_invoke;
    v16[3] = &unk_279D3F9B0;
    v12 = v9;
    v17 = v12;
    v18 = v4;
    v13 = [v10 initWithIdentifier:@"SUIAFrameRateAssertion" forReason:v11 invalidationBlock:v16];
    assertion = v12->_assertion;
    v12->_assertion = v13;
  }

  return v9;
}

@end