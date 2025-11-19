@interface NSTimeZone(UIKitAdditions)
+ (id)_ui_canonicalTimeZoneNameForTimeZoneName:()UIKitAdditions;
@end

@implementation NSTimeZone(UIKitAdditions)

+ (id)_ui_canonicalTimeZoneNameForTimeZoneName:()UIKitAdditions
{
  MEMORY[0x1EEE9AC00](a1);
  v8 = *MEMORY[0x1E69E9840];
  v2 = v1;
  v3 = v2;
  if (v2)
  {
    v4 = [v2 length];
    if (v4 >= 0x3FF)
    {
      v5 = 1023;
    }

    else
    {
      v5 = v4;
    }

    [v3 getCharacters:v7 range:{0, v5}];
    v7[v5] = 0;
    ucal_getCanonicalTimeZoneID();
  }

  return 0;
}

@end