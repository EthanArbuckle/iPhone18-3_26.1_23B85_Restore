@interface SiriAnalyticsLogicalClocksProvider
- (void)checkpoint;
- (void)cleanupAbandonedClocksWithActiveClockIdentifier:(NSUUID *)a3 completionHandler:(id)a4;
- (void)createClock:(id)a3 rootClockIdentifier:(id)a4 startedOn:(unint64_t)a5;
- (void)endClock:(id)a3 endedOn:(unint64_t)a4 endedReason:(unint64_t)a5;
- (void)pulseClock:(id)a3 lastEventOn:(unint64_t)a4;
@end

@implementation SiriAnalyticsLogicalClocksProvider

- (void)pulseClock:(id)a3 lastEventOn:(unint64_t)a4
{
  v5 = sub_1D992AE84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D992AE64();
  v10 = self;
  sub_1D9869914();

  (*(v6 + 8))(v9, v5);
}

- (void)createClock:(id)a3 rootClockIdentifier:(id)a4 startedOn:(unint64_t)a5
{
  v7 = sub_1D992AE84();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D992AE64();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v18 - v14;
  if (a4)
  {
    sub_1D992AE64();
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  __swift_storeEnumTagSinglePayload(v15, v16, 1, v7);
  v17 = self;
  sub_1D98E0E78();

  sub_1D98E3DA0(v15, &qword_1ECB481D0, &qword_1D992F9F0);
  (*(v8 + 8))(v11, v7);
}

- (void)endClock:(id)a3 endedOn:(unint64_t)a4 endedReason:(unint64_t)a5
{
  v6 = sub_1D992AE84();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D992AE64();
  v11 = self;
  sub_1D98E1038();

  (*(v7 + 8))(v10, v6);
}

- (void)checkpoint
{
  v2 = self;
  sub_1D98E1168();
}

- (void)cleanupAbandonedClocksWithActiveClockIdentifier:(NSUUID *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_1D9905654(&unk_1D9934A78, v7);
}

@end