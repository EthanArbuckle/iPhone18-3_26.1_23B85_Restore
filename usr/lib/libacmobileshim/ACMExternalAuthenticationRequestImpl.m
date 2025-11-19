@interface ACMExternalAuthenticationRequestImpl
- (ACMExternalAuthenticationRequestImpl)init;
@end

@implementation ACMExternalAuthenticationRequestImpl

- (ACMExternalAuthenticationRequestImpl)init
{
  v5.receiver = self;
  v5.super_class = ACMExternalAuthenticationRequestImpl;
  v2 = [(ACMExternalAuthenticationRequestImpl *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ACMMessage *)v2 setUserNameFieldEditable:1];
  }

  return v3;
}

@end