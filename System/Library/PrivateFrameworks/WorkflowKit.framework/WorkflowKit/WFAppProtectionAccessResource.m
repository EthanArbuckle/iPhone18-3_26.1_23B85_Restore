@interface WFAppProtectionAccessResource
- (NSString)associatedAppIdentifier;
- (WFAppProtectionAccessResource)initWithDefinition:(id)a3;
- (WFAppProtectionAccessResource)initWithDefinition:(id)a3 enableDistributedNotifications:(BOOL)a4;
- (id)localizedErrorReasonForStatus:(unint64_t)a3;
- (id)localizedErrorRecoveryOptionsForStatus:(unint64_t)a3;
- (unint64_t)status;
- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4;
- (void)applicationContext:(id)a3 applicationStateDidChange:(int64_t)a4;
- (void)makeAvailableWithUserInterface:(WFUserInterfaceHost *)a3 completionHandler:(id)a4;
@end

@implementation WFAppProtectionAccessResource

- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4
{
  sub_1CA94D018();
  v5 = sub_1CA94C658();
  swift_unknownObjectRetain();
  v6 = self;
  sub_1CA4DC358(v5);
  swift_unknownObjectRelease();
}

- (void)applicationContext:(id)a3 applicationStateDidChange:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  sub_1CA4DC64C();
}

- (NSString)associatedAppIdentifier
{
  sub_1CA4DCACC();
  if (v2)
  {
    v3 = sub_1CA94C368();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (unint64_t)status
{
  v2 = self;
  v3 = sub_1CA4DCB3C();

  return v3;
}

- (id)localizedErrorReasonForStatus:(unint64_t)a3
{
  v4 = self;
  sub_1CA4DCB94(a3);
  v6 = v5;

  if (v6)
  {
    v7 = sub_1CA94C368();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)localizedErrorRecoveryOptionsForStatus:(unint64_t)a3
{
  v4 = self;
  v5 = sub_1CA4DCFC0(a3);

  if (v5)
  {
    v6 = sub_1CA94C648();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)makeAvailableWithUserInterface:(WFUserInterfaceHost *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  swift_unknownObjectRetain();
  v8 = self;

  sub_1CA67052C(&unk_1CA9891A8, v7);
}

- (WFAppProtectionAccessResource)initWithDefinition:(id)a3 enableDistributedNotifications:(BOOL)a4
{
  if (a3)
  {
    sub_1CA94C1C8();
  }

  sub_1CA4DD9BC();
}

- (WFAppProtectionAccessResource)initWithDefinition:(id)a3
{
  if (a3)
  {
    sub_1CA94C1C8();
  }

  sub_1CA4DDA28();
}

@end