@interface CSDAudioCallRecordingSession
- (NSString)description;
- (TUCallRecordingSession)tuSession;
- (TUCallRecordingSession)tuSessionWithoutStateFiltering;
@end

@implementation CSDAudioCallRecordingSession

- (NSString)description
{
  v2 = self;
  sub_10029E020();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (TUCallRecordingSession)tuSession
{
  v2 = self;
  sub_10029E2DC();
  v4 = v3;

  return v4;
}

- (TUCallRecordingSession)tuSessionWithoutStateFiltering
{
  v2 = self;
  sub_10029E670();
  v4 = v3;

  return v4;
}

@end