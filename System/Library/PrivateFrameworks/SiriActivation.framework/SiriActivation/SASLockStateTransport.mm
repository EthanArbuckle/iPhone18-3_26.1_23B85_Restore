@interface SASLockStateTransport
- (SASLockStateTransport)initWithCoder:(id)coder;
- (SASLockStateTransport)initWithSASLockState:(unint64_t)state;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)SASLockState;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SASLockStateTransport

- (SASLockStateTransport)initWithSASLockState:(unint64_t)state
{
  v7.receiver = self;
  v7.super_class = SASLockStateTransport;
  v4 = [(SASLockStateTransport *)&v7 init];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:state];
    [(SASLockStateTransport *)v4 setTransport:v5];
  }

  return v4;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  transport = [(SASLockStateTransport *)self transport];
  v4 = [v2 stringWithFormat:@"SASLockStateTransport:%@", transport];

  return v4;
}

- (unint64_t)SASLockState
{
  transport = [(SASLockStateTransport *)self transport];
  unsignedIntegerValue = [transport unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  sASLockState = [(SASLockStateTransport *)self SASLockState];

  return [v4 initWithSASLockState:sASLockState];
}

- (SASLockStateTransport)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SASLockStateTransport;
  v5 = [(SASLockStateTransport *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transport"];
    transport = v5->_transport;
    v5->_transport = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  transport = [(SASLockStateTransport *)self transport];
  [coderCopy encodeObject:transport forKey:@"transport"];
}

@end