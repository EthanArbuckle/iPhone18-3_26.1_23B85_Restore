@interface SiriTTSServiceSession
- (SiriTTSServiceSession)initWithAccessoryId:(id)id;
- (void)cancelWithRequest:(id)request;
- (void)didGenerateWordTimingsWithRequestId:(unint64_t)id wordTimingInfo:(id)info;
- (void)didStartSpeakingWithRequestId:(unint64_t)id;
- (void)getAudioPower:(id)power;
@end

@implementation SiriTTSServiceSession

- (SiriTTSServiceSession)initWithAccessoryId:(id)id
{
  v3 = sub_1B1C2C478();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1C2C458();
  return ServiceSession.init(accessoryId:)(v6);
}

- (void)cancelWithRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  sub_1B1BCE560(requestCopy);
}

- (void)getAudioPower:(id)power
{
  v4 = _Block_copy(power);
  _Block_copy(v4);
  selfCopy = self;
  sub_1B1BCE728(selfCopy, v4);
  _Block_release(v4);
}

- (void)didStartSpeakingWithRequestId:(unint64_t)id
{
  selfCopy = self;
  ServiceSession.didStartSpeaking(requestId:)(id);
}

- (void)didGenerateWordTimingsWithRequestId:(unint64_t)id wordTimingInfo:(id)info
{
  type metadata accessor for WordTimingInfo();
  sub_1B1C2CE78();
}

@end