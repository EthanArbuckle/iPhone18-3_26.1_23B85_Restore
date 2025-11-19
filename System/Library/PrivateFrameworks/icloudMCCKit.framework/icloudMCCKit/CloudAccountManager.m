@interface CloudAccountManager
- (CloudAccountManager)init;
- (id)getAppleAccountWithEmailAddress:(id)a3 error:(id *)a4;
- (id)getPrimaryAppleAccountAndReturnError:(id *)a3;
@end

@implementation CloudAccountManager

- (id)getAppleAccountWithEmailAddress:(id)a3 error:(id *)a4
{
  v5 = sub_1D373797C();
  v7 = v6;
  v8 = self;
  v9 = sub_1D3735DC8(v5, v7);

  return v9;
}

- (id)getPrimaryAppleAccountAndReturnError:(id *)a3
{
  v4 = [objc_opt_self() defaultStore];
  v5 = v4;
  if (v4 && (v6 = [v4 aa_primaryAppleAccount]) != 0)
  {
    v7 = v6;

    v8 = v7;
  }

  else
  {
    sub_1D3735A08();
    v9 = swift_allocError();
    swift_willThrow();

    if (a3)
    {
      v10 = sub_1D373759C();

      v11 = v10;
      v8 = 0;
      *a3 = v10;
    }

    else
    {

      v8 = 0;
    }
  }

  return v8;
}

- (CloudAccountManager)init
{
  v2 = (&self->super.isa + OBJC_IVAR___CloudAccountManager_userDefaultsMailAppGroup);
  *v2 = 0xD000000000000014;
  v2[1] = 0x80000001D373B800;
  v3 = (&self->super.isa + OBJC_IVAR___CloudAccountManager_mailPropertyKey);
  *v3 = 0xD000000000000023;
  v3[1] = 0x80000001D373C0E0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for CloudAccountManager();
  return [(CloudAccountManager *)&v5 init];
}

@end