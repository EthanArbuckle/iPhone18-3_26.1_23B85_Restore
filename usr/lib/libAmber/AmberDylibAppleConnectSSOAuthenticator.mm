@interface AmberDylibAppleConnectSSOAuthenticator
- (AmberDylibAppleConnectSSOAuthenticator)init;
- (void)authorizationController:(id)controller didCompleteWithAuthorization:(id)authorization;
- (void)authorizationController:(id)controller didCompleteWithError:(id)error;
@end

@implementation AmberDylibAppleConnectSSOAuthenticator

- (AmberDylibAppleConnectSSOAuthenticator)init
{
  v5.receiver = self;
  v5.super_class = AmberDylibAppleConnectSSOAuthenticator;
  v2 = [(AmberDylibAppleConnectSSOAuthenticator *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AmberDylibAppleConnectSSOAuthenticator *)v2 setError:0];
    [(AmberDylibAppleConnectSSOAuthenticator *)v3 setToken:0];
    [(AmberDylibAppleConnectSSOAuthenticator *)v3 setDone:0];
  }

  return v3;
}

- (void)authorizationController:(id)controller didCompleteWithAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  credential = [authorizationCopy credential];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    credential2 = [authorizationCopy credential];
    authenticatedResponse = [credential2 authenticatedResponse];

    allHeaderFields = [authenticatedResponse allHeaderFields];
    v10 = [allHeaderFields objectForKeyedSubscript:@"token"];
    [(AmberDylibAppleConnectSSOAuthenticator *)self setToken:v10];
  }

  [(AmberDylibAppleConnectSSOAuthenticator *)self setDone:1];
}

- (void)authorizationController:(id)controller didCompleteWithError:(id)error
{
  errorCopy = error;
  [(AmberDylibAppleConnectSSOAuthenticator *)self setError:?];
  [(AmberDylibAppleConnectSSOAuthenticator *)self setDone:1];
}

@end