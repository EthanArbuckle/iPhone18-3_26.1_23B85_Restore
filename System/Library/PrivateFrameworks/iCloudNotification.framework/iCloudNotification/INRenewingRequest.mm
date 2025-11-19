@interface INRenewingRequest
- (void)performRequestWithSession:(id)a3 withHandler:(id)a4;
@end

@implementation INRenewingRequest

- (void)performRequestWithSession:(id)a3 withHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(INRenewingRequest *)self urlString];

  if (v8)
  {
    v10.receiver = self;
    v10.super_class = INRenewingRequest;
    [(INRenewingRequest *)&v10 performRequestWithSession:v6 withHandler:v7];
  }

  else
  {
    v9 = [(INRenewingRequest *)self account];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000CF14;
    v11[3] = &unk_100055560;
    v11[4] = self;
    v12 = v6;
    v13 = v7;
    [INBagRenewal attemptRenewCredentialsWithAccount:v9 completion:v11];
  }
}

@end