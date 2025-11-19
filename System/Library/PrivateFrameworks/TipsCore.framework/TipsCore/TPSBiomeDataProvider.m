@interface TPSBiomeDataProvider
+ (void)donateEventWithIdentifier:(id)a3 context:(id)a4 userInfo:(id)a5;
- (void)deregisterWakingForAllRegistrations;
- (void)deregisterWakingForRegistrationID:(id)a3;
- (void)registerWakingForEventWithEvent:(id)a3 registrationID:(id)a4 clientIdentifier:(id)a5 completion:(id)a6;
@end

@implementation TPSBiomeDataProvider

+ (void)donateEventWithIdentifier:(id)a3 context:(id)a4 userInfo:(id)a5
{
  v7 = sub_1C014C230();
  v9 = v8;
  if (a4)
  {
    v10 = sub_1C014C230();
    a4 = v11;
    if (a5)
    {
LABEL_3:
      v12 = a5;
      a5 = sub_1C014BCC0();
      v14 = v13;

      goto LABEL_6;
    }
  }

  else
  {
    v10 = 0;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v14 = 0xF000000000000000;
LABEL_6:
  sub_1C0149144(v7, v9, v10, a4, a5, v14);
  sub_1C01166E0(a5, v14);
}

- (void)registerWakingForEventWithEvent:(id)a3 registrationID:(id)a4 clientIdentifier:(id)a5 completion:(id)a6
{
  v9 = _Block_copy(a6);
  v10 = sub_1C014C230();
  v12 = v11;
  if (a5)
  {
    sub_1C014C230();
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  v14 = a3;
  v15 = self;
  sub_1C0149604(v14, v10, v12, sub_1C01495AC, v13);
}

- (void)deregisterWakingForAllRegistrations
{
  v2 = self;
  sub_1C0147F20();
}

- (void)deregisterWakingForRegistrationID:(id)a3
{
  v4 = sub_1C014C230();
  v6 = v5;
  v7 = self;
  sub_1C01483B0(v4, v6);
}

@end