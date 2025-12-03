@interface SFEntityTopic
- (SFEntityTopic)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFEntityTopic

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SFEntityTopic;
  coderCopy = coder;
  [(SFQueryTopic *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_identifier forKey:{@"_identifier", v5.receiver, v5.super_class}];
}

- (SFEntityTopic)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SFEntityTopic;
  v5 = [(SFQueryTopic *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = SFEntityTopic;
  v4 = [(SFQueryTopic *)&v7 copyWithZone:zone];
  identifier = [(SFEntityTopic *)self identifier];
  [v4 setIdentifier:identifier];

  return v4;
}

@end