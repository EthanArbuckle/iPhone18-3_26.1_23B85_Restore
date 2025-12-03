@interface PresentationObservationServiceClient
- (BOOL)subscribeToActivityPresentationMatchingPredicate:(id)predicate error:(id *)error;
- (_TtC11SessionCore36PresentationObservationServiceClient)init;
@end

@implementation PresentationObservationServiceClient

- (_TtC11SessionCore36PresentationObservationServiceClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)subscribeToActivityPresentationMatchingPredicate:(id)predicate error:(id *)error
{
  v6 = sub_22D014A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  predicateCopy = predicate;
  selfCopy = self;
  v14 = sub_22D0141EC();
  v16 = v15;

  v17 = sub_22D0141DC();
  sub_22CF84A3C(&unk_28143F680, MEMORY[0x277CB9568]);
  sub_22D01516C();

  sub_22CF845A4(v11);
  sub_22CEE7524(v14, v16);
  (*(v7 + 8))(v11, v6);
  return 1;
}

@end