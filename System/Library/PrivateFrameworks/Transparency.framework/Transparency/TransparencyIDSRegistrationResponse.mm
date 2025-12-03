@interface TransparencyIDSRegistrationResponse
- (TransparencyIDSRegistrationResponse)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TransparencyIDSRegistrationResponse

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  registrationData = [(TransparencyIDSRegistrationResponse *)self registrationData];
  [coderCopy encodeObject:registrationData forKey:@"registrationData"];
}

- (TransparencyIDSRegistrationResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = TransparencyIDSRegistrationResponse;
  v5 = [(TransparencyIDSRegistrationResponse *)&v10 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [coderCopy decodeDictionaryWithKeysOfClass:v6 objectsOfClass:objc_opt_class() forKey:@"registrationData"];
    [(TransparencyIDSRegistrationResponse *)v5 setRegistrationData:v7];

    v8 = v5;
  }

  return v5;
}

@end