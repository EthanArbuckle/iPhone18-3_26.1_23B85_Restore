@interface PhoneNumberCredential
- (PhoneNumberCredential)initWithTelURI:(id)a3 credential:(id)a4 credentialType:(int64_t)a5;
@end

@implementation PhoneNumberCredential

- (PhoneNumberCredential)initWithTelURI:(id)a3 credential:(id)a4 credentialType:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = PhoneNumberCredential;
  v11 = [(PhoneNumberCredential *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_telURI, a3);
    objc_storeStrong(&v12->_credential, a4);
    v12->_credentialType = a5;
  }

  return v12;
}

@end