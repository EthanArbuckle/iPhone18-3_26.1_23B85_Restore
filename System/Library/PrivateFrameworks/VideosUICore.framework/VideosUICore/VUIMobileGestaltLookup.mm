@interface VUIMobileGestaltLookup
+ (BOOL)BOOLValueForKey:(__CFString *)key;
+ (id)stringValueForKey:(__CFString *)key;
@end

@implementation VUIMobileGestaltLookup

+ (id)stringValueForKey:(__CFString *)key
{
  if (key && (v3 = MGCopyAnswer()) != 0)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFStringGetTypeID())
    {
      v6 = [MEMORY[0x277CCACA8] stringWithString:v4];
    }

    else
    {
      v6 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)BOOLValueForKey:(__CFString *)key
{
  if (!key)
  {
    return 0;
  }

  v3 = MGCopyAnswer();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = CFGetTypeID(v3);
  v6 = v5 == CFBooleanGetTypeID() && CFBooleanGetValue(v4) != 0;
  CFRelease(v4);
  return v6;
}

@end