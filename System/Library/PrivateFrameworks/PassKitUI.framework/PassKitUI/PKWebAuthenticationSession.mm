@interface PKWebAuthenticationSession
- (void)performAuthenticationWithURL:(id)a3 callbackScheme:(id)a4 completion:(id)a5;
@end

@implementation PKWebAuthenticationSession

- (void)performAuthenticationWithURL:(id)a3 callbackScheme:(id)a4 completion:(id)a5
{
  v8 = getASWebAuthenticationSessionClass;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [objc_alloc(v8()) initWithURL:v11 callbackURLScheme:v10 completionHandler:v9];

  [v12 setPresentationContextProvider:self];
  [v12 setPrefersEphemeralWebBrowserSession:1];
  [v12 start];
}

@end