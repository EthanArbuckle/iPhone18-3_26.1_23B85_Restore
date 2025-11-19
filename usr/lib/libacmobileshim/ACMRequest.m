@interface ACMRequest
+ (id)authenticationRequest;
+ (id)ticketVerificationRequest;
@end

@implementation ACMRequest

+ (id)authenticationRequest
{
  [+[ACMAppleConnect sharedInstance](ACMAppleConnect private];
  v2 = +[ACMExternalAppleConnectImplComponents components];

  return [v2 createAuthenticationRequest];
}

+ (id)ticketVerificationRequest
{
  v2 = +[ACMExternalAppleConnectImplComponents components];

  return [v2 createTicketVerificationRequest];
}

@end