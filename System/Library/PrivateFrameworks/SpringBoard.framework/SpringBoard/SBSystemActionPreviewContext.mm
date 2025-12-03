@interface SBSystemActionPreviewContext
- (NSMutableDictionary)userInfo;
- (id)descriptionWithMultilinePrefix:(id)prefix;
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
  succinctDescriptionBuilder = [(SBSystemActionPreviewContext *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:self->_clientIdentifier withName:@"clientIdentifier" skipIfEmpty:1];
  [v3 appendString:self->_elementIdentifier withName:@"elementIdentifier" skipIfEmpty:1];
  [v3 appendDictionarySection:self->_userInfo withName:@"userInfo" skipIfEmpty:1];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBSystemActionPreviewContext *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

@end