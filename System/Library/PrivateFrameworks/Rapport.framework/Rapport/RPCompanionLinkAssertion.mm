@interface RPCompanionLinkAssertion
- (RPCompanionLinkAssertion)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RPCompanionLinkAssertion

- (RPCompanionLinkAssertion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = RPCompanionLinkAssertion;
  v5 = [(RPCompanionLinkAssertion *)&v11 init];
  if (v5)
  {
    v6 = coderCopy;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v7 = v6;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v8 = v7;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  assertionID = self->_assertionID;
  v8 = coderCopy;
  if (assertionID)
  {
    [coderCopy encodeObject:assertionID forKey:@"asID"];
    coderCopy = v8;
  }

  destinationID = self->_destinationID;
  if (destinationID)
  {
    [v8 encodeObject:destinationID forKey:@"dID"];
    coderCopy = v8;
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v8 encodeObject:identifier forKey:@"id"];
    coderCopy = v8;
  }
}

- (id)description
{
  assertionID = self->_assertionID;
  NSAppendPrintF();
  v3 = 0;
  v4 = v3;
  if (self->_destinationID)
  {
    v11 = v3;
    destinationID = self->_destinationID;
    NSAppendPrintF();
    v5 = v11;

    v4 = v5;
  }

  if (self->_identifier)
  {
    identifier = self->_identifier;
    NSAppendPrintF();
    v6 = v4;

    v4 = v6;
  }

  return v4;
}

@end