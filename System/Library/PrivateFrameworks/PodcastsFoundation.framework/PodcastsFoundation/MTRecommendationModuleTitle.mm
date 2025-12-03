@interface MTRecommendationModuleTitle
- (MTRecommendationModuleTitle)init;
- (NSString)stringForDisplay;
- (void)setStringForDisplay:(id)display;
@end

@implementation MTRecommendationModuleTitle

- (NSString)stringForDisplay
{
  v2 = (self + OBJC_IVAR___MTRecommendationModuleTitle_stringForDisplay);
  swift_beginAccess();
  if (v2[1])
  {
    v3 = *v2;

    v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setStringForDisplay:(id)display
{
  if (display)
  {
    v4 = sub_1D917820C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___MTRecommendationModuleTitle_stringForDisplay);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (MTRecommendationModuleTitle)init
{
  ObjectType = swift_getObjectType();
  v4 = (self + OBJC_IVAR___MTRecommendationModuleTitle_stringForDisplay);
  *v4 = 0;
  v4[1] = 0;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(MTRecommendationModuleTitle *)&v6 init];
}

@end