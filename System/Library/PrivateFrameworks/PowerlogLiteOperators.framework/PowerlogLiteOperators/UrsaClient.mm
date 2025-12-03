@interface UrsaClient
- (_TtC21PowerlogLiteOperators10UrsaClient)init;
- (void)cancel;
- (void)periodicCheckSince:(double)since flag:(id)flag completionHandler:(id)handler;
- (void)reportPE:(id)e source:(id)source completionHandler:(id)handler;
- (void)reportTTR:(id)r completionHandler:(id)handler;
- (void)reportTelemetryEvent:(id)event payload:(id)payload flag:(id)flag completionHandler:(id)handler;
- (void)shouldAdmitFor:(id)for impact:(int64_t)impact flag:(id)flag completionHandler:(id)handler;
- (void)stressTest;
@end

@implementation UrsaClient

- (void)shouldAdmitFor:(id)for impact:(int64_t)impact flag:(id)flag completionHandler:(id)handler
{
  v9 = _Block_copy(handler);
  v10 = sub_21A9ED2DC();
  v12 = v11;
  if (flag)
  {
    v13 = sub_21A9ED2DC();
    flag = v14;
  }

  else
  {
    v13 = 0;
  }

  _Block_copy(v9);
  selfCopy = self;
  sub_21A50BCA4(v10, v12, impact, v13, flag, selfCopy, v9);
  _Block_release(v9);
  _Block_release(v9);
}

- (void)periodicCheckSince:(double)since flag:(id)flag completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  if (flag)
  {
    v9 = sub_21A9ED2DC();
    flag = v10;
  }

  else
  {
    v9 = 0;
  }

  _Block_copy(v8);
  selfCopy = self;
  sub_21A50C5B0(v9, flag, selfCopy, v8, since);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)cancel
{
  if (*(&self->super.isa + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentPeriodicTask))
  {
    selfCopy = self;

    sub_21A9ED3AC();
  }
}

- (void)reportTTR:(id)r completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = sub_21A9ED2DC();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
  sub_21A50CA14(v6, v8, selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)reportPE:(id)e source:(id)source completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = sub_21A9ED2DC();
  v9 = v8;
  v10 = sub_21A9ED2DC();
  v12 = v11;
  _Block_copy(v6);
  selfCopy = self;
  sub_21A50CDF0(v7, v9, v10, v12, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)reportTelemetryEvent:(id)event payload:(id)payload flag:(id)flag completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = sub_21A9ED2DC();
  v11 = v10;
  v12 = sub_21A9ED27C();
  if (flag)
  {
    v13 = sub_21A9ED2DC();
    flag = v14;
  }

  else
  {
    v13 = 0;
  }

  _Block_copy(v8);
  selfCopy = self;
  sub_21A50D200(v9, v11, v12, v13, flag, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)stressTest
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E9F0, &qword_21AA213D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v10 - v5;
  v7 = sub_21A9ED39C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v8;
  sub_21A50452C(0, 0, v6, &unk_21AA215F8, v9);
}

- (_TtC21PowerlogLiteOperators10UrsaClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end