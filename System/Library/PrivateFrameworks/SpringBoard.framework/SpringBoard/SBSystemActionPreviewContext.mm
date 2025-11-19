@interface SBSystemActionPreviewContext
- (NSMutableDictionary)userInfo;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation SBSystemActionPreviewContext

- (NSMutableDictionary)userInfo
{
  userInfo = self->_userInfo;
  if (!userInfo)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5 = self->_userInfo;
    self->_userInfo = v4;

    userInfo = self->_userInfo;
  }

  return userInfo;
}

- (id)succinctDescription
{
  v2 = [(SBSystemActionPreviewContext *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:self->_clientIdentifier withName:@"clientIdentifier" skipIfEmpty:1];
  [v3 appendString:self->_elementIdentifier withName:@"elementIdentifier" skipIfEmpty:1];
  [v3 appendDictionarySection:self->_userInfo withName:@"userInfo" skipIfEmpty:1];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBSystemActionPreviewContext *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

@end