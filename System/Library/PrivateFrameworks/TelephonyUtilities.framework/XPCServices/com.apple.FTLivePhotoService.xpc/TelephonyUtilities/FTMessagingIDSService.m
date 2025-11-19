@interface FTMessagingIDSService
+ (FTIDSService)sharedInstance;
@end

@implementation FTMessagingIDSService

+ (FTIDSService)sharedInstance
{
  v2 = sub_10000F054();

  return v2;
}

@end