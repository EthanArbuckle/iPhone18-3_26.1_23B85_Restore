@interface WFLinkEnumerationCase
- (WFLinkEnumerationCase)initWithCoder:(id)coder;
- (WFLinkEnumerationCase)initWithIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFLinkEnumerationCase

- (WFLinkEnumerationCase)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];

  if (v5)
  {
    self = [(WFLinkEnumerationCase *)self initWithIdentifier:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(WFLinkEnumerationCase *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];
}

- (WFLinkEnumerationCase)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = WFLinkEnumerationCase;
  v5 = [(WFLinkEnumerationCase *)&v10 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = v5;
  }

  return v5;
}

@end