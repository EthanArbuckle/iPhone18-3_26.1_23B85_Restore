@interface WFLinkActionDateIntervalParameterDefinition
- (Class)parameterClass;
- (id)linkValueFromParameterState:(id)a3 action:(id)a4;
- (id)linkValueWithValue:(id)a3;
- (id)parameterStateFromLinkValue:(id)a3;
@end

@implementation WFLinkActionDateIntervalParameterDefinition

- (Class)parameterClass
{
  sub_1CA33C2C4();

  return swift_getObjCClassFromMetadata();
}

- (id)parameterStateFromLinkValue:(id)a3
{
  v5 = a3;
  v6 = self;
  v7 = sub_1CA33C2F0(a3);

  return v7;
}

- (id)linkValueWithValue:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1CA94D258();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_1CA33C540(v8);

  sub_1CA30F7DC(v8, &unk_1EC444650, &unk_1CA981C70);

  return v6;
}

- (id)linkValueFromParameterState:(id)a3 action:(id)a4
{
  swift_unknownObjectRetain();
  v7 = a4;
  v8 = self;
  v9 = sub_1CA33C8BC(a3);
  swift_unknownObjectRelease();

  return v9;
}

@end