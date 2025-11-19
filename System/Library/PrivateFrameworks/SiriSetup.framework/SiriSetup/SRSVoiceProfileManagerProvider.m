@interface SRSVoiceProfileManagerProvider
- (id)create;
@end

@implementation SRSVoiceProfileManagerProvider

- (id)create
{
  if (qword_2802F3220 != -1)
  {
    swift_once();
  }

  v2 = [objc_allocWithZone(SRSVoiceProfileManager) init];

  return v2;
}

@end