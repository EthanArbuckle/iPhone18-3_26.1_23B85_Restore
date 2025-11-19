@interface PLProcessAssertion
- (PLProcessAssertion)initWithIdentifier:(id)a3;
- (id)description;
@end

@implementation PLProcessAssertion

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%p:%@ %@ %p>", self, v4, objc_opt_class(), self->_processAssertion];
}

- (PLProcessAssertion)initWithIdentifier:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PLProcessAssertion;
  v5 = [(PLProcessAssertion *)&v10 init];
  if (v5)
  {
    getpid();
    v6 = SBSProcessAssertionCreateForPID();
    processAssertion = v5->_processAssertion;
    v5->_processAssertion = v6;

    v8 = v5;
  }

  return v5;
}

@end