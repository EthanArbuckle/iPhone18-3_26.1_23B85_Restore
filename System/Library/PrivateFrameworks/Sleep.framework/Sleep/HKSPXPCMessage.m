@interface HKSPXPCMessage
- (HKSPXPCMessage)initWithIdentifier:(id)a3 block:(id)a4 options:(unint64_t)a5 errorHandler:(id)a6;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
@end

@implementation HKSPXPCMessage

- (HKSPXPCMessage)initWithIdentifier:(id)a3 block:(id)a4 options:(unint64_t)a5 errorHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v22.receiver = self;
  v22.super_class = HKSPXPCMessage;
  v13 = [(HKSPXPCMessage *)&v22 init];
  if (v13)
  {
    v14 = [v10 copy];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    v16 = [v11 copy];
    block = v13->_block;
    v13->_block = v16;

    v13->_options = a5;
    v18 = [v12 copy];
    errorHandler = v13->_errorHandler;
    v13->_errorHandler = v18;

    v20 = v13;
  }

  return v13;
}

- (id)succinctDescription
{
  v2 = [(HKSPXPCMessage *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(HKSPXPCMessage *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v5 = [(HKSPXPCMessage *)self identifier];
  v6 = [v4 appendObject:v5 withName:@"identifier"];

  v7 = [v4 appendBool:-[HKSPXPCMessage options](self withName:{"options") & 1, @"sync"}];
  v8 = [v4 appendBool:(-[HKSPXPCMessage options](self withName:{"options") >> 1) & 1, @"retry"}];

  return v4;
}

@end