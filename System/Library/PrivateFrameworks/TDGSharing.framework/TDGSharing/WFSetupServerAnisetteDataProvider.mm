@interface WFSetupServerAnisetteDataProvider
- (ACAccount)transportableAuthKitAccount;
- (AKDevice)companionAuthDevice;
- (CUMessageSession)session;
- (_TtC10TDGSharing33WFSetupServerAnisetteDataProvider)init;
- (_TtC10TDGSharing33WFSetupServerAnisetteDataProvider)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)eraseAnisetteWithCompletion:(id)a3;
- (void)fetchAnisetteDataAndProvisionIfNecessary:(BOOL)a3 withCompletion:(id)a4;
- (void)legacyAnisetteDataForDSID:(id)a3 withCompletion:(id)a4;
- (void)provisionAnisetteWithCompletion:(id)a3;
- (void)syncAnisetteWithSIMData:(id)a3 completion:(id)a4;
@end

@implementation WFSetupServerAnisetteDataProvider

- (CUMessageSession)session
{
  v3 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_session;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (AKDevice)companionAuthDevice
{
  v3 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_companionAuthDevice;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (ACAccount)transportableAuthKitAccount
{
  v3 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_transportableAuthKitAccount;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (_TtC10TDGSharing33WFSetupServerAnisetteDataProvider)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_26C6D7B44();

  return v4;
}

- (void)provisionAnisetteWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_26C6D8644;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = self;
  sub_26C6D08DC(v7, v6);
  sub_26C676904(v7);
}

- (void)syncAnisetteWithSIMData:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  if (a3)
  {
    v6 = self;
    v7 = a3;
    a3 = sub_26C6D87A8();
    v9 = v8;

    if (v5)
    {
LABEL_3:
      v10 = swift_allocObject();
      *(v10 + 16) = v5;
      v11 = sub_26C6D8644;
      goto LABEL_6;
    }
  }

  else
  {
    v12 = self;
    v9 = 0xF000000000000000;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v11 = 0;
  v10 = 0;
LABEL_6:
  sub_26C6D1B00(a3, v9, v11, v10);
  sub_26C676904(v11);
  sub_26C67EE70(a3, v9);
}

- (void)eraseAnisetteWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_26C6D849C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = self;
  sub_26C6D2BA4(v7, v6);
  sub_26C676904(v7);
}

- (void)fetchAnisetteDataAndProvisionIfNecessary:(BOOL)a3 withCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_26C6D8640;
  }

  else
  {
    v7 = 0;
  }

  v8 = self;
  sub_26C6D3BA4(a3, v6, v7);
  sub_26C676904(v6);
}

- (void)legacyAnisetteDataForDSID:(id)a3 withCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = v6;
  if (a3)
  {
    v8 = sub_26C6D8A08();
    a3 = v9;
    if (v7)
    {
LABEL_3:
      v10 = swift_allocObject();
      *(v10 + 16) = v7;
      v7 = sub_26C6D8494;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:
  v11 = self;
  sub_26C6D4DC8(v8, a3, v7, v10);
  sub_26C676904(v7);
}

- (_TtC10TDGSharing33WFSetupServerAnisetteDataProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  WFSetupServerAnisetteDataProvider.encode(with:)(v4);
}

@end