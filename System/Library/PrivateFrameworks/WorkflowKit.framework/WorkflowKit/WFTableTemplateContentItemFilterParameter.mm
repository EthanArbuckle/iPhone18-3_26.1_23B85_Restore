@interface WFTableTemplateContentItemFilterParameter
- (Class)singleStateClass;
- (NSDictionary)linkValueTypes;
- (NSString)importQuestionBehavior;
- (WFPropertyListObject)defaultSerializedRepresentation;
- (void)setLinkValueTypes:(id)types;
@end

@implementation WFTableTemplateContentItemFilterParameter

- (NSDictionary)linkValueTypes
{
  sub_1CA50E54C();
  sub_1CA25B3D0(0, &unk_1EC441AB0, 0x1E69ACAA0);
  v2 = sub_1CA94C1A8();

  return v2;
}

- (void)setLinkValueTypes:(id)types
{
  sub_1CA25B3D0(0, &unk_1EC441AB0, 0x1E69ACAA0);
  v4 = sub_1CA94C1C8();
  selfCopy = self;
  sub_1CA50E624(v4);
}

- (Class)singleStateClass
{
  sub_1CA50EA20();

  return swift_getObjCClassFromMetadata();
}

- (WFPropertyListObject)defaultSerializedRepresentation
{
  selfCopy = self;
  v3 = sub_1CA50EB14();

  return v3;
}

- (NSString)importQuestionBehavior
{
  v2 = sub_1CA50EBC0();

  return v2;
}

@end