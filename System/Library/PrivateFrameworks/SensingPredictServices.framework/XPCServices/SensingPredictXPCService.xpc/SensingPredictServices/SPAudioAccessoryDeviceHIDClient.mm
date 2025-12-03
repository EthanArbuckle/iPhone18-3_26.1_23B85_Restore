@interface SPAudioAccessoryDeviceHIDClient
+ (_TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient)shared;
- (void)ReceiveNoiseLevelWithBlock:(id)block;
@end

@implementation SPAudioAccessoryDeviceHIDClient

+ (_TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient)shared
{
  if (qword_100016210 != -1)
  {
    swift_once();
  }

  v3 = qword_100016228;

  return v3;
}

- (void)ReceiveNoiseLevelWithBlock:(id)block
{
  v4 = _Block_copy(block);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_100008EF4;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_noiseLevelCallback);
  v8 = *(&self->super.isa + OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_noiseLevelCallback);
  v9 = *&self->SPHIDManagerQueue[OBJC_IVAR____TtC24SensingPredictXPCService31SPAudioAccessoryDeviceHIDClient_noiseLevelCallback];
  *v7 = v6;
  v7[1] = v4;
  selfCopy = self;
  sub_100005CBC(v8);
}

@end