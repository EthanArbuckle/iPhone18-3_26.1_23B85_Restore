@interface UICanvasFeedbackGenerator
+ (Class)_configurationClass;
- (UICanvasFeedbackGenerator)init;
- (UICanvasFeedbackGenerator)initWithConfiguration:(id)configuration;
- (UICanvasFeedbackGenerator)initWithConfiguration:(id)configuration coordinateSpace:(id)space;
- (UICanvasFeedbackGenerator)initWithConfiguration:(id)configuration view:(id)view;
- (UICanvasFeedbackGenerator)initWithCoordinateSpace:(id)space;
- (UICanvasFeedbackGenerator)initWithView:(id)view;
@end

@implementation UICanvasFeedbackGenerator

- (UICanvasFeedbackGenerator)initWithView:(id)view
{
  v4.receiver = self;
  v4.super_class = UICanvasFeedbackGenerator;
  return [(UIFeedbackGenerator *)&v4 initWithView:view];
}

+ (Class)_configurationClass
{
  type metadata accessor for _UICanvasFeedbackGeneratorConfiguration();

  return swift_getObjCClassFromMetadata();
}

- (UICanvasFeedbackGenerator)initWithConfiguration:(id)configuration view:(id)view
{
  v5.receiver = self;
  v5.super_class = UICanvasFeedbackGenerator;
  return [(UIFeedbackGenerator *)&v5 initWithConfiguration:configuration view:view];
}

- (UICanvasFeedbackGenerator)init
{
  v3.receiver = self;
  v3.super_class = UICanvasFeedbackGenerator;
  return [(UIFeedbackGenerator *)&v3 init];
}

- (UICanvasFeedbackGenerator)initWithCoordinateSpace:(id)space
{
  v4.receiver = self;
  v4.super_class = UICanvasFeedbackGenerator;
  return [(UIFeedbackGenerator *)&v4 initWithCoordinateSpace:space];
}

- (UICanvasFeedbackGenerator)initWithConfiguration:(id)configuration coordinateSpace:(id)space
{
  v5.receiver = self;
  v5.super_class = UICanvasFeedbackGenerator;
  return [(UIFeedbackGenerator *)&v5 initWithConfiguration:configuration coordinateSpace:space];
}

- (UICanvasFeedbackGenerator)initWithConfiguration:(id)configuration
{
  v4.receiver = self;
  v4.super_class = UICanvasFeedbackGenerator;
  return [(UIFeedbackGenerator *)&v4 initWithConfiguration:configuration];
}

@end