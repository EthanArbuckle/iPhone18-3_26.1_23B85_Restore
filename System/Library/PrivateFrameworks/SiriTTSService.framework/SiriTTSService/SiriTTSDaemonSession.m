@interface SiriTTSDaemonSession
- (SiriTTSDaemonSession)initWithAccessoryId:(id)a3;
- (void)adjustVolume:(float)a3 rampTime:(double)a4 didFinish:(id)a5;
- (void)cancelWithRequest:(id)a3;
- (void)clearDeviceCache;
- (void)didGenerateAudioWithRequestId:(unint64_t)a3 audio:(id)a4;
- (void)didGenerateWordTimingsWithRequestId:(unint64_t)a3 wordTimingInfo:(id)a4;
- (void)didReportInstrumentWithRequestId:(unint64_t)a3 instrumentationMetrics:(id)a4;
- (void)didStartSpeakingWithRequestId:(unint64_t)a3;
- (void)forwardWithStreamObject:(id)a3;
- (void)killDaemon;
- (void)signalWithInlineStreaming:(id)a3;
- (void)subscribeWithVoices:(id)a3 reply:(id)a4;
@end

@implementation SiriTTSDaemonSession

- (void)didStartSpeakingWithRequestId:(unint64_t)a3
{
  v4 = self;
  DaemonSession.didStartSpeaking(requestId:)(a3);
}

- (void)didGenerateAudioWithRequestId:(unint64_t)a3 audio:(id)a4
{
  v6 = a4;
  v7 = self;
  DaemonSession.didGenerateAudio(requestId:audio:)(a3, v6);
}

- (void)didReportInstrumentWithRequestId:(unint64_t)a3 instrumentationMetrics:(id)a4
{
  v6 = a4;
  v7 = self;
  DaemonSession.didReportInstrument(requestId:instrumentationMetrics:)(a3, v6);
}

- (void)didGenerateWordTimingsWithRequestId:(unint64_t)a3 wordTimingInfo:(id)a4
{
  type metadata accessor for WordTimingInfo();
  v6 = sub_1B1C2CE78();
  v7 = self;
  DaemonSession.didGenerateWordTimings(requestId:wordTimingInfo:)(a3, v6);
}

- (SiriTTSDaemonSession)initWithAccessoryId:(id)a3
{
  v3 = sub_1B1C2C478();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1B1C2C458();
  DaemonSession.init(accessoryId:)();
  return result;
}

- (void)cancelWithRequest:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B1BF2758(v4);
}

- (void)signalWithInlineStreaming:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B1BF27D4(v4);
}

- (void)forwardWithStreamObject:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B1BF29A8(v4);
}

- (void)adjustVolume:(float)a3 rampTime:(double)a4 didFinish:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = self;
  sub_1B1BF3124(v9, v8, a3, a4);
  _Block_release(v8);
}

- (void)subscribeWithVoices:(id)a3 reply:(id)a4
{
  v5 = _Block_copy(a4);
  type metadata accessor for SynthesisVoice();
  v6 = sub_1B1C2CE78();
  _Block_copy(v5);
  v7 = self;
  sub_1B1BF4FB0(v6, v7, v5);
  _Block_release(v5);
}

- (void)clearDeviceCache
{
  v2 = self;
  sub_1B1BF7EF0();
}

- (void)killDaemon
{
  v2 = self;
  sub_1B1BF8120();
}

@end