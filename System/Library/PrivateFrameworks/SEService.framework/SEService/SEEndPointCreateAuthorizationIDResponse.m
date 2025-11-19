@interface SEEndPointCreateAuthorizationIDResponse
+ (id)withAuthorizationID:(id)a3 authorizationInterval:(double)a4 authorizationCount:(unint64_t)a5;
- (SEEndPointCreateAuthorizationIDResponse)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SEEndPointCreateAuthorizationIDResponse

+ (id)withAuthorizationID:(id)a3 authorizationInterval:(double)a4 authorizationCount:(unint64_t)a5
{
  v7 = a3;
  v8 = objc_opt_new();
  [v8 setAuthorizationID:v7];

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  [v8 setAuthorizationInterval:v9];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
  [v8 setAuthorizationCount:v10];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(SEEndPointCreateAuthorizationIDResponse *)self authorizationID];
  v5 = [v4 asHexString];
  v6 = [(SEEndPointCreateAuthorizationIDResponse *)self authorizationInterval];
  v7 = [(SEEndPointCreateAuthorizationIDResponse *)self authorizationCount];
  v8 = [v3 stringWithFormat:@"{\n\tauthorizationID : %@, \n\tauthorizationInterval : %@\n\tauthorizationCount : %@\n}", v5, v6, v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SEEndPointCreateAuthorizationIDResponse *)self authorizationID];
  [v4 encodeObject:v5 forKey:@"authorizationID"];

  v6 = [(SEEndPointCreateAuthorizationIDResponse *)self authorizationInterval];
  [v4 encodeObject:v6 forKey:@"authorizationInterval"];

  v7 = [(SEEndPointCreateAuthorizationIDResponse *)self authorizationCount];
  [v4 encodeObject:v7 forKey:@"authorizationCount"];
}

- (SEEndPointCreateAuthorizationIDResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SEEndPointCreateAuthorizationIDResponse;
  v5 = [(SEEndPointCreateAuthorizationIDResponse *)&v17 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(SEEndPointCreateAuthorizationIDResponse *)v5 authorizationID];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"authorizationID"];
    authorizationID = v6->_authorizationID;
    v6->_authorizationID = v8;

    v10 = [(SEEndPointCreateAuthorizationIDResponse *)v6 authorizationInterval];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"authorizationInterval"];
    authorizationInterval = v6->_authorizationInterval;
    v6->_authorizationInterval = v11;

    v13 = [(SEEndPointCreateAuthorizationIDResponse *)v6 authorizationCount];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"authorizationCount"];
    authorizationCount = v6->_authorizationCount;
    v6->_authorizationCount = v14;
  }

  return v6;
}

@end