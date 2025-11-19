@interface RegistrationUIManager
- (void)notifyRegUIResultWithResult:(id)a3;
- (void)regUIAccountWithAccount:(id)a3 tosVersion:(id)a4;
- (void)regUIFinishedWithUserCancelled:(BOOL)a3 regStatus:(BOOL)a4;
@end

@implementation RegistrationUIManager

- (void)notifyRegUIResultWithResult:(id)a3
{
  v3 = sub_2613A18CC();
  v5 = v4;

  sub_261279DB0(v3, v5);
}

- (void)regUIAccountWithAccount:(id)a3 tosVersion:(id)a4
{
  v6 = sub_2613A18CC();
  v8 = v7;
  v9 = *(*self + 288);
  v10 = a3;

  v12 = v9(v11);
  if (v12)
  {
    v13 = v12;
    sub_26131D8E8(v10, v6, v8);
  }
}

- (void)regUIFinishedWithUserCancelled:(BOOL)a3 regStatus:(BOOL)a4
{
  v6 = *(*self + 288);

  v7 = v6();
  if (v7)
  {
    v8 = v7;
    sub_26131DC10(a3, a4);
  }

  sub_26127BC3C();
}

@end