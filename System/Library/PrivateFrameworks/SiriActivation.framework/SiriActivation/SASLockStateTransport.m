@interface SASLockStateTransport
- (SASLockStateTransport)initWithCoder:(id)a3;
- (SASLockStateTransport)initWithSASLockState:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)SASLockState;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SASLockStateTransport

- (SASLockStateTransport)initWithSASLockState:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = SASLockStateTransport;
  v4 = [(SASLockStateTransport *)&v7 init];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [(SASLockStateTransport *)v4 setTransport:v5];
  }

  return v4;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(SASLockStateTransport *)self transport];
  v4 = [v2 stringWithFormat:@"SASLockStateTransport:%@", v3];

  return v4;
}

- (unint64_t)SASLockState
{
  v2 = [(SASLockStateTransport *)self transport];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(SASLockStateTransport *)self SASLockState];

  return [v4 initWithSASLockState:v5];
}

- (SASLockStateTransport)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SASLockStateTransport;
  v5 = [(SASLockStateTransport *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transport"];
    transport = v5->_transport;
    v5->_transport = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SASLockStateTransport *)self transport];
  [v4 encodeObject:v5 forKey:@"transport"];
}

@end