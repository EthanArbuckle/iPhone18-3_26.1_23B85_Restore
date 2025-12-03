@interface WFLinkActionDurationParameterDefinition
- (Class)parameterClass;
- (id)linkValueFromParameterState:(id)state action:(id)action;
- (id)linkValueWithValue:(id)value;
- (id)parameterStateFromLinkValue:(id)value;
@end

@implementation WFLinkActionDurationParameterDefinition

- (Class)parameterClass
{
  sub_1CA48E2EC();

  return swift_getObjCClassFromMetadata();
}

- (id)parameterStateFromLinkValue:(id)value
{
  valueCopy = value;
  selfCopy = self;
  v7 = sub_1CA48E318(value);

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

  v6 = sub_1CA48E448(v8);

  sub_1CA2C0A74(v8);

  return v6;
}

- (id)linkValueFromParameterState:(id)state action:(id)action
{
  swift_unknownObjectRetain();
  actionCopy = action;
  selfCopy = self;
  v9 = sub_1CA48E670(state);
  swift_unknownObjectRelease();

  return v9;
}

@end