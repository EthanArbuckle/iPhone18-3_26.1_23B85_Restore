@interface TIAutofillDataHandler
- (void)reportSelectedAutofillCredential:(id)a3 completionHandler:(id)a4;
@end

@implementation TIAutofillDataHandler

- (void)reportSelectedAutofillCredential:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v5 = v8;
  v6 = v7;
  TIDispatchAsync();
}

@end