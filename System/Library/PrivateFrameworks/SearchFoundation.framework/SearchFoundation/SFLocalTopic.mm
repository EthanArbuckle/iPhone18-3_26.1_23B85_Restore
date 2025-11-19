@interface SFLocalTopic
- (NSString)description;
- (SFLocalTopic)initWithCoder:(id)a3;
- (SFLocalTopic)initWithIdentifier:(id)a3;
- (SFLocalTopic)initWithResult:(id)a3;
- (SFLocalTopic)initWithResult:(id)a3 identifier:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)normalizedTopic;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFLocalTopic

- (NSString)description
{
  v9.receiver = self;
  v9.super_class = SFLocalTopic;
  v3 = [(SFTopic *)&v9 description];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(SFLocalTopic *)self result];
  v6 = [v4 stringWithFormat:@" result: %@", v5];
  v7 = [v3 stringByAppendingString:v6];

  return v7;
}

- (id)normalizedTopic
{
  if (self->_result)
  {
    v3 = [SFLocalTopic alloc];
    v4 = [(SFTopic *)self identifier];
    v5 = [(SFLocalTopic *)v3 initWithIdentifier:v4];
  }

  else
  {
    v5 = self;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SFLocalTopic;
  v4 = a3;
  [(SFTopic *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_result forKey:{@"_result", v5.receiver, v5.super_class}];
}

- (SFLocalTopic)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SFLocalTopic;
  v5 = [(SFTopic *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_result"];
    v7 = v5->_result;
    v5->_result = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = SFLocalTopic;
  v4 = [(SFTopic *)&v7 copyWithZone:a3];
  v5 = [(SFLocalTopic *)self result];
  [v4 setResult:v5];

  return v4;
}

- (SFLocalTopic)initWithResult:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = SFLocalTopic;
  v7 = [(SFTopic *)&v10 initWithIdentifier:a4];
  v8 = v7;
  if (v7)
  {
    [(SFLocalTopic *)v7 setResult:v6];
  }

  return v8;
}

- (SFLocalTopic)initWithResult:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SFLocalTopic;
  v5 = [(SFLocalTopic *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SFLocalTopic *)v5 setResult:v4];
  }

  return v6;
}

- (SFLocalTopic)initWithIdentifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = SFLocalTopic;
  return [(SFTopic *)&v4 initWithIdentifier:a3];
}

@end