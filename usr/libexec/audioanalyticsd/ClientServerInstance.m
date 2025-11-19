@interface ClientServerInstance
- (void)getServiceNameFor:(int64_t)a3 completion:(id)a4;
- (void)getTailspinSessionIDFor:(int64_t)a3 reply:(id)a4;
- (void)requestMessageFor:(int64_t)a3 category:(unsigned int)a4 type:(unsigned __int16)a5 reply:(id)a6;
- (void)sendWithMessage:(id)a3 with:(unsigned int)a4 and:(unsigned __int16)a5 for:(int64_t)a6;
- (void)setWithConfiguration:(id)a3 for:(int64_t)a4;
- (void)setWithServiceType:(unsigned __int16)a3 for:(int64_t)a4;
- (void)validateFor:(int64_t)a3 completion:(id)a4;
@end

@implementation ClientServerInstance

- (void)setWithServiceType:(unsigned __int16)a3 for:(int64_t)a4
{

  sub_100009478(a3, a4);
}

- (void)setWithConfiguration:(id)a3 for:(int64_t)a4
{
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100008F8C(v5, a4);
}

- (void)sendWithMessage:(id)a3 with:(unsigned int)a4 and:(unsigned __int16)a5 for:(int64_t)a6
{
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100010964(v9, a4, a5, a6);
}

- (void)getServiceNameFor:(int64_t)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;

  sub_100017B64(a3, sub_100019D10, v6, &unk_100041980, sub_100019D18, &unk_100041998);
}

- (void)validateFor:(int64_t)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;

  sub_100017B64(a3, sub_100019CFC, v6, &unk_100041840, sub_100019D04, &unk_100041858);
}

- (void)requestMessageFor:(int64_t)a3 category:(unsigned int)a4 type:(unsigned __int16)a5 reply:(id)a6
{
  v9 = _Block_copy(a6);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;

  sub_100018988(a3, a4, a5, sub_100019CE0, v10);
}

- (void)getTailspinSessionIDFor:(int64_t)a3 reply:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;

  sub_1000192C4(a3, sub_100019C64, v6);
}

@end