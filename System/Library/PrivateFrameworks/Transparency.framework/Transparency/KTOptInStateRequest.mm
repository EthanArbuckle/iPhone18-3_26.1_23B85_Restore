@interface KTOptInStateRequest
- (KTOptInStateRequest)initWithApplication:(id)application;
- (KTOptInStateRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation KTOptInStateRequest

- (KTOptInStateRequest)initWithApplication:(id)application
{
  applicationCopy = application;
  v9.receiver = self;
  v9.super_class = KTOptInStateRequest;
  v5 = [(KTOptInStateRequest *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(KTOptInStateRequest *)v5 setApplication:applicationCopy];
    v7 = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  application = [(KTOptInStateRequest *)self application];
  [coderCopy encodeObject:application forKey:@"application"];

  [coderCopy encodeBool:-[KTOptInStateRequest fetchCloudKit](self forKey:{"fetchCloudKit"), @"fetchCloudKit"}];
  [coderCopy encodeBool:-[KTOptInStateRequest sync](self forKey:{"sync"), @"synchronous"}];
  v5 = [(KTOptInStateRequest *)self uri];

  if (v5)
  {
    v6 = [(KTOptInStateRequest *)self uri];
    [coderCopy encodeObject:v6 forKey:@"uri"];
  }
}

- (KTOptInStateRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uri"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"application"];
  if (v6 && (v10.receiver = self, v10.super_class = KTOptInStateRequest, v7 = [(KTOptInStateRequest *)&v10 init], (self = v7) != 0))
  {
    [(KTOptInStateRequest *)v7 setApplication:v6];
    [(KTOptInStateRequest *)self setUri:v5];
    -[KTOptInStateRequest setFetchCloudKit:](self, "setFetchCloudKit:", [coderCopy decodeBoolForKey:@"fetchCloudKit"]);
    -[KTOptInStateRequest setSync:](self, "setSync:", [coderCopy decodeBoolForKey:@"synchronous"]);
    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end