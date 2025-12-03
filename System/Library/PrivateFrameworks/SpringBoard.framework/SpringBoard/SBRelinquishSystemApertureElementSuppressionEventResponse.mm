@interface SBRelinquishSystemApertureElementSuppressionEventResponse
- (SBRelinquishSystemApertureElementSuppressionEventResponse)initWithInvalidationIdentifier:(id)identifier;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
@end

@implementation SBRelinquishSystemApertureElementSuppressionEventResponse

- (SBRelinquishSystemApertureElementSuppressionEventResponse)initWithInvalidationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = SBRelinquishSystemApertureElementSuppressionEventResponse;
  v6 = [(SBChainableModifierEventResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_invalidationIdentifier, identifier);
  }

  return v7;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v8.receiver = self;
  v8.super_class = SBRelinquishSystemApertureElementSuppressionEventResponse;
  v4 = [(SBChainableModifierEventResponse *)&v8 descriptionBuilderWithMultilinePrefix:prefix];
  uUIDString = [(NSUUID *)self->_invalidationIdentifier UUIDString];
  v6 = [v4 appendObject:uUIDString withName:@"invalidationIdentifier"];

  return v4;
}

@end