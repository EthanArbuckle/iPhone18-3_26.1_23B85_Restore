@interface AmberDylibAppleConnectSSOAuthenticator
- (AmberDylibAppleConnectSSOAuthenticator)init;
- (void)authorizationController:(id)a3 didCompleteWithAuthorization:(id)a4;
- (void)authorizationController:(id)a3 didCompleteWithError:(id)a4;
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

- (void)authorizationController:(id)a3 didCompleteWithAuthorization:(id)a4
{
  v11 = a4;
  v5 = [v11 credential];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v11 credential];
    v8 = [v7 authenticatedResponse];

    v9 = [v8 allHeaderFields];
    v10 = [v9 objectForKeyedSubscript:@"token"];
    [(AmberDylibAppleConnectSSOAuthenticator *)self setToken:v10];
  }

  [(AmberDylibAppleConnectSSOAuthenticator *)self setDone:1];
}

- (void)authorizationController:(id)a3 didCompleteWithError:(id)a4
{
  v5 = a4;
  [(AmberDylibAppleConnectSSOAuthenticator *)self setError:?];
  [(AmberDylibAppleConnectSSOAuthenticator *)self setDone:1];
}

@end