@interface SBStatusBarBackgroundActivityDescriptor
- (BOOL)isEqual:(id)a3;
- (SBStatusBarBackgroundActivityDescriptor)initWithBackgroundActivityIdentifier:(id)a3 pid:(int)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
@end

@implementation SBStatusBarBackgroundActivityDescriptor

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendString:self->_backgroundActivityIdentifier];
  v5 = [v3 appendInt64:self->_pid];
  v6 = [v3 hash];

  return v6;
}

- (SBStatusBarBackgroundActivityDescriptor)initWithBackgroundActivityIdentifier:(id)a3 pid:(int)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SBStatusBarBackgroundActivityDescriptor;
  v8 = [(SBStatusBarBackgroundActivityDescriptor *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_backgroundActivityIdentifier, a3);
    v9->_pid = a4;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      pid = self->_pid;
      if (pid == [(SBStatusBarBackgroundActivityDescriptor *)v5 pid])
      {
        backgroundActivityIdentifier = self->_backgroundActivityIdentifier;
        v8 = [(SBStatusBarBackgroundActivityDescriptor *)v5 backgroundActivityIdentifier];
        v9 = [(NSString *)backgroundActivityIdentifier isEqualToString:v8];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  backgroundActivityIdentifier = self->_backgroundActivityIdentifier;
  pid = self->_pid;

  return [v4 initWithBackgroundActivityIdentifier:backgroundActivityIdentifier pid:pid];
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBStatusBarBackgroundActivityDescriptor *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(SBStatusBarBackgroundActivityDescriptor *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
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