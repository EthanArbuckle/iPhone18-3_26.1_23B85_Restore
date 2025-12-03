@interface NSBundle(WeatherDaemon)
- (id)createObjectInstanceWithClassName:()WeatherDaemon;
@end

@implementation NSBundle(WeatherDaemon)

- (id)createObjectInstanceWithClassName:()WeatherDaemon
{
  v1 = objc_alloc_init([self classNamed:?]);

  return v1;
}

@end