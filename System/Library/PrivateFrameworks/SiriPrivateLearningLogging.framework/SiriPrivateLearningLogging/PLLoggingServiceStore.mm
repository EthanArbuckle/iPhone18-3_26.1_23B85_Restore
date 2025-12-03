@interface PLLoggingServiceStore
+ (PLLoggingServiceStore)sharedInstance;
- (PLLoggingServiceStore)init;
- (void)storeInstrumentationWithEvents:(id)events completion:(id)completion;
@end

@implementation PLLoggingServiceStore

- (PLLoggingServiceStore)init
{
  v3.receiver = self;
  v3.super_class = PLLoggingServiceStore;
  return [(PLLoggingServiceStore *)&v3 init];
}

+ (PLLoggingServiceStore)sharedInstance
{
  if (qword_2802D3008 != -1)
  {
    swift_once();
  }

  v3 = qword_2802D3138;

  return v3;
}

- (void)storeInstrumentationWithEvents:(id)events completion:(id)completion
{
  v4 = _Block_copy(completion);
  sub_268C39E9C();
  v5 = sub_268C42CA8();
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    v7 = sub_268C39EF8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  if (qword_2802D3028 != -1)
  {
    swift_once();
  }

  sub_268C42058(v5, v7, v6);

  sub_268C39EE8(v7);
}

@end