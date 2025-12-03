@interface SBHCompoundAssertion
- (NSString)description;
- (SBHCompoundAssertion)initWithReason:(id)reason assertions:(id)assertions;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)invalidate;
@end

@implementation SBHCompoundAssertion

- (void)invalidate
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_assertions;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) invalidate];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (SBHCompoundAssertion)initWithReason:(id)reason assertions:(id)assertions
{
  reasonCopy = reason;
  assertionsCopy = assertions;
  v14.receiver = self;
  v14.super_class = SBHCompoundAssertion;
  v8 = [(SBHCompoundAssertion *)&v14 init];
  if (v8)
  {
    v9 = [reasonCopy copy];
    reason = v8->_reason;
    v8->_reason = v9;

    v11 = [assertionsCopy mutableCopy];
    assertions = v8->_assertions;
    v8->_assertions = v11;
  }

  return v8;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __35__SBHCompoundAssertion_description__block_invoke;
  v10 = &unk_1E8088F18;
  selfCopy = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  reason = [(SBHCompoundAssertion *)self reason];
  [formatterCopy appendString:reason withName:@"reason"];

  v5 = [formatterCopy appendObject:self->_assertions withName:@"assertions"];
}

@end