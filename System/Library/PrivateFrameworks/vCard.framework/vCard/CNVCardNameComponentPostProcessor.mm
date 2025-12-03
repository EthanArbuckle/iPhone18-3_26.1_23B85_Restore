@interface CNVCardNameComponentPostProcessor
+ (void)postProcessNameComponents:(id)components;
- (_TtC5vCard33CNVCardNameComponentPostProcessor)init;
@end

@implementation CNVCardNameComponentPostProcessor

+ (void)postProcessNameComponents:(id)components
{
  componentsCopy = components;
  sub_277218D88(componentsCopy);
  sub_277219204(componentsCopy);
}

- (_TtC5vCard33CNVCardNameComponentPostProcessor)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CNVCardNameComponentPostProcessor();
  return [(CNVCardNameComponentPostProcessor *)&v3 init];
}

@end