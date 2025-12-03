@interface ClientServerInstance
- (void)getServiceNameFor:(int64_t)for completion:(id)completion;
- (void)getTailspinSessionIDFor:(int64_t)for reply:(id)reply;
- (void)requestMessageFor:(int64_t)for category:(unsigned int)category type:(unsigned __int16)type reply:(id)reply;
- (void)sendWithMessage:(id)message with:(unsigned int)with and:(unsigned __int16)and for:(int64_t)for;
- (void)setWithConfiguration:(id)configuration for:(int64_t)for;
- (void)setWithServiceType:(unsigned __int16)type for:(int64_t)for;
- (void)validateFor:(int64_t)for completion:(id)completion;
@end

@implementation ClientServerInstance

- (void)setWithServiceType:(unsigned __int16)type for:(int64_t)for
{

  sub_100009478(type, for);
}

- (void)setWithConfiguration:(id)configuration for:(int64_t)for
{
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100008F8C(v5, for);
}

- (void)sendWithMessage:(id)message with:(unsigned int)with and:(unsigned __int16)and for:(int64_t)for
{
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100010964(v9, with, and, for);
}

- (void)getServiceNameFor:(int64_t)for completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;

  sub_100017B64(for, sub_100019D10, v6, &unk_100041980, sub_100019D18, &unk_100041998);
}

- (void)validateFor:(int64_t)for completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;

  sub_100017B64(for, sub_100019CFC, v6, &unk_100041840, sub_100019D04, &unk_100041858);
}

- (void)requestMessageFor:(int64_t)for category:(unsigned int)category type:(unsigned __int16)type reply:(id)reply
{
  v9 = _Block_copy(reply);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;

  sub_100018988(for, category, type, sub_100019CE0, v10);
}

- (void)getTailspinSessionIDFor:(int64_t)for reply:(id)reply
{
  v5 = _Block_copy(reply);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;

  sub_1000192C4(for, sub_100019C64, v6);
}

@end