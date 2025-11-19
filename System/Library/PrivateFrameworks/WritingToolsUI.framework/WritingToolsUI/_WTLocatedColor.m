@interface _WTLocatedColor
+ (id)locatedColor:(id)a3 location:(double)a4;
@end

@implementation _WTLocatedColor

+ (id)locatedColor:(id)a3 location:(double)a4
{
  v5 = a3;
  objc_opt_class();
  v6 = objc_opt_new();
  [v6 setColor:v5];

  [v6 setLocation:a4];

  return v6;
}

@end