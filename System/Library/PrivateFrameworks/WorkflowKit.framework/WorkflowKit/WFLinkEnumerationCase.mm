@interface WFLinkEnumerationCase
- (WFLinkEnumerationCase)initWithCoder:(id)a3;
- (WFLinkEnumerationCase)initWithIdentifier:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFLinkEnumerationCase

- (WFLinkEnumerationCase)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];

  if (v5)
  {
    self = [(WFLinkEnumerationCase *)self initWithIdentifier:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFLinkEnumerationCase *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];
}

- (WFLinkEnumerationCase)initWithIdentifier:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFLinkEnumerationCase;
  v5 = [(WFLinkEnumerationCase *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = v5;
  }

  return v5;
}

@end