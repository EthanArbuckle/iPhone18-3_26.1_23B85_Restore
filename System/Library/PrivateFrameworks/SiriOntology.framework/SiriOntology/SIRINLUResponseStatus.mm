@interface SIRINLUResponseStatus
- (SIRINLUResponseStatus)initWithCoder:(id)coder;
- (id)initStatusCode:(int)code statusDescription:(id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SIRINLUResponseStatus

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt:-[SIRINLUResponseStatus statusCode](self forKey:{"statusCode"), @"statusCode"}];
  statusDescription = [(SIRINLUResponseStatus *)self statusDescription];
  [coderCopy encodeObject:statusDescription forKey:@"statusDescription"];
}

- (SIRINLUResponseStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SIRINLUResponseStatus;
  v5 = [(SIRINLUResponseStatus *)&v9 init];
  if (v5)
  {
    v5->_statusCode = [coderCopy decodeIntForKey:@"statusCode"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"statusDescription"];
    statusDescription = v5->_statusDescription;
    v5->_statusDescription = v6;
  }

  return v5;
}

- (id)initStatusCode:(int)code statusDescription:(id)description
{
  descriptionCopy = description;
  v11.receiver = self;
  v11.super_class = SIRINLUResponseStatus;
  v8 = [(SIRINLUResponseStatus *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_statusCode = code;
    objc_storeStrong(&v8->_statusDescription, description);
  }

  return v9;
}

@end