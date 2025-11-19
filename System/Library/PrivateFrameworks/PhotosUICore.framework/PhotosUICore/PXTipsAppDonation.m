@interface PXTipsAppDonation
+ (id)_eventIdentifierForEvent:(int64_t)a3;
+ (void)donateSignalForEvent:(int64_t)a3;
@end

@implementation PXTipsAppDonation

+ (id)_eventIdentifierForEvent:(int64_t)a3
{
  if ((a3 - 1) > 6)
  {
    return @"com.apple.mobileslideshow.trashed-photo";
  }

  else
  {
    return off_1E774BB28[a3 - 1];
  }
}

+ (void)donateSignalForEvent:(int64_t)a3
{
  v9 = [a1 _eventIdentifierForEvent:a3];
  v3 = objc_alloc(MEMORY[0x1E698EBC0]);
  v4 = [v3 initWithContentIdentifier:v9 context:*MEMORY[0x1E69BFF18] osBuild:0 userInfo:0];
  v5 = BiomeLibrary();
  v6 = [v5 Discoverability];
  v7 = [v6 Signals];
  v8 = [v7 source];

  [v8 sendEvent:v4];
}

@end