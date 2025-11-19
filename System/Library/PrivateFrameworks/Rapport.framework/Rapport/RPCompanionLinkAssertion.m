@interface RPCompanionLinkAssertion
- (RPCompanionLinkAssertion)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RPCompanionLinkAssertion

- (RPCompanionLinkAssertion)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = RPCompanionLinkAssertion;
  v5 = [(RPCompanionLinkAssertion *)&v11 init];
  if (v5)
  {
    v6 = v4;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  assertionID = self->_assertionID;
  v8 = v4;
  if (assertionID)
  {
    [v4 encodeObject:assertionID forKey:@"asID"];
    v4 = v8;
  }

  destinationID = self->_destinationID;
  if (destinationID)
  {
    [v8 encodeObject:destinationID forKey:@"dID"];
    v4 = v8;
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v8 encodeObject:identifier forKey:@"id"];
    v4 = v8;
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