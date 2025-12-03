@interface WFTableTemplateEntityUpdaterParameter
- (Class)singleStateClass;
- (WFPropertyListObject)defaultSerializedRepresentation;
- (__CFString)importQuestionBehavior;
@end

@implementation WFTableTemplateEntityUpdaterParameter

- (__CFString)importQuestionBehavior
{
  v0 = sub_1CA50E2B0();

  return v0;
}

- (WFPropertyListObject)defaultSerializedRepresentation
{
  selfCopy = self;
  v3 = sub_1CA50FB88();

  return v3;
}

- (Class)singleStateClass
{
  sub_1CA50FDA8();

  return swift_getObjCClassFromMetadata();
}

@end