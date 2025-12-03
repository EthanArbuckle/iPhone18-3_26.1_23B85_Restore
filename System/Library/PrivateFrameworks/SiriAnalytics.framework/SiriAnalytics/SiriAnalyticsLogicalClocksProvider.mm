@interface SiriAnalyticsLogicalClocksProvider
- (void)checkpoint;
- (void)cleanupAbandonedClocksWithActiveClockIdentifier:(NSUUID *)identifier completionHandler:(id)handler;
- (void)createClock:(id)clock rootClockIdentifier:(id)identifier startedOn:(unint64_t)on;
- (void)endClock:(id)clock endedOn:(unint64_t)on endedReason:(unint64_t)reason;
- (void)pulseClock:(id)clock lastEventOn:(unint64_t)on;
@end

@implementation SiriAnalyticsLogicalClocksProvider

- (void)pulseClock:(id)clock lastEventOn:(unint64_t)on
{
  v5 = sub_1D992AE84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D992AE64();
  selfCopy = self;
  sub_1D9869914();

  (*(v6 + 8))(v9, v5);
}

- (void)createClock:(id)clock rootClockIdentifier:(id)identifier startedOn:(unint64_t)on
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
  if (identifier)
  {
    sub_1D992AE64();
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  __swift_storeEnumTagSinglePayload(v15, v16, 1, v7);
  selfCopy = self;
  sub_1D98E0E78();

  sub_1D98E3DA0(v15, &qword_1ECB481D0, &qword_1D992F9F0);
  (*(v8 + 8))(v11, v7);
}

- (void)endClock:(id)clock endedOn:(unint64_t)on endedReason:(unint64_t)reason
{
  v6 = sub_1D992AE84();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D992AE64();
  selfCopy = self;
  sub_1D98E1038();

  (*(v7 + 8))(v10, v6);
}

- (void)checkpoint
{
  selfCopy = self;
  sub_1D98E1168();
}

- (void)cleanupAbandonedClocksWithActiveClockIdentifier:(NSUUID *)identifier completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = identifier;
  v7[3] = v6;
  v7[4] = self;
  identifierCopy = identifier;
  selfCopy = self;

  sub_1D9905654(&unk_1D9934A78, v7);
}

@end