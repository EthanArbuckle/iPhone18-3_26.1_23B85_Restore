@interface CSDSimulatedAVCSession
- (CGRect)presentationRect;
- (CSDSimulatedAVCSession)initWithDelegate:(id)a3 queue:(id)a4 videoEnabled:(BOOL)a5 oneToOneModeEnabled:(BOOL)a6;
- (NSData)localParticipantData;
- (NSString)sessionIdentifier;
- (id)localParticipantDataWithVersion:(unint64_t)a3;
- (void)addParticipant:(id)a3 withVideoEnabled:(BOOL)a4 audioPaused:(BOOL)a5 screenEnabled:(BOOL)a6;
- (void)removeParticipant:(id)a3;
- (void)start;
- (void)stop;
- (void)stopWithError:(id)a3;
@end

@implementation CSDSimulatedAVCSession

- (CSDSimulatedAVCSession)initWithDelegate:(id)a3 queue:(id)a4 videoEnabled:(BOOL)a5 oneToOneModeEnabled:(BOOL)a6
{
  swift_unknownObjectRetain();
  v7 = a4;
  sub_1002EB010();
  return result;
}

- (NSData)localParticipantData
{
  v2.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100049B14(0, 0xC000000000000000);

  return v2.super.isa;
}

- (NSString)sessionIdentifier
{
  sub_1002EB310();
  if (v2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CGRect)presentationRect
{
  v2 = sub_1002EB814();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (id)localParticipantDataWithVersion:(unint64_t)a3
{
  v3.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100049B14(0, 0xC000000000000000);

  return v3.super.isa;
}

- (void)addParticipant:(id)a3 withVideoEnabled:(BOOL)a4 audioPaused:(BOOL)a5 screenEnabled:(BOOL)a6
{
  v7 = a3;
  v8 = self;
  sub_1002EB958();
}

- (void)removeParticipant:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1002EBE00();
}

- (void)start
{
  v2 = self;
  sub_1002EC258();
}

- (void)stop
{
  v2 = self;
  sub_1002EC548();
}

- (void)stopWithError:(id)a3
{
  v4 = self;
  v5 = a3;
  sub_1002EC598();
}

@end