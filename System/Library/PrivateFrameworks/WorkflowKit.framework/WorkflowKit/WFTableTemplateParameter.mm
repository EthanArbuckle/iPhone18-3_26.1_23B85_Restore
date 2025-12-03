@interface WFTableTemplateParameter
- (Class)singleStateClass;
- (WFPropertyListObject)defaultSerializedRepresentation;
@end

@implementation WFTableTemplateParameter

- (Class)singleStateClass
{
  sub_1CA50E1A4();

  return swift_getObjCClassFromMetadata();
}

- (WFPropertyListObject)defaultSerializedRepresentation
{
  selfCopy = self;
  v3 = sub_1CA50E27C();

  return v3;
}

@end