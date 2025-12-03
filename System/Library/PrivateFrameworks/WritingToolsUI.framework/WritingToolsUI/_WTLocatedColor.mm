@interface _WTLocatedColor
+ (id)locatedColor:(id)color location:(double)location;
@end

@implementation _WTLocatedColor

+ (id)locatedColor:(id)color location:(double)location
{
  colorCopy = color;
  objc_opt_class();
  v6 = objc_opt_new();
  [v6 setColor:colorCopy];

  [v6 setLocation:location];

  return v6;
}

@end