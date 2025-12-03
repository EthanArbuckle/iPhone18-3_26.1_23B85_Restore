@interface MTRecommendationModuleAttributes
- (MTRecommendationModuleAttributes)init;
- (MTRecommendationModuleTitle)title;
- (void)setTitle:(id)title;
@end

@implementation MTRecommendationModuleAttributes

- (MTRecommendationModuleTitle)title
{
  v3 = OBJC_IVAR___MTRecommendationModuleAttributes_title;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setTitle:(id)title
{
  v5 = OBJC_IVAR___MTRecommendationModuleAttributes_title;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = title;
  titleCopy = title;
}

- (MTRecommendationModuleAttributes)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___MTRecommendationModuleAttributes_title) = 0;
  *(&self->super.isa + OBJC_IVAR___MTRecommendationModuleAttributes_resourceTypes) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(MTRecommendationModuleAttributes *)&v5 init];
}

@end