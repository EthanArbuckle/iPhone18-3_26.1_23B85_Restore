@interface CNVCardNameComponentPostProcessor
+ (void)postProcessNameComponents:(id)a3;
- (_TtC5vCard33CNVCardNameComponentPostProcessor)init;
@end

@implementation CNVCardNameComponentPostProcessor

+ (void)postProcessNameComponents:(id)a3
{
  v3 = a3;
  sub_277218D88(v3);
  sub_277219204(v3);
}

- (_TtC5vCard33CNVCardNameComponentPostProcessor)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CNVCardNameComponentPostProcessor();
  return [(CNVCardNameComponentPostProcessor *)&v3 init];
}

@end