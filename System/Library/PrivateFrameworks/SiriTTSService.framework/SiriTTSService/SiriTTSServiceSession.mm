@interface SiriTTSServiceSession
- (SiriTTSServiceSession)initWithAccessoryId:(id)a3;
- (void)cancelWithRequest:(id)a3;
- (void)didGenerateWordTimingsWithRequestId:(unint64_t)a3 wordTimingInfo:(id)a4;
- (void)didStartSpeakingWithRequestId:(unint64_t)a3;
- (void)getAudioPower:(id)a3;
@end

@implementation SiriTTSServiceSession

- (SiriTTSServiceSession)initWithAccessoryId:(id)a3
{
  v3 = sub_1B1C2C478();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1C2C458();
  return ServiceSession.init(accessoryId:)(v6);
}

- (void)cancelWithRequest:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B1BCE560(v4);
}

- (void)getAudioPower:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1B1BCE728(v5, v4);
  _Block_release(v4);
}

- (void)didStartSpeakingWithRequestId:(unint64_t)a3
{
  v4 = self;
  ServiceSession.didStartSpeaking(requestId:)(a3);
}

- (void)didGenerateWordTimingsWithRequestId:(unint64_t)a3 wordTimingInfo:(id)a4
{
  type metadata accessor for WordTimingInfo();
  sub_1B1C2CE78();
}

@end