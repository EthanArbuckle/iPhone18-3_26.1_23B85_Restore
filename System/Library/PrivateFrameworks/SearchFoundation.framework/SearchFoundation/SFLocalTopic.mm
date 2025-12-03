@interface SFLocalTopic
- (NSString)description;
- (SFLocalTopic)initWithCoder:(id)coder;
- (SFLocalTopic)initWithIdentifier:(id)identifier;
- (SFLocalTopic)initWithResult:(id)result;
- (SFLocalTopic)initWithResult:(id)result identifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)normalizedTopic;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFLocalTopic

- (NSString)description
{
  v9.receiver = self;
  v9.super_class = SFLocalTopic;
  v3 = [(SFTopic *)&v9 description];
  v4 = MEMORY[0x1E696AEC0];
  result = [(SFLocalTopic *)self result];
  v6 = [v4 stringWithFormat:@" result: %@", result];
  v7 = [v3 stringByAppendingString:v6];

  return v7;
}

- (id)normalizedTopic
{
  if (self->_result)
  {
    v3 = [SFLocalTopic alloc];
    identifier = [(SFTopic *)self identifier];
    selfCopy = [(SFLocalTopic *)v3 initWithIdentifier:identifier];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SFLocalTopic;
  coderCopy = coder;
  [(SFTopic *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_result forKey:{@"_result", v5.receiver, v5.super_class}];
}

- (SFLocalTopic)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SFLocalTopic;
  v5 = [(SFTopic *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_result"];
    v7 = v5->_result;
    v5->_result = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = SFLocalTopic;
  v4 = [(SFTopic *)&v7 copyWithZone:zone];
  result = [(SFLocalTopic *)self result];
  [v4 setResult:result];

  return v4;
}

- (SFLocalTopic)initWithResult:(id)result identifier:(id)identifier
{
  resultCopy = result;
  v10.receiver = self;
  v10.super_class = SFLocalTopic;
  v7 = [(SFTopic *)&v10 initWithIdentifier:identifier];
  v8 = v7;
  if (v7)
  {
    [(SFLocalTopic *)v7 setResult:resultCopy];
  }

  return v8;
}

- (SFLocalTopic)initWithResult:(id)result
{
  resultCopy = result;
  v8.receiver = self;
  v8.super_class = SFLocalTopic;
  v5 = [(SFLocalTopic *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SFLocalTopic *)v5 setResult:resultCopy];
  }

  return v6;
}

- (SFLocalTopic)initWithIdentifier:(id)identifier
{
  v4.receiver = self;
  v4.super_class = SFLocalTopic;
  return [(SFTopic *)&v4 initWithIdentifier:identifier];
}

@end