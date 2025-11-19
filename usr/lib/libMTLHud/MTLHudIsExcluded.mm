@interface MTLHudIsExcluded
@end

@implementation MTLHudIsExcluded

void __MTLHudIsExcluded_block_invoke(id a1)
{
  MainBundle = CFBundleGetMainBundle();
  if (MainBundle)
  {
    Identifier = CFBundleGetIdentifier(MainBundle);
    if (Identifier)
    {
      v3 = Identifier;
      v4 = CFStringCompare(Identifier, @"com.apple.MessagesBlastDoorService", 0) == kCFCompareEqualTo || CFStringCompare(v3, @"com.apple.MessagesAirlockService", 0) == kCFCompareEqualTo || CFStringCompare(v3, @"com.apple.gputoolsserviced", 0) == kCFCompareEqualTo || CFStringCompare(v3, @"com.apple.dock", 0) == kCFCompareEqualTo;
      MTLHudIsExcluded_isBlastDoor = v4;
    }
  }
}

@end