@interface PLLoggingServiceDefaultHandler
- (_TtC26SiriPrivateLearningLogging30PLLoggingServiceDefaultHandler)init;
- (void)storeInstrumentationWithEvents:(id)a3 completion:(id)a4;
@end

@implementation PLLoggingServiceDefaultHandler

- (void)storeInstrumentationWithEvents:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  sub_268C3B6B8(0, &qword_2802D3140, 0x277D5A790);
  v6 = sub_268C42CA8();
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v5 = sub_268C41C80;
  }

  else
  {
    v7 = 0;
  }

  v8 = self;
  sub_268C41B50(v6, v5, v7);
  sub_268C39EE8(v5);
}

- (_TtC26SiriPrivateLearningLogging30PLLoggingServiceDefaultHandler)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PLLoggingServiceDefaultHandler();
  return [(PLLoggingServiceDefaultHandler *)&v3 init];
}

@end