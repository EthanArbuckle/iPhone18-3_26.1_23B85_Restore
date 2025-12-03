@interface TransparencyIDSRegistrationRequestData
- (TransparencyIDSRegistrationRequestData)initWithApplication:(id)application registrationData:(id)data;
- (TransparencyIDSRegistrationRequestData)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TransparencyIDSRegistrationRequestData

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  application = [(TransparencyIDSRegistrationRequestData *)self application];
  [coderCopy encodeObject:application forKey:@"application"];

  tbsKTIDSRegistrationData = [(TransparencyIDSRegistrationRequestData *)self tbsKTIDSRegistrationData];
  [coderCopy encodeObject:tbsKTIDSRegistrationData forKey:@"registrationData"];

  pushToken = [(TransparencyIDSRegistrationRequestData *)self pushToken];
  [coderCopy encodeObject:pushToken forKey:@"pushToken"];
}

- (TransparencyIDSRegistrationRequestData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"application"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"registrationData"];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(TransparencyIDSRegistrationRequestData *)self initWithApplication:v5 registrationData:v6];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pushToken"];
    [(TransparencyIDSRegistrationRequestData *)self setPushToken:v9];

    selfCopy = self;
  }

  return selfCopy;
}

- (TransparencyIDSRegistrationRequestData)initWithApplication:(id)application registrationData:(id)data
{
  applicationCopy = application;
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = TransparencyIDSRegistrationRequestData;
  v8 = [(TransparencyIDSRegistrationRequestData *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(TransparencyIDSRegistrationRequestData *)v8 setApplication:applicationCopy];
    [(TransparencyIDSRegistrationRequestData *)v9 setTbsKTIDSRegistrationData:dataCopy];
    [(TransparencyIDSRegistrationRequestData *)v9 setPushToken:0];
    v10 = v9;
  }

  return v9;
}

@end