@interface TransparencyIDSRegistrationResponse
- (TransparencyIDSRegistrationResponse)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TransparencyIDSRegistrationResponse

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TransparencyIDSRegistrationResponse *)self registrationData];
  [v4 encodeObject:v5 forKey:@"registrationData"];
}

- (TransparencyIDSRegistrationResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TransparencyIDSRegistrationResponse;
  v5 = [(TransparencyIDSRegistrationResponse *)&v10 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [v4 decodeDictionaryWithKeysOfClass:v6 objectsOfClass:objc_opt_class() forKey:@"registrationData"];
    [(TransparencyIDSRegistrationResponse *)v5 setRegistrationData:v7];

    v8 = v5;
  }

  return v5;
}

@end