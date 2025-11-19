@interface WFAppleIntelligenceAccessResource
- (NSString)name;
- (WFImage)icon;
- (_TtC11WorkflowKit33WFAppleIntelligenceAccessResource)initWithDefinition:(id)a3;
- (_TtC11WorkflowKit33WFAppleIntelligenceAccessResource)initWithDefinition:(id)a3 enableDistributedNotifications:(BOOL)a4;
- (id)localizedErrorReasonForStatus:(unint64_t)a3;
- (id)localizedErrorRecoveryOptionsForStatus:(unint64_t)a3;
- (unint64_t)status;
- (void)attemptRecoveryFromError:(NSError *)a3 optionIndex:(int64_t)a4 userInterface:(WFUserInterfaceHost *)a5 completionHandler:(id)a6;
- (void)makeAvailableWithUserInterface:(WFUserInterfaceHost *)a3 completionHandler:(id)a4;
@end

@implementation WFAppleIntelligenceAccessResource

- (NSString)name
{
  v2 = self;
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
  v2 = self;
  v3 = sub_1CA2AA52C();

  return v3;
}

- (unint64_t)status
{
  v2 = self;
  v3 = sub_1CA2AA6D4();

  return v3;
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

  sub_1CA67052C(&unk_1CA981618, v7);
}

- (id)localizedErrorReasonForStatus:(unint64_t)a3
{
  v4 = self;
  sub_1CA2AAC1C(a3);
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
  v5 = sub_1CA2ACB84(a3);

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

- (void)attemptRecoveryFromError:(NSError *)a3 optionIndex:(int64_t)a4 userInterface:(WFUserInterfaceHost *)a5 completionHandler:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v10;
  v11[6] = self;
  v12 = a3;
  swift_unknownObjectRetain();
  v13 = self;

  sub_1CA67052C(&unk_1CA9815D8, v11);
}

- (_TtC11WorkflowKit33WFAppleIntelligenceAccessResource)initWithDefinition:(id)a3 enableDistributedNotifications:(BOOL)a4
{
  if (a3)
  {
    sub_1CA94C1C8();
  }

  sub_1CA2AD2BC();
}

- (_TtC11WorkflowKit33WFAppleIntelligenceAccessResource)initWithDefinition:(id)a3
{
  if (a3)
  {
    sub_1CA94C1C8();
  }

  sub_1CA2AD5CC();
}

@end