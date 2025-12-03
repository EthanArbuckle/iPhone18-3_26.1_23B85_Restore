@interface CNVCardTagInclusion
+ (id)policyWithTags:(id)tags;
- (_TtC5vCard19CNVCardTagInclusion)init;
@end

@implementation CNVCardTagInclusion

+ (id)policyWithTags:(id)tags
{
  if (tags)
  {
    v3 = sub_27721AD14();
    v4 = objc_allocWithZone(type metadata accessor for CNVCardTagInclusionRestrictedPolicy());
    v5 = sub_2772197B8(v3);
  }

  else
  {
    v5 = [objc_allocWithZone(type metadata accessor for CNVCardTagInclusionPermissivePolicy()) init];
  }

  return v5;
}

- (_TtC5vCard19CNVCardTagInclusion)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CNVCardTagInclusion();
  return [(CNVCardTagInclusion *)&v3 init];
}

@end