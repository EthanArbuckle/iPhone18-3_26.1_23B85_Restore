@interface INRenewingRequest
- (void)performRequestWithSession:(id)session withHandler:(id)handler;
@end

@implementation INRenewingRequest

- (void)performRequestWithSession:(id)session withHandler:(id)handler
{
  sessionCopy = session;
  handlerCopy = handler;
  urlString = [(INRenewingRequest *)self urlString];

  if (urlString)
  {
    v10.receiver = self;
    v10.super_class = INRenewingRequest;
    [(INRenewingRequest *)&v10 performRequestWithSession:sessionCopy withHandler:handlerCopy];
  }

  else
  {
    account = [(INRenewingRequest *)self account];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000CF14;
    v11[3] = &unk_100055560;
    v11[4] = self;
    v12 = sessionCopy;
    v13 = handlerCopy;
    [INBagRenewal attemptRenewCredentialsWithAccount:account completion:v11];
  }
}

@end