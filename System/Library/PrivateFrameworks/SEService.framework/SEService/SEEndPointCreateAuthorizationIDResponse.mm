@interface SEEndPointCreateAuthorizationIDResponse
+ (id)withAuthorizationID:(id)d authorizationInterval:(double)interval authorizationCount:(unint64_t)count;
- (SEEndPointCreateAuthorizationIDResponse)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SEEndPointCreateAuthorizationIDResponse

+ (id)withAuthorizationID:(id)d authorizationInterval:(double)interval authorizationCount:(unint64_t)count
{
  dCopy = d;
  v8 = objc_opt_new();
  [v8 setAuthorizationID:dCopy];

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:interval];
  [v8 setAuthorizationInterval:v9];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:count];
  [v8 setAuthorizationCount:v10];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  authorizationID = [(SEEndPointCreateAuthorizationIDResponse *)self authorizationID];
  asHexString = [authorizationID asHexString];
  authorizationInterval = [(SEEndPointCreateAuthorizationIDResponse *)self authorizationInterval];
  authorizationCount = [(SEEndPointCreateAuthorizationIDResponse *)self authorizationCount];
  v8 = [v3 stringWithFormat:@"{\n\tauthorizationID : %@, \n\tauthorizationInterval : %@\n\tauthorizationCount : %@\n}", asHexString, authorizationInterval, authorizationCount];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  authorizationID = [(SEEndPointCreateAuthorizationIDResponse *)self authorizationID];
  [coderCopy encodeObject:authorizationID forKey:@"authorizationID"];

  authorizationInterval = [(SEEndPointCreateAuthorizationIDResponse *)self authorizationInterval];
  [coderCopy encodeObject:authorizationInterval forKey:@"authorizationInterval"];

  authorizationCount = [(SEEndPointCreateAuthorizationIDResponse *)self authorizationCount];
  [coderCopy encodeObject:authorizationCount forKey:@"authorizationCount"];
}

- (SEEndPointCreateAuthorizationIDResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = SEEndPointCreateAuthorizationIDResponse;
  v5 = [(SEEndPointCreateAuthorizationIDResponse *)&v17 init];
  v6 = v5;
  if (v5)
  {
    authorizationID = [(SEEndPointCreateAuthorizationIDResponse *)v5 authorizationID];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authorizationID"];
    authorizationID = v6->_authorizationID;
    v6->_authorizationID = v8;

    authorizationInterval = [(SEEndPointCreateAuthorizationIDResponse *)v6 authorizationInterval];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authorizationInterval"];
    authorizationInterval = v6->_authorizationInterval;
    v6->_authorizationInterval = v11;

    authorizationCount = [(SEEndPointCreateAuthorizationIDResponse *)v6 authorizationCount];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authorizationCount"];
    authorizationCount = v6->_authorizationCount;
    v6->_authorizationCount = v14;
  }

  return v6;
}

@end