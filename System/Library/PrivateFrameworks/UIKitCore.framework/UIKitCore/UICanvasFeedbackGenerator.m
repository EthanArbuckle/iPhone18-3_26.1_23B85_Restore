@interface UICanvasFeedbackGenerator
+ (Class)_configurationClass;
- (UICanvasFeedbackGenerator)init;
- (UICanvasFeedbackGenerator)initWithConfiguration:(id)a3;
- (UICanvasFeedbackGenerator)initWithConfiguration:(id)a3 coordinateSpace:(id)a4;
- (UICanvasFeedbackGenerator)initWithConfiguration:(id)a3 view:(id)a4;
- (UICanvasFeedbackGenerator)initWithCoordinateSpace:(id)a3;
- (UICanvasFeedbackGenerator)initWithView:(id)a3;
@end

@implementation UICanvasFeedbackGenerator

- (UICanvasFeedbackGenerator)initWithView:(id)a3
{
  v4.receiver = self;
  v4.super_class = UICanvasFeedbackGenerator;
  return [(UIFeedbackGenerator *)&v4 initWithView:a3];
}

+ (Class)_configurationClass
{
  type metadata accessor for _UICanvasFeedbackGeneratorConfiguration();

  return swift_getObjCClassFromMetadata();
}

- (UICanvasFeedbackGenerator)initWithConfiguration:(id)a3 view:(id)a4
{
  v5.receiver = self;
  v5.super_class = UICanvasFeedbackGenerator;
  return [(UIFeedbackGenerator *)&v5 initWithConfiguration:a3 view:a4];
}

- (UICanvasFeedbackGenerator)init
{
  v3.receiver = self;
  v3.super_class = UICanvasFeedbackGenerator;
  return [(UIFeedbackGenerator *)&v3 init];
}

- (UICanvasFeedbackGenerator)initWithCoordinateSpace:(id)a3
{
  v4.receiver = self;
  v4.super_class = UICanvasFeedbackGenerator;
  return [(UIFeedbackGenerator *)&v4 initWithCoordinateSpace:a3];
}

- (UICanvasFeedbackGenerator)initWithConfiguration:(id)a3 coordinateSpace:(id)a4
{
  v5.receiver = self;
  v5.super_class = UICanvasFeedbackGenerator;
  return [(UIFeedbackGenerator *)&v5 initWithConfiguration:a3 coordinateSpace:a4];
}

- (UICanvasFeedbackGenerator)initWithConfiguration:(id)a3
{
  v4.receiver = self;
  v4.super_class = UICanvasFeedbackGenerator;
  return [(UIFeedbackGenerator *)&v4 initWithConfiguration:a3];
}

@end