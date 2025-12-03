@interface CSDSimulatedAVCSession
- (CGRect)presentationRect;
- (CSDSimulatedAVCSession)initWithDelegate:(id)delegate queue:(id)queue videoEnabled:(BOOL)enabled oneToOneModeEnabled:(BOOL)modeEnabled;
- (NSData)localParticipantData;
- (NSString)sessionIdentifier;
- (id)localParticipantDataWithVersion:(unint64_t)version;
- (void)addParticipant:(id)participant withVideoEnabled:(BOOL)enabled audioPaused:(BOOL)paused screenEnabled:(BOOL)screenEnabled;
- (void)removeParticipant:(id)participant;
- (void)start;
- (void)stop;
- (void)stopWithError:(id)error;
@end

@implementation CSDSimulatedAVCSession

- (CSDSimulatedAVCSession)initWithDelegate:(id)delegate queue:(id)queue videoEnabled:(BOOL)enabled oneToOneModeEnabled:(BOOL)modeEnabled
{
  swift_unknownObjectRetain();
  queueCopy = queue;
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

- (id)localParticipantDataWithVersion:(unint64_t)version
{
  v3.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100049B14(0, 0xC000000000000000);

  return v3.super.isa;
}

- (void)addParticipant:(id)participant withVideoEnabled:(BOOL)enabled audioPaused:(BOOL)paused screenEnabled:(BOOL)screenEnabled
{
  participantCopy = participant;
  selfCopy = self;
  sub_1002EB958();
}

- (void)removeParticipant:(id)participant
{
  participantCopy = participant;
  selfCopy = self;
  sub_1002EBE00();
}

- (void)start
{
  selfCopy = self;
  sub_1002EC258();
}

- (void)stop
{
  selfCopy = self;
  sub_1002EC548();
}

- (void)stopWithError:(id)error
{
  selfCopy = self;
  errorCopy = error;
  sub_1002EC598();
}

@end