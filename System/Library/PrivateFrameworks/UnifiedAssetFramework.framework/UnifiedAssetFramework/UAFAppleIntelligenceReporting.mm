@interface UAFAppleIntelligenceReporting
+ (void)recordEvent:(id)event :(id)a4 :(int64_t)a5;
- (UAFAppleIntelligenceReporting)init;
@end

@implementation UAFAppleIntelligenceReporting

+ (void)recordEvent:(id)event :(id)a4 :(int64_t)a5
{
  v6 = sub_1BCFA7D58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2B528, &qword_1BCFAC3C8);
  v7 = sub_1BCFA7D98();
  sub_1BCF35C58(v6, v7, a5);
}

- (UAFAppleIntelligenceReporting)init
{
  v3.receiver = self;
  v3.super_class = UAFAppleIntelligenceReporting;
  return [(UAFAppleIntelligenceReporting *)&v3 init];
}

@end