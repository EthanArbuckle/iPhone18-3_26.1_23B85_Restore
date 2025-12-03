@interface PKWebAuthenticationSession
- (void)performAuthenticationWithURL:(id)l callbackScheme:(id)scheme completion:(id)completion;
@end

@implementation PKWebAuthenticationSession

- (void)performAuthenticationWithURL:(id)l callbackScheme:(id)scheme completion:(id)completion
{
  v8 = getASWebAuthenticationSessionClass;
  completionCopy = completion;
  schemeCopy = scheme;
  lCopy = l;
  v12 = [objc_alloc(v8()) initWithURL:lCopy callbackURLScheme:schemeCopy completionHandler:completionCopy];

  [v12 setPresentationContextProvider:self];
  [v12 setPrefersEphemeralWebBrowserSession:1];
  [v12 start];
}

@end