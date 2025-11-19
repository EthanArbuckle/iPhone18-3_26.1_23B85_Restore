@interface SIRINLUResponseStatus
- (SIRINLUResponseStatus)initWithCoder:(id)a3;
- (id)initStatusCode:(int)a3 statusDescription:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SIRINLUResponseStatus

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt:-[SIRINLUResponseStatus statusCode](self forKey:{"statusCode"), @"statusCode"}];
  v5 = [(SIRINLUResponseStatus *)self statusDescription];
  [v4 encodeObject:v5 forKey:@"statusDescription"];
}

- (SIRINLUResponseStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SIRINLUResponseStatus;
  v5 = [(SIRINLUResponseStatus *)&v9 init];
  if (v5)
  {
    v5->_statusCode = [v4 decodeIntForKey:@"statusCode"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"statusDescription"];
    statusDescription = v5->_statusDescription;
    v5->_statusDescription = v6;
  }

  return v5;
}

- (id)initStatusCode:(int)a3 statusDescription:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SIRINLUResponseStatus;
  v8 = [(SIRINLUResponseStatus *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_statusCode = a3;
    objc_storeStrong(&v8->_statusDescription, a4);
  }

  return v9;
}

@end