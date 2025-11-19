@interface VILogger
+ (BOOL)shouldLogInternalMessage;
+ (OS_os_log)log;
+ (OS_os_log)verboseLog;
- (_TtC12VisualLookUp8VILogger)init;
@end

@implementation VILogger

+ (OS_os_log)log
{
  if (qword_1EDD354B8 != -1)
  {
    swift_once();
  }

  if (byte_1EDD354C0 == 1)
  {
    if (qword_1EDD2A980 != -1)
    {
      swift_once();
    }

    v2 = qword_1EDD2A988;
  }

  else
  {
    sub_1D9A3E8F8();
    v2 = sub_1D9C7E24C();
  }

  return v2;
}

+ (OS_os_log)verboseLog
{
  v2 = _s12VisualLookUp8VILoggerC10verboseLogSo9OS_os_logCvgZ_0();

  return v2;
}

+ (BOOL)shouldLogInternalMessage
{
  if (qword_1EDD354B8 != -1)
  {
    swift_once();
  }

  return byte_1EDD354C0;
}

- (_TtC12VisualLookUp8VILogger)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for VILogger();
  return [(VILogger *)&v3 init];
}

@end