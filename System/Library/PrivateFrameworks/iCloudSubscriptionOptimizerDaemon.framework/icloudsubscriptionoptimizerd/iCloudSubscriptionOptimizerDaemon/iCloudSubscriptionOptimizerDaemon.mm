void sub_100000F08(void *a1, void *a2)
{
  v3 = a1;
  if (!v3)
  {
    sub_100001530();
  }

  v4 = v3;
  *a2 = 0;
  [v3 UTF8String];
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    v5 = [NSString stringWithFormat:@"Failed call to _set_user_dir_suffix(%@).", v4];
    v8 = NSLocalizedDescriptionKey;
    v9 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    *a2 = [NSError errorWithDomain:@"com.apple.icloudsubscriptionoptimizerd" code:42 userInfo:v6];
  }

  v7 = NSTemporaryDirectory();
}

int main(int argc, const char **argv, const char **envp)
{
  qword_100008028 = 0;
  v3 = DaemonConstants.kTempDirSuffix.unsafeMutableAddressor();
  v4 = v3[1];
  *&xmmword_100008030 = *v3;
  *(&xmmword_100008030 + 1) = v4;
  swift_bridgeObjectRetain_n();
  v5 = String._bridgeToObjectiveC()();

  swift_beginAccess();
  v6 = qword_100008028;
  v32 = qword_100008028;
  sub_100000F08(v5, &v32);
  qword_100008028 = v32;
  v7 = v32;
  swift_endAccess();

  static Logger.setWriteToStdout(enabled:)();
  v8 = type metadata accessor for Logger();
  sub_100001494(v8, qword_100008040);
  sub_1000014F8(v8, qword_100008040);
  strcpy(&v33, "main.swift");
  BYTE3(v33._object) = 0;
  HIDWORD(v33._object) = -369098752;
  Logger.init<A>(_:)();
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  if (qword_100008028)
  {
    v19 = qword_100008028;
    _StringGuts.grow(_:)(47);

    v33._countAndFlagsBits = 0xD00000000000002BLL;
    v33._object = 0x80000001000019B0;
    String.append(_:)(xmmword_100008030);
    v20._countAndFlagsBits = 8285;
    v20._object = 0xE200000000000000;
    String.append(_:)(v20);
    countAndFlagsBits = v33._countAndFlagsBits;
    object = v33._object;
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    _StringGuts.grow(_:)(16);

    strcpy(&v33, "with error [");
    BYTE5(v33._object) = 0;
    HIWORD(v33._object) = -5120;
    v23 = [v19 description];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27._countAndFlagsBits = v24;
    v27._object = v26;
    String.append(_:)(v27);

    v28._countAndFlagsBits = 11869;
    v28._object = 0xE200000000000000;
    String.append(_:)(v28);
    v29 = v33._countAndFlagsBits;
    v30 = v33._object;
    v33._countAndFlagsBits = countAndFlagsBits;
    v33._object = object;

    v31._countAndFlagsBits = v29;
    v31._object = v30;
    String.append(_:)(v31);

    Logger.error(_:)(v33);

    swift_willThrow();
    result = swift_errorInMain();
    __break(1u);
  }

  else
  {
    _StringGuts.grow(_:)(51);
    v9._countAndFlagsBits = 0xD00000000000002FLL;
    v9._object = 0x8000000100001950;
    String.append(_:)(v9);
    String.append(_:)(xmmword_100008030);
    v10._countAndFlagsBits = 11869;
    v10._object = 0xE200000000000000;
    String.append(_:)(v10);
    Logger.info(_:)(v33);

    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    _StringGuts.grow(_:)(48);

    v33._countAndFlagsBits = 0xD00000000000002CLL;
    v33._object = 0x8000000100001980;
    static Timestamp.now()();
    v32 = Timestamp.toUnixMillis()();
    v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v11);

    v12._countAndFlagsBits = 11869;
    v12._object = 0xE200000000000000;
    String.append(_:)(v12);
    Logger.info(_:)(v33);

    type metadata accessor for DaemonEvents();
    v13 = type metadata accessor for CoreAnalyticsEventSink();
    swift_allocObject();
    v14 = CoreAnalyticsEventSink.init()();
    v34 = v13;
    v35 = &protocol witness table for CoreAnalyticsEventSink;
    v33._countAndFlagsBits = v14;
    swift_allocObject();
    DaemonEvents.init(withSink:)();
    static DaemonEvents.initSharedInstance(_:)();

    type metadata accessor for SubscriptionDaemon();
    v15 = type metadata accessor for RealBatteryStateProvider();
    v16 = swift_allocObject();
    v34 = v15;
    v35 = &protocol witness table for RealBatteryStateProvider;
    v33._countAndFlagsBits = v16;
    v17 = SubscriptionDaemon.__allocating_init(batteryStateProvider:)();
    (*(*v17 + 160))(v17);

    return 0;
  }

  return result;
}

uint64_t *sub_100001494(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1000014F8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}