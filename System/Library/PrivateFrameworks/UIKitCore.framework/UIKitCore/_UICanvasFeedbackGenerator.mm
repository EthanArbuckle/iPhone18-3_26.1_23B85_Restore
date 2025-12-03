@interface _UICanvasFeedbackGenerator
- (_UICanvasFeedbackGenerator)init;
- (_UICanvasFeedbackGenerator)initWithConfiguration:(id)configuration;
- (_UICanvasFeedbackGenerator)initWithConfiguration:(id)configuration coordinateSpace:(id)space;
- (_UICanvasFeedbackGenerator)initWithConfiguration:(id)configuration view:(id)view;
- (_UICanvasFeedbackGenerator)initWithCoordinateSpace:(id)space;
- (_UICanvasFeedbackGenerator)initWithView:(id)view;
@end

@implementation _UICanvasFeedbackGenerator

- (_UICanvasFeedbackGenerator)initWithView:(id)view
{
  v4.receiver = self;
  v4.super_class = _UICanvasFeedbackGenerator;
  return [(UICanvasFeedbackGenerator *)&v4 initWithView:view];
}

- (_UICanvasFeedbackGenerator)initWithConfiguration:(id)configuration view:(id)view
{
  v5.receiver = self;
  v5.super_class = _UICanvasFeedbackGenerator;
  return [(UICanvasFeedbackGenerator *)&v5 initWithConfiguration:configuration view:view];
}

- (_UICanvasFeedbackGenerator)init
{
  v3.receiver = self;
  v3.super_class = _UICanvasFeedbackGenerator;
  return [(UICanvasFeedbackGenerator *)&v3 init];
}

- (_UICanvasFeedbackGenerator)initWithCoordinateSpace:(id)space
{
  v4.receiver = self;
  v4.super_class = _UICanvasFeedbackGenerator;
  return [(UICanvasFeedbackGenerator *)&v4 initWithCoordinateSpace:space];
}

- (_UICanvasFeedbackGenerator)initWithConfiguration:(id)configuration coordinateSpace:(id)space
{
  v5.receiver = self;
  v5.super_class = _UICanvasFeedbackGenerator;
  return [(UICanvasFeedbackGenerator *)&v5 initWithConfiguration:configuration coordinateSpace:space];
}

- (_UICanvasFeedbackGenerator)initWithConfiguration:(id)configuration
{
  v4.receiver = self;
  v4.super_class = _UICanvasFeedbackGenerator;
  return [(UICanvasFeedbackGenerator *)&v4 initWithConfiguration:configuration];
}

@end