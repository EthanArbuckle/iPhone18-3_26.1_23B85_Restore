@interface SBStatusBarBackgroundActivityDescriptor
- (BOOL)isEqual:(id)equal;
- (SBStatusBarBackgroundActivityDescriptor)initWithBackgroundActivityIdentifier:(id)identifier pid:(int)pid;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
@end

@implementation SBStatusBarBackgroundActivityDescriptor

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendString:self->_backgroundActivityIdentifier];
  v5 = [builder appendInt64:self->_pid];
  v6 = [builder hash];

  return v6;
}

- (SBStatusBarBackgroundActivityDescriptor)initWithBackgroundActivityIdentifier:(id)identifier pid:(int)pid
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = SBStatusBarBackgroundActivityDescriptor;
  v8 = [(SBStatusBarBackgroundActivityDescriptor *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_backgroundActivityIdentifier, identifier);
    v9->_pid = pid;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      pid = self->_pid;
      if (pid == [(SBStatusBarBackgroundActivityDescriptor *)v5 pid])
      {
        backgroundActivityIdentifier = self->_backgroundActivityIdentifier;
        backgroundActivityIdentifier = [(SBStatusBarBackgroundActivityDescriptor *)v5 backgroundActivityIdentifier];
        v9 = [(NSString *)backgroundActivityIdentifier isEqualToString:backgroundActivityIdentifier];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  backgroundActivityIdentifier = self->_backgroundActivityIdentifier;
  pid = self->_pid;

  return [v4 initWithBackgroundActivityIdentifier:backgroundActivityIdentifier pid:pid];
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBStatusBarBackgroundActivityDescriptor *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBStatusBarBackgroundActivityDescriptor *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = STBackgroundActivityIdentifierDescription();
  [v3 appendString:v4 withName:@"activity"];

  v5 = [v3 appendInt64:self->_pid withName:@"pid"];

  return v3;
}

@end