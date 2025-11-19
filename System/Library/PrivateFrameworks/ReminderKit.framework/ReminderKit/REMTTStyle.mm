@interface REMTTStyle
+ (id)attributeNameForStyle:(int64_t)a3;
@end

@implementation REMTTStyle

+ (id)attributeNameForStyle:(int64_t)a3
{
  if (a3 <= 2)
  {
    a1 = *off_1E7508A20[a3];
  }

  return a1;
}

@end