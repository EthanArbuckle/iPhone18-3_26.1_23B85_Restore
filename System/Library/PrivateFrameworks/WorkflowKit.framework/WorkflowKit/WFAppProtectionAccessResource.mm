@interface WFAppProtectionAccessResource
- (NSString)associatedAppIdentifier;
- (WFAppProtectionAccessResource)initWithDefinition:(id)definition;
- (WFAppProtectionAccessResource)initWithDefinition:(id)definition enableDistributedNotifications:(BOOL)notifications;
- (id)localizedErrorReasonForStatus:(unint64_t)status;
- (id)localizedErrorRecoveryOptionsForStatus:(unint64_t)status;
- (unint64_t)status;
- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription;
- (void)applicationContext:(id)context applicationStateDidChange:(int64_t)change;
- (void)makeAvailableWithUserInterface:(WFUserInterfaceHost *)interface completionHandler:(id)handler;
@end

@implementation WFAppProtectionAccessResource

- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription
{
  sub_1CA94D018();
  v5 = sub_1CA94C658();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1CA4DC358(v5);
  swift_unknownObjectRelease();
}

- (void)applicationContext:(id)context applicationStateDidChange:(int64_t)change
{
  contextCopy = context;
  selfCopy = self;
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
  selfCopy = self;
  v3 = sub_1CA4DCB3C();

  return v3;
}

- (id)localizedErrorReasonForStatus:(unint64_t)status
{
  selfCopy = self;
  sub_1CA4DCB94(status);
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

- (id)localizedErrorRecoveryOptionsForStatus:(unint64_t)status
{
  selfCopy = self;
  v5 = sub_1CA4DCFC0(status);

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

- (void)makeAvailableWithUserInterface:(WFUserInterfaceHost *)interface completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = interface;
  v7[3] = v6;
  v7[4] = self;
  swift_unknownObjectRetain();
  selfCopy = self;

  sub_1CA67052C(&unk_1CA9891A8, v7);
}

- (WFAppProtectionAccessResource)initWithDefinition:(id)definition enableDistributedNotifications:(BOOL)notifications
{
  if (definition)
  {
    sub_1CA94C1C8();
  }

  sub_1CA4DD9BC();
}

- (WFAppProtectionAccessResource)initWithDefinition:(id)definition
{
  if (definition)
  {
    sub_1CA94C1C8();
  }

  sub_1CA4DDA28();
}

@end