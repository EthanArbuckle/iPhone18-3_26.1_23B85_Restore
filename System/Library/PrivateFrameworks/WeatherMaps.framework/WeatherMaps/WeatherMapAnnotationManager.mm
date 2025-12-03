@interface WeatherMapAnnotationManager
- (void)didRecognizeClickOnAnnotationContentView:(id)view;
@end

@implementation WeatherMapAnnotationManager

- (void)didRecognizeClickOnAnnotationContentView:(id)view
{
  viewCopy = view;

  sub_220F2643C(viewCopy);
}

@end