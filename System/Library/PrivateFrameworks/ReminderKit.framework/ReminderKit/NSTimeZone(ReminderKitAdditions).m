@interface NSTimeZone(ReminderKitAdditions)
- (uint64_t)rem_isEquivalentTo:()ReminderKitAdditions;
@end

@implementation NSTimeZone(ReminderKitAdditions)

- (uint64_t)rem_isEquivalentTo:()ReminderKitAdditions
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = a1;
  v6 = v4;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    if ([v5 isEqualToTimeZone:v6])
    {
      v8 = 1;
    }

    else
    {
      v9 = [v5 name];
      v10 = [v9 length];
      if (v10 >= 0x3F)
      {
        v11 = 63;
      }

      else
      {
        v11 = v10;
      }

      [v9 getCharacters:v19 range:{0, v11}];
      v19[v11] = 0;

      v12 = [v7 name];
      v13 = [v12 length];
      if (v13 >= 0x3F)
      {
        v14 = 63;
      }

      else
      {
        v14 = v13;
      }

      [v12 getCharacters:v18 range:{0, v14}];
      v18[v14] = 0;

      *s2 = 0;
      ucal_getCanonicalTimeZoneID();
      ucal_getCanonicalTimeZoneID();
      v8 = 0;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v8;
}

@end