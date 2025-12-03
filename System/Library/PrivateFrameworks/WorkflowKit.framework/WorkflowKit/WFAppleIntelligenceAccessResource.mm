@interface WFAppleIntelligenceAccessResource
- (NSString)name;
- (WFImage)icon;
- (_TtC11WorkflowKit33WFAppleIntelligenceAccessResource)initWithDefinition:(id)definition;
- (_TtC11WorkflowKit33WFAppleIntelligenceAccessResource)initWithDefinition:(id)definition enableDistributedNotifications:(BOOL)notifications;
- (id)localizedErrorReasonForStatus:(unint64_t)status;
- (id)localizedErrorRecoveryOptionsForStatus:(unint64_t)status;
- (unint64_t)status;
- (void)attemptRecoveryFromError:(NSError *)error optionIndex:(int64_t)index userInterface:(WFUserInterfaceHost *)interface completionHandler:(id)handler;
- (void)makeAvailableWithUserInterface:(WFUserInterfaceHost *)interface completionHandler:(id)handler;
@end

@implementation WFAppleIntelligenceAccessResource

- (NSString)name
{
  selfCopy = self;
  sub_1CA2AA43C();
  v4 = v3;

  if (v4)
  {
    v5 = sub_1CA94C368();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (WFImage)icon
{
  selfCopy = self;
  v3 = sub_1CA2AA52C();

  return v3;
}

- (unint64_t)status
{
  selfCopy = self;
  v3 = sub_1CA2AA6D4();

  return v3;
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

  sub_1CA67052C(&unk_1CA981618, v7);
}

- (id)localizedErrorReasonForStatus:(unint64_t)status
{
  selfCopy = self;
  sub_1CA2AAC1C(status);
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
  v5 = sub_1CA2ACB84(status);

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

- (void)attemptRecoveryFromError:(NSError *)error optionIndex:(int64_t)index userInterface:(WFUserInterfaceHost *)interface completionHandler:(id)handler
{
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = error;
  v11[3] = index;
  v11[4] = interface;
  v11[5] = v10;
  v11[6] = self;
  errorCopy = error;
  swift_unknownObjectRetain();
  selfCopy = self;

  sub_1CA67052C(&unk_1CA9815D8, v11);
}

- (_TtC11WorkflowKit33WFAppleIntelligenceAccessResource)initWithDefinition:(id)definition enableDistributedNotifications:(BOOL)notifications
{
  if (definition)
  {
    sub_1CA94C1C8();
  }

  sub_1CA2AD2BC();
}

- (_TtC11WorkflowKit33WFAppleIntelligenceAccessResource)initWithDefinition:(id)definition
{
  if (definition)
  {
    sub_1CA94C1C8();
  }

  sub_1CA2AD5CC();
}

@end