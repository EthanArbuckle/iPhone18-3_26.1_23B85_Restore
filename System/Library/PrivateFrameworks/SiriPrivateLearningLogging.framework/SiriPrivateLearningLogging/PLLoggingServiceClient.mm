@interface PLLoggingServiceClient
+ (id)makeClient;
- (PLLoggingServiceClient)init;
- (void)storeInstrumentationWithEvents:(id)a3 completion:(id)a4;
@end

@implementation PLLoggingServiceClient

- (PLLoggingServiceClient)init
{
  v3.receiver = self;
  v3.super_class = PLLoggingServiceClient;
  return [(PLLoggingServiceClient *)&v3 init];
}

+ (id)makeClient
{
  v2 = _sSo22PLLoggingServiceClientC26SiriPrivateLearningLoggingE04makeC0AByFZ_0();

  return v2;
}

- (void)storeInstrumentationWithEvents:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  sub_268C3B6B8(0, &qword_2802D3140, 0x277D5A790);
  v6 = sub_268C42CA8();
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v8 = sub_268C39EF8;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9 = self;
  PLLoggingServiceClient.storeInstrumentation(events:completion:)(v6, v8, v7);
  sub_268C39EE8(v8);
}

@end