@interface CSDPodcastCallRecordingSession
- (NSString)description;
- (TUPodcastRecordingSession)tuSession;
- (TUPodcastRecordingSession)tuSessionWithoutStateFiltering;
@end

@implementation CSDPodcastCallRecordingSession

- (NSString)description
{
  selfCopy = self;
  sub_1002700A4();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (TUPodcastRecordingSession)tuSession
{
  selfCopy = self;
  v3 = sub_1002703C4();

  return v3;
}

- (TUPodcastRecordingSession)tuSessionWithoutStateFiltering
{
  selfCopy = self;
  v3 = sub_1002706C8();

  return v3;
}

@end