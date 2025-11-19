@interface KTOptInStateRequest
- (KTOptInStateRequest)initWithApplication:(id)a3;
- (KTOptInStateRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation KTOptInStateRequest

- (KTOptInStateRequest)initWithApplication:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = KTOptInStateRequest;
  v5 = [(KTOptInStateRequest *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(KTOptInStateRequest *)v5 setApplication:v4];
    v7 = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(KTOptInStateRequest *)self application];
  [v7 encodeObject:v4 forKey:@"application"];

  [v7 encodeBool:-[KTOptInStateRequest fetchCloudKit](self forKey:{"fetchCloudKit"), @"fetchCloudKit"}];
  [v7 encodeBool:-[KTOptInStateRequest sync](self forKey:{"sync"), @"synchronous"}];
  v5 = [(KTOptInStateRequest *)self uri];

  if (v5)
  {
    v6 = [(KTOptInStateRequest *)self uri];
    [v7 encodeObject:v6 forKey:@"uri"];
  }
}

- (KTOptInStateRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uri"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"application"];
  if (v6 && (v10.receiver = self, v10.super_class = KTOptInStateRequest, v7 = [(KTOptInStateRequest *)&v10 init], (self = v7) != 0))
  {
    [(KTOptInStateRequest *)v7 setApplication:v6];
    [(KTOptInStateRequest *)self setUri:v5];
    -[KTOptInStateRequest setFetchCloudKit:](self, "setFetchCloudKit:", [v4 decodeBoolForKey:@"fetchCloudKit"]);
    -[KTOptInStateRequest setSync:](self, "setSync:", [v4 decodeBoolForKey:@"synchronous"]);
    self = self;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end