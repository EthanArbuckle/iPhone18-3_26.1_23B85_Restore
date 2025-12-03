@interface QoSObservationServiceClient
- (BOOL)subscribeToActivityQoSMatchingPredicate:(id)predicate error:(id *)error;
- (_TtC11SessionCore27QoSObservationServiceClient)init;
@end

@implementation QoSObservationServiceClient

- (_TtC11SessionCore27QoSObservationServiceClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)subscribeToActivityQoSMatchingPredicate:(id)predicate error:(id *)error
{
  v6 = sub_22D0147AC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  predicateCopy = predicate;
  selfCopy = self;
  v14 = sub_22D0141EC();
  v16 = v15;

  v17 = sub_22D0141DC();
  sub_22D00A108(&qword_27D9F3ED0, MEMORY[0x277CB9318]);
  sub_22D01516C();

  sub_22D009CF4(v11);
  sub_22CEE7524(v14, v16);
  (*(v7 + 8))(v11, v6);
  return 1;
}

@end