@interface TIAutofillDataHandler
- (void)reportSelectedAutofillCredential:(id)credential completionHandler:(id)handler;
@end

@implementation TIAutofillDataHandler

- (void)reportSelectedAutofillCredential:(id)credential completionHandler:(id)handler
{
  credentialCopy = credential;
  handlerCopy = handler;
  v5 = handlerCopy;
  v6 = credentialCopy;
  TIDispatchAsync();
}

@end