@interface SiriTTSDaemonSession
- (SiriTTSDaemonSession)initWithAccessoryId:(id)id;
- (void)adjustVolume:(float)volume rampTime:(double)time didFinish:(id)finish;
- (void)cancelWithRequest:(id)request;
- (void)clearDeviceCache;
- (void)didGenerateAudioWithRequestId:(unint64_t)id audio:(id)audio;
- (void)didGenerateWordTimingsWithRequestId:(unint64_t)id wordTimingInfo:(id)info;
- (void)didReportInstrumentWithRequestId:(unint64_t)id instrumentationMetrics:(id)metrics;
- (void)didStartSpeakingWithRequestId:(unint64_t)id;
- (void)forwardWithStreamObject:(id)object;
- (void)killDaemon;
- (void)signalWithInlineStreaming:(id)streaming;
- (void)subscribeWithVoices:(id)voices reply:(id)reply;
@end

@implementation SiriTTSDaemonSession

- (void)didStartSpeakingWithRequestId:(unint64_t)id
{
  selfCopy = self;
  DaemonSession.didStartSpeaking(requestId:)(id);
}

- (void)didGenerateAudioWithRequestId:(unint64_t)id audio:(id)audio
{
  audioCopy = audio;
  selfCopy = self;
  DaemonSession.didGenerateAudio(requestId:audio:)(id, audioCopy);
}

- (void)didReportInstrumentWithRequestId:(unint64_t)id instrumentationMetrics:(id)metrics
{
  metricsCopy = metrics;
  selfCopy = self;
  DaemonSession.didReportInstrument(requestId:instrumentationMetrics:)(id, metricsCopy);
}

- (void)didGenerateWordTimingsWithRequestId:(unint64_t)id wordTimingInfo:(id)info
{
  type metadata accessor for WordTimingInfo();
  v6 = sub_1B1C2CE78();
  selfCopy = self;
  DaemonSession.didGenerateWordTimings(requestId:wordTimingInfo:)(id, v6);
}

- (SiriTTSDaemonSession)initWithAccessoryId:(id)id
{
  v3 = sub_1B1C2C478();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1B1C2C458();
  DaemonSession.init(accessoryId:)();
  return result;
}

- (void)cancelWithRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  sub_1B1BF2758(requestCopy);
}

- (void)signalWithInlineStreaming:(id)streaming
{
  streamingCopy = streaming;
  selfCopy = self;
  sub_1B1BF27D4(streamingCopy);
}

- (void)forwardWithStreamObject:(id)object
{
  objectCopy = object;
  selfCopy = self;
  sub_1B1BF29A8(objectCopy);
}

- (void)adjustVolume:(float)volume rampTime:(double)time didFinish:(id)finish
{
  v8 = _Block_copy(finish);
  _Block_copy(v8);
  selfCopy = self;
  sub_1B1BF3124(selfCopy, v8, volume, time);
  _Block_release(v8);
}

- (void)subscribeWithVoices:(id)voices reply:(id)reply
{
  v5 = _Block_copy(reply);
  type metadata accessor for SynthesisVoice();
  v6 = sub_1B1C2CE78();
  _Block_copy(v5);
  selfCopy = self;
  sub_1B1BF4FB0(v6, selfCopy, v5);
  _Block_release(v5);
}

- (void)clearDeviceCache
{
  selfCopy = self;
  sub_1B1BF7EF0();
}

- (void)killDaemon
{
  selfCopy = self;
  sub_1B1BF8120();
}

@end