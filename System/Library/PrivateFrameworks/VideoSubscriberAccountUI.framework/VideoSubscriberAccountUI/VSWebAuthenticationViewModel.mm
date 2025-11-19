@interface VSWebAuthenticationViewModel
- (VSWebAuthenticationViewModel)init;
- (void)configureWithRequest:(id)a3;
@end

@implementation VSWebAuthenticationViewModel

- (VSWebAuthenticationViewModel)init
{
  v8.receiver = self;
  v8.super_class = VSWebAuthenticationViewModel;
  v2 = [(VSViewModel *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(VSMessageQueue);
    messagesToWeb = v2->_messagesToWeb;
    v2->_messagesToWeb = v3;

    v5 = objc_alloc_init(VSMessageQueue);
    messagesFromWeb = v2->_messagesFromWeb;
    v2->_messagesFromWeb = v5;
  }

  return v2;
}

- (void)configureWithRequest:(id)a3
{
  v4 = a3;
  v5 = [(VSViewModel *)self identityProvider];
  v6 = [v5 displayName];
  v7 = [v6 forceUnwrapObject];
  [(VSViewModel *)self setTitle:v7];

  v8.receiver = self;
  v8.super_class = VSWebAuthenticationViewModel;
  [(VSViewModel *)&v8 configureWithRequest:v4];
}

@end