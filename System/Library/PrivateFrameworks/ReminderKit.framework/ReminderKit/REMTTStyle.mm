@interface REMTTStyle
+ (id)attributeNameForStyle:(int64_t)style;
@end

@implementation REMTTStyle

+ (id)attributeNameForStyle:(int64_t)style
{
  if (style <= 2)
  {
    self = *off_1E7508A20[style];
  }

  return self;
}

@end