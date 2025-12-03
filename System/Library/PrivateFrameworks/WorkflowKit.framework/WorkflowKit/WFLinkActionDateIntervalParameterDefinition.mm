@interface WFLinkActionDateIntervalParameterDefinition
- (Class)parameterClass;
- (id)linkValueFromParameterState:(id)state action:(id)action;
- (id)linkValueWithValue:(id)value;
- (id)parameterStateFromLinkValue:(id)value;
@end

@implementation WFLinkActionDateIntervalParameterDefinition

- (Class)parameterClass
{
  sub_1CA33C2C4();

  return swift_getObjCClassFromMetadata();
}

- (id)parameterStateFromLinkValue:(id)value
{
  valueCopy = value;
  selfCopy = self;
  v7 = sub_1CA33C2F0(value);

  return v7;
}

- (id)linkValueWithValue:(id)value
{
  if (value)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1CA94D258();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_1CA33C540(v8);

  sub_1CA30F7DC(v8, &unk_1EC444650, &unk_1CA981C70);

  return v6;
}

- (id)linkValueFromParameterState:(id)state action:(id)action
{
  swift_unknownObjectRetain();
  actionCopy = action;
  selfCopy = self;
  v9 = sub_1CA33C8BC(state);
  swift_unknownObjectRelease();

  return v9;
}

@end