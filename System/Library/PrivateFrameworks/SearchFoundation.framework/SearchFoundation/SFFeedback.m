@interface SFFeedback
- (SFFeedback)init;
- (SFFeedback)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFFeedback

- (SFFeedback)init
{
  v4.receiver = self;
  v4.super_class = SFFeedback;
  v2 = [(SFFeedback *)&v4 init];
  if (v2)
  {
    v2->_timestamp = mach_absolute_time();
  }

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  timestamp = self->_timestamp;
  v5 = a3;
  [v5 encodeInt64:timestamp forKey:@"timestamp"];
  [v5 encodeInt64:self->_queryId forKey:@"_queryId"];
}

- (SFFeedback)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SFFeedback;
  v5 = [(SFFeedback *)&v7 init];
  if (v5)
  {
    v5->_timestamp = [v4 decodeInt64ForKey:@"timestamp"];
    v5->_queryId = [v4 decodeInt64ForKey:@"_queryId"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v4[1] = [(SFFeedback *)self timestamp];
  v4[2] = [(SFFeedback *)self queryId];
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = SFFeedback;
  v4 = [(SFFeedback *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ (time: %llu)", v4, -[SFFeedback timestamp](self, "timestamp")];

  return v5;
}

@end