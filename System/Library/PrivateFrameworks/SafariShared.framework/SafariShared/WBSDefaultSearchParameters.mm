@interface WBSDefaultSearchParameters
+ (NSNumber)prefixNavigationalIntentThreshold;
- (WBSDefaultSearchParameters)init;
@end

@implementation WBSDefaultSearchParameters

+ (NSNumber)prefixNavigationalIntentThreshold
{
  if (qword_1EBC78930 != -1)
  {
    swift_once();
  }

  v3 = qword_1EBC789C0;

  return v3;
}

- (WBSDefaultSearchParameters)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(WBSDefaultSearchParameters *)&v3 init];
}

@end