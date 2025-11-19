@interface TransparencyIDSRegistrationRequestData
- (TransparencyIDSRegistrationRequestData)initWithApplication:(id)a3 registrationData:(id)a4;
- (TransparencyIDSRegistrationRequestData)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TransparencyIDSRegistrationRequestData

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TransparencyIDSRegistrationRequestData *)self application];
  [v4 encodeObject:v5 forKey:@"application"];

  v6 = [(TransparencyIDSRegistrationRequestData *)self tbsKTIDSRegistrationData];
  [v4 encodeObject:v6 forKey:@"registrationData"];

  v7 = [(TransparencyIDSRegistrationRequestData *)self pushToken];
  [v4 encodeObject:v7 forKey:@"pushToken"];
}

- (TransparencyIDSRegistrationRequestData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"application"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"registrationData"];
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
    v10 = 0;
  }

  else
  {
    self = [(TransparencyIDSRegistrationRequestData *)self initWithApplication:v5 registrationData:v6];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pushToken"];
    [(TransparencyIDSRegistrationRequestData *)self setPushToken:v9];

    v10 = self;
  }

  return v10;
}

- (TransparencyIDSRegistrationRequestData)initWithApplication:(id)a3 registrationData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = TransparencyIDSRegistrationRequestData;
  v8 = [(TransparencyIDSRegistrationRequestData *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(TransparencyIDSRegistrationRequestData *)v8 setApplication:v6];
    [(TransparencyIDSRegistrationRequestData *)v9 setTbsKTIDSRegistrationData:v7];
    [(TransparencyIDSRegistrationRequestData *)v9 setPushToken:0];
    v10 = v9;
  }

  return v9;
}

@end