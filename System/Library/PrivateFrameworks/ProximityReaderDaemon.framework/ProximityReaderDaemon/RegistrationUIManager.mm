@interface RegistrationUIManager
- (void)notifyRegUIResultWithResult:(id)result;
- (void)regUIAccountWithAccount:(id)account tosVersion:(id)version;
- (void)regUIFinishedWithUserCancelled:(BOOL)cancelled regStatus:(BOOL)status;
@end

@implementation RegistrationUIManager

- (void)notifyRegUIResultWithResult:(id)result
{
  v3 = sub_2613A18CC();
  v5 = v4;

  sub_261279DB0(v3, v5);
}

- (void)regUIAccountWithAccount:(id)account tosVersion:(id)version
{
  v6 = sub_2613A18CC();
  v8 = v7;
  v9 = *(*self + 288);
  accountCopy = account;

  v12 = v9(v11);
  if (v12)
  {
    v13 = v12;
    sub_26131D8E8(accountCopy, v6, v8);
  }
}

- (void)regUIFinishedWithUserCancelled:(BOOL)cancelled regStatus:(BOOL)status
{
  v6 = *(*self + 288);

  v7 = v6();
  if (v7)
  {
    v8 = v7;
    sub_26131DC10(cancelled, status);
  }

  sub_26127BC3C();
}

@end