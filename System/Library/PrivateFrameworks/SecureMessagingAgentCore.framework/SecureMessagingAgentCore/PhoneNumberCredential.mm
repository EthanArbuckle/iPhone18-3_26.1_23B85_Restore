@interface PhoneNumberCredential
- (PhoneNumberCredential)initWithTelURI:(id)i credential:(id)credential credentialType:(int64_t)type;
@end

@implementation PhoneNumberCredential

- (PhoneNumberCredential)initWithTelURI:(id)i credential:(id)credential credentialType:(int64_t)type
{
  iCopy = i;
  credentialCopy = credential;
  v14.receiver = self;
  v14.super_class = PhoneNumberCredential;
  v11 = [(PhoneNumberCredential *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_telURI, i);
    objc_storeStrong(&v12->_credential, credential);
    v12->_credentialType = type;
  }

  return v12;
}

@end