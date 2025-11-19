@interface UrsaClient
- (_TtC21PowerlogLiteOperators10UrsaClient)init;
- (void)cancel;
- (void)periodicCheckSince:(double)a3 flag:(id)a4 completionHandler:(id)a5;
- (void)reportPE:(id)a3 source:(id)a4 completionHandler:(id)a5;
- (void)reportTTR:(id)a3 completionHandler:(id)a4;
- (void)reportTelemetryEvent:(id)a3 payload:(id)a4 flag:(id)a5 completionHandler:(id)a6;
- (void)shouldAdmitFor:(id)a3 impact:(int64_t)a4 flag:(id)a5 completionHandler:(id)a6;
- (void)stressTest;
@end

@implementation UrsaClient

- (void)shouldAdmitFor:(id)a3 impact:(int64_t)a4 flag:(id)a5 completionHandler:(id)a6
{
  v9 = _Block_copy(a6);
  v10 = sub_21A9ED2DC();
  v12 = v11;
  if (a5)
  {
    v13 = sub_21A9ED2DC();
    a5 = v14;
  }

  else
  {
    v13 = 0;
  }

  _Block_copy(v9);
  v15 = self;
  sub_21A50BCA4(v10, v12, a4, v13, a5, v15, v9);
  _Block_release(v9);
  _Block_release(v9);
}

- (void)periodicCheckSince:(double)a3 flag:(id)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  if (a4)
  {
    v9 = sub_21A9ED2DC();
    a4 = v10;
  }

  else
  {
    v9 = 0;
  }

  _Block_copy(v8);
  v11 = self;
  sub_21A50C5B0(v9, a4, v11, v8, a3);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)cancel
{
  if (*(&self->super.isa + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentPeriodicTask))
  {
    v2 = self;

    sub_21A9ED3AC();
  }
}

- (void)reportTTR:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_21A9ED2DC();
  v8 = v7;
  _Block_copy(v5);
  v9 = self;
  sub_21A50CA14(v6, v8, v9, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)reportPE:(id)a3 source:(id)a4 completionHandler:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = sub_21A9ED2DC();
  v9 = v8;
  v10 = sub_21A9ED2DC();
  v12 = v11;
  _Block_copy(v6);
  v13 = self;
  sub_21A50CDF0(v7, v9, v10, v12, v13, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)reportTelemetryEvent:(id)a3 payload:(id)a4 flag:(id)a5 completionHandler:(id)a6
{
  v8 = _Block_copy(a6);
  v9 = sub_21A9ED2DC();
  v11 = v10;
  v12 = sub_21A9ED27C();
  if (a5)
  {
    v13 = sub_21A9ED2DC();
    a5 = v14;
  }

  else
  {
    v13 = 0;
  }

  _Block_copy(v8);
  v15 = self;
  sub_21A50D200(v9, v11, v12, v13, a5, v15, v8);
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