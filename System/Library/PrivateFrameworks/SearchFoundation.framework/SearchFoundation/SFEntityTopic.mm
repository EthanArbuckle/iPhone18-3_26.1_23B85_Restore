@interface SFEntityTopic
- (SFEntityTopic)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFEntityTopic

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SFEntityTopic;
  v4 = a3;
  [(SFQueryTopic *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_identifier forKey:{@"_identifier", v5.receiver, v5.super_class}];
}

- (SFEntityTopic)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SFEntityTopic;
  v5 = [(SFQueryTopic *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = SFEntityTopic;
  v4 = [(SFQueryTopic *)&v7 copyWithZone:a3];
  v5 = [(SFEntityTopic *)self identifier];
  [v4 setIdentifier:v5];

  return v4;
}

@end