@interface SBRelinquishSystemApertureElementSuppressionEventResponse
- (SBRelinquishSystemApertureElementSuppressionEventResponse)initWithInvalidationIdentifier:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
@end

@implementation SBRelinquishSystemApertureElementSuppressionEventResponse

- (SBRelinquishSystemApertureElementSuppressionEventResponse)initWithInvalidationIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBRelinquishSystemApertureElementSuppressionEventResponse;
  v6 = [(SBChainableModifierEventResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_invalidationIdentifier, a3);
  }

  return v7;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v8.receiver = self;
  v8.super_class = SBRelinquishSystemApertureElementSuppressionEventResponse;
  v4 = [(SBChainableModifierEventResponse *)&v8 descriptionBuilderWithMultilinePrefix:a3];
  v5 = [(NSUUID *)self->_invalidationIdentifier UUIDString];
  v6 = [v4 appendObject:v5 withName:@"invalidationIdentifier"];

  return v4;
}

@end