@interface SiriSuggestionsBookkeepingService
- (void)buildAutoCompleteIndexOnStartUpEvent:(BOOL)event with:(id)with;
- (void)getAccountDetailsWith:(id)with;
- (void)logEngagementFor:(id)for with:(id)with invocationType:(id)type featureRequirements:(id)requirements with:(id)a7;
- (void)logFrom:(id)from deliveryVehicle:(id)vehicle generationId:(id)id featureRequirements:(id)requirements with:(id)with;
@end

@implementation SiriSuggestionsBookkeepingService

- (void)buildAutoCompleteIndexOnStartUpEvent:(BOOL)event with:(id)with
{
  v6 = _Block_copy(with);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  selfCopy = self;
  sub_100003374(event, sub_10000AFCC, v7);
}

- (void)logFrom:(id)from deliveryVehicle:(id)vehicle generationId:(id)id featureRequirements:(id)requirements with:(id)with
{
  v13 = sub_10000BCDC();
  v32 = *(v13 - 8);
  v33 = v13;
  v14 = *(v32 + 64);
  __chkstk_darwin(v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(with);
  fromCopy = from;
  vehicleCopy = vehicle;
  idCopy = id;
  requirementsCopy = requirements;
  selfCopy = self;
  v23 = sub_10000BCBC();
  v25 = v24;

  v26 = sub_10000BCBC();
  v28 = v27;

  sub_10000BCCC();
  v29 = sub_10000BCBC();
  v31 = v30;

  _Block_copy(v17);
  sub_100006204(v23, v25, v26, v28, v16, v29, v31, selfCopy, v17);
  _Block_release(v17);
  sub_10000A0D4(v29, v31);
  sub_10000A0D4(v26, v28);
  sub_10000A0D4(v23, v25);

  (*(v32 + 8))(v16, v33);
}

- (void)logEngagementFor:(id)for with:(id)with invocationType:(id)type featureRequirements:(id)requirements with:(id)a7
{
  v13 = sub_10000BCDC();
  v32 = *(v13 - 8);
  v33 = v13;
  v14 = *(v32 + 64);
  __chkstk_darwin(v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(a7);
  forCopy = for;
  withCopy = with;
  typeCopy = type;
  requirementsCopy = requirements;
  selfCopy = self;
  v23 = sub_10000BCBC();
  v25 = v24;

  sub_10000BCCC();
  v26 = sub_10000BCBC();
  v28 = v27;

  v29 = sub_10000BCBC();
  v31 = v30;

  _Block_copy(v17);
  sub_1000075B4(v23, v25, v16, v26, v28, v29, v31, selfCopy, v17);
  _Block_release(v17);
  sub_10000A0D4(v29, v31);
  sub_10000A0D4(v26, v28);
  sub_10000A0D4(v23, v25);

  (*(v32 + 8))(v16, v33);
}

- (void)getAccountDetailsWith:(id)with
{
  v4 = _Block_copy(with);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_100008630(sub_10000A604, v5);
}

@end