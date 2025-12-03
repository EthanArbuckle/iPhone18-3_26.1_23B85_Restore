@interface HKSPXPCMessage
- (HKSPXPCMessage)initWithIdentifier:(id)identifier block:(id)block options:(unint64_t)options errorHandler:(id)handler;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
@end

@implementation HKSPXPCMessage

- (HKSPXPCMessage)initWithIdentifier:(id)identifier block:(id)block options:(unint64_t)options errorHandler:(id)handler
{
  identifierCopy = identifier;
  blockCopy = block;
  handlerCopy = handler;
  v22.receiver = self;
  v22.super_class = HKSPXPCMessage;
  v13 = [(HKSPXPCMessage *)&v22 init];
  if (v13)
  {
    v14 = [identifierCopy copy];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    v16 = [blockCopy copy];
    block = v13->_block;
    v13->_block = v16;

    v13->_options = options;
    v18 = [handlerCopy copy];
    errorHandler = v13->_errorHandler;
    v13->_errorHandler = v18;

    v20 = v13;
  }

  return v13;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(HKSPXPCMessage *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(HKSPXPCMessage *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  identifier = [(HKSPXPCMessage *)self identifier];
  v6 = [v4 appendObject:identifier withName:@"identifier"];

  v7 = [v4 appendBool:-[HKSPXPCMessage options](self withName:{"options") & 1, @"sync"}];
  v8 = [v4 appendBool:(-[HKSPXPCMessage options](self withName:{"options") >> 1) & 1, @"retry"}];

  return v4;
}

@end