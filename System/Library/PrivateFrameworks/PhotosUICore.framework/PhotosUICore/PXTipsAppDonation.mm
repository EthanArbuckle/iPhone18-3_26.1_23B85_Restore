@interface PXTipsAppDonation
+ (id)_eventIdentifierForEvent:(int64_t)event;
+ (void)donateSignalForEvent:(int64_t)event;
@end

@implementation PXTipsAppDonation

+ (id)_eventIdentifierForEvent:(int64_t)event
{
  if ((event - 1) > 6)
  {
    return @"com.apple.mobileslideshow.trashed-photo";
  }

  else
  {
    return off_1E774BB28[event - 1];
  }
}

+ (void)donateSignalForEvent:(int64_t)event
{
  v9 = [self _eventIdentifierForEvent:event];
  v3 = objc_alloc(MEMORY[0x1E698EBC0]);
  v4 = [v3 initWithContentIdentifier:v9 context:*MEMORY[0x1E69BFF18] osBuild:0 userInfo:0];
  v5 = BiomeLibrary();
  discoverability = [v5 Discoverability];
  signals = [discoverability Signals];
  source = [signals source];

  [source sendEvent:v4];
}

@end